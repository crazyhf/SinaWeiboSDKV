# SinaWeiboSDKV
需要用到Sina WeiboSDK的某些特定版本，所以做了个Pod上来，自己管理版本

Crash : -[NSConcreteMutableData wbsdk_base64EncodedString]: unrecognized selector

解决方法有两种 :
1、添加-ObjC或者-all_load配置
2、如果由于-ObjC或者-all_load引起比较多的冲突, 可以尝试用 -force_load $(PODS_ROOT)/SinaWeiboSDKV/libWeiboSDK/libWeiboSDK.a


SinaWeibo HTTPS Error :
[] nw_coretls_read_one_record tls_handshake_process: [-9801]
NSURLSession/NSURLConnection HTTP load failed (kCFStreamErrorDomainSSL, -9801)

解决方法 :
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSExceptionDomains</key>
		<dict>
			<key>sina.cn</key>
			<dict>
				<key>NSIncludesSubdomains</key>
				<true/>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
			<key>sina.com.cn</key>
			<dict>
				<key>NSIncludesSubdomains</key>
				<true/>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
			<key>sinaimg.cn</key>
			<dict>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
			<key>sinajs.cn</key>
			<dict>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
			<key>weibo.cn</key>
			<dict>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
			<key>weibo.com</key>
			<dict>
				<key>NSThirdPartyExceptionMinimumTLSVersion</key>
				<string>TLSv1.0</string>
			</dict>
		</dict>
	</dict>
