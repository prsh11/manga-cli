<h1 align="center"> Manga-CLI </h1>
<p align="center">Script to read manga from cli. It scrapes <a href="https://mangakakalot.com/">mangakakalot</a></p>
<p align="center">
  <img src="https://img.shields.io/github/stars/notprash/manga-cli?color=88c0d0&logo=github" />
  <img src="https://img.shields.io/github/issues/notprash/manga-cli?color=88c0d0" />
  <img src="https://img.shields.io/badge/os-linux-%2388c0d0" />
  <img src="https://img.shields.io/maintenance/yes/2022?color=%23a3be8c" />
</p>

## Dependencies

-   [pup](https://github.com/ericchiang/pup)
-   [zathura](https://github.com/pwmt/zathura)
-   [zathura-pdf-mupdf](https://github.com/pwmt/zathura-pdf-mupdf) or [zathura-pdf-mupdf](https://github.com/pwmt/zathura-pdf-poppler) (for pdf support) 
-   [zathura-cb](https://github.com/pwmt/zathura-cb) (optional for pdf)
-   [imagemagick](https://imagemagick.org/index.php) (optional)
-   [curl](https://curl.se/)

## Install

```bash
git clone https://github.com/notprash/manga-cli.git
cd manga-cli
sudo make
```

## Usage

```

Usage:
	manga-cli -l [<query>]
	manga-cli --pdf [<query>]
Options:
	-l lists manga
	--pdf get pdf file

```

## Uninstall

```bash
sudo make uninstall
```
