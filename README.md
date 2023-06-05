# Manga CLI
## Table of contents

-   [Install](#Install)
    - [Mac](#Mac)
    -   [Linux](#Linux)
    -   [Arch](#Arch)
-   [Uninstall](#Uninstall)
-   [Dependencies](#Dependencies)

## Install
> Check the [dependencies](#dependencies)
### Mac
```bash
# dependencies 
brew tap zegervdv/zathura
brew install pup
brew install zathura 
brew install bash  # plugin requires new version of bash 4.xx, while macOS uses 3.xx

# cbz support
brew install zathura-cb  

# pdf support
brew install imagemagick
brew install zathura-pdf-mupdf

# install manga-cli
git clone https://github.com/prsh11/manga-cli.git && cd manga-cli
sudo cp manga-cli /usr/local/bin/manga-cli
```

### Arch
```bash
yay -S manga-cli-git
```
### Linux
> Install dependencies with your respective package manager
```bash
git clone https://github.com/prsh11/manga-cli.git && cd manga-cli
sudo cp manga-cli /usr/local/bin/manga-cli
```

## Uninstall

-  Linux & Mac: `rm /usr/local/bin/manga-cli`
- Arch: `yay -Rns manga-cli-git`

## Dependencies

-   [pup](https://github.com/ericchiang/pup)
-   [zathura](https://github.com/pwmt/zathura)
-   [zathura-cb](https://github.com/pwmt/zathura-cb)
-   [curl](https://curl.se/)

### PDF support

-   [zathura-pdf-mupdf](https://github.com/pwmt/zathura-pdf-mupdf)
-   [imagemagick](https://imagemagick.org/index.php)
