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

 Date: 19/12/2020 13:10:21
*/


-- ----------------------------
-- Table structure for ADMIN
-- ----------------------------
DROP TABLE "SYSTEM"."ADMIN";
CREATE TABLE "SYSTEM"."ADMIN" (
  "ID" NUMBER VISIBLE NOT NULL,
  "USERNAME" VARCHAR2(255 BYTE) VISIBLE,
  "PASSWORD" VARCHAR2(255 BYTE) VISIBLE,
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
-- Records of ADMIN
-- ----------------------------
INSERT INTO "SYSTEM"."ADMIN" VALUES ('1', 'admin', '123456', '15265758355');

-- ----------------------------
-- Primary Key structure for table ADMIN
-- ----------------------------
ALTER TABLE "SYSTEM"."ADMIN" ADD CONSTRAINT "SYS_C0010259" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table ADMIN
-- ----------------------------
ALTER TABLE "SYSTEM"."ADMIN" ADD CONSTRAINT "SYS_C0010258" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table ADMIN
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_ADMIN_AUTOINC" BEFORE INSERT ON "SYSTEM"."ADMIN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT admin_autoinc.nextval INTO :new.id FROM dual;
end insert_admin_autoinc;
/
