/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     18/12/2017 21:55:01                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   USERNAME             varchar(30) not null,
   EVENT_NAME           varchar(30) not null,
   START_TIME           timestamp not null,
   END_TIME             timestamp,
   DEPARTURE_TIME       timestamp not null,
   DEPARTURE_LOCATION   varchar(150) not null,
   EVENT_LOCATION       varchar(150) not null,
   TRAVEL_MODE          varchar(30) not null,
   primary key (EVENT_ID)
)
auto_increment = 1;

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USERNAME             varchar(30) not null,
   PASSWORD             varchar(20) not null,
   primary key (USERNAME)
);

alter table EVENT add constraint FK_HAS foreign key (USERNAME)
      references USER (USERNAME) on delete restrict on update restrict;

