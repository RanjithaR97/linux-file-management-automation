#!/bin/bash

DOWNLOADS="$HOME/Downloads"
PDF_DIR="$HOME/Documents/PDFs"
IMG_DIR="$HOME/Pictures/Images"
LOGFILE="$HOME/file_mover.log"

mkdir -p "$PDF_DIR"
mkdir -p "$IMG_DIR"

echo "===== File Move Log =====" > "$LOGFILE"

# Move PDFs
find "$DOWNLOADS" -type f -name "*.pdf" | while read file
do
    mv "$file" "$PDF_DIR"
    echo "Moved PDF: $file" >> "$LOGFILE"
done

# Move JPG
find "$DOWNLOADS" -type f -name "*.jpg" | while read file
do
    mv "$file" "$IMG_DIR"
    echo "Moved JPG: $file" >> "$LOGFILE"
done

# Move PNG
find "$DOWNLOADS" -type f -name "*.png" | while read file
do
    mv "$file" "$IMG_DIR"
    echo "Moved PNG: $file" >> "$LOGFILE"
done
