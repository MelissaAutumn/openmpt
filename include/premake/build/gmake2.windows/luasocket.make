# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_x86
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../contrib/lua/src -I../../contrib/luashim
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LINKCMD = $(CC) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release_x86)
TARGETDIR = ../../bin/release
TARGET = $(TARGETDIR)/luasocket.dll
OBJDIR = obj/x86/Release/luasocket
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -DNDEBUG -DLUASOCKET_API=__declspec\(dllexport\)
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -flto -O3 -Wall -Wextra
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -flto -O3 -Wall -Wextra -fno-stack-protector
LIBS += bin/x86/Release/luashim-lib.lib -lws2_32
LDDEPS += bin/x86/Release/luashim-lib.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -flto -shared -Wl,--out-implib="../../bin/release/luasocket.lib" -s

else ifeq ($(config),release_x64)
TARGETDIR = ../../bin/release
TARGET = $(TARGETDIR)/luasocket.dll
OBJDIR = obj/x64/Release/luasocket
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -DNDEBUG -DLUASOCKET_API=__declspec\(dllexport\)
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -flto -O3 -Wall -Wextra
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -flto -O3 -Wall -Wextra -fno-stack-protector
LIBS += bin/x64/Release/luashim-lib.lib -lws2_32
LDDEPS += bin/x64/Release/luashim-lib.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -flto -shared -Wl,--out-implib="../../bin/release/luasocket.lib" -s

else ifeq ($(config),debug_x86)
TARGETDIR = ../../bin/debug
TARGET = $(TARGETDIR)/luasocket.dll
OBJDIR = obj/x86/Debug/luasocket
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -D_DEBUG -DLUASOCKET_API=__declspec\(dllexport\)
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g -Wall -Wextra
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -Wall -Wextra
LIBS += bin/x86/Debug/luashim-lib.lib -lws2_32
LDDEPS += bin/x86/Debug/luashim-lib.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,--out-implib="../../bin/debug/luasocket.lib"

else ifeq ($(config),debug_x64)
TARGETDIR = ../../bin/debug
TARGET = $(TARGETDIR)/luasocket.dll
OBJDIR = obj/x64/Debug/luasocket
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -D_DEBUG -DLUASOCKET_API=__declspec\(dllexport\)
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -Wall -Wextra
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -Wall -Wextra
LIBS += bin/x64/Debug/luashim-lib.lib -lws2_32
LDDEPS += bin/x64/Debug/luashim-lib.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,--out-implib="../../bin/debug/luasocket.lib"

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/auxiliar.o
GENERATED += $(OBJDIR)/buffer.o
GENERATED += $(OBJDIR)/compat.o
GENERATED += $(OBJDIR)/except.o
GENERATED += $(OBJDIR)/inet.o
GENERATED += $(OBJDIR)/io.o
GENERATED += $(OBJDIR)/luasocket.o
GENERATED += $(OBJDIR)/main.o
GENERATED += $(OBJDIR)/mime.o
GENERATED += $(OBJDIR)/options.o
GENERATED += $(OBJDIR)/select.o
GENERATED += $(OBJDIR)/tcp.o
GENERATED += $(OBJDIR)/timeout.o
GENERATED += $(OBJDIR)/udp.o
GENERATED += $(OBJDIR)/wsocket.o
OBJECTS += $(OBJDIR)/auxiliar.o
OBJECTS += $(OBJDIR)/buffer.o
OBJECTS += $(OBJDIR)/compat.o
OBJECTS += $(OBJDIR)/except.o
OBJECTS += $(OBJDIR)/inet.o
OBJECTS += $(OBJDIR)/io.o
OBJECTS += $(OBJDIR)/luasocket.o
OBJECTS += $(OBJDIR)/main.o
OBJECTS += $(OBJDIR)/mime.o
OBJECTS += $(OBJDIR)/options.o
OBJECTS += $(OBJDIR)/select.o
OBJECTS += $(OBJDIR)/tcp.o
OBJECTS += $(OBJDIR)/timeout.o
OBJECTS += $(OBJDIR)/udp.o
OBJECTS += $(OBJDIR)/wsocket.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking luasocket
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning luasocket
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/main.o: ../../binmodules/luasocket/main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/auxiliar.o: ../../binmodules/luasocket/src/auxiliar.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/buffer.o: ../../binmodules/luasocket/src/buffer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/compat.o: ../../binmodules/luasocket/src/compat.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/except.o: ../../binmodules/luasocket/src/except.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet.o: ../../binmodules/luasocket/src/inet.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/io.o: ../../binmodules/luasocket/src/io.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/luasocket.o: ../../binmodules/luasocket/src/luasocket.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mime.o: ../../binmodules/luasocket/src/mime.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/options.o: ../../binmodules/luasocket/src/options.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/select.o: ../../binmodules/luasocket/src/select.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tcp.o: ../../binmodules/luasocket/src/tcp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timeout.o: ../../binmodules/luasocket/src/timeout.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/udp.o: ../../binmodules/luasocket/src/udp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wsocket.o: ../../binmodules/luasocket/src/wsocket.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif