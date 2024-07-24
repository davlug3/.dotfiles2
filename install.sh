#!/bin/bash
## Chatgpt 

DOTFILES_DIR=~/.dotfiles/home


link_dotfiles() {
    for SRC in "$DOTFILES_DIR"/* "$DOTFILES_DIR"/.*; do
	echo "for... $SRC" 
        if [ -f "$SRC" ]; then
	    echo "for2..."
            FILE=$(basename "$SRC")
            TARGET="$HOME/$FILE"

            if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
                echo "Removing existing file or symlink: $TARGET"
                rm -rf "$TARGET"
            fi

            echo "Creating symlink: $TARGET -> $SRC"
            ln -s "$SRC" "$TARGET"
        fi
    done
    echo "Dotfiles have been linked."
}


unlink_dotfiles() {
    for SRC in "$DOTFILES_DIR"/* "$DOTFILES_DIR"/.*; do
        if [ -f "$SRC" ]; then
            FILE=$(basename "$SRC")
            TARGET="$HOME/$FILE"

            if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
                echo "Removing symlink or file: $TARGET"
                rm -rf "$TARGET"
            else
                echo "No symlink or file to remove at: $TARGET"
            fi
        fi
    done
    echo "Dotfiles have been unlinked."
}

# Check arguments
case "$1" in
    link)
        link_dotfiles
        ;;
    unlink)
        unlink_dotfiles
        ;;
    *)
        echo "Usage: $0 {link|unlink}"
        exit 1
        ;;
esac

