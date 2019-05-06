#首字母
create table t_area
(
  id        int primary key auto_increment,
  area_name varchar(50)
);
insert into t_area
values (0, '郑州市');
insert into t_area
values (0, '开封市');
insert into t_area
values (0, '洛阳市');
insert into t_area
values (0, '平顶山市');
insert into t_area
values (0, '安阳市');
insert into t_area
values (0, '鹤壁市');
insert into t_area
values (0, '新乡市');
insert into t_area
values (0, '焦作市');
insert into t_area
values (0, '济源市');
insert into t_area
values (0, '濮阳市');
insert into t_area
values (0, '许昌市');
insert into t_area
values (0, '漯河市');
insert into t_area
values (0, '三门峡市');
insert into t_area
values (0, '南阳市');
insert into t_area
values (0, '商丘市');
insert into t_area
values (0, '信阳市');
insert into t_area
values (0, '周口市');
insert into t_area
values (0, '驻马店市');
# 城市表
select *
from t_area;
create table t_city
(
  id        int primary key auto_increment,#主键 数据库中唯一标识
  city_name varchar(50),#城市名字
  area_id   int references t_area (id)
);
select *
from t_city;
insert into t_city
values (0, '郑州', 1);
insert into t_city
values (0, '中牟县', 1);
insert into t_city
values (0, '巩义市', 1);
insert into t_city
values (0, '荥阳市', 1);
insert into t_city
values (0, '新密市', 1);
insert into t_city
values (0, '新郑市', 1);
insert into t_city
values (0, '登封市', 1);
insert into t_city
values (0, '郑东新区', 1);

insert into t_city
values (0, '开封', 2);
insert into t_city
values (0, '杞县', 2);
insert into t_city
values (0, '通许县', 2);
insert into t_city
values (0, '尉氏县', 2);
insert into t_city
values (0, '开封县', 2);
insert into t_city
values (0, '兰考县', 2);

insert into t_city
values (0, '洛阳', 3);
insert into t_city
values (0, '孟津县', 3);
insert into t_city
values (0, '新安县', 3);
insert into t_city
values (0, '栾川县', 3);
insert into t_city
values (0, '老城区', 3);
insert into t_city
values (0, '嵩县', 3);
insert into t_city
values (0, '汝阳县', 3);
insert into t_city
values (0, '宜阳县', 3);
insert into t_city
values (0, '洛宁县', 3);
insert into t_city
values (0, '伊川县', 3);
insert into t_city
values (0, '偃师县', 3);

insert into t_city
values (0, '平顶山', 4);
insert into t_city
values (0, '宝丰县', 4);
insert into t_city
values (0, '叶县', 4);
insert into t_city
values (0, '鲁山县', 4);
insert into t_city
values (0, '郏县', 4);
insert into t_city
values (0, '舞钢市', 4);
insert into t_city
values (0, '宝丰县', 4);
insert into t_city
values (0, '汝阳市', 4);

insert into t_city
values (0, '安阳', 5);
insert into t_city
values (0, '安阳县', 5);
insert into t_city
values (0, '汤阴县', 5);
insert into t_city
values (0, '滑县', 5);
insert into t_city
values (0, '内黄县', 5);
insert into t_city
values (0, '林州市', 5);

insert into t_city
values (0, '鹤壁', 6);
insert into t_city
values (0, '浚县', 6);
insert into t_city
values (0, '淇县', 6);

insert into t_city
values (0, '新乡', 7);
insert into t_city
values (0, '新乡县', 7);
insert into t_city
values (0, '获嘉县', 7);
insert into t_city
values (0, '原阳县', 7);
insert into t_city
values (0, '延津县', 7);
insert into t_city
values (0, '封丘县', 7);
insert into t_city
values (0, '长恒县', 7);
insert into t_city
values (0, '卫辉市', 7);
insert into t_city
values (0, '辉县市', 7);

insert into t_city
values (0, '焦作', 8);
insert into t_city
values (0, '修武县', 8);
insert into t_city
values (0, '博爱县', 8);
insert into t_city
values (0, '武陟县', 8);
insert into t_city
values (0, '温县', 8);
insert into t_city
values (0, '沁阳县', 8);
insert into t_city
values (0, '孟州市', 8);

insert into t_city
values (0, '济源', 9);

insert into t_city
values (0, '濮阳', 10);
insert into t_city
values (0, '清丰县', 10);
insert into t_city
values (0, '南乐县', 10);
insert into t_city
values (0, '范县', 10);
insert into t_city
values (0, '台前县', 10);
insert into t_city
values (0, '濮阳县', 10);
insert into t_city
values (0, '清丰县', 10);

