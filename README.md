# KSNetRequest

##使用方法
  KSNetRequest使用起来非常简单，<br>
  * 导入头文件"KSNetRequest.h"<br>
  
```Objective-C
[KSNetRequest requestTarget:self 
                        POST:@"urlString" 
                        parameters:@{} 
                        success:^(NSURLSessionDataTask * _Nullable   task, id  _Nullable responseObject) {} 
                        failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nullable error) {}]
```

target参数目的是用来显示活动指示器

##实现效果



![断网下的网络加载]()

最后感谢AFNetworking提供技术支持.
