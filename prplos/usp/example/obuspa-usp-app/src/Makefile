#include ../makefile.inc

# build destination directories
INSTALL = $(shell which install)
STRIP = $(shell which strip)
LN = $(shell which ln)
TAR = $(shell which tar)
MKDIR = $(shell which mkdir)
GIT = $(shell which git)
ECHO = $(shell which echo)
CAT = $(shell which cat)

# Add a category to make CI happy
# CATEGORY:=prpl Foundation

# TARGETS
TARGET_SO = obuspa_usp_app.so

# directories
# source directories
SRCDIR = .
INCDIRS = $(if $(STAGINGDIR), $(STAGINGDIR)/include) $(if $(STAGINGDIR), $(STAGINGDIR)/usr/include)
STAGING_LIBDIR = $(if $(STAGINGDIR), -L$(STAGINGDIR)/lib) $(if $(STAGINGDIR), -L$(STAGINGDIR)/usr/lib)

SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(SOURCES:.c=.o)

LDFLAGS += -shared -fPIC

# targets
all: ./$(TARGET_SO)

./$(TARGET_SO): $(OBJECTS)
	$(CC) -shared -o $@  $(OBJECTS) $(LDFLAGS)

./%.o: $(SRCDIR)/%.c 
	$(CC) $(CFLAGS) $(addprefix -I ,$(INCDIRS)) -c -o $@ $<

install:
	$(INSTALL) -D -p -m 0644 ./$(TARGET_SO) $(DEST)/usr/lib/$(TARGET_SO)

clean:
	rm -rf output 

.PHONY: all clean
