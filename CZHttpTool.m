//
//  CZHttpTool.m
//  壁咚交友
//
//  Created by Lenovo on 16/1/26.
//  Copyright © 2016年 Lenovo. All rights reserved.
//

#import "CZHttpTool.h"
#import "AFNetworking.h"
#import "CZUploadImageParams.h"

@implementation CZHttpTool

//get请求
+(void)get:(NSString *)url parameters:(id)parame  success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure{

    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    
    [manger GET:url parameters:parame success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //成功的时候调用外部的方法
        if (success) {
            success(responseObject);

        }
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
    //失败的时候调用外部方法
        
        if (failure) {
            failure(error);

        }
        
    }];






}
//post请求
+(void)post:(NSString *)url parameters:(id)parame  success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure{


    
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    
    [manger POST:url parameters:parame success:^(AFHTTPRequestOperation *operation, id responseObject) {
    
        if (success) {
            success(responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];

}



//post上传图片请求

+(void)uploadFiel:(NSString *)url parameters:(id)parame andUploadParam:(CZUploadImageParams*)uploadParam success:(void(^)(id responseObject))success failure:(void (^)(NSError* error))failure{
    AFHTTPRequestOperationManager *manger =[AFHTTPRequestOperationManager manager];
    [manger POST:url parameters:parame constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        //拼接数据体
        [formData appendPartWithFileData:uploadParam.data name:uploadParam.name fileName:uploadParam.fileName mimeType:uploadParam.mimeType];
        
        
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
    
        if (success) {
            success(responseObject);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];




}

@end
