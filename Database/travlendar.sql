/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     05/12/2017 15:12:31                          */
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
   ARRIVAL_TIME         datetime not null,
   EVENT_END            datetime not null,
   DEPARTURE_TIME       datetime not null,
   ORIGIN               varchar(150) not null,
   DESTINATION          varchar(150) not null,
   TRAVEL_MODE          varchar(10) not null,
   AVOID_TOLLS          bool,
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
   HOME                 varchar(150),
   WORKPLACE            varchar(150),
   MAX_WALKING          int,
   primary key (USERNAME)
);

alter table EVENT add constraint FK_HAS foreign key (USERNAME)
      references USER (USERNAME) on delete restrict on update restrict;

