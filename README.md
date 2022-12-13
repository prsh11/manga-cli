# Manga CLI
## Table of contents

-   [Install](#Install)
    -   [Arch](#Arch)
    -   [Linux](#Linux)
-   [Uninstall](#Uninstall)
-   [Dependencies](#Dependencies)

## Install

### Arch

```bash
yay -S manga-cli-notprash-git
```

### Linux

Check the [dependencies](#dependencies)

```bash
git clone https://github.com/notprash/manga-cli.git && cd manga-cli
sudo cp manga-cli /usr/local/bin/manga-cli
```

## Uninstall

-   Arch: `yay -R manga-cli-notprash-git`
-   Linux: `rm /usr/local/bin/manga-cli`

## Dependencies

-   [pup](https://github.com/ericchiang/pup)
-   [zathura](https://github.com/pwmt/zathura)
-   [zathura-cb](https://github.com/pwmt/zathura-cb)
-   [curl](https://curl.se/)

### PDF support

-   [zathura-pdf-mupdf](https://github.com/pwmt/zathura-pdf-mupdf)
-   [imagemagick](https://imagemagick.org/index.php)
