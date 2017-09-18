/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/18/2017 11:34:12 PM                        */
/*==============================================================*/


drop table if exists AGENDA;

drop table if exists KENDARAAN;

drop table if exists TABEL_LOOKUP;

drop table if exists TEMPAT;

/*==============================================================*/
/* Table: AGENDA                                                */
/*==============================================================*/
create table AGENDA
(
   ID_AKUN              char(4) not null,
   ID_AGENDA            char(5) not null,
   ID_TEMPAT            char(4) not null,
   ID_KENDARAAN         char(4) not null,
   WAKTU_TEMPUH         time not null,
   JARAK                bigint not null,
   NAMA_AGENDA          varchar(40),
   WAKTU_AWAL           datetime,
   WAKTU_AKHIR          datetime,
   primary key (ID_AKUN, ID_AGENDA)
);

/*==============================================================*/
/* Table: KENDARAAN                                             */
/*==============================================================*/
create table KENDARAAN
(
   ID_KENDARAAN         char(4) not null,
   NAMA_KENDARAAN       varchar(30),
   JENIS_KENDARAAN      varchar(20),
   MEDAN_KENDARAAN      varchar(40),
   KECEPATAN_RATA_RATA  int,
   primary key (ID_KENDARAAN)
);

/*==============================================================*/
/* Table: TABEL_LOOKUP                                          */
/*==============================================================*/
create table TABEL_LOOKUP
(
   ID_TEMPAT            char(4) not null,
   ID_KENDARAAN         char(4) not null,
   WAKTU_TEMPUH         time not null,
   JARAK                bigint not null,
   TEMPAT_ASAL          varchar(30),
   TEMPAT_TUJUAN        varchar(30),
   TEM_ID_TEMPAT        char(4) not null,
   primary key (ID_TEMPAT, ID_KENDARAAN, WAKTU_TEMPUH, JARAK)
);

/*==============================================================*/
/* Table: TEMPAT                                                */
/*==============================================================*/
create table TEMPAT
(
   ID_TEMPAT            char(4) not null,
   NAMA_TEMPAT          varchar(40),
   primary key (ID_TEMPAT)
);

alter table AGENDA add constraint FK_RELATIONSHIP_10 foreign key (ID_TEMPAT, ID_KENDARAAN, WAKTU_TEMPUH, JARAK)
      references TABEL_LOOKUP (ID_TEMPAT, ID_KENDARAAN, WAKTU_TEMPUH, JARAK) on delete restrict on update restrict;

alter table TABEL_LOOKUP add constraint FK_RELATIONSHIP_12 foreign key (TEM_ID_TEMPAT)
      references TEMPAT (ID_TEMPAT) on delete restrict on update restrict;

alter table TABEL_LOOKUP add constraint FK_RELATIONSHIP_3 foreign key (ID_TEMPAT)
      references TEMPAT (ID_TEMPAT) on delete restrict on update restrict;

alter table TABEL_LOOKUP add constraint FK_RELATIONSHIP_7 foreign key (ID_KENDARAAN)
      references KENDARAAN (ID_KENDARAAN) on delete restrict on update restrict;

