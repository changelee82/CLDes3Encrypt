//
//  CLDes3Encrypt.h
//  CLDes3Encrypt
//
//  Created by 李辉 on 15/12/22.
//  Copyright © 2015年 李辉. All rights reserved.
//  https://github.com/changelee82/CLDes3Encrypt
//

#import <Foundation/Foundation.h>


@interface CLDes3Encrypt : NSObject
{
    size_t movedBytes ;
    uint8_t *bufferPtr ;
}

@property (nonatomic, copy) NSString *encryptKey;

- (id)initWithKey:(NSString *)keyString;
- (NSString *)encryptString:(NSString *)originalString;     // 加密字符串
- (NSString *)decryptString:(NSString *)encryptedString;    // 解密字符串

/**  为单例对象设置全局Key */
+ (void)setSharedKey:(NSString *)keyString;
/**  使用全局Key，加密字符串 */
+ (NSString *)encryptString:(NSString *)originalString;
/**  使用全局Key，解密字符串 */
+ (NSString *)decryptString:(NSString *)encryptedString;

@end
