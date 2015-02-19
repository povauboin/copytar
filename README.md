copytar
=======

Copy files using 'script' log file, when you cannot easily scp.

### Example usage:

```console
m$ script 20150219_h2_laurent.txt
Script started, file is 20150219_h2_laurent.txt
m$ ssh h1
h1$ ssh h2
h2$ ls -l /bin/fgrep                                                                    
-rwxr-xr-x 1 root root 158 Jan 21 13:13 /bin/fgrep*
h2$ ./copytar-encode.sh /bin/fgrep                                                      
tar: Removing leading `/' from member names
COPYTAR H4sIAOEz5lQAA+3ST0vDMBgG8JzzKR5rPFgYSbt1BUtBL+LRg1+gq+mWSydNhIHsuy8pouBBT0OF53fIm+R984eQjRv1sJ3sizgfE9VVNcfoazTlci2KclXVdbGsV6UwRYylgDnjnT68+tBNgJj2+/Bd3U/5f+ryQm/iF/A7mT5BmxrZd95CGbhRArnOr2MAnt3UqjdzpfPjPHYDgvUBiwMyFZM6rc0ahJ0d5wLg8e7poU25G5W677OfB6XR4JpGWt/10h5sD5USWNzHPW8z+duvQ0RERERERERERERERERERERE9HedAAgRqv8AKAAA
h2$ exit
h1$ exit
m$ exit
Script done, file is 20150219_h2_laurent.txt
m$ ./copytar-decode.sh 20150219_h2_laurent.txt
COPYTAR archive found !
bin/fgrep
m$ ls -l bin/fgrep
-rwxr-xr-x 1 laurent laurent 158 Jan 21 13:13 bin/fgrep*
```
