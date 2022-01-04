#!/bin/bash
search_url="https://mangakakalot.com/search/story/"
base_url="https://mangakakalot.com/"
image_dir="$HOME/.cache/manga-cli/"

download_manga () {
    echo -n "Search manga: " 
    read mangaName

    mangaName="${mangaName// /_}"
    # curl -s "$search_url$mangaName" | pup "div.story_item_right h3 a text{}"  

    mapfile -t mangaNames < <(curl -s "$search_url$mangaName" | pup "div.story_item_right h3 a text{}")
    declare -p mangaNames > out.log



    # Manga Ids
    mapfile -t mangaIds < <(curl -s "$search_url$mangaName" | pup "div.story_item_right h3 a attr{href}")
    declare -p mangaIds > out.log




    i=1
    for each in "${mangaNames[@]}"
    do
        echo "[$i]$each"
        ((i=i+1))
    done

    echo -n "Enter Number: "
    read mangaNumber

    mangaNumber=$((mangaNumber-1))
    name=$(echo ${mangaNames[$mangaNumber]})
    mangaLink=$(echo ${mangaIds[$mangaNumber]})


    echo -n "Enter chapter number: "
    read chapterNumber
    if [ -f "$image_dir$mangaName-$chapterNumber.pdf" ]; then
        echo "Manga files exists .cache, opening it..."
        zathura "$image_dir$mangaName-$chapterNumber.pdf"
        exit -1
    fi

    mapfile -t chapterImages < <(curl -s "$mangaLink/chapter-$chapterNumber" | pup "div.container-chapter-reader img attr{src}")
    # curl -s "$mangaLink/chapter-$mangaNumber" | pup "div.container-chapter-reader img attr{src}"
    declare -p chapterImages > out.log





    i=0
    if [ ! -d "$image_dir" ]; then
        mkdir ~/.cache/manga-cli
    fi


    clear
    echo "Getting data on the chapters...."
    for each in "${chapterImages[@]}"
    do
        curl -s $each --output "$image_dir$mangaName-$i.jpg" -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101 Firefox/95.0' -H 'Accept: image/avif,image/webp,*/*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Connection: keep-alive' -H 'Referer: https://readmanganato.com/' -H 'Sec-Fetch-Dest: image' -H 'Sec-Fetch-Mode: no-cors' -H 'Sec-Fetch-Site: cross-site' -H 'If-Modified-Since: Fri, 18 May 2018 10:55:14 GMT' -H 'If-None-Match: "5afeb112-19718"' -H 'Cache-Control: max-age=0'
        ((i=i+1))
    done


    convert $image_dir$mangaName* "$image_dir$mangaName-$chapterNumber.pdf"
    rm $image_dir/*.jpg
    clear
    zathura "$image_dir$mangaName-$chapterNumber.pdf"






}

download_manga