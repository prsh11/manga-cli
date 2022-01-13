<h1 align="center"> Manga-CLI </h1>
<p align="center">Script to read manga from cli. It scrapes <a href="https://mangakakalot.com/">mangakakalot</a></p>
<p align="center">
  <img src="https://img.shields.io/github/stars/notprash/manga-cli?logo=startrek&logoColor=%23f8f8f2&style=for-the-badge" />
  <img src="https://img.shields.io/github/issues/notprash/manga-cli?color=%23f8f8f2&logo=theregister&style=for-the-badge" />
</p>

## Dependencies

-   [pup](https://github.com/ericchiang/pup)
-   [zathura](https://github.com/pwmt/zathura)
-   [zathura-cb](https://github.com/pwmt/zathura-cb)
-   [curl](https://curl.se/)

## Install

```bash
git clone https://github.com/notprash/manga-cli.git
cd manga-cli
sudo make
```

## Usage
```bash
manga-cli
```
### Listing Chapters
```bash
$ manga-cli
Search manga: some manga
[1]....
[2]....
[3]....
Enter Number: 1
Enter Chapter: list (start) (end)
```

## Uninstall

```bash
sudo make uninstall
```
