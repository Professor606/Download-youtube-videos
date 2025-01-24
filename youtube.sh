#!/bin/bash

figlet YouTube

echo "Paste the YouTube video link: "
read link

# Set the download directory

cd /storage/emulated/0
mkdir Youtube

destination="/storage/emulated/0/Youtube/"

# Download the video
yt-dlp -o "$destination%(title)s.%(ext)s" $link
