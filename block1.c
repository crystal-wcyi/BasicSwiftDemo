//
//  block1.c
//  BasicSwiftDemo
//
//  Created by apple on 2018/9/14.
//  Copyright © 2018年 apple. All rights reserved.
//

/**
 在终端使用clang -rewrite-objc block1.c 命令 即可在目录中看到clang输出了一个block1.cpp的文件。该文件就是block在c语言实现。
 */
#include "block1.h"

int subMain() {
    ^{
        printf("Hello, World!\n");
    }();
    return 0;
}
