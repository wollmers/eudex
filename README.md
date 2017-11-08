# !!NOT READY FOR PRODUCTION USE!!
# Eudex: Phonetic reduction/hashing algorithm.
(naive) C port of [ticki/eudex](https://github.com/ticki/eudex) phonetic reduction/hashing algorithm.


# Installation
## Building from source (lib and test)

usage
```
gcc eudex_test.c libeudex.c -ldl -o eudex_test
```

Cmake scripts is not finished yet. Sorry.

Clone this repository
```
cd eudex
mkdir build
cmake -DCMAKE_INSTALL_PREFIX=/tmp/usr ..
make
```

Specify your own (or omit completely) CMAKE_INSTALL_PREFIX to change installation folder

## Run tests
```
./eudex_test
```

## Install
To install libeudex into default or CMAKE_INSTALL_PREFIX folder execute following from 'build' directory
```
make install
```

## Usage Example

```c
#include <stdio.h>
#include "libeudex/libeudex.h"

int main() {
    eudex_t h1 = eudex_new("JAva");
    eudex_t h2 = eudex_new("JavA");
    
    printf("%lu %lu/n",h1 , h2);
    return 0;
}
```
