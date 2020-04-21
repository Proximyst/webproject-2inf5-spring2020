#!/usr/bin/env bash

cd ./web/

sass() {
    for filename in scss/*.scss
    do
        [ -e "$filename" ] || continue
        name=${filename##*/}
        base=${name%.scss}
        echo
        cmdline="sassc -t expanded -m scss/${base}.scss css/${base}.css"
        echo "${cmdline}"
        ${cmdline}
    done
}

echo "Initial sassc run..."
sass
echo
echo "inotifywait-ing SCSS changes"
while true
do
    inotifywait -e modify,create,delete -r scss/ && \
        sass
done

# vim: set ff=unix autoindent ts=8 sw=4 tw=0 et :
