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

 Date: 19/12/2020 13:12:35
*/


-- ----------------------------
-- Table structure for SIGNRECORD
-- ----------------------------
DROP TABLE "SYSTEM"."SIGNRECORD";
CREATE TABLE "SYSTEM"."SIGNRECORD" (
  "RID" NUMBER VISIBLE NOT NULL,
  "SID" NUMBER VISIBLE,
  "SUBJECT" VARCHAR2(255 BYTE) VISIBLE,
  "UID" NUMBER VISIBLE,
  "USERNAME" VARCHAR2(255 BYTE) VISIBLE,
  "PHONE" VARCHAR2(255 BYTE) VISIBLE
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
-- Primary Key structure for table SIGNRECORD
-- ----------------------------
ALTER TABLE "SYSTEM"."SIGNRECORD" ADD CONSTRAINT "SYS_C0010255" PRIMARY KEY ("RID");

-- ----------------------------
-- Checks structure for table SIGNRECORD
-- ----------------------------
ALTER TABLE "SYSTEM"."SIGNRECORD" ADD CONSTRAINT "SYS_C0010254" CHECK ("RID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table SIGNRECORD
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_SIGNRECORD_AUTOINC" BEFORE INSERT ON "SYSTEM"."SIGNRECORD" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT signrecord_autoinc.nextval INTO :new.rid FROM dual;
end insert_signrecord_autoinc;
/
