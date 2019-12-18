all: blink.rom

clean:
	rm -f *.lst *.map *.o *.rom

%.o: %.s
	ca65 -o $@ $<

%.rom: %.o eater.cfg
	ld65 -C eater.cfg -o $@ $<

.PHONY: all clean
