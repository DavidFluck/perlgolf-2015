#!/usr/bin/perl -l
$n = pop;
$a = 2;
sub k {push @c, "$a ^ $b" if $b>1;push @c, "$a" if $b==1;}
while ($n > 1) {
    if ($n % $a == 0) {
        $b++;
        $n /= $a;
        next;
    }

    k;
    $b = 0;
    $a++;
}
k;
$,=' * ';
print @c;
