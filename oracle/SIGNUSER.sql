/*
 Navicat Premium Data Transfer

 Source Server         : localhostOracle
 Source Server Type    : Oracle
 Source Server Version : 120100
 Source Host           : localhost:1521
 Source Schema         : SYSTEM

 Target Server Type    : Oracle
 Target Server Version : 120100
 File Encoding         : 65001

 Date: 19/12/2020 13:12:45
*/


-- ----------------------------
-- Table structure for SIGNUSER
-- ----------------------------
DROP TABLE "SYSTEM"."SIGNUSER";
CREATE TABLE "SYSTEM"."SIGNUSER" (
  "USERID" NUMBER VISIBLE NOT NULL,
  "USERNAME" VARCHAR2(255 BYTE) VISIBLE,
  "PASSWORD" VARCHAR2(255 BYTE) VISIBLE
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Primary Key structure for table SIGNUSER
-- ----------------------------
ALTER TABLE "SYSTEM"."SIGNUSER" ADD CONSTRAINT "SYS_C0010248" PRIMARY KEY ("USERID");

-- ----------------------------
-- Checks structure for table SIGNUSER
-- ----------------------------
ALTER TABLE "SYSTEM"."SIGNUSER" ADD CONSTRAINT "SYS_C0010247" CHECK ("USERID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table SIGNUSER
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_SIGNUSER_AUTOINC" BEFORE INSERT ON "SYSTEM"."SIGNUSER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT signuser_autoinc.nextval INTO :new.userid FROM dual;
end insert_signuser_autoinc;
/
