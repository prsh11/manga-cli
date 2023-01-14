# Manga CLI
## Table of contents

-   [Install](#Install)
    -   [Linux](#Linux)
    -   [Arch](#Arch)
-   [Uninstall](#Uninstall)
-   [Dependencies](#Dependencies)

## Install
> Check the [dependencies](#dependencies)
### Arch
```bash
yay -S manga-cli-git
```
### Linux


```bash
git clone https://github.com/prsh11/manga-cli.git && cd manga-cli
sudo cp manga-cli /usr/local/bin/manga-cli
```

## Uninstall

-   Linux: `rm /usr/local/bin/manga-cli`
- Arch: `yay -Rns manga-cli-git`

## Dependencies

-   [pup](https://github.com/ericchiang/pup)
-   [zathura](https://github.com/pwmt/zathura)
-   [zathura-cb](https://github.com/pwmt/zathura-cb)
-   [curl](https://curl.se/)

### PDF support

-   [zathura-pdf-mupdf](https://github.com/pwmt/zathura-pdf-mupdf)
-   [imagemagick](https://imagemagick.org/index.php)
