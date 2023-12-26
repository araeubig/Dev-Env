# shellcheck shell=bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -d "${HOME}/.local/share/wp-codespaces/login" ] && [ -n "$(ls -A "${HOME}/.local/share/wp-codespaces/login")" ]; then
    for f in "${HOME}"/.local/share/wp-codespaces/login/*; do
        # shellcheck source=/dev/null
        [ -f "${f}" ] && source "${f}"
    done
fi
