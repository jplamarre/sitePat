TO_INSTALL=fonts/ lang/ img/ css/ js/ Views/ App_Code/ Global.asax
TO_INSTALL+=$(shell find packages/ -name *.dll)
INSTALL_DIR=public/
TEMP_DIR=Temp

CC=mcs
DEPS=System.Web.Http,System.Net.Http,System.Web.Mvc
PKGS=dotnet
LIB=sitePat.dll
FLAGS=-out:$(TEMP_DIR)/$(LIB) -target:library -reference:$(DEPS) -pkg:$(PKGS)
SRC=$(filter-out App_Code/Global.asax.cs, $(wildcard **/*.cs))
SUB_DIRS=Controllers

define mkdir
if [ ! -e $1 ] ; \
then \
	mkdir $1; \
fi
endef

all: mkdir subdirs build install

subdirs:
	@for d in $(SUB_DIRS) ; do \
		$(MAKE) -C $$d; \
	done

build:
	@$(CC) $(FLAGS) $(SRC)

install:
	@cp -rf $(TO_INSTALL) $(TEMP_DIR); \
	mv $(TEMP_DIR)/*.dll $(TEMP_DIR)/Bin; \
	cp -rf $(TEMP_DIR)/* $(INSTALL_DIR);

mkdir:
	@$(call mkdir,$(INSTALL_DIR)); \
	$(call mkdir,$(TEMP_DIR)); \
	$(call mkdir,$(TEMP_DIR)/Bin);

.PHONY: clean

clean:
	@rm -rf $(TEMP_DIR); \
	rm -rf $(INSTALL_DIR);
