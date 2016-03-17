# Login
在做登录注册的时候往往需要设置TextField的leftView，如果直接添加一个UIImageView到leftView，textField的光标就会紧挨着图片导致界面不是太美观，解决这个问题的方法非常简单，只需要把UIImageView添加到一个UIView里设置好位置，再把UIView放到textField的leftView里就好了<br/>
![login](https://github.com/zyfoolboy/Login/blob/master/Login/Login/Assets.xcassets/login.dataset/login.gif)<br/>
设置圆角使用self.layer.cornerRadius<br/>
当该试图有子视图时需要加一句self.layer.masksToBounds = YES;<br/>
该句话决定子layer是否被当前layer的边界剪切。

