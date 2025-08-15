%populate {
    object WiFi {
        object EndPoint {

{% for ( let Itf in BD.Interfaces ) : if ( BDfn.isInterfaceWirelessEp(Itf.Name) ) : %}
{% RadioIndex = BDfn.getRadioIndex(Itf.OperatingFrequency); if (RadioIndex >= 0) : %}
            object {{Itf.Alias}} {
                parameter Enable = 1;
                object WPS {
{% if (Itf.OperatingFrequency == "5GHz") :  %}
                    parameter Enable = 1;
{% else %}
                    parameter Enable = 0;
{% endif %}
                }
            }

{% endif %}
{% endif; endfor; %}

        }
    }
}
