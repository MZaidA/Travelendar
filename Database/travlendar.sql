/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     13/11/2017 17:59:39                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   EMAIL                varchar(40) not null,
   EVENT_NAME           varchar(40) not null,
   LAT_FROM             bigint not null,
   LONG_FROM            bigint not null,
   LAT_TO               bigint not null,
   LONG_TO              bigint not null,
   ARRIVAL_TIME         datetime not null,
   EVENT_END            datetime not null,
   DEPARTURE_TIME       datetime not null,
   primary key (EVENT_ID)
)
auto_increment = 1;

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   EMAIL                varchar(40) not null,
   USER_NAME            varchar(30) not null,
   PASSWORD             varchar(30) not null,
   primary key (EMAIL)
);

alter table EVENT add constraint FK_HAVE foreign key (EMAIL)
      references USER (EMAIL) on delete restrict on update restrict;

