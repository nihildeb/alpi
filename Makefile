ETC_SRC = etc
ETC = /etc
PROFILED = $(ETC)/profile.d
PROFILE_SH = $(PROFILED)/alias.sh $(PROFILED)/env.sh

all: $(PROFILE_SH)

$(PROFILED)/alias.sh: $(ETC_SRC)/profile.d/alias.sh
$(PROFILED)/env.sh: $(ETC_SRC)/profile.d/env.sh

$(PROFILED)/%:
	cp -f $< $@



