//
//  APIConst.h
//  HJPassword
//
//  Created by apple on 2017/1/5.
//  Copyright © 2017年 张洪健. All rights reserved.
//

#ifndef APIConst_h
#define APIConst_h
#define ScreenWidth      [UIScreen mainScreen].bounds.size.width
#define ScreenHeight      [UIScreen mainScreen].bounds.size.height
#define UIColorFromRGB(rgbValue)\
\
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:1.0]

#endif /* APIConst_h */
