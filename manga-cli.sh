#!/bin/bash
search_url="https://mangakakalot.com/search/story/"
base_url="https://mangakakalot.com/"
image_dir="~/.cache/manga-cli/"

search_query () {
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
    mangaLink=$(echo ${mangaIds[$mangaNumber]})


    echo -n "Enter chapter number: "
    read chapterNumber

    mapfile -t chapterImages < <(curl -s "$mangaLink/chapter-$mangaNumber" | pup "div.container-chapter-reader img attr{src}")
    # curl -s "$mangaLink/chapter-$mangaNumber" | pup "div.container-chapter-reader img attr{src}"
    declare -p chapterImages > out.log

    echo "$mangaLink/chapter-$chapterNumber"




    i=0
    # if [ ! -d "$image_dir" ]; then
    #     mkdir ~/.cache/manga-cli
    # fi


    echo $chapterImages
    for each in "${chapterImages[@]}"
    do
        # curl $each --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36"
        curl -s $each --output "$mangaName-$i.jpg" -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101 Firefox/95.0' -H 'Accept: image/avif,image/webp,*/*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Connection: keep-alive' -H 'Referer: https://readmanganato.com/' -H 'Sec-Fetch-Dest: image' -H 'Sec-Fetch-Mode: no-cors' -H 'Sec-Fetch-Site: cross-site' -H 'If-Modified-Since: Fri, 18 May 2018 10:55:14 GMT' -H 'If-None-Match: "5afeb112-19718"' -H 'Cache-Control: max-age=0'
        echo $each
        ((i=i+1))
    done

    convert $mangaName* "$mangaName-$chapterNumber.pdf"
    rm *.jpg
    zathura "$mangaName-$mangaNumber.pdf"






}

search_query