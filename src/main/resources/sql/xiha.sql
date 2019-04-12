# 城市表
create table t_city
(
  id   int primary key auto_increment,#主键 数据库中唯一标识
  name varchar(50)#城市名字
);
insert into t_city
values (0, '郑州');

# 用户表
create table t_user
(
  id        int primary key auto_increment,#id 主键 数据库中唯一标识
  tel       char(11), #手机号 用户名 登陆使用
  email     varchar(20),#邮箱 辅助登陆
  nickname  varchar(20),#昵称
  password  varchar(20),#密码
  status    int(1),#封停状态 0正常状态 1账户被封
  name      varchar(20),#真实姓名
  honest    int,#诚信值
  is_owner  int(1),#是否为车主 0普通用户 1车主
  account   double,#账户
  real_name int(1),#实名状态 0 未实名 1已实名
  address   int references t_city (id) #所在城市
);
# 拼单表
create table t_crowdordering
(
  id                 int primary key auto_increment,#主键 数据库中唯一标识
  becity             int references t_city (id),#出发城市 外键
  destination        int references t_city (id),#目的地 外键
  course_description varchar(200),#路线描述
  start_time         date,#出发时间
  arrive_time        date,#预计到达时间
  vehicle_model      varchar(50),#汽车型号
  remanent_seat      int,#剩余座位
  price              double,#人均费用
  comment            varchar(500),#备注
  owner_id           int references t_user (id)#外键 车主
);
#预约表
create table t_item
(
  id          int primary key auto_increment,#id 主键
  add_time    date,#下单时间
  start_time  date,#出发时间
  arrive_time date,#到达时间
  car_id      int references t_user (id),#车主id外键
  user_id     int references t_user (id)#乘客id 外键
);
#评价表
create table t_appraise
(
  id       int primary key auto_increment,#主键
  car_id   int references t_user (id),#车主id
  user_id  int references t_user (id),#评价人id
  appraise varchar(500),#评价内容
  status   int(1)#状态 是否可见 即删除与否
);
#行程记录表
create table t_travle
(
  id              int primary key auto_increment,
  car_id          int references t_user (id),
  user_id         int references t_user (id),
  add_time        date,
  description     varchar(200),
  appraise_status int(1)
);
