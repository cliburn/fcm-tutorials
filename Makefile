LP=Pweave
CC=pandoc
LPFLAGS=-f pandoc
CCFLAGS=-o
SOURCES=$(wildcard *.Pnw)
OBJECTS=$(SOURCES:.Pnw=.md)
TARGETS=$(OBJECTS:.md=.html)

all: $(TARGETS)

$(TARGETS): $(OBJECTS)
	$(CC) $(CCFLAGS) $(TARGETS) $(OBJECTS)

$(OBJECTS): $(SOURCES)
	$(LP) $(LPFLAGS) $(SOURCES)

clean:
	rm -f $(OBJECTS) $(TARGETS) cache/* figures/*