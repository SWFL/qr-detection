TARGET := detect

OBJECTS :=\
	detect.o

SOURCE :=\
	detect.cpp

CC := g++
HEADERFILES := -I/usr/include/opencv/
LDFLAGS := -o
CPFLAGS := -c -Wall -fpermissive -g


INCLUDES := -lhighgui -lcvaux -lcxcore

all: $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) $(TARGET) $(INCLUDES)

$(OBJECTS): $(SOURCE)
	$(CC) $(HEADERFILES) $(SOURCE) $(CPFLAGS)

clean:
	rm -f *.o




