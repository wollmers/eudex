#include <stdio.h>
#include "libeudex.h"

// /usr/share/dict/american-english

int main() {
    char s[256];
    FILE *fr = fopen("american-english","r");
    FILE *fw = fopen("c_hash_values", "w");
    while (1) {

        int t = fscanf(fr, "%255s", s);
        if (t == EOF) { break;}
        fprintf(fw, "%lu\n", eudex_new(s));
    }

    fclose(fw);    
    fclose(fr);
    return 0;
}
