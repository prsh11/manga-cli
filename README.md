<h1 align="center"> Manga-CLI </h1>
<p align="center">Script to read manga from cli. It scrapes <a href="https://mangakakalot.com/">mangakakalot</a></p>
<p align="center">
  <img src="https://img.shields.io/github/stars/notprash/manga-cli?color=88c0d0&logo=github" />
  <img src="https://img.shields.io/github/issues/notprash/manga-cli?color=88c0d0" />
  <img src="https://img.shields.io/badge/os-linux-%2388c0d0" />
  <img src="https://img.shields.io/maintenance/yes/2022?color=%23a3be8c" />
</p>

## Table of contents

-   [Install](#Installation)
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
