# LP=Pweave
# CC=pandoc
# LPFLAGS=-f pandoc
# CCFLAGS=-o
# SOURCES=$(wildcard *.Pnw)
# OBJECTS=$(SOURCES:.Pnw=.md)
# TARGETS=$(OBJECTS:.md=.html)

# all: $(TARGETS)

# $(TARGETS): $(OBJECTS)
# 	$(CC) $(CCFLAGS) $(TARGETS) $(OBJECTS)

# $(OBJECTS): $(SOURCES)
# 	$(LP) $(LPFLAGS) $(SOURCES)


CC=multimarkdown
CCFLAGS=-b

SOURCES=$(wildcard *.md)
TARGETS=$(SOURCES:.md=.html)

all: $(TARGETS)

$(TARGETS): $(SOURCES)
	$(CC) $(CCFLAGS) $(SOURCES)

clean:
	rm -f $(OBJECTS) $(TARGETS) cache/*