insert into t_city
values (0, '许昌', 11);
insert into t_city
values (0, '许昌县', 11);
insert into t_city
values (0, '鄢陵县', 11);
insert into t_city
values (0, '襄城县', 11);
insert into t_city
values (0, '禹州市', 11);
insert into t_city
values (0, '长葛市', 11);

insert into t_city
values (0, '漯河', 12);
insert into t_city
values (0, '舞阳县', 12);
insert into t_city
values (0, '临颍县', 12);

insert into t_city
values (0, '三门峡', 13);
insert into t_city
values (0, '渑池县', 13);
insert into t_city
values (0, '陕县', 13);
insert into t_city
values (0, '卢氏县', 13);
insert into t_city
values (0, '义马市', 13);
insert into t_city
values (0, '灵宝市', 13);

insert into t_city
values (0, '南阳', 14);
insert into t_city
values (0, '南召县', 14);
insert into t_city
values (0, '方城县', 14);
insert into t_city
values (0, '西峡县', 14);
insert into t_city
values (0, '镇平县', 14);
insert into t_city
values (0, '内乡县', 14);
insert into t_city
values (0, '淅川县', 14);
insert into t_city
values (0, '社旗县', 14);
insert into t_city
values (0, '唐河县', 14);
insert into t_city
values (0, '新野县', 14);
insert into t_city
values (0, '桐柏县', 14);
insert into t_city
values (0, '邓州市', 14);

insert into t_city
values (0, '商丘', 15);
insert into t_city
values (0, '民权县', 15);
insert into t_city
values (0, '睢县', 15);
insert into t_city
values (0, '宁陵县', 15);
insert into t_city
values (0, '拓城县', 15);
insert into t_city
values (0, '虞城县', 15);
insert into t_city
values (0, '夏邑县', 15);
insert into t_city
values (0, '永城市', 15);

insert into t_city
values (0, '信阳', 16);
insert into t_city
values (0, '罗山县', 16);
insert into t_city
values (0, '光山县', 16);
insert into t_city
values (0, '新县', 16);
insert into t_city
values (0, '商城县', 16);
insert into t_city
values (0, '固始县', 16);
insert into t_city
values (0, '潢川县', 16);
insert into t_city
values (0, '淮滨县', 16);
insert into t_city
values (0, '息县', 16);
# 用户表
insert into t_city
values (0, '周口', 17);
insert into t_city
values (0, '扶沟县', 17);
insert into t_city
values (0, '西华县', 17);
insert into t_city
values (0, '商水县', 17);
insert into t_city
values (0, '沈丘县', 17);
insert into t_city
values (0, '郸城县', 17);
insert into t_city
values (0, '淮阳县', 17);
insert into t_city
values (0, '太康县', 17);
insert into t_city
values (0, '鹿邑县', 17);
insert into t_city
values (0, '项城市', 17);

insert into t_city
values (0, '驻马店', 18);
insert into t_city
values (0, '西平县', 18);
insert into t_city
values (0, '上蔡县', 18);
insert into t_city
values (0, '平舆县', 18);
insert into t_city
values (0, '正阳县', 18);
insert into t_city
values (0, '确山县', 18);
insert into t_city
values (0, '泌阳县', 18);
insert into t_city
values (0, '汝南县', 18);
insert into t_city
values (0, '遂平县', 18);
insert into t_city
values (0, '新蔡县', 18);

select t1.*,t2.id city_id,t2.city_name
from t_area t1
       left join t_city t2 on t1.id = t2.area_id;


create table t_user
(
  id          int primary key auto_increment,#id 主键 数据库中唯一标识
  tel         char(11), #手机号 用户名 登陆使用
  email       varchar(20),#邮箱 辅助登陆
  nickname    varchar(20),#昵称
  password    varchar(50),#密码
  status      int(1),#封停状态 0正常状态 1账户被封
  real_name   varchar(20),#真实姓名
  honest      int,#诚信值
  is_owner    int(1),#是否为车主 0普通用户 1车主
  account     double,#账户
  real_status int(1),#实名状态 0 未实名 1已实名
  address     int references t_city (id) #所在城市
);
#测试用户
insert into t_user
values (0, '18860355856', '2910346628@qq.com', '小丸子', 'E10ADC3949BA59ABBE56E057F20F883E', 0, '周强', 100, 0, 0, 0, 2);
select *
from t_user;
select t1.*,t2.city_name,t3.id area_id,t3.area_name
from
  t_user t1
    left join t_city t2 on t1.address = t2.id
    left join t_area t3 on t2.area_id = t3.id;

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
  #加属性创建时间 add-time
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
#建议表 主要有 建议内容 用户id 联系方式 创建时间