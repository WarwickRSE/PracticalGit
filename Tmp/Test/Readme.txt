
This code reproduces a result which may be the shortest maths paper ever written.

It disproves Euler's Sum of Powers conjecture, which states that for integers n and k larger
than 2 if the sum of n k-th powers of positive integers is itself a k-th power, then n >= k

That is, a_1^5 + a_2^5 + a_3^5 + ... = b^5 only if there are at least 5 terms on the left.

The paper is at http://www.ams.org/journals/bull/1966-72-06/S0002-9904-1966-11654-3/S0002-9904-1966-11654-3.pdf
and the problem was used as a burn-in test for a new CDC 600 computer.

This code finds a counter example. Because the problem uses integers, I found that taking 5th roots, even of
doubles, was not good enough and gave false positives. Instead the code calculates a list of 5th powers and
uses a simple binary search.

The initial commit is deliberately poor and has one or two minor errors, so Bill and Ben were both
tasked with cleaning it up. They each made two commits and sadly, their work collides.

