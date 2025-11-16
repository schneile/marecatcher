# MareCatcher.sh

> **Note:** I am **not responsible for gallery-dl**. Please **do not open issues related to gallery-dl** here.  
> This script is only a wrapper and automation tool that uses gallery-dl.

---

## About

I created a simple **shell script** for **[gallery-dl](https://github.com/mikf/gallery-dl)** that allows you to download multiple URLs in one go.  
Make sure you have gallery-dl installed and properly configured before using this script.

### Features
- Supports as many URLs as you want in one script  
- Automated 12-hour download schedule  
- Displays failed downloads at the end of each cycle  
- Automatically renames files to avoid filename length issues  
- Simple interactive start/cancel option  

---

## How to Use

1. **Download** the script from the repository.  
2. **Place** it in the folder where you want the downloaded files to be saved.
3. **Edit** the links in the Script with nano or vim and change the `https://yourlink.here` URL's to your desired ones.
```
urls=(
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
"https://yourlink.here"
)
```
5. **Open** a shell in that same folder.  
6. Make the script executable: `chmod +x ./marecatcher.sh`
7. Execute the script with: `./marecatcherclassic.sh`

_Small bonus tip: Make sure to run the script inside a tmux or screen session so it doesn’t get terminated when you close the terminal._

---

## License

This project is licensed under the **Creative Commons Attribution 4.0 International License (CC BY 4.0)**.  
You are free to share and adapt this script, as long as you give proper credit and provide a link to the original repository.

For full details, see: [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/)
