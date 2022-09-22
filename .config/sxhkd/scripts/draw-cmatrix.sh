rect="$(slop -r blur1,refract -b 5)" && {
    bspc rule -a '*' -o state=floating center=false rectangle="$rect"
    kitty -e cmatrix &
}
