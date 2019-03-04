/*
* Insertion Sort :: C Implementation
* (GNU GCC)
*/
#include <stdio.h>

typedef int uint_t; // Unsigned type definition

// Function Declarations
void display_list(int*, int);
int* insertion_sort(int*, uint_t);

int main(int argc, char *argv[]){
    int mlist[]     = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    uint_t arr_len  = sizeof(mlist)/sizeof(mlist[0]); 
    display_list(
        insertion_sort(mlist, arr_len), 
        arr_len
    );
    return 0;
}

//Insertion Sort :: CLRS PSEUDOCODE
int* insertion_sort(int* mlist, uint_t ar_size){
    for(int i=1; i<(ar_size); i++){
        int _key    = mlist[i];
        int _cursor = i - 1;
        while(_cursor >= 0 && mlist[_cursor] > _key){
            mlist[_cursor+1] = mlist[_cursor];
            _cursor-=1;
        }
        mlist[_cursor+1] = _key;
    }
    return mlist;
}

void display_list(int* mlist, int size_r){
    for(int i=0; i < size_r; i++){
        fprintf(stdout, "%d ", mlist[i]);
    }
    fprintf(stdout, "\n");
}
