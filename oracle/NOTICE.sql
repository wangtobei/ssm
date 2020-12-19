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

 Date: 19/12/2020 13:12:18
*/


-- ----------------------------
-- Table structure for NOTICE
-- ----------------------------
DROP TABLE "SYSTEM"."NOTICE";
CREATE TABLE "SYSTEM"."NOTICE" (
  "NID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(255 BYTE) VISIBLE,
  "CONTENT" VARCHAR2(255 BYTE) VISIBLE
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
-- Primary Key structure for table NOTICE
-- ----------------------------
ALTER TABLE "SYSTEM"."NOTICE" ADD CONSTRAINT "SYS_C0010253" PRIMARY KEY ("NID");

-- ----------------------------
-- Triggers structure for table NOTICE
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_NOTICE_AUTOINC" BEFORE INSERT ON "SYSTEM"."NOTICE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT notice_autoinc.nextval INTO :new.nid FROM dual;
end insert_notice_autoinc;
/
