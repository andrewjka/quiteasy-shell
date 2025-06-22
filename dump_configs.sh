#!/usr/bin/bash

CURRENT_DIR=$(pwd)
HOME_DIR=$HOME

DOT_CONFIGS=("hypr" "fish" "ghostty" "nwg-drawer")

dumbp_config() {

    mkdir -p "$CURRENT_DIR/.config"

    for dir in "${DOT_CONFIGS[@]}"; do

        local source_dir="${HOME_DIR}/.config/${dir}"

        local target_dir="${CURRENT_DIR}/.config/${dir}"

        if test -d "$source_dir"; then
            echo "Copying: ${dir} -> .config/${dir}"

            cp -r "$source_dir" "$target_dir"
        else
            echo "Error: directory ${dir} is not found!" >&2
        fi

    done

    echo "Operation completed. Check the contents of ${CURRENT_DIR}/.config"
}

dumbp_config
