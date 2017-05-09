--------------------------------------------
-- Export file for user ALEF              --
-- Created by serena on 2010-1-2, 5:01:44 --
--------------------------------------------

spool ACCOUNT.log

prompt
prompt Creating table ACCOUNTWORLD
prompt ===========================
prompt
create table ALEF.ACCOUNTWORLD
(
  ACCOUNTID VARCHAR2(32),
  WORLD     VARCHAR2(20),
  BANKMONEY NUMBER(20),
  BANKSIZE  NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.ACCOUNTWORLD_PK on ALEF.ACCOUNTWORLD (ACCOUNTID, WORLD)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ALT_CASHITEM
prompt ===========================
prompt
create table ALEF.ALT_CASHITEM
(
  ACTCODE      VARCHAR2(10),
  WDATE        DATE,
  IPADDR       VARCHAR2(15),
  ACCOUNTID    VARCHAR2(32),
  CHARID       VARCHAR2(32),
  CHARTID      NUMBER(10),
  CHARLV       NUMBER(10),
  CHAREXP      NUMBER(10),
  GHELDINVEN   NUMBER(20),
  GHELDBANK    NUMBER(20),
  ITEMSEQ      NUMBER(20),
  ITEMTID      NUMBER(10),
  ITEMQTY      NUMBER(10),
  ITEMCONVHIST VARCHAR2(128),
  ITEMOPTION   VARCHAR2(32),
  GHELD        NUMBER(10),
  CHARID2      VARCHAR2(32),
  INUSE        NUMBER(10),
  USECOUNT     NUMBER(10),
  REMAINTIME   NUMBER(10),
  EXPIREDATE   DATE,
  DESCR        VARCHAR2(64)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ALT_ETC
prompt ======================
prompt
create table ALEF.ALT_ETC
(
  ACTCODE    VARCHAR2(10),
  WDATE      DATE,
  IPADDR     VARCHAR2(15),
  ACCOUNTID  VARCHAR2(32),
  CHARID     VARCHAR2(32),
  CHARTID    NUMBER(10),
  CHARLV     NUMBER(10),
  CHAREXP    NUMBER(10),
  GHELDINVEN NUMBER(20),
  GHELDBANK  NUMBER(20),
  NUMID      NUMBER(10),
  STRID      VARCHAR2(32),
  DESCR      VARCHAR2(64),
  GHELD      NUMBER(10),
  CHARID2    VARCHAR2(32)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ALT_GHELD
prompt ========================
prompt
create table ALEF.ALT_GHELD
(
  ACTCODE    VARCHAR2(10),
  WDATE      DATE,
  IPADDR     VARCHAR2(15),
  ACCOUNTID  VARCHAR2(32),
  CHARID     VARCHAR2(32),
  CHARTID    NUMBER(10),
  CHARLV     NUMBER(10),
  CHAREXP    NUMBER(10),
  GHELDINVEN NUMBER(20),
  GHELDBANK  NUMBER(20),
  GHELD      NUMBER(10),
  CHARID2    VARCHAR2(32)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ALT_ITEM
prompt =======================
prompt
create table ALEF.ALT_ITEM
(
  ACTCODE      VARCHAR2(10),
  WDATE        DATE,
  IPADDR       VARCHAR2(15),
  ACCOUNTID    VARCHAR2(32),
  CHARID       VARCHAR2(32),
  CHARTID      NUMBER(10),
  CHARLV       NUMBER(10),
  CHAREXP      NUMBER(10),
  GHELDINVEN   NUMBER(20),
  GHELDBANK    NUMBER(20),
  ITEMSEQ      NUMBER(20),
  ITEMTID      NUMBER(10),
  ITEMQTY      NUMBER(10),
  ITEMCONVHIST VARCHAR2(128),
  ITEMOPTION   VARCHAR2(32),
  GHELD        NUMBER(10),
  CHARID2      VARCHAR2(32),
  INUSE        NUMBER(10),
  USECOUNT     NUMBER(10),
  REMAINTIME   NUMBER(10),
  EXPIREDATE   DATE,
  DESCR        VARCHAR2(64)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ALT_PLAY
prompt =======================
prompt
create table ALEF.ALT_PLAY
(
  ACTCODE    VARCHAR2(10),
  WDATE      DATE,
  IPADDR     VARCHAR2(15),
  ACCOUNTID  VARCHAR2(32),
  CHARID     VARCHAR2(32),
  CHARTID    NUMBER(10),
  CHARLV     NUMBER(10),
  CHAREXP    NUMBER(10),
  GHELDINVEN NUMBER(20),
  GHELDBANK  NUMBER(20),
  CHARLVFROM NUMBER(10),
  PARTYTIME  NUMBER(10),
  SOLOTIME   NUMBER(10),
  KILLPC     NUMBER(10),
  KILLMON    NUMBER(10),
  DEADBYPC   NUMBER(10),
  DEADBYMON  NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_ACCOUNT
prompt ==========================
prompt
create table ALEF.AMT_ACCOUNT
(
  ACCOUNTID VARCHAR2(32),
  PASSWORD  VARCHAR2(8)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.AMT_ACCOUNTPK on ALEF.AMT_ACCOUNT (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_ACCOUNTLOG
prompt =============================
prompt
create table ALEF.AMT_ACCOUNTLOG
(
  ACCOUNT_SEQID NUMBER(10) not null,
  ACCOUNT_ID    VARCHAR2(32) not null,
  NAME          VARCHAR2(30) not null,
  LOG_TYPE      VARCHAR2(2) not null,
  LOG_DATE      DATE not null,
  IP            VARCHAR2(23) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_ACCOUNTLOG_IX on ALEF.AMT_ACCOUNTLOG (ACCOUNT_ID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_ACCOUNTLOG_IX1 on ALEF.AMT_ACCOUNTLOG (LOG_DATE, ACCOUNT_ID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_ACCOUNTLOG_IX2 on ALEF.AMT_ACCOUNTLOG (LOG_TYPE)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_MASTER
prompt =========================
prompt
create table ALEF.AMT_MASTER
(
  ACCOUNTID      VARCHAR2(32) not null,
  EMAIL          VARCHAR2(128) not null,
  SOCIALNO       VARCHAR2(18) not null,
  CREATION_DATE  DATE not null,
  LAST_DATE      DATE,
  MODIFY_DATE    DATE,
  PHONE          VARCHAR2(16),
  MOBILE         VARCHAR2(16),
  ZIPCODE        VARCHAR2(6),
  ADDR1          VARCHAR2(255),
  ADDR2          VARCHAR2(255),
  SMS_YN         CHAR(1) not null,
  EMAIL_YN       CHAR(1) not null,
  PENALTY_GBN    VARCHAR2(5),
  PAUSE_DATE     DATE,
  IP             VARCHAR2(32),
  LOGINCNT       NUMBER(10),
  NOMINATOR      VARCHAR2(32),
  RPG_LEVEL      NUMBER(10),
  LONEY_AGREEYN  CHAR(1),
  LONEY_CHARGEYN CHAR(1),
  SEX            CHAR(1)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.AMT_MASTER_IX on ALEF.AMT_MASTER (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_MASTER_IX1 on ALEF.AMT_MASTER (SOCIALNO)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_MASTER_IX2 on ALEF.AMT_MASTER (EMAIL)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_MASTER_OUT
prompt =============================
prompt
create table ALEF.AMT_MASTER_OUT
(
  ACCOUNT_SEQID NUMBER(10) not null,
  ACCOUNT_ID    VARCHAR2(32) not null,
  NAME          VARCHAR2(30) not null,
  NICKNAME      VARCHAR2(40) not null,
  SOCIALNO      VARCHAR2(13) not null,
  PASSWORD      VARCHAR2(16) not null,
  EMAIL         VARCHAR2(128) not null,
  HINT_QUESTION VARCHAR2(6) not null,
  HINT_ANSWER   VARCHAR2(50) not null,
  CREATION_DATE DATE not null,
  LAST_DATE     DATE not null,
  MODIFY_DATE   DATE,
  PHONE         VARCHAR2(16),
  MOBILE        VARCHAR2(16),
  ZIPCODE       VARCHAR2(6),
  ADDRESS       VARCHAR2(255),
  SMS_YN        CHAR(1) not null,
  MARRY_YN      CHAR(1) not null,
  EMAIL_YN      CHAR(1) not null,
  PWD_RESET_YN  CHAR(1) not null,
  OCCUPATION    VARCHAR2(5) not null,
  PENALTY_GBN   VARCHAR2(2),
  PAUSE_DATE    DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.AMT_MASTER_OUT_IX on ALEF.AMT_MASTER_OUT (ACCOUNT_SEQID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.AMT_MASTER_OUT_IX1 on ALEF.AMT_MASTER_OUT (ACCOUNT_ID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.AMT_MASTER_OUT_IX2 on ALEF.AMT_MASTER_OUT (NICKNAME)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_WITHDRAW
prompt ===========================
prompt
create table ALEF.AMT_WITHDRAW
(
  ACCOUNT_SEQID   NUMBER(10) not null,
  ACCOUNT_ID      VARCHAR2(32) not null,
  SOCIALNO        VARCHAR2(13) not null,
  NICKNAME        VARCHAR2(40) not null,
  CREATION_DATE   DATE not null,
  WITHDRAW_DATE   DATE,
  WITHDRAW_TYPE   CHAR(1) not null,
  WITHDRAW_REASON VARCHAR2(6),
  REFUND_YN       CHAR(1),
  REFUND_COINAMT  NUMBER(22)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_WITHDRAW_IX on ALEF.AMT_WITHDRAW (ACCOUNT_SEQID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_WITHDRAW_IX1 on ALEF.AMT_WITHDRAW (ACCOUNT_ID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_WITHDRAW_IX2 on ALEF.AMT_WITHDRAW (WITHDRAW_DATE, WITHDRAW_REASON)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_WITHDRAW_IX3 on ALEF.AMT_WITHDRAW (WITHDRAW_TYPE)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_WORLDMAPPING
prompt ===============================
prompt
create table ALEF.AMT_WORLDMAPPING
(
  ACCOUNTID    VARCHAR2(32) not null,
  SECTION      VARCHAR2(10) not null,
  WORLD        VARCHAR2(32) not null,
  CHARID       VARCHAR2(16) not null,
  CREATIONDATE DATE not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.AMT_WORLDMAPPING_IX on ALEF.AMT_WORLDMAPPING (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table AMT_ZIPCODE
prompt ==========================
prompt
create table ALEF.AMT_ZIPCODE
(
  ZIP1  CHAR(3) not null,
  ZIP2  CHAR(3) not null,
  ADDR  VARCHAR2(200) not null,
  BUNJI VARCHAR2(100),
  SADDR VARCHAR2(40) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKCHARCASHITEM
prompt ==============================
prompt
create table ALEF.BAKCHARCASHITEM
(
  ITEMSEQ    NUMBER(20),
  CHARSEQ    NUMBER(20),
  ACCOUNTID  VARCHAR2(32),
  WORLD      VARCHAR2(20),
  CHARID     VARCHAR2(32),
  ITEMTID    NUMBER(10),
  STACKCOUNT NUMBER(10),
  STATUS     NUMBER(5),
  POS        VARCHAR2(64),
  NEEDLEVEL  NUMBER(3),
  OWNTIME    DATE,
  CONVHIST   VARCHAR2(128),
  DURABILITY NUMBER(10),
  MAXDUR     NUMBER(10),
  FLAG       NUMBER(10),
  OPT        VARCHAR2(32),
  INUSE      NUMBER(10),
  USECOUNT   NUMBER(10),
  REMAINTIME NUMBER(10),
  EXPIREDATE DATE,
  REASON     VARCHAR2(32),
  DELTIME    DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARCASHITEM_PK1 on ALEF.BAKCHARCASHITEM (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARCASHITEM_PK2 on ALEF.BAKCHARCASHITEM (CHARSEQ, ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKCHARDETAIL
prompt ============================
prompt
create table ALEF.BAKCHARDETAIL
(
  CHARSEQ        NUMBER(20),
  CHARID         VARCHAR2(32),
  TITLE          VARCHAR2(32),
  POS            VARCHAR2(64),
  CRIMINALSTATUS NUMBER(3),
  MURDERPOINT    NUMBER(5),
  RCFTIME        NUMBER(10),
  RMFTIME        NUMBER(10),
  INVENMONEY     NUMBER(20),
  HP             NUMBER(10),
  MP             NUMBER(10),
  SP             NUMBER(10),
  EXP            NUMBER(10),
  LV             NUMBER(3),
  SKILLPOINT     NUMBER(10),
  QUICKBELT      VARCHAR2(256),
  LATESTREGION   NUMBER(3),
  FLAG           CHAR(256),
  FLAG2          CHAR(256),
  STATUS         NUMBER(10),
  RESURRECTDATE  DATE,
  TRANSFORMDATE  DATE,
  CURCONNDATE    DATE,
  LASTVISITDATE  DATE,
  LASTVISITIP    VARCHAR2(15),
  HAIR           NUMBER(10),
  FACE           NUMBER(10),
  DEADTYPE       NUMBER(3)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.BAKCHARDETAIL_IX1 on ALEF.BAKCHARDETAIL (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARDETAIL_PK on ALEF.BAKCHARDETAIL (CHARSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKCHARITEM
prompt ==========================
prompt
create table ALEF.BAKCHARITEM
(
  ITEMSEQ    NUMBER(20),
  CHARSEQ    NUMBER(20),
  ACCOUNTID  VARCHAR2(32),
  WORLD      VARCHAR2(20),
  CHARID     VARCHAR2(32),
  ITEMTID    NUMBER(10),
  STACKCOUNT NUMBER(10),
  STATUS     NUMBER(5),
  POS        VARCHAR2(64),
  NEEDLEVEL  NUMBER(3),
  OWNTIME    DATE,
  CONVHIST   VARCHAR2(128),
  DURABILITY NUMBER(10),
  MAXDUR     NUMBER(10),
  FLAG       NUMBER(10),
  OPT        VARCHAR2(32),
  INUSE      NUMBER(10),
  USECOUNT   NUMBER(10),
  REMAINTIME NUMBER(10),
  EXPIREDATE DATE,
  REASON     VARCHAR2(32),
  DELTIME    DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARITEM_PK1 on ALEF.BAKCHARITEM (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARITEM_PK2 on ALEF.BAKCHARITEM (CHARID, ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKCHARMASTER
prompt ============================
prompt
create table ALEF.BAKCHARMASTER
(
  CHARSEQ      NUMBER(20),
  CHARID       VARCHAR2(32),
  WORLD        VARCHAR2(20),
  ACCOUNTID    VARCHAR2(32),
  SLOT         NUMBER(3),
  CHARTID      NUMBER(10),
  CREATIONDATE DATE,
  DELETIONDATE DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.BAKCHARMASTER_IX1 on ALEF.BAKCHARMASTER (ACCOUNTID, CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.BAKCHARMASTER_IX2 on ALEF.BAKCHARMASTER (CREATIONDATE)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARMASTER_PK on ALEF.BAKCHARMASTER (CHARSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKCHARSKILL
prompt ===========================
prompt
create table ALEF.BAKCHARSKILL
(
  CHARSEQ  NUMBER(20),
  CHARID   VARCHAR2(32),
  SKILLSEQ VARCHAR2(512),
  PRODUCT  VARCHAR2(512)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.BAKCHARSKILL_IX1 on ALEF.BAKCHARSKILL (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKCHARSKILL_PK on ALEF.BAKCHARSKILL (CHARSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BAKSALESBOARD
prompt ============================
prompt
create table ALEF.BAKSALESBOARD
(
  DOCID     NUMBER(20),
  CHARID    VARCHAR2(32),
  ITEMSEQ   NUMBER(20),
  UNITPRICE NUMBER(10),
  TOTALQTY  NUMBER(5),
  WDATE     DATE,
  ITEMTID   NUMBER(10),
  STATUS    NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.BAKSALESBOARD_IX1 on ALEF.BAKSALESBOARD (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.BAKSALESBOARD_PK on ALEF.BAKSALESBOARD (DOCID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CASHITEMBUYLIST
prompt ==============================
prompt
create table ALEF.CASHITEMBUYLIST
(
  BUYSEQ    NUMBER(20),
  ACCOUNTID VARCHAR2(32),
  CHARID    VARCHAR2(16),
  CHARTID   NUMBER(10),
  CHARLV    NUMBER(10),
  ITEMTID   NUMBER(10),
  ITEMQTY   NUMBER(10),
  ITEMSEQ   NUMBER(20),
  MONEY     NUMBER(20),
  BUYTIME   DATE,
  BUYIP     VARCHAR2(15),
  ORDERNO   NUMBER(20),
  ORDERID   VARCHAR2(32),
  STATUS    VARCHAR2(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CASHITEMBUYLIST_IX1 on ALEF.CASHITEMBUYLIST (BUYSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CASHITEMBUYLIST_IX2 on ALEF.CASHITEMBUYLIST (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CASHITEMBUYLIST_IX3 on ALEF.CASHITEMBUYLIST (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CASHITEMBUYLIST_IX4 on ALEF.CASHITEMBUYLIST (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARBUDDY
prompt ========================
prompt
create table ALEF.CHARBUDDY
(
  CHARID  VARCHAR2(32),
  BUDDYID VARCHAR2(32),
  FLAG    NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARBUDDY_IX1 on ALEF.CHARBUDDY (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARCASHITEM
prompt ===========================
prompt
create table ALEF.CHARCASHITEM
(
  ITEMSEQ    NUMBER(20),
  ACCOUNTID  VARCHAR2(32),
  WORLD      VARCHAR2(20),
  CHARID     VARCHAR2(32),
  ITEMTID    NUMBER(10),
  STACKCOUNT NUMBER(10),
  STATUS     NUMBER(5),
  POS        VARCHAR2(64),
  NEEDLEVEL  NUMBER(3),
  OWNTIME    DATE,
  CONVHIST   VARCHAR2(128),
  DURABILITY NUMBER(10),
  MAXDUR     NUMBER(10),
  FLAG       NUMBER(10),
  OPT        VARCHAR2(32),
  INUSE      NUMBER(10),
  USECOUNT   NUMBER(10),
  REMAINTIME NUMBER(10),
  EXPIREDATE DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CAHRCASHITEM_PK1 on ALEF.CHARCASHITEM (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARCASHITEM_IX1 on ALEF.CHARCASHITEM (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CHARCASHITEM_PK2 on ALEF.CHARCASHITEM (CHARID, ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARDETAIL
prompt =========================
prompt
create table ALEF.CHARDETAIL
(
  CHARID         VARCHAR2(32),
  TITLE          VARCHAR2(32),
  POS            VARCHAR2(64),
  CRIMINALSTATUS NUMBER(3),
  MURDERPOINT    NUMBER(5),
  RCFTIME        NUMBER(10),
  RMFTIME        NUMBER(10),
  INVENMONEY     NUMBER(20),
  HP             NUMBER(10),
  MP             NUMBER(10),
  SP             NUMBER(10),
  EXP            NUMBER(10),
  LV             NUMBER(3),
  SKILLPOINT     NUMBER(10),
  QUICKBELT      VARCHAR2(256),
  LATESTREGION   NUMBER(3),
  FLAG           CHAR(256),
  FLAG2          CHAR(256),
  STATUS         NUMBER(10),
  RESURRECTDATE  DATE,
  TRANSFORMDATE  DATE,
  CURCONNDATE    DATE,
  LASTVISITDATE  DATE,
  LASTVISITIP    VARCHAR2(15),
  HAIR           NUMBER(10),
  FACE           NUMBER(10),
  DEADTYPE       NUMBER(3)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CHARDETAIL_PK on ALEF.CHARDETAIL (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARITEM
prompt =======================
prompt
create table ALEF.CHARITEM
(
  ITEMSEQ    NUMBER(20),
  ACCOUNTID  VARCHAR2(32),
  WORLD      VARCHAR2(20),
  CHARID     VARCHAR2(32),
  ITEMTID    NUMBER(10),
  STACKCOUNT NUMBER(10),
  STATUS     NUMBER(5),
  POS        VARCHAR2(64),
  NEEDLEVEL  NUMBER(3),
  OWNTIME    DATE,
  CONVHIST   VARCHAR2(128),
  DURABILITY NUMBER(10),
  MAXDUR     NUMBER(10),
  FLAG       NUMBER(10),
  OPT        VARCHAR2(32),
  INUSE      NUMBER(10),
  USECOUNT   NUMBER(10),
  REMAINTIME NUMBER(10),
  EXPIREDATE DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CAHRITEM_PK on ALEF.CHARITEM (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARITEM_IX1 on ALEF.CHARITEM (CHARID, ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARITEM_IX2 on ALEF.CHARITEM (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARMASTER
prompt =========================
prompt
create table ALEF.CHARMASTER
(
  CHARID       VARCHAR2(32),
  OLDCHARID    VARCHAR2(32),
  WORLD        VARCHAR2(20),
  ACCOUNTID    VARCHAR2(32),
  SLOT         NUMBER(3),
  CHARTID      NUMBER(10),
  CREATIONDATE DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARMASTER_IX1 on ALEF.CHARMASTER (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARMASTER_IX2 on ALEF.CHARMASTER (CREATIONDATE)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARMASTER_IX3 on ALEF.CHARMASTER (OLDCHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CHARMASTER_PK on ALEF.CHARMASTER (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARQUEST
prompt ========================
prompt
create table ALEF.CHARQUEST
(
  CHARID   VARCHAR2(32),
  QUESTTID NUMBER(10),
  SDATE    DATE,
  ARG1     NUMBER(10),
  ARG2     NUMBER(10),
  NPCID    VARCHAR2(32)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.CHARQUEST_IX1 on ALEF.CHARQUEST (QUESTTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CHARQUEST_PK on ALEF.CHARQUEST (CHARID, QUESTTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CHARSKILL
prompt ========================
prompt
create table ALEF.CHARSKILL
(
  CHARID   VARCHAR2(32),
  SKILLSEQ VARCHAR2(512),
  PRODUCT  VARCHAR2(512)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.CHARSKILL_PK on ALEF.CHARSKILL (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table GUILDBATTLEHIST
prompt ==============================
prompt
create table ALEF.GUILDBATTLEHIST
(
  GUILDID        VARCHAR2(32),
  ENEMYGUILDID   VARCHAR2(32),
  BATTLERESULT   NUMBER(3),
  BATTLESTDATE   DATE,
  BATTLEDURATION NUMBER(10),
  SCORE          NUMBER(10),
  ENEMYSCORE     NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.GUILDBATTLEHIST_IX1 on ALEF.GUILDBATTLEHIST (GUILDID, BATTLESTDATE)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table GUILDMASTER
prompt ==========================
prompt
create table ALEF.GUILDMASTER
(
  GUILDID        VARCHAR2(32),
  GUILDTID       NUMBER(10),
  GMCHARID       VARCHAR2(32),
  MAXMEMBER      NUMBER(10),
  CREATIONDATE   DATE,
  UNIONID        NUMBER(10),
  GUILDRANK      NUMBER(10),
  PASSWORD       VARCHAR2(12),
  BATTLEGUILDID  VARCHAR2(32),
  BATTLESTDATE   DATE,
  BATTLEDURATION NUMBER(10),
  SCORE1         NUMBER(10),
  WIN            NUMBER(10),
  DRAW           NUMBER(10),
  LOSE           NUMBER(10),
  MARKID         NUMBER(10),
  COLORID        NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.GUILDMASTER_PK on ALEF.GUILDMASTER (GUILDID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table GUILDMEMBER
prompt ==========================
prompt
create table ALEF.GUILDMEMBER
(
  CHARID     VARCHAR2(32),
  GUILDID    VARCHAR2(32),
  MEMBERRANK NUMBER(5),
  JOINDATE   DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.GUILDMEMBER_IX1 on ALEF.GUILDMEMBER (GUILDID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.GUILDMEMBER_PK on ALEF.GUILDMEMBER (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table LOGINSTATUS
prompt ==========================
prompt
create table ALEF.LOGINSTATUS
(
  ACCOUNTID  VARCHAR2(20),
  STATUS     NUMBER(3),
  CHARID     VARCHAR2(32),
  CID        NUMBER(20),
  SERVER     VARCHAR2(40),
  SERVERUID  NUMBER(20),
  ACCOUNTLV  NUMBER(2),
  NID        NUMBER(20),
  LASTCHARID VARCHAR2(16),
  ACCESSDATE DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.LOGINSTATUS_PK on ALEF.LOGINSTATUS (ACCOUNTID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MAILBOX
prompt ======================
prompt
create table ALEF.MAILBOX
(
  MAILSEQ    NUMBER(20),
  TOCHARID   VARCHAR2(32),
  FROMCHARID VARCHAR2(32),
  SUBJECT    VARCHAR2(50),
  CONTENTS   VARCHAR2(2000),
  WDATE      DATE,
  FLAG       NUMBER(10),
  ITEMSEQ    NUMBER(20),
  ITEMTID    NUMBER(10),
  ITEMQTY    NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.MAILBOX_IX1 on ALEF.MAILBOX (TOCHARID, WDATE DESC)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.MAILBOX_IX2 on ALEF.MAILBOX (FROMCHARID, WDATE DESC)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.MAILBOX_PK on ALEF.MAILBOX (MAILSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_GROUP_PRIVILEGES
prompt ==================================
prompt
create table ALEF.MD_GROUP_PRIVILEGES
(
  ID                INTEGER not null,
  GROUP_ID_FK       INTEGER not null,
  PRIVILEGE_ID_FK   INTEGER not null,
  SECURITY_GROUP_ID INTEGER default 0 not null,
  CREATED_ON        DATE default SYSDATE not null,
  CREATED_BY        VARCHAR2(255),
  LAST_UPDATED_ON   DATE,
  LAST_UPDATED_BY   VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_MIGR_DEPENDENCY
prompt =================================
prompt
create table ALEF.MD_MIGR_DEPENDENCY
(
  ID                 INTEGER not null,
  CONNECTION_ID_FK   INTEGER not null,
  PARENT_ID          INTEGER not null,
  CHILD_ID           INTEGER not null,
  PARENT_OBJECT_TYPE VARCHAR2(4000) not null,
  CHILD_OBJECT_TYPE  VARCHAR2(4000) not null,
  SECURITY_GROUP_ID  INTEGER default 0 not null,
  CREATED_ON         DATE default SYSDATE not null,
  CREATED_BY         VARCHAR2(255),
  LAST_UPDATED_ON    DATE,
  LAST_UPDATED_BY    VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_MIGR_PARAMETER
prompt ================================
prompt
create table ALEF.MD_MIGR_PARAMETER
(
  ID                INTEGER not null,
  CONNECTION_ID_FK  INTEGER not null,
  OBJECT_ID         INTEGER not null,
  OBJECT_TYPE       VARCHAR2(4000) not null,
  PARAM_EXISTING    INTEGER not null,
  PARAM_ORDER       INTEGER not null,
  PARAM_NAME        VARCHAR2(4000) not null,
  PARAM_TYPE        VARCHAR2(4000) not null,
  PARAM_DATA_TYPE   VARCHAR2(4000) not null,
  PERCISION         INTEGER,
  SCALE             INTEGER,
  NULLABLE          CHAR(1) not null,
  DEFAULT_VALUE     VARCHAR2(4000),
  SECURITY_GROUP_ID INTEGER default 0 not null,
  CREATED_ON        DATE default SYSDATE not null,
  CREATED_BY        VARCHAR2(255),
  LAST_UPDATED_ON   DATE,
  LAST_UPDATED_BY   VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_MIGR_WEAKDEP
prompt ==============================
prompt
create table ALEF.MD_MIGR_WEAKDEP
(
  ID                INTEGER not null,
  CONNECTION_ID_FK  INTEGER not null,
  SCHEMA_ID_FK      INTEGER not null,
  PARENT_ID         INTEGER not null,
  CHILD_NAME        VARCHAR2(4000) not null,
  PARENT_TYPE       VARCHAR2(4000) not null,
  CHILD_TYPE        VARCHAR2(4000) not null,
  SECURITY_GROUP_ID NUMBER default 0 not null,
  CREATED_ON        DATE default SYSDATE not null,
  CREATED_BY        VARCHAR2(255),
  LAST_UPDATED_ON   DATE,
  LAST_UPDATED_BY   VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_REGISTRY
prompt ==========================
prompt
create table ALEF.MD_REGISTRY
(
  OBJECT_TYPE VARCHAR2(30) not null,
  OBJECT_NAME VARCHAR2(30) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MD_USER_PRIVILEGES
prompt =================================
prompt
create table ALEF.MD_USER_PRIVILEGES
(
  ID                INTEGER not null,
  USER_ID_FK        INTEGER not null,
  PRIVILEGE_ID_FK   INTEGER,
  SECURITY_GROUP_ID INTEGER default 0 not null,
  CREATED_ON        DATE default SYSDATE not null,
  CREATED_BY        VARCHAR2(255),
  LAST_UPDATED_ON   DATE,
  LAST_UDPATED_BY   VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MIGR_DATATYPE_TRANSFORM_MAP
prompt ==========================================
prompt
create table ALEF.MIGR_DATATYPE_TRANSFORM_MAP
(
  ID                INTEGER not null,
  PROJECT_ID_FK     INTEGER not null,
  MAP_NAME          VARCHAR2(4000),
  SECURITY_GROUP_ID INTEGER default 0 not null,
  CREATED_ON        DATE default SYSDATE not null,
  CREATED_BY        VARCHAR2(255),
  LAST_UPDATED_ON   DATE,
  LAST_UPDATED_BY   VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MIGR_DATATYPE_TRANSFORM_RULE
prompt ===========================================
prompt
create table ALEF.MIGR_DATATYPE_TRANSFORM_RULE
(
  ID                    INTEGER not null,
  MAP_ID_FK             INTEGER not null,
  SOURCE_DATA_TYPE_NAME VARCHAR2(4000) not null,
  SOURCE_PRECISION      NUMBER,
  SOURCE_SCALE          NUMBER,
  TARGET_DATA_TYPE_NAME VARCHAR2(4000) not null,
  TARGET_PRECISION      NUMBER,
  TARGET_SCALE          NUMBER,
  SECURITY_GROUP_ID     INTEGER default 0 not null,
  CREATED_ON            DATE default sysdate not null,
  CREATED_BY            VARCHAR2(255),
  LAST_UPDATED_ON       DATE,
  LAST_UPDATED_BY       VARCHAR2(255)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table MIGR_GENERATION_ORDER
prompt ====================================
prompt
create table ALEF.MIGR_GENERATION_ORDER
(
  ID               INTEGER not null,
  CONNECTION_ID_FK INTEGER not null,
  OBJECT_ID        INTEGER not null,
  OBJECT_TYPE      VARCHAR2(4000) not null,
  GENERATION_ORDER INTEGER not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table RPGWT
prompt ====================
prompt
create table ALEF.RPGWT
(
  SERVERID VARCHAR2(16),
  CHARTID  NUMBER(10),
  WDATE    DATE,
  CURCONN  NUMBER(10),
  MAXCONN  NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SALESBOARD
prompt =========================
prompt
create table ALEF.SALESBOARD
(
  DOCID     NUMBER(20),
  CHARID    VARCHAR2(32),
  ITEMSEQ   NUMBER(20),
  ITEMSEQ2  NUMBER(20),
  UNITPRICE NUMBER(10),
  TOTALQTY  NUMBER(5),
  WDATE     DATE default SYSDATE,
  ITEMTID   NUMBER(10),
  STATUS    NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.SALESBOARD_IX1 on ALEF.SALESBOARD (ITEMTID, DOCID DESC)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.SALESBOARD_IX2 on ALEF.SALESBOARD (ITEMSEQ)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.SALESBOARD_IX3 on ALEF.SALESBOARD (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.SALESBOARD_PK on ALEF.SALESBOARD (DOCID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SALESBOUGHT
prompt ==========================
prompt
create table ALEF.SALESBOUGHT
(
  BUYID      NUMBER(20),
  DOCID      NUMBER(20),
  BUYCHARID  VARCHAR2(32),
  BUYQTY     NUMBER(5),
  BUYDATE    DATE,
  BUYITEMSEQ NUMBER(20)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.SALESBOUGHT_IX1 on ALEF.SALESBOUGHT (DOCID, BUYID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ALEF.SALESBOUGHT_IX2 on ALEF.SALESBOUGHT (BUYCHARID, BUYID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.SALESBOUGHT_PK on ALEF.SALESBOUGHT (BUYID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SERVERCONFIG
prompt ===========================
prompt
create table ALEF.SERVERCONFIG
(
  SECTION     VARCHAR2(10),
  MODULEDATA1 VARCHAR2(32),
  WORLD       VARCHAR2(16),
  TYPE        VARCHAR2(3),
  ADDRESS     VARCHAR2(32),
  CONTROLAREA VARCHAR2(128),
  DBUSER      VARCHAR2(32),
  DBPWD       VARCHAR2(32),
  DBDSN       VARCHAR2(32),
  LOGDBUSER   VARCHAR2(32),
  LOGDBPWD    VARCHAR2(32),
  LOGDBDSN    VARCHAR2(32),
  SHOW        VARCHAR2(5),
  DBVENDER    VARCHAR2(32),
  EXTRA       VARCHAR2(1000)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.SERVERCONFIG_PK on ALEF.SERVERCONFIG (SECTION)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SERVERWORLD
prompt ==========================
prompt
create table ALEF.SERVERWORLD
(
  SECTION VARCHAR2(10),
  WORLD   VARCHAR2(32)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WANTEDCRIMINAL
prompt =============================
prompt
create table ALEF.WANTEDCRIMINAL
(
  CHARID VARCHAR2(16),
  BOUNTY NUMBER(20)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index ALEF.WANTEDCRIMINAL_PK on ALEF.WANTEDCRIMINAL (CHARID)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence AMT_MASTER_SQ
prompt ===============================
prompt
create sequence ALEF.AMT_MASTER_SQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 5;

prompt
prompt Creating sequence BAKCHARMASTERSQ
prompt =================================
prompt
create sequence ALEF.BAKCHARMASTERSQ
minvalue 1
maxvalue 999999999999999999999999999
start with 8431
increment by 1
cache 5;

prompt
prompt Creating sequence MAILBOXSQ
prompt ===========================
prompt
create sequence ALEF.MAILBOXSQ
minvalue 1
maxvalue 999999999999999999999999999
start with 15901
increment by 1
cache 5;

prompt
prompt Creating sequence SALESBOARD_SQ
prompt ===============================
prompt
create sequence ALEF.SALESBOARD_SQ
minvalue 1
maxvalue 999999999999999999999999999
start with 231081
increment by 1
cache 5;

prompt
prompt Creating sequence SALESBOUGHT_SQ
prompt ================================
prompt
create sequence ALEF.SALESBOUGHT_SQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 10;

prompt
prompt Creating view V_ALT_ALL
prompt =======================
prompt
CREATE OR REPLACE VIEW ALEF.V_ALT_ALL AS
SELECT
 ACTCODE, WDATE, IPADDR, ACCOUNTID, CHARID, CHARTID, CHARLV, CHAREXP, GHELDINVEN, GHELDBANK, /* COMMON */
 NULL AS ITEMSEQ, NULL AS ITEMTID , NULL AS ITEMQTY, NULL AS ITEMCONVHIST, NULL AS ITEMOPTION, NULL AS CHARID2,
 NULL AS INUSE, NULL AS USECOUNT, NULL AS REMAINTIME, NULL AS EXPIREDATE, /* ITEM */
 NULL AS GHELD, /* GHELD */
 NULL AS NUMID, NULL AS STRID , NULL AS DESCR /* ETC */
FROM ALT_PLAY
UNION ALL
SELECT
 ACTCODE, WDATE, IPADDR, ACCOUNTID, CHARID, CHARTID, CHARLV, CHAREXP, GHELDINVEN, GHELDBANK, /* COMMON */
 ITEMSEQ, ITEMTID, ITEMQTY, ITEMCONVHIST, ITEMOPTION, CHARID2,
 INUSE, USECOUNT, REMAINTIME, EXPIREDATE, /* ITEM */
 GHELD, /* GHELD */
 NULL AS NUMID, NULL AS STRID , DESCR /* ETC */
FROM ALT_ITEM
UNION ALL
SELECT
 ACTCODE, WDATE, IPADDR, ACCOUNTID, CHARID, CHARTID, CHARLV, CHAREXP, GHELDINVEN, GHELDBANK, /* COMMON */
 ITEMSEQ, ITEMTID, ITEMQTY, ITEMCONVHIST, ITEMOPTION, CHARID2,
 INUSE, USECOUNT, REMAINTIME, EXPIREDATE, /* ITEM */
 GHELD, /* GHELD */
 NULL AS NUMID, NULL AS STRID , DESCR /* ETC */
FROM ALT_CASHITEM
UNION ALL
SELECT
 ACTCODE, WDATE, IPADDR, ACCOUNTID, CHARID, CHARTID, CHARLV, CHAREXP, GHELDINVEN, GHELDBANK, /* COMMON */
 NULL AS ITEMSEQ, NULL AS ITEMTID , NULL AS ITEMQTY, NULL AS ITEMCONVHIST, NULL AS ITEMOPTION, CHARID2,
 NULL AS INUSE, NULL AS USECOUNT, NULL AS REMAINTIME, NULL AS EXPIREDATE, /* ITEM */
 GHELD, /* GHELD */
 NUMID, STRID, DESCR /* ETC */
FROM ALT_ETC
UNION ALL
SELECT
 ACTCODE, WDATE, IPADDR, ACCOUNTID, CHARID, CHARTID, CHARLV, CHAREXP, GHELDINVEN, GHELDBANK, /* COMMON */
 NULL AS ITEMSEQ, NULL AS ITEMTID , NULL AS ITEMQTY, NULL AS ITEMCONVHIST, NULL AS ITEMOPTION, CHARID2,
 NULL AS INUSE, NULL AS USECOUNT, NULL AS REMAINTIME, NULL AS EXPIREDATE, /* ITEM */
 GHELD, /* GHELD */
 NULL AS NUMID, NULL AS STRID , NULL AS DESCR /* ETC */
FROM ALT_GHELD;

prompt
prompt Creating procedure SPDELETECHAR
prompt ===============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPDELETECHAR(V_CHARID VARCHAR2, V_REASON VARCHAR2)
AS
 V_BAKCHAR BAKCHARMASTER%ROWTYPE;
 E_MYEXCPT EXCEPTION;
 V_DUMMY  NUMBER;
BEGIN
 /* �ش� ĳ���� ���̵�� �ο� ���� */
 SELECT BAKCHARMASTERSQ.NEXTVAL, C.CHARID, WORLD, ACCOUNTID, SLOT, CHARTID, CREATIONDATE, SYSDATE
 INTO V_BAKCHAR.CHARSEQ, V_BAKCHAR.CHARID, V_BAKCHAR.WORLD, V_BAKCHAR.ACCOUNTID, V_BAKCHAR.SLOT,
  V_BAKCHAR.CHARTID, V_BAKCHAR.CREATIONDATE, V_BAKCHAR.DELETIONDATE
 FROM CHARMASTER C WHERE C.CHARID = V_CHARID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 /* CHARMASTER BACKUP */
 INSERT INTO BAKCHARMASTER (CHARSEQ, CHARID, ACCOUNTID, SLOT, CHARTID, CREATIONDATE, DELETIONDATE, WORLD)
 VALUES (V_BAKCHAR.CHARSEQ, V_BAKCHAR.CHARID, V_BAKCHAR.ACCOUNTID, V_BAKCHAR.SLOT,
  V_BAKCHAR.CHARTID, V_BAKCHAR.CREATIONDATE, SYSDATE, V_BAKCHAR.WORLD);
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 /* CHARDETAIL BACKUP */
 INSERT INTO BAKCHARDETAIL (
  CHARSEQ, CHARID, TITLE, POS, CRIMINALSTATUS, MURDERPOINT, RCFTIME, RMFTIME,
  INVENMONEY, HP, MP, SP, EXP, LV, SKILLPOINT, QUICKBELT,
  LATESTREGION, FLAG, STATUS, RESURRECTDATE, TRANSFORMDATE,
  CURCONNDATE, LASTVISITDATE, LASTVISITIP, HAIR, FACE, DEADTYPE, FLAG2)
 SELECT
  V_BAKCHAR.CHARSEQ, CHARID, TITLE, POS, CRIMINALSTATUS, MURDERPOINT, RCFTIME, RMFTIME,
  INVENMONEY, HP, MP, SP, EXP, LV, SKILLPOINT, QUICKBELT,
  LATESTREGION, FLAG, STATUS, RESURRECTDATE, TRANSFORMDATE,
  CURCONNDATE, LASTVISITDATE, LASTVISITIP, HAIR, FACE, DEADTYPE, FLAG2
 FROM CHARDETAIL C WHERE C.CHARID = V_CHARID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 BEGIN
  /* CHARITEM BACKUP */
  INSERT INTO BAKCHARITEM (
   ITEMSEQ, ACCOUNTID, CHARSEQ, CHARID, ITEMTID, STACKCOUNT, STATUS, POS,
   NEEDLEVEL, OWNTIME, CONVHIST, DURABILITY, MAXDUR, FLAG, OPT, REASON, DELTIME,
   WORLD, INUSE, USECOUNT, REMAINTIME, EXPIREDATE)
  SELECT I.ITEMSEQ, I.ACCOUNTID, V_BAKCHAR.CHARSEQ, I.CHARID, I.ITEMTID, I.STACKCOUNT, I.STATUS, I.POS,
   I.NEEDLEVEL, I.OWNTIME, I.CONVHIST, I.DURABILITY, I.MAXDUR, I.FLAG, I.OPT, V_REASON, SYSDATE,
   I.WORLD, I.INUSE, I.USECOUNT, I.REMAINTIME, I.EXPIREDATE
   FROM CHARITEM I WHERE I.CHARID = V_CHARID AND STATUS < 100; /* ��ũ������ ���� */

  /* CHARCASHITEM BACKUP */
  INSERT INTO BAKCHARCASHITEM (
   ITEMSEQ, ACCOUNTID, CHARSEQ, CHARID, ITEMTID, STACKCOUNT, STATUS, POS,
   NEEDLEVEL, OWNTIME, CONVHIST, DURABILITY, MAXDUR, FLAG, OPT, REASON, DELTIME,
   WORLD, INUSE, USECOUNT, REMAINTIME, EXPIREDATE )
  SELECT I.ITEMSEQ, I.ACCOUNTID, V_BAKCHAR.CHARSEQ, I.CHARID, I.ITEMTID, I.STACKCOUNT, I.STATUS, I.POS,
   I.NEEDLEVEL, I.OWNTIME, I.CONVHIST, I.DURABILITY, I.MAXDUR, I.FLAG, I.OPT, V_REASON, SYSDATE,
   I.WORLD, I.INUSE, I.USECOUNT, I.REMAINTIME, I.EXPIREDATE
   FROM CHARCASHITEM I WHERE I.CHARID = V_CHARID;

  /* CHARSKILL BACKUP */
  INSERT INTO BAKCHARSKILL (CHARSEQ, CHARID, SKILLSEQ, PRODUCT)
  SELECT V_BAKCHAR.CHARSEQ, S.CHARID, S.SKILLSEQ, S.PRODUCT
  FROM CHARSKILL S WHERE S.CHARID = V_CHARID;
 EXCEPTION
  WHEN OTHERS THEN
   V_DUMMY := 1;
 END;
 /* DELETE SOURCE */
 DELETE FROM CHARMASTER WHERE CHARID = V_CHARID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 DELETE FROM CHARDETAIL WHERE CHARID = V_CHARID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 /* �������̳� ��ų�� ������ �ο찡 �ϳ��� ��� �����Ѵ�. */
 /* ������ */
 DELETE FROM CHARITEM WHERE CHARID = V_CHARID AND STATUS < 100;  /* ��ũ������ ���� */
 DELETE FROM CHARCASHITEM WHERE CHARID = V_CHARID;

 /* ��ų */
 DELETE FROM CHARSKILL WHERE CHARID = V_CHARID;
 /* ����Ʈ */
 DELETE FROM CHARQUEST WHERE CHARID = V_CHARID;
 /* �ŷ��Խ��� ��� ��ǰ */
 DELETE FROM SALESBOARD WHERE CHARID = V_CHARID;

 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
  RAISE_APPLICATION_ERROR(-20010, '���ν��� ����');
END;
/

prompt
prompt Creating procedure SPDELETEACCOUNT
prompt ==================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPDELETEACCOUNT(V_ACCOUNTID VARCHAR2, V_REASON VARCHAR2, V_RESULT OUT VARCHAR2)
AS
 V_CHARID VARCHAR2(32);
 CURSOR C1 IS SELECT CHARID FROM CHARMASTER WHERE ACCOUNTID = V_ACCOUNTID;
BEGIN
 V_RESULT := 'FAIL';

 /* for all character of account */
 OPEN C1;
 LOOP
  FETCH C1 INTO V_CHARID;
  EXIT WHEN C1%NOTFOUND;
   /* delete character */
   BEGIN SPDELETECHAR(V_CHARID, V_REASON); END;
 END LOOP;
 CLOSE C1;

 /* ��ũ(ACCOUNTWORLD) ���� */
 DELETE FROM ACCOUNTWORLD WHERE ACCOUNTID = V_ACCOUNTID;

 /* BANK ITEM ���� */
 DELETE FROM CHARITEM WHERE ACCOUNTID = V_ACCOUNTID AND STATUS >= 100;

 V_RESULT := 'SUCCESS';

 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPDELETECASHITEM
prompt ===================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPDELETECASHITEM(V_ITEMSEQ NUMBER, V_REASON VARCHAR2)
AS
 E_MYEXCPT EXCEPTION;
BEGIN
 DELETE FROM CHARCASHITEM WHERE ITEMSEQ = V_ITEMSEQ;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 IF (SUBSTR(V_REASON, 1, 8) = 'Drawback') THEN
  UPDATE CASHITEMBUYLIST SET STATUS = 'DRAWBACK' WHERE ITEMSEQ = V_ITEMSEQ;
 ELSE
  UPDATE CASHITEMBUYLIST SET STATUS = 'EXHAUST' WHERE ITEMSEQ = V_ITEMSEQ;
 END IF;

 COMMIT;
EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
  RAISE_APPLICATION_ERROR(-20010, '���ν��� ����');
END;
/

prompt
prompt Creating procedure SPDELETEGUILD
prompt ================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPDELETEGUILD(V_GUILDID VARCHAR2)
AS
 E_MYEXCPT EXCEPTION;
BEGIN
 DELETE FROM GUILDMASTER WHERE GUILDID = V_GUILDID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 DELETE FROM GUILDMEMBER WHERE GUILDID = V_GUILDID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 DELETE FROM GUILDBATTLEHIST WHERE GUILDID = V_GUILDID;

 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
  RAISE_APPLICATION_ERROR(-20010, '���ν��� ����');
END;
/

prompt
prompt Creating procedure SPDELETEITEM
prompt ===============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPDELETEITEM(V_ITEMSEQ NUMBER, V_REASON VARCHAR2)
AS
 V_ITEMSEQ_DUMMY  NUMBER;
 I   CHARITEM%ROWTYPE;
 E_MYEXCPT  EXCEPTION;
BEGIN

 SELECT * INTO I FROM CHARITEM WHERE ITEMSEQ = V_ITEMSEQ;
 IF SQL%FOUND THEN
  BEGIN
   INSERT INTO BAKCHARITEM (
   ITEMSEQ, ACCOUNTID, CHARID, ITEMTID, STACKCOUNT, STATUS, POS, NEEDLEVEL,
   OWNTIME, CONVHIST, DURABILITY, MAXDUR, FLAG, OPT, REASON, DELTIME,
   WORLD, INUSE, USECOUNT, REMAINTIME, EXPIREDATE )
   VALUES (
   I.ITEMSEQ, I.ACCOUNTID, I.CHARID, I.ITEMTID, I.STACKCOUNT, I.STATUS, I.POS, I.NEEDLEVEL,
   I.OWNTIME, I.CONVHIST, I.DURABILITY, I.MAXDUR, I.FLAG, I.OPT, V_REASON, SYSDATE,
   I.WORLD, I.INUSE, I.USECOUNT, I.REMAINTIME, I.EXPIREDATE );
  EXCEPTION
   /* BAKCHARITEM�� �ȵ��� ���� */
   WHEN OTHERS THEN
    V_ITEMSEQ_DUMMY := 1;
  END;
 END IF;

 DELETE FROM CHARITEM WHERE ITEMSEQ = V_ITEMSEQ;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 COMMIT;
EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
  RAISE_APPLICATION_ERROR(-20010, '���ν��� ����');
END;
/

prompt
prompt Creating procedure SPMAILDELETE
prompt ===============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPMAILDELETE(
 V_MAILSEQ NUMBER, V_FLAG NUMBER
 )
AS
BEGIN
 DELETE FROM MAILBOX WHERE MAILSEQ = V_MAILSEQ;

 COMMIT;
EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPMAILITEMSAVE
prompt =================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPMAILITEMSAVE(
 V_MAILSEQ NUMBER, V_ITEMSEQ NUMBER, V_ITEMTID NUMBER,
 V_ITEMQTY NUMBER, V_CHARID VARCHAR2, V_STATUS NUMBER,
 V_NEEDLEVEL OUT NUMBER, V_CONVERT OUT VARCHAR2, V_DURABILITY OUT NUMBER,
 V_MAXDUR OUT NUMBER, V_FLAG OUT NUMBER, V_OPTION OUT VARCHAR2, V_INUSE OUT NUMBER,
 V_USECOUNT OUT NUMBER, V_REMAINTIME OUT NUMBER, V_EXPIREDATE OUT VARCHAR2,
 V_RESULT OUT NUMBER
 )
AS
 V_MAILBOX MAILBOX%ROWTYPE;
 V_CHARITEM CHARITEM%ROWTYPE;
BEGIN
 /* �ʱ�ȭ */
 V_RESULT := 1;

 /* ������ ã�� */
 SELECT MAILSEQ, TOCHARID, FROMCHARID,
  NVL(FLAG, 0), NVL(ITEMSEQ, 0), NVL(ITEMTID, 0), NVL(ITEMQTY, 0)
 INTO V_MAILBOX.MAILSEQ, V_MAILBOX.TOCHARID, V_MAILBOX.FROMCHARID,
  V_MAILBOX.FLAG, V_MAILBOX.ITEMSEQ, V_MAILBOX.ITEMTID, V_MAILBOX.ITEMQTY
 FROM MAILBOX WHERE MAILSEQ = V_MAILSEQ FOR UPDATE;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* ITEMSEQ VALIDATION */
 V_RESULT := 5;
 IF 0 = V_MAILBOX.ITEMSEQ THEN
  RAISE NO_DATA_FOUND;
 ELSIF V_MAILBOX.ITEMSEQ <> V_ITEMSEQ THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* �������� ã�� */
 SELECT
  NVL(STACKCOUNT, 0), NVL(NEEDLEVEL, 0),
  NVL(CONVHIST, ' '), NVL(DURABILITY, 0), NVL(MAXDUR, 0), NVL(FLAG, 0), NVL(OPT, ' '),
  NVL(INUSE, 0), NVL(USECOUNT, 0), NVL(REMAINTIME, 0), NVL(EXPIREDATE, SYSDATE + 10000)
 INTO
  V_CHARITEM.STACKCOUNT, V_CHARITEM.NEEDLEVEL,
  V_CHARITEM.CONVHIST, V_CHARITEM.DURABILITY, V_CHARITEM.MAXDUR, V_CHARITEM.FLAG, V_CHARITEM.OPT,
  V_CHARITEM.INUSE, V_CHARITEM.USECOUNT, V_CHARITEM.REMAINTIME, V_CHARITEM.EXPIREDATE
 FROM CHARITEM WHERE ITEMSEQ = V_ITEMSEQ AND STATUS = V_STATUS;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* ITEMTID VALIDATION */
 V_RESULT := 5;
 IF V_ITEMTID <> V_CHARITEM.ITEMTID THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* ITEMQTY VALIDATION */
 V_RESULT := 5;
 IF 0 <> V_CHARITEM.STACKCOUNT AND V_ITEMQTY <> V_CHARITEM.STACKCOUNT THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* ITEMTID VALIDATION */
 V_RESULT := 5;
 IF V_CHARID <> V_CHARITEM.CHARID THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* ITEM STATUS VALIDATION */
 V_RESULT := 5;
 IF V_STATUS <> V_CHARITEM.STATUS THEN
  RAISE NO_DATA_FOUND;
 END IF;
 /* OUTPUT PARAMETER SETTING */
 V_NEEDLEVEL := V_CHARITEM.NEEDLEVEL;
 V_CONVERT := V_CHARITEM.CONVHIST;
 V_DURABILITY := V_CHARITEM.DURABILITY;
 V_MAXDUR := V_CHARITEM.MAXDUR;
 V_FLAG := V_CHARITEM.FLAG;
 V_OPTION := V_CHARITEM.OPT;
 V_INUSE := V_CHARITEM.INUSE;
 V_USECOUNT := V_CHARITEM.USECOUNT;
 V_REMAINTIME := V_CHARITEM.REMAINTIME;
 IF V_CHARITEM.EXPIREDATE > SYSDATE + 9995 THEN
  V_EXPIREDATE := ' ';
 ELSE
  V_EXPIREDATE := TO_CHAR(V_CHARITEM.EXPIREDATE, 'YYYY-MM-DD HH24:MI:SS');
 END IF;

 /* ���Ͽ��� �����ۺκ��� RESET���� */
 V_RESULT := 1;
 UPDATE MAILBOX SET ITEMSEQ = 0, ITEMTID = 0, ITEMQTY = 0 WHERE MAILSEQ = V_MAILSEQ;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_RESULT := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPMAILWRITE
prompt ==============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPMAILWRITE(
 V_TOCHARID VARCHAR2, V_FROMCHARID VARCHAR2, V_SUBJECT VARCHAR2,
 V_DATE VARCHAR2, V_FLAG NUMBER, V_ITEMTID NUMBER,
 V_ITEMQTY NUMBER, V_ITEMSEQ NUMBER, V_STATUS NUMBER,
 V_CONTENTS VARCHAR2,
 V_MAILSEQ OUT NUMBER, V_RESULT OUT NUMBER
 )
AS
 V_CHARIDDUMMY CHARMASTER.CHARID%TYPE;
 V_CHARITEMTID CHARITEM.ITEMTID%TYPE;
 V_CHARITEMQTY CHARITEM.STACKCOUNT%TYPE;
BEGIN
 /* �ʱ�ȭ */
 V_RESULT := 1;
 V_MAILSEQ := 0;

 /* FIND RECEIVE CHAR ID */
 V_RESULT := 2;
 SELECT CHARID INTO V_CHARIDDUMMY FROM CHARMASTER WHERE CHARID = V_TOCHARID;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 /* FIND ITEM */
 IF V_ITEMSEQ <> 0 THEN
  V_RESULT := 5;
  SELECT NVL(ITEMTID, 0), NVL(STACKCOUNT, 0) INTO V_CHARITEMTID, V_CHARITEMQTY
  FROM CHARITEM WHERE ITEMSEQ = V_ITEMSEQ;
  IF SQL%NOTFOUND THEN
   RAISE NO_DATA_FOUND;
  END IF;

  IF V_CHARITEMTID <> V_ITEMTID THEN
   RAISE NO_DATA_FOUND;
  END IF;

  /* UPDATE OWNER AND STATUS */
  UPDATE CHARITEM SET CHARID = V_TOCHARID, STATUS = V_STATUS, ACCOUNTID = NULL
  WHERE ITEMSEQ = V_ITEMSEQ;
  IF SQL%NOTFOUND THEN
   RAISE NO_DATA_FOUND;
  END IF;

 ELSE
  V_CHARITEMTID := 0;
  V_CHARITEMQTY := 0;
 END IF;


 /* GET SEQUENCE */
 SELECT MAILBOXSQ.NEXTVAL INTO V_MAILSEQ FROM DUAL;

 /* INSERT */
 V_RESULT := 1;
 INSERT INTO MAILBOX
  (MAILSEQ, TOCHARID, FROMCHARID, SUBJECT, CONTENTS, WDATE, FLAG, ITEMSEQ, ITEMTID, ITEMQTY)
 VALUES
  (V_MAILSEQ, V_TOCHARID, V_FROMCHARID, V_SUBJECT, V_CONTENTS, TO_DATE(V_DATE, 'YYYY-MM-DD HH24:MI:SS'),
   V_FLAG, V_ITEMSEQ, V_CHARITEMTID, V_ITEMQTY);
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_RESULT := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPRENAMECHAR
prompt ===============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPRENAMECHAR(V_CHARID_OLD VARCHAR2, V_CHARID_NEW VARCHAR2, V_CODE OUT NUMBER)
AS
 V_DUP   VARCHAR2(5);
 E_MYEXCPT  EXCEPTION;
BEGIN
 /* OLDID, NEWID�� ������... */
 V_CODE := 2;
 IF V_CHARID_OLD = V_CHARID_NEW THEN
  RAISE E_MYEXCPT;
 END IF;

 /* OLDID�� �ִ���... */
 V_CODE := 3;
 SELECT 'Y' INTO V_DUP FROM CHARMASTER WHERE CHARID = V_CHARID_OLD;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 /* NEWID�� �ߺ�����... */
 V_CODE := 4;
 BEGIN
  SELECT 'Y' INTO V_DUP FROM CHARMASTER WHERE CHARID = V_CHARID_NEW;
  IF SQL%FOUND THEN
   RAISE E_MYEXCPT;
  END IF;
 EXCEPTION
  WHEN NO_DATA_FOUND THEN
   V_DUP := 'N';
  WHEN OTHERS THEN
   RAISE E_MYEXCPT;
 END;

 V_CODE := 1;
 UPDATE CHARMASTER SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 UPDATE CHARDETAIL SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 UPDATE CHARSKILL SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 UPDATE CHARITEM SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;

 UPDATE CHARQUEST SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;

 UPDATE GUILDMASTER SET GMCHARID = V_CHARID_NEW WHERE GMCHARID = V_CHARID_OLD;

 UPDATE GUILDMEMBER SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;

 UPDATE SALESBOARD SET CHARID = V_CHARID_NEW WHERE CHARID = V_CHARID_OLD;

 /* SUCCESS */
 V_CODE := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;

END;
/

prompt
prompt Creating procedure SPRENAMEGUILD
prompt ================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPRENAMEGUILD(V_GUILDID VARCHAR2, V_OLDGUILDID VARCHAR2)
AS
 E_MYEXCPT EXCEPTION;
BEGIN
 UPDATE GUILDBATTLEHIST SET GUILDID = V_GUILDID WHERE GUILDID = V_OLDGUILDID;

 UPDATE GUILDBATTLEHIST SET ENEMYGUILDID = V_GUILDID WHERE ENEMYGUILDID = V_OLDGUILDID;

 UPDATE GUILDMEMBER SET GUILDID = V_GUILDID WHERE GUILDID = V_OLDGUILDID;

 UPDATE GUILDMASTER SET GUILDID = V_GUILDID WHERE GUILDID = V_OLDGUILDID;
 IF SQL%NOTFOUND THEN
  RAISE E_MYEXCPT;
 END IF;

 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
  RAISE_APPLICATION_ERROR(-20010, '������ ���ν��� ����');
END;
/

prompt
prompt Creating procedure SPRESTORECHAR
prompt ================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.
 SPRESTORECHAR(V_CHARSEQ NUMBER, V_NEWCHARID VARCHAR2, V_RESULT OUT VARCHAR2)
AS
 V_CHARIDDUMMY VARCHAR2(32);
 V_BMASTER BAKCHARMASTER%ROWTYPE;
 V_BDETAIL BAKCHARDETAIL%ROWTYPE;
 V_BITEM  BAKCHARITEM%ROWTYPE;
 V_BCASH  BAKCHARCASHITEM%ROWTYPE;
 V_BSKILL BAKCHARSKILL%ROWTYPE;
 V_SLOT  NUMBER(3);
 CURSOR C_ITEM IS
  SELECT * INTO V_BITEM FROM BAKCHARITEM WHERE CHARSEQ = V_CHARSEQ;
 CURSOR C_CASH IS
  SELECT * INTO V_BCASH FROM BAKCHARCASHITEM WHERE CHARSEQ = V_CHARSEQ;
 E_MYEXCEPTION  EXCEPTION;
BEGIN
 V_RESULT := 'UNK';

 SELECT CHARID INTO V_CHARIDDUMMY FROM CHARMASTER WHERE CHARID = V_NEWCHARID;
 IF SQL%FOUND THEN
  V_RESULT := 'CH_DUP';
  RAISE E_MYEXCEPTION;
 END IF;

 SELECT CHARID INTO V_CHARIDDUMMY FROM CHARDETAIL WHERE CHARID = V_NEWCHARID;
 IF SQL%FOUND THEN
  V_RESULT := 'CH_DUP';
  RAISE E_MYEXCEPTION;
 END IF;

 /* ������ */
 BEGIN
  SELECT * INTO V_BMASTER FROM BAKCHARMASTER
  WHERE CHARSEQ = V_CHARSEQ;
  IF SQL%NOTFOUND THEN
   V_RESULT := 'CM_NF';
   RAISE E_MYEXCEPTION;
  END IF;

  SELECT MAX(SLOT)+1 INTO V_SLOT FROM CHARMASTER WHERE ACCOUNTID = V_BMASTER.ACCOUNTID;
  IF SQL%NOTFOUND THEN
   V_SLOT := 1;
  END IF;

  INSERT INTO CHARMASTER(CHARID, ACCOUNTID, SLOT, CHARTID, CREATIONDATE, WORLD)
  VALUES(V_NEWCHARID, V_BMASTER.ACCOUNTID, V_SLOT,
   V_BMASTER.CHARTID, V_BMASTER.CREATIONDATE, V_BMASTER.WORLD);
 EXCEPTION
  WHEN OTHERS THEN
   V_RESULT := 'CM_FL';
   RAISE E_MYEXCEPTION;
 END;
 /* ������ */
 BEGIN
  SELECT * INTO V_BDETAIL FROM BAKCHARDETAIL
  WHERE CHARSEQ = V_CHARSEQ;
  IF SQL%NOTFOUND THEN
   V_RESULT := 'CD_NF';
   RAISE E_MYEXCEPTION;
  END IF;

  INSERT INTO
  CHARDETAIL(CHARID, POS, CRIMINALSTATUS, MURDERPOINT,
   RCFTIME, RMFTIME, INVENMONEY,
   HP, MP, SP, EXP, LV,
   SKILLPOINT, QUICKBELT, LATESTREGION,
   FLAG, STATUS, RESURRECTDATE, TRANSFORMDATE,
   HAIR, FACE, DEADTYPE, FLAG2)
  VALUES(V_NEWCHARID, V_BDETAIL.POS, V_BDETAIL.CRIMINALSTATUS, V_BDETAIL.MURDERPOINT,
   V_BDETAIL.RCFTIME, V_BDETAIL.RMFTIME, V_BDETAIL.INVENMONEY,
   V_BDETAIL.HP, V_BDETAIL.MP, V_BDETAIL.SP, V_BDETAIL.EXP, V_BDETAIL.LV,
   V_BDETAIL.SKILLPOINT, V_BDETAIL.QUICKBELT, V_BDETAIL.LATESTREGION,
   V_BDETAIL.FLAG, V_BDETAIL.STATUS, V_BDETAIL.RESURRECTDATE, V_BDETAIL.TRANSFORMDATE,
   V_BDETAIL.HAIR, V_BDETAIL.FACE, V_BDETAIL.DEADTYPE, V_BDETAIL.FLAG2);
 EXCEPTION
  WHEN OTHERS THEN
   V_RESULT := 'CD_FL';
   RAISE E_MYEXCEPTION;
 END;

 /* ������ */
 BEGIN
  OPEN C_ITEM;
  LOOP
   FETCH C_ITEM INTO V_BITEM;
   EXIT WHEN C_ITEM%NOTFOUND;
    INSERT INTO CHARITEM(ITEMSEQ, ACCOUNTID, CHARID, ITEMTID,
      STACKCOUNT, STATUS, POS, NEEDLEVEL,
      OWNTIME, CONVHIST, DURABILITY, MAXDUR, FLAG,
      OPT, WORLD, INUSE, REMAINTIME,
      EXPIREDATE, USECOUNT)
    VALUES(V_BITEM.ITEMSEQ, V_BITEM.ACCOUNTID, V_NEWCHARID, V_BITEM.ITEMTID,
     V_BITEM.STACKCOUNT, V_BITEM.STATUS, V_BITEM.POS, V_BITEM.NEEDLEVEL,
     V_BITEM.OWNTIME, V_BITEM.CONVHIST, V_BITEM.DURABILITY, V_BITEM.MAXDUR, V_BITEM.FLAG,
     V_BITEM.OPT, V_BITEM.WORLD, V_BITEM.INUSE, V_BITEM.REMAINTIME,
     V_BITEM.EXPIREDATE, V_BITEM.USECOUNT);

  END LOOP;
  CLOSE C_ITEM;
 EXCEPTION
  WHEN OTHERS THEN
   CLOSE C_ITEM;
   V_RESULT := 'CI_FL';
   RAISE E_MYEXCEPTION;
 END;
 BEGIN
  OPEN C_CASH;
  LOOP
   FETCH C_CASH INTO V_BCASH;
   EXIT WHEN C_CASH%NOTFOUND;
    INSERT INTO CHARCASHITEM(ITEMSEQ, ACCOUNTID, CHARID, ITEMTID,
      STACKCOUNT, STATUS, POS, NEEDLEVEL,
      OWNTIME, CONVHIST, DURABILITY, MAXDUR, FLAG,
      OPT, WORLD, INUSE, REMAINTIME,
      EXPIREDATE, USECOUNT)
    VALUES(V_BCASH.ITEMSEQ, V_BCASH.ACCOUNTID, V_NEWCHARID, V_BCASH.ITEMTID,
     V_BCASH.STACKCOUNT, V_BCASH.STATUS, V_BCASH.POS, V_BCASH.NEEDLEVEL,
     V_BCASH.OWNTIME, V_BCASH.CONVHIST, V_BCASH.DURABILITY, V_BCASH.MAXDUR, V_BCASH.FLAG,
     V_BCASH.OPT, V_BCASH.WORLD, V_BCASH.INUSE, V_BCASH.REMAINTIME,
     V_BCASH.EXPIREDATE, V_BCASH.USECOUNT);

  END LOOP;
  CLOSE C_CASH;
 EXCEPTION
  WHEN OTHERS THEN
   CLOSE C_CASH;
   V_RESULT := 'CC_FL';
   RAISE E_MYEXCEPTION;
 END;


 /* ��ų */
 BEGIN
  SELECT * INTO V_BSKILL FROM BAKCHARSKILL;
  /* ��ų�� ���°�� �׳� ���д�. */
  IF SQL%FOUND THEN
   INSERT INTO CHARSKILL(CHARID, SKILLSEQ, PRODUCT)
   VALUES(V_NEWCHARID, V_BSKILL.SKILLSEQ, V_BSKILL.PRODUCT);
  END IF;
 EXCEPTION
  WHEN OTHERS THEN
   V_RESULT := 'CS_FL';
   RAISE E_MYEXCEPTION;
 END;


EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPSALESBUY
prompt =============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPSALESBUY(
 V_DOCID NUMBER, V_BUYER VARCHAR2, V_BUYERMONEY NUMBER, V_STATUSFROM NUMBER, V_STATUSTO NUMBER,
 V_SELLER OUT VARCHAR2, V_PRICE OUT NUMBER,
 V_ITEMSEQ OUT NUMBER, V_ITEMTID OUT NUMBER, V_ITEMQTY OUT NUMBER,
 V_NEEDLEVEL OUT NUMBER, V_OWNTIMESTR OUT VARCHAR2, V_CONVHIST OUT VARCHAR2,
 V_DURABILITY OUT NUMBER, V_MAXDUR OUT NUMBER, V_OPT OUT VARCHAR2, V_INUSE OUT NUMBER, V_USECOUNT OUT NUMBER,
 V_REMAINTIME OUT NUMBER, V_EXPIREDATE OUT VARCHAR2,
 V_CODE OUT NUMBER
 )
AS
 V_CHARITEM  CHARITEM%ROWTYPE;
 V_SALES   SALESBOARD%ROWTYPE;
 V_BUYID   SALESBOUGHT.BUYID%TYPE;
 E_MYEXCPT  EXCEPTION;

BEGIN
 /* �ʱ�ȭ */
 V_CODE := 1;
 V_SELLER := '';
 V_ITEMSEQ := 0;
 V_PRICE := 0;
 V_ITEMQTY := 0;
 V_ITEMTID := 0;
 V_NEEDLEVEL := 0;
 V_CONVHIST := '';
 V_DURABILITY := 0;
 V_MAXDUR := 0;
 V_OPT := '';
 V_OWNTIMESTR := '';
 V_INUSE := 0;
 V_USECOUNT := 0;
 V_REMAINTIME := 0;
 V_EXPIREDATE := '';

 /* ������ ã�´� */
 V_CODE := 9;
 SELECT * INTO V_SALES FROM SALESBOARD WHERE DOCID = V_DOCID FOR UPDATE;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_SELLER := V_SALES.CHARID;
 V_ITEMSEQ := V_SALES.ITEMSEQ;
 V_PRICE := V_SALES.UNITPRICE;

 /* �Ĵ³�� ��³��� ������ ������ */
 V_CODE := 11;
 IF V_SELLER = V_BUYER THEN
  RAISE E_MYEXCPT;
 END IF;

 /* �Ǹ����� ���°� �ƴϸ� ������ */
 V_CODE := 12;
 IF V_SALES.STATUS <> V_STATUSFROM THEN
  RAISE E_MYEXCPT;
 END IF;

 /* �������� ã�´� */
 V_CODE := 4;
 SELECT * INTO V_CHARITEM FROM CHARITEM
 WHERE ITEMSEQ = V_SALES.ITEMSEQ AND STATUS = 8 FOR UPDATE;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_ITEMTID := V_CHARITEM.ITEMTID;
 V_ITEMQTY := V_CHARITEM.STACKCOUNT;
 V_NEEDLEVEL := V_CHARITEM.NEEDLEVEL;
 IF V_CHARITEM.OWNTIME IS NOT NULL THEN
  V_OWNTIMESTR := TO_CHAR(V_CHARITEM.OWNTIME, 'YYYY-MM-DD HH24:MI:SS');
 END IF;
 V_CONVHIST := V_CHARITEM.CONVHIST;
 V_DURABILITY := V_CHARITEM.DURABILITY;
 V_MAXDUR := V_CHARITEM.MAXDUR;
 V_OPT := V_CHARITEM.OPT;
 V_INUSE := V_CHARITEM.INUSE;
 V_USECOUNT := V_CHARITEM.USECOUNT;
 V_REMAINTIME := V_CHARITEM.REMAINTIME;
 IF V_CHARITEM.EXPIREDATE IS NOT NULL THEN
  V_EXPIREDATE := TO_CHAR(V_CHARITEM.EXPIREDATE, 'YYYY-MM-DD HH24:MI:SS');
 END IF;

 /* ���� üũ */
 V_CODE := 10;
 IF (V_BUYERMONEY < V_PRICE) THEN
  RAISE E_MYEXCPT;
 END IF;

 /* �Խù� ���� ���� COMPLETE */
 V_CODE := 1;
 UPDATE SALESBOARD SET STATUS = V_STATUSTO, ITEMSEQ = NULL WHERE DOCID = V_DOCID;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPSALESCANCEL
prompt ================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPSALESCANCEL(
 V_DOCID NUMBER, V_CHARID VARCHAR2, V_STATUSFROM NUMBER, V_STATUSTO NUMBER,
 V_CODE OUT NUMBER
 )
AS
 V_SALES  SALESBOARD%ROWTYPE;
BEGIN
 /* �ʱ�ȭ */
 V_CODE := 1;

 /* ���� Ȯ�� �� ���� */
 V_CODE := 9;
 SELECT * INTO V_SALES FROM SALESBOARD
 WHERE DOCID = V_DOCID AND CHARID = V_CHARID AND STATUS = V_STATUSFROM
 FOR UPDATE;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 1;
 /* �Խù� ��� */
 INSERT INTO BAKSALESBOARD(DOCID, CHARID, ITEMSEQ, UNITPRICE, TOTALQTY, WDATE, ITEMTID, STATUS)
 VALUES (V_SALES.DOCID, V_SALES.CHARID, V_SALES.ITEMSEQ, V_SALES.UNITPRICE, V_SALES.TOTALQTY,
   V_SALES.WDATE, V_SALES.ITEMTID, V_STATUSTO);
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 DELETE FROM SALESBOARD WHERE DOCID = V_DOCID;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPSALESCONFIRM
prompt =================================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPSALESCONFIRM(
 V_DOCID NUMBER, V_CHARID VARCHAR2, V_STATUSFROM NUMBER, V_STATUSTO NUMBER,
 V_CODE OUT NUMBER
 )
AS
 V_SALES  SALESBOARD%ROWTYPE;
BEGIN
 /* �ʱ�ȭ */
 V_CODE := 1;

 /* ���� Ȯ�� �� ���� */
 V_CODE := 9;
 SELECT * INTO V_SALES FROM SALESBOARD
 WHERE DOCID = V_DOCID AND CHARID = V_CHARID AND STATUS = V_STATUSFROM
 FOR UPDATE;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 1;
 /* �Խù� ��� */
 INSERT INTO BAKSALESBOARD(DOCID, CHARID, ITEMSEQ, UNITPRICE, TOTALQTY, WDATE, ITEMTID, STATUS)
 VALUES (V_SALES.DOCID, V_SALES.CHARID, V_SALES.ITEMSEQ, V_SALES.UNITPRICE, V_SALES.TOTALQTY,
   V_SALES.WDATE, V_SALES.ITEMTID, V_STATUSTO);
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 DELETE FROM SALESBOARD WHERE DOCID = V_DOCID;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/

prompt
prompt Creating procedure SPSALESSELL
prompt ==============================
prompt
CREATE OR REPLACE PROCEDURE ALEF.SPSALESSELL(
 V_ITEMSEQ NUMBER, V_PRICE NUMBER, V_QUANTITY NUMBER,
 V_ITEMSTATUS NUMBER, V_BOARDSTATUS NUMBER, V_CHARID VARCHAR2,
 V_DOCID OUT NUMBER, V_DATESTR OUT VARCHAR2, V_CODE OUT NUMBER
 )
AS
 V_DATE   DATE;
 V_TOTALSALES  NUMBER;
 E_MYEXCPT  EXCEPTION;
BEGIN
 /* �ʱ�ȭ */
 V_CODE := 4;
 V_DOCID := 0;
 V_DATE := SYSDATE;
 V_DATESTR := TO_CHAR(V_DATE, 'YYYY/MM/DD HH24:MI:SS');

 /* MAXIMUM REGISTRATION */
 V_CODE := 6;
 SELECT COUNT(*) INTO V_TOTALSALES FROM SALESBOARD WHERE CHARID = V_CHARID;
 IF V_TOTALSALES >= 10 THEN
  RAISE E_MYEXCPT;
 END IF;


 /* SALESBOARD�� ��� */
 SELECT SALESBOARD_SQ.NEXTVAL INTO V_DOCID FROM DUAL;

 INSERT INTO SALESBOARD(DOCID, CHARID, ITEMSEQ, ITEMSEQ2, UNITPRICE, TOTALQTY, WDATE, ITEMTID, STATUS)
  SELECT V_DOCID, I.CHARID, I.ITEMSEQ, I.ITEMSEQ, V_PRICE, V_QUANTITY, V_DATE, I.ITEMTID, V_BOARDSTATUS
  FROM CHARITEM I
  WHERE ITEMSEQ = V_ITEMSEQ AND STATUS = V_ITEMSTATUS;
 IF SQL%NOTFOUND THEN
  RAISE NO_DATA_FOUND;
 END IF;

 V_CODE := 0;
 COMMIT;

EXCEPTION
 WHEN OTHERS THEN
  ROLLBACK;
END;
/


spool off
