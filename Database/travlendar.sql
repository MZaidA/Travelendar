/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     16/10/2017 20:10:24                          */
/*==============================================================*/


drop table if exists DISTRICT;

drop table if exists EVENT;

drop table if exists ISLAND;

drop table if exists LOCATION;

drop table if exists PRIVATE_TRANSPORTATION;

drop table if exists PRIVATE_TRANSPORTATION_TRAVELING;

drop table if exists PROVINCE;

drop table if exists PUBLIC_TRANSPORTATION;

drop table if exists PUBLIC_TRANSPORTATION_TRAVELING;

drop table if exists TRANSPORTATION_BASE;

/*==============================================================*/
/* Table: DISTRICT                                              */
/*==============================================================*/
create table DISTRICT
(
   DISTRICT_ID          int not null,
   PROVINCE_ID          int not null,
   DISTRICT_NAME        varchar(40) not null,
   primary key (DISTRICT_ID)
);

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null,
   PUBLIC_ID            int,
   LOCATION_ID          int,
   LOC_LOCATION_ID      int not null,
   PRIVATE_ID           int,
   EVENT_NAME           varchar(40) not null,
   ARRIVAL_AT_LOCATION  datetime,
   EVENT_FINISHED       datetime,
   DESCRIPTION          varchar(200),
   DEPARTURE_TO_LOCATION datetime,
   primary key (EVENT_ID)
);

/*==============================================================*/
/* Table: ISLAND                                                */
/*==============================================================*/
create table ISLAND
(
   ISLAND_ID            int not null,
   ISLAND_NAME          varchar(40) not null,
   primary key (ISLAND_ID)
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION
(
   LOCATION_ID          int not null,
   DISTRICT_ID          int not null,
   LOCATION_NAME        varchar(40) not null,
   ADDRESS              varchar(200) not null,
   primary key (LOCATION_ID)
);

/*==============================================================*/
/* Table: PRIVATE_TRANSPORTATION                                */
/*==============================================================*/
create table PRIVATE_TRANSPORTATION
(
   PRIVATE_ID           int not null,
   PRIVATE_TYPE         varchar(40) not null,
   primary key (PRIVATE_ID)
);

/*==============================================================*/
/* Table: PRIVATE_TRANSPORTATION_TRAVELING                      */
/*==============================================================*/
create table PRIVATE_TRANSPORTATION_TRAVELING
(
   PRIVATE_TRAVELING_ID int not null,
   LOCATION_ID          int not null,
   LOC_LOCATION_ID      int not null,
   PRIVATE_ID           int not null,
   TRAVELING_TIME       bigint not null,
   primary key (PRIVATE_TRAVELING_ID)
);

/*==============================================================*/
/* Table: PROVINCE                                              */
/*==============================================================*/
create table PROVINCE
(
   PROVINCE_ID          int not null,
   ISLAND_ID            int not null,
   PROVINCE_NAME        varchar(40) not null,
   primary key (PROVINCE_ID)
);

/*==============================================================*/
/* Table: PUBLIC_TRANSPORTATION                                 */
/*==============================================================*/
create table PUBLIC_TRANSPORTATION
(
   PUBLIC_ID            int not null,
   PUBLIC_TYPE          varchar(40) not null,
   PUBLIC_NAME          varchar(40) not null,
   primary key (PUBLIC_ID)
);

/*==============================================================*/
/* Table: PUBLIC_TRANSPORTATION_TRAVELING                       */
/*==============================================================*/
create table PUBLIC_TRANSPORTATION_TRAVELING
(
   PUBLIC_TRAVELING_ID  int not null,
   LOCATION_ID          int not null,
   LOC_LOCATION_ID      int not null,
   PUBLIC_ID            int not null,
   ARRIVAL_SCHEDULE     datetime not null,
   DEPARTURE_SCHEDULE   datetime not null,
   primary key (PUBLIC_TRAVELING_ID)
);

/*==============================================================*/
/* Table: TRANSPORTATION_BASE                                   */
/*==============================================================*/
create table TRANSPORTATION_BASE
(
   PUBLIC_ID            int not null,
   LOCATION_ID          int not null,
   primary key (PUBLIC_ID, LOCATION_ID)
);

alter table DISTRICT add constraint FK_MENGAMBIL_PROVINSI foreign key (PROVINCE_ID)
      references PROVINCE (PROVINCE_ID) on delete restrict on update restrict;

alter table EVENT add constraint FK_MEMILIH_KENDARAAN_PRIBADI_SESUAI_SARAN foreign key (PRIVATE_ID)
      references PRIVATE_TRANSPORTATION (PRIVATE_ID) on delete restrict on update restrict;

alter table EVENT add constraint FK_MEMILIH_KENDARAAN_UMUM_SESUAI_SARAN foreign key (PUBLIC_ID)
      references PUBLIC_TRANSPORTATION (PUBLIC_ID) on delete restrict on update restrict;

alter table EVENT add constraint FK_MEMILIH_LOKASI_AWAL_UNTUK_EVENT_PERTAMA foreign key (LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table EVENT add constraint FK_MEMILIH_LOKASI_EVENT foreign key (LOC_LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table LOCATION add constraint FK_MENGAMBIL_KABUPATEN_KOTA foreign key (DISTRICT_ID)
      references DISTRICT (DISTRICT_ID) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_KENDARAAN_PRIBADI foreign key (PRIVATE_ID)
      references PRIVATE_TRANSPORTATION (PRIVATE_ID) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_PRIBADI foreign key (LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_PRIBADI foreign key (LOC_LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table PROVINCE add constraint FK_MENGAMBIL_PULAU foreign key (ISLAND_ID)
      references ISLAND (ISLAND_ID) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_KENDARAAN_UMUM foreign key (PUBLIC_ID)
      references PUBLIC_TRANSPORTATION (PUBLIC_ID) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_UMUM foreign key (LOC_LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_UMUM foreign key (LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

alter table TRANSPORTATION_BASE add constraint FK_TRANSPORTATION_BASE foreign key (PUBLIC_ID)
      references PUBLIC_TRANSPORTATION (PUBLIC_ID) on delete restrict on update restrict;

alter table TRANSPORTATION_BASE add constraint FK_TRANSPORTATION_BASE2 foreign key (LOCATION_ID)
      references LOCATION (LOCATION_ID) on delete restrict on update restrict;

