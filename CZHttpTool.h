//
//  CZHttpTool.h
//  壁咚交友
//
//  Created by Lenovo on 16/1/26.
//  Copyright © 2016年 Lenovo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CZUploadImageParams;
@interface CZHttpTool : NSObject


//get请求
+(void)get:(NSString *)url parameters:(id)parame  success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure;

//post请求
+(void)post:(NSString *)url parameters:(id)parame  success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure;


//post上传图片请求
+(void)uploadFiel:(NSString *)url parameters:(id)parame andUploadParam:(CZUploadImageParams *)uploadParam success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure;

@end
