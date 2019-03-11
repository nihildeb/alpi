# alpi

Do not run this ever!

```
wget -q -O - https://raw.githubusercontent.com/nihildeb/alpi/master/install |sh
```

[Makefile Magic](https://stackoverflow.com/questions/18091538/makefile-copying-files-with-a-rule)

```
COPY_FILES := $(patsubst src/%,build/%,$(wildcard src/*))
# and for the final rule
$(BUILD_DIR)/%: $(SRC_DIR)/%
```
