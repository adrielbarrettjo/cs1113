### hs takes n
### n is required to be a nonzero positive integer
### "your program is permitted to malfunction if the input does not
###    satisfy this constraint"
### if n != 1, print n AND
###     IF n is EVEN, n = n/2
###     IF n is ODD, n = 3*n+1
### if n = 1, print the length of sequence of numbers that has been produced
### and return none

def hs(n):
    count = 0
    while (n != 1):
        print(n)
        if (n % 2 == 0):
            n = n//2
        else:
            n = 3*n+1
        count = count + 1
    print(1)
    print(count)
    return("None")
