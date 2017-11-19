/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     19/11/2017 13:34:03                          */
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
   NAME_ORIGIN          varchar(40) not null,
   LAT_ORIGIN           double not null,
   LNG_ORIGIN           double not null,
   NAME_DESTINATION     varchar(40) not null,
   LAT_DESTINATION      double not null,
   LNG_DESTINATION      double not null,
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
   USER_NAME            varchar(40) not null,
   PASSWORD             varchar(20) not null,
   primary key (EMAIL)
);

alter table EVENT add constraint FK_HAS foreign key (EMAIL)
      references USER (EMAIL) on delete restrict on update restrict;

