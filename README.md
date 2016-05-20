# SinaWeiboSDKV
需要用到Sina WeiboSDK的某些特定版本，所以做了个Pod上来，自己管理版本

Crash : -[NSConcreteMutableData wbsdk_base64EncodedString]: unrecognized selector

解决方法有两种 :
1、添加-ObjC或者-all_load配置
2、如果由于-ObjC或者-all_load引起比较多的冲突, 可以尝试用 -force_load $(PODS_ROOT)/SinaWeiboSDKV/libWeiboSDK/libWeiboSDK.a
