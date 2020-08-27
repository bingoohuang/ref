#!/usr/bin/awk

function rev(size) {
    hr[1024**2]="G"; hr[1024]="M";
    for (x=1024**3; x>=1024; x/=1024) {
        if (size>=x) {
            return sprintf ("%0.1f%s", size/x, hr[x])
        }
    }

    return sprintf ("%0.1f%s", size, "K")
}

BEGIN {
    printf("USER\tPID\t%%CPU\t%%MEM\tVSZ\tRSS\tTTY\tSTAT\tSTART\tTIME\tCOMMAND\n")
}

{
    if ($6 >= MINKILO) {
        printf("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t",$1,$2,$3,$4,rev($5),rev($6),$7,$8,$9,$10)
        for (x=11; x <= NF; x++) { printf ("%s ",$x) }
        print ("")
    }
}
