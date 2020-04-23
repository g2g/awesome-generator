#!/usr/bin/env bash

_awesome() {
    COMPREPLY=()
    local word
    word="${COMP_WORDS[COMP_CWORD]}"
    local options="$(compgen -W "-h --help $(awesome --help 2>&1 | awesome --help 2>&1 | sed -n '/-[a-z]/{s/^[  ]*\(-[a-z]*\) .*/\1/g;s/[  ]*//g;p}' | sort)" -- "$word")"
    COMPREPLY=( $options )
}

complete -F _awesome awesome
