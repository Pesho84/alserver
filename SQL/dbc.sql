
  CREATE TABLE "ALEF"."AMT_COUPON_MASTER" 
   (	"SEQ_MASTER" NUMBER(20,0), 
	"ACCOUNTID" VARCHAR2(32 BYTE), 
	"CHARID" VARCHAR2(32 BYTE), 
	"WORLD" VARCHAR2(32 BYTE), 
	"CP_CODE" CHAR(10 BYTE), 
	"USEYN" CHAR(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

  CREATE TABLE "ALEF"."AMT_COUPON_USER" 
   (	"SEQ_MASTER" NUMBER(32,0), 
	"COUPONNO" NUMBER(32,0), 
	"COMPEN" VARCHAR2(20 BYTE), 
	"USEYN" CHAR(10 BYTE), 
	"GAME_USEDT" VARCHAR2(20 BYTE), 
	"GAME_ITEMLOG" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

  CREATE TABLE "ALEF"."AMT_EVENT_COUPON" 
   (	"USEYN" VARCHAR2(20 BYTE), 
	"USEDATE" DATE, 
	"COUPONNO" NUMBER(32,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
