
local  levels =  { warning = { name = "warning", tags = "!" },
            errors = { name = "err", tags = "x"},
            info = { name = "info", tags = "i"} }

function syslog_print(level, message)
  local info = debug.getinfo(2, "Sl")
  os.execute('/usr/bin/logger -p '.. level.name ..' "swu_log - ['.. level.tags ..'][TRACE] : ' .. info.short_src ..'('.. info.currentline ..'): ' .. message .. '"')
end

function command_exists(command)
    local f = io.popen("command -v " .. command)
    local result = f:read("*a")
    f:close()
    return result ~= ""
end

function backup()
    local lamx = require 'lamx'
    lamx.auto_connect("protected")

    local pcm_server_obj = lamx.bus.call("PersistentConfiguration.", "Backup", {}, 30)
    if pcm_server_obj then
        syslog_print(levels.info, "Backup succeeded")
    else
        syslog_print(levels.errors, "Backup failed")
    end
end

function preinst()
    -- Check if /tmp/rescue exists
    local rescue_mode = "/tmp/rescue"
    if io.open(rescue_mode, "r") then
        syslog_print(levels.warning, rescue_mode .. "Rescue mode. Skipping Backup.")
        return true
    end

    if pcall(backup) then
        syslog_print(levels.info, "Backup succeeded")
    else
        syslog_print(levels.errors, "Backup failed")
    end
    return true
end

function postinst()
    os.execute("touch /cfg/upgrade_occurred; sync")
    -- Check if "reset_soft" command exists
    if command_exists("reset_soft") then
        print("Running reset_soft")
        os.execute("reset_soft")
    else
        print("reset_soft command not found, running firstboot -y")
        os.execute("firstboot -y")
    end
    return true
end
