# mysql 安装、配置

## Target

为了让本地开发环境（windows，未来 macos）与服务器保持一致，使得 sequelize 代码部署后可以直接运行。

- mysql server 版本： 5.7.23
- node mysql2 版本：^2.2.5
- sequelize 版本：^5.x.x

本地开发也可以直接连接服务器上的 mysql 服务。安全起见还是不开了，只允许 localhost 访问。

## Tips

- 登录 mysql：`mysql -u root -p;`

- 刷新权限：`flush privileges;`

- 增加用户：（测试库用户为 test，qwer1234）

```sql
use mysql;
/*创建*/
create user 'test'@'localhost' identified by 'QWER1234';
/*给权限*/
GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost' IDENTIFIED BY 'QWER1234' WITH GRANT OPTION;
/*检查*/
select host, user from user;
/*刷新权限*/
flush privileges;
```

## ubuntu

- 安装+配置：<https://segmentfault.com/a/1190000020887365>

- 重启 mysql：`sudo service mysql restart`

## windows

- 安装+配置：<https://www.jianshu.com/p/e828166f030b>

- 启动 mysql 服务 `net start mysql`

- 停止 mysql 服务 `net stop mysql`
  （重启=先停止再启动）
