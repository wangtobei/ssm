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

 Date: 19/12/2020 13:13:12
*/


-- ----------------------------
-- Table structure for SUBJECT
-- ----------------------------
DROP TABLE "SYSTEM"."SUBJECT";
CREATE TABLE "SYSTEM"."SUBJECT" (
  "SID" NUMBER VISIBLE NOT NULL,
  "SUBJECT" VARCHAR2(255 BYTE) VISIBLE,
  "PRICE" FLOAT(126) VISIBLE
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
-- Primary Key structure for table SUBJECT
-- ----------------------------
ALTER TABLE "SYSTEM"."SUBJECT" ADD CONSTRAINT "SYS_C0010252" PRIMARY KEY ("SID");

-- ----------------------------
-- Checks structure for table SUBJECT
-- ----------------------------
ALTER TABLE "SYSTEM"."SUBJECT" ADD CONSTRAINT "SYS_C0010251" CHECK ("SID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table SUBJECT
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_SUBJECT_AUTOINC" BEFORE INSERT ON "SYSTEM"."SUBJECT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT subject_autoinc.nextval INTO :new.sid FROM dual;
end insert_subject_autoinc;
/
