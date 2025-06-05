#!/bin/bash

# Get the directory where this script is located
_script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

_cfg="$_script_dir/config"
_dark="$_script_dir/config-dark"
_light="$_script_dir/config-light"

if [ "$(readlink "$_cfg")" = "$_dark" ]; then
    ln -sf "$_light" "$_cfg"
    echo "Switched to light theme."
else
    ln -sf "$_dark" "$_cfg"
    echo "Switched to dark theme."
fi
