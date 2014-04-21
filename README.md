# Gjar 一个简单的jar包同步工具

## install 

1. 安转ruby
2. gem install gjar

## 上传或者下载包

在项目目录下添加Jarfile 文件，写入:

```ruby
host 'ip'
username 'ubuntu'
password 'adsfasdf'
remote_path '/jar' # 服务器地址

jar_path './libs' # jar包下载地址

jar 'test', '1.0.1' # jar 包的名字和版本

upload_path './build' # 上传的地址 jar包命名 test-1_1_1.jar
```

## 如何配置服务端

需要配置服务器sftp，下面给出一个例子

groupadd sftp
sudo useradd -g sftp -s /sbin/nologin -M sftp
sudo passwd sftp
cd /home  
sudo mkdir sftp  
sudo chown root:sftp sftp  
sudo chmod 755 sftp
cd /home  
sudo mkdir sftp  
sudo chown root:sftp sftp  
sudo chmod 755 sftp
cd sftp  
sudo mkdir report  
sudo chown sftp:sftp jar/

sudo vim /etc/ssh/sshd_config
#Subsystem      sftp    /usr/libexec/openssh/sftp-server  
Subsystem       sftp    internal-sftp  

Match User sftp  
X11Forwarding no  
AllowTcpForwarding no  
ForceCommand internal-sftp  
ChrootDirectory /home/sftp
sudo service ssh restart

## 同步包

gjar 即可