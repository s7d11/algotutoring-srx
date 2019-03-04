# -*- coding: utf-8 -*-
"""
    A python implementation of Insertion Sort
"""
def insertion_sort(mlist):
    for i in range(1, len(mlist)):
        key = mlist[i]
        _cursor = i - 1
        while(_cursor >= 0 and mlist[_cursor] > key):
            mlist[_cursor+1] = mlist[_cursor]
            _cursor -= 1
        mlist[_cursor+1] = key
    return mlist

print(insertion_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]))
