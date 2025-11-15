#!/bin/bash

if ! command -v gallery-dl &> /dev/null; then
    echo -e "\e[31m[ ✖ ] Error: gallery-dl is not installed. Please install it first.\e[0m"
    exit 1
fi

cat << "EOF"
  __  __                      _   _                      
 |  \/  |__ _ _ _ ___ __ __ _| |_| |_  __ ___ _ _        
 | |\/| / _` | '_/ -_) _/ _` |  _| ' \/ _/ -_) '_|       
 |_|  |_\__,_|_| \___\__\__,_|\__|_||_\__\___|_|         
  _   _ _  _____ ___ __  __   _ _____ ___  __   ___  __  
 | | | | ||_   _|_ _|  \/  | /_\_   _| __| \ \ / / |/  \ 
 | |_| | |__| |  | || |\/| |/ _ \| | | _|   \ V /| | () |
  \___/|____|_| |___|_|  |_/_/ \_\_| |___|   \_/ |_|\__/ 
EOF

echo -e "\e[32m[ ✔ ] Ready. Let's catch some mares! Skript by schneili.xyz\e[0m\n"
sleep 2

echo "Options:"
echo "[1] Start now"
echo "[2] Cancel"
echo
read -p "Enter your choice: " choice

urls=(
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
)

case $choice in
    1)
        echo ">> Starting downloads..."
        ;;
    2)
        echo ">> Cancelled."
        exit 0
        ;;
    *)
        echo "Invalid choice."
        exit 1
        ;;
esac

while true; do
    success_count=0
    error_count=0

    for url in "${urls[@]}"; do
        [ -z "$url" ] && continue
        echo -e "\n\e[34m[ → ]\e[0m Downloading from: $url"
        gallery-dl --retries 1 --filename "{filename[:50]}.{extension}" --rename "{filename[:50]}" "$url"
        status=$?
        if [ $status -ne 0 ]; then
            echo -e "\e[31m[ ✖ ]\e[0m Failed to download from: $url"
            ((error_count++))
        else
            echo -e "\e[32m[ ✔ ]\e[0m Success: $url"
            ((success_count++))
        fi
    done

    echo -e "\n\e[36mDownload summary:\e[0m"
    echo -e "  \e[32m✔ Success:\e[0m $success_count"
    echo -e "  \e[31m✖ Errors:\e[0m $error_count"

    echo -e "\n\e[32m✔ Finished ripping.\e[0m"
    echo "Sleeping for 12 hours..."
    sleep 43200
done
