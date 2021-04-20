export TARGET_FILE = ./application.cr
export TARGET_OUTPUT = ./bin/application
export SOURCE_FILES = $(shell find . -name '*.cr' -name '*.ecr')

.PHONY: run
run: $(TARGET_OUTPUT)
	$(TARGET_OUTPUT)
	rm $(TARGET_OUTPUT)

$(TARGET_OUTPUT): $(SOURCE_FILES)
	crystal build --no-debug --progress $(TARGET_FILE) -o $(TARGET_OUTPUT)