#!/bin/bash
search_url="https://mangakakalot.com/search/story/"
base_url="https://mangakakalot.com/"

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





}

search_query