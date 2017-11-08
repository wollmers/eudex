#  C port of [ticki/eudex](https://github.com/ticki/eudex) Eudex: phonetic reduction/hashing algorithm.

# Installation
## Building from source (lib and tests)
Cmake scripts is not finished yet.


# Tests
Test data and run script is located inside test_data directory.
Before running tests please install rustc compiler and cargo package manager (to build eudex reference data)
Open terminal, navigate to test_data folder and run following command
```
sh ./test.sh
```


# Code example

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
