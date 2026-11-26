# theli-ua Gentoo Overlay

Personal Gentoo ebuild repository (`theli-ua`).

## Adding the overlay

### Using `layman`
```sh
layman -o https://raw.githubusercontent.com/theli-ua/gentoo-overlay/main/repositories.xml -f -a theli-ua
```

### Using `eselect-repository` (recommended on modern Gentoo)
```sh
eselect repository add theli-ua git https://github.com/theli-ua/gentoo-overlay.git
emaint sync -r theli-ua
```

## Packages

- `net-misc/tronbyt-server-bin` — Prebuilt Tronbyt server (amd64) with OpenRC init script, `tronbyt` user/group, and data in `/var/lib/tronbyt`.
