create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (id  bigserial not null, primary key (id))
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, primary key (id))
create table booster_account (id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (boostCoin int4 not null, id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice float8 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
create table Account (acc_type varchar(31) not null, id  bigserial not null, acc_name varchar(255), boostCoin int4 not null, email varchar(255), password varchar(255), primary key (id))
create table boost_order (id  bigserial not null, basePrice int4 not null, bonusPercentage float8 not null, deadLine timestamp, gameType varchar(255), numberOfGames int4 not null, orderType varchar(255), status varchar(255), booster_id int8, customer_id int8, game_acc_id int8, primary key (id))
create table booster_account (honorPoints int4 not null, id int8 not null, primary key (id))
create table customer_account (id int8 not null, primary key (id))
create table game_account (id  bigserial not null, acc_name varchar(255), acc_type varchar(255), password varchar(255), customer_acc int8, primary key (id))
create table lol_boost_order (currentRank varchar(255), id int8 not null, primary key (id))
alter table Account add constraint UK_ij7u2x7eymulc4g216plmunei unique (acc_name)
alter table Account add constraint UK_cs5bnaggwuluahrdh8mbs1rpe unique (email)
alter table boost_order add constraint FKsu1sh9bavl4inmwgylh4btr2t foreign key (booster_id) references booster_account
alter table boost_order add constraint FKdpya5qiapaqa7k1jnum1674td foreign key (customer_id) references customer_account
alter table boost_order add constraint FKaur61vpp54fb1ro91d1x20ujy foreign key (game_acc_id) references game_account
alter table booster_account add constraint FK7d6c7h539qn7ctwa5uonh41xi foreign key (id) references Account
alter table customer_account add constraint FKpahmvg8fawqpajbubij83f1vv foreign key (id) references Account
alter table game_account add constraint FKdi7wgs14rrfk1sgruh461dddg foreign key (customer_acc) references Account
alter table lol_boost_order add constraint FKq79wkr5l6hfd2r9gn9pnyi0rq foreign key (id) references boost_order
