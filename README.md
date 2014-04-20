# Gjar 一个简单的jar包同步工具

## install 

1. 安转ruby
2. gem install gjar

## 上传或者下载包

```ruby
host 'ip'
username 'ubuntu'
password 'adsfasdf'
remote_path '/home/ubuntu/jar' # 服务器地址

jar_path './libs' # jar包下载地址

jar 'test', '1.0.1' # jar 包的名字和版本

upload_path './build' # 上传的地址 jar包命名 test-1_1_1.jar
```