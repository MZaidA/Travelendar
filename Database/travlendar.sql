/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     08/11/2017 14:11:37                          */
/*==============================================================*/


drop table if exists EVENT;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   EVENT_NAME           varchar(40) not null,
   LAT_FROM             bigint not null,
   LONG_FROM            bigint not null,
   LAT_TO               bigint not null,
   LONG_TO              bigint not null,
   ARRIVAL_AT_LOCATION  datetime not null,
   EVENT_FINISHED       datetime not null,
   DEPARTURE_TO_LOCATION datetime,
   primary key (EVENT_ID)
)
auto_increment = 1;

