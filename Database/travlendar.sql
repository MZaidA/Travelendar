/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/19/2017 12:00:01 PM                        */
/*==============================================================*/


drop table if exists AGENDA;

drop table if exists AKUN;

drop table if exists KENDARAAN;

drop table if exists TABEL_LOOKUP;

/*==============================================================*/
/* Table: AGENDA                                                */
/*==============================================================*/
create table AGENDA
(
   ID_AKUN              char(4) not null,
   ID_KENDARAAN         char(3) not null,
   ID_AGENDA            char(5) not null,
   NAMA_AGENDA          varchar(40),
   WAKTU_AWAL           datetime,
   WAKTU_AKHIR          datetime,
   LOKASI_AWAL          varchar(60),
   LOKASI_AKHIR         varchar(60),
   primary key (ID_AKUN, ID_KENDARAAN, ID_AGENDA)
);

/*==============================================================*/
/* Table: AKUN                                                  */
/*==============================================================*/
create table AKUN
(
   ID_AKUN              char(4) not null,
   ID_KENDARAAN         char(3),
   ID_TABEL_LOOKUP      char(5),
   NAMA_ASLI            varchar(30),
   USERNAME             varchar(20),
   EMAIL                varchar(40),
   PASSWORD             varchar(20),
   primary key (ID_AKUN)
);

/*==============================================================*/
/* Table: KENDARAAN                                             */
/*==============================================================*/
create table KENDARAAN
(
   ID_KENDARAAN         char(3) not null,
   NAMA_KENDARAAN       varchar(30),
   JENIS_KENDARAAN      varchar(10),
   MEDAN_KENDARAAN      varchar(10),
   primary key (ID_KENDARAAN)
);

/*==============================================================*/
/* Table: TABEL_LOOKUP                                          */
/*==============================================================*/
create table TABEL_LOOKUP
(
   ID_KENDARAAN         char(3) not null,
   ID_TABEL_LOOKUP      char(5) not null,
   JARAK_TEMPUH         double,
   WAKTU_TEMPUH         time,
   TEMPAT_ASAL          varchar(60),
   TEMPAT_TUJUAN        varchar(60),
   primary key (ID_KENDARAAN, ID_TABEL_LOOKUP)
);

alter table AGENDA add constraint FK_RELATIONSHIP_1 foreign key (ID_AKUN)
      references AKUN (ID_AKUN) on delete restrict on update restrict;

alter table AGENDA add constraint FK_RELATIONSHIP_4 foreign key (ID_KENDARAAN)
      references KENDARAAN (ID_KENDARAAN) on delete restrict on update restrict;

alter table AKUN add constraint FK_RELATIONSHIP_5 foreign key (ID_KENDARAAN, ID_TABEL_LOOKUP)
      references TABEL_LOOKUP (ID_KENDARAAN, ID_TABEL_LOOKUP) on delete restrict on update restrict;

alter table TABEL_LOOKUP add constraint FK_RELATIONSHIP_6 foreign key (ID_KENDARAAN)
      references KENDARAAN (ID_KENDARAAN) on delete restrict on update restrict;

