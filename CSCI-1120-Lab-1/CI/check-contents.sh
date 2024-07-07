#!/bin/bash

curdir=$1 # starting directory that user passed in

thefile="${curdir}/one/07kindhearted"
target="people beatbox their way into my heart"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/17start"
target="picking flowers and sing me a song about not letting anything go, ever"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/01never"
target="tell me not to tell me what's for dinner"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/19history"
target="is boring, unless it's about puppies because puppies are awesome"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/three/08spot"
target="the difference between these two pictures"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/three/09today"
target="is the first day of your new life as a living thing"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/three/10tame"
target="the lions before you put your head in their mouth"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/one/two/three/18curious"
target="ity killed the cat, and that's sad"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/05gonna"
target="take you out for a steak dinner"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/15sulky"
target="children really test the bounds of child abuse law"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/that/06bike"
target="all the way to town using only one leg and an expensive hat"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/that/11give"
target="me a hug and buy me dinner because you're making me hungry"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/that/12expensive"
target="rings are expensive things and that's sad"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/that/theother/04conscious"
target="decisions make conscious efforts"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/this/that/theother/16you"
target="should cook dinner for the one you love, especially if it's a puppy"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/us/02card"
target="these kids at the door"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/us/them/03spoil"
target="every puppy you see, but not the flowers"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/us/them/13boot"
target="him out of the boat and save yourself"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/us/them/14water"
target="the garden, unless you're scared of flowers"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

thefile="${curdir}/us/them/20up"
target="the creek without paddle will make me late for dinner"
if [ "$(cat $thefile)" == "$target" ]; then
    echo "match: ${thefile}"
else
    echo "fail: ${thefile}"
    exit -1
fi

exit 0
