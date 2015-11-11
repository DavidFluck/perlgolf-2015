# Post Mortem

This repository contains a solution to the Barracuda Networks 2015 Perlgolf Competition. The goal was to write the shortest possible Perl program to find the prime factorization of an arbitrary integer.

I began researching prime factorization algorithms, and although some seemed promising, they all ended up taking too much space code-wise. I decided to settle for divisibility testing because it's short and sweet.

At first I attempted to generate all prime numbers and test divisibility by each one, which would eventually result in a prime factorization. Generating primes was accomplished by Abigail's famous prime number regex, which generates a string of 1s and tests for primality by exploiting Perl regex backreferences.

While it was a neat trick, I eventually realized that testing for divisibility by primes was unnecessary. Instead I could just do trial division with every number. Testing the non-primes was a waste computationally, but I realized that none of the composite numbers would divide the given integer anyway (and we were going for terse, not efficient).

This reduced my program's length, but not by as much as I would have liked. Text formatting took up a decent amount of space and I was quickly running out of time (we only had a week). That being said, I was sufficiently proud of my program: I'd written a program that found the prime factorization of an integer in only 139 characters (with the final 2 being due to the `-l` command-line flag, which was necessary to get the final newline). I submitted what I had and definitely look forward to playing another round of golf.

# The Code
The repository contains two files: `factor.pl` and `factor-mini.pl`. `factor.pl` is the original, un-golfed version, whereas `factor-mini.pl` is the same program with the spaces removed. It's guaranteed to work with Perl 5.8.8.
