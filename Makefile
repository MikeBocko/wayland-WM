CC = gcc
CFLAGS = -Wall -Wextra -DWL_HIDE_DEPRECATED -DWLR_USE_UNSTABLE $(shell pkg-config --cflags wlroots-0.19 wayland-server pixman-1)
LIBS = $(shell pkg-config --libs wlroots-0.19 wayland-server pixman-1)

wm: wm.c
	$(CC) $(CFLAGS) wm.c -o wm $(LIBS)

clean:
	rm -f wm