# Word Quiz Helper

This is a program to:

## Find anagrams

```
find_anagrams computer
cup metro
...
```

## Find words of given length within given letters

```
./find_by_letters 4 feburary
barf
free
fear
...
```

## Hide a secret message from evil teachers 

```
./secret_code 1-letter encode abc # -> bcd
./secret_code 1-letter decode bcd # -> abc

./secret_code symbol encode "do not show this to a teacher" # -> $0 /05 4)08 5)*4 50 ! 5%!#)%3
./secret_code symbol decode '$0 /05 4)08 5)*4 50 ! 5%!#)%3' # -> do not show this to a teacher
```
