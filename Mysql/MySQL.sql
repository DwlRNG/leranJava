CREATE TABLE 表名([   //创建表
属性名1 属性类型[完整性约束条件]， //最后一个不用接逗号
属性名2 属性类型 NOT NULL, //非空约束
属性名3 属性类型 PRIMARY KEY, //主键 唯一非空
属性名4 属性类型 UNIQUE,//唯一约束表中不能出现同样字段
属性名5 属性类型 PRIMARY KEY AUTO_INCREMENT //主键自增长
]);

DESC tablename; //查看表结构

ALTER TABLE OLDTABLENAME RENAME NEWTABLENAME; //修改表名

ALTER TABLE TABLENAME MODIFY 属性名 属性类型; //修改表数据类型

ALTER TABEL TABLENAME CHANGE 旧属性名 新属性名  属性类型;//修改表属性名

ALTER TABEL TABLENAME ADD 属性名 属性类型[完整性约束条件] ;//添加表属性

ALTER TABEL TABLENAME DROP 属性名 ; //移除表属性

ALTER TABEL TABLENAME DROP FOREIGN KEY 外键别名 ; //删除表外键

DROP TABLENAME ;//删除表

SELECT 列表属性 FROM TABLENAME;  //查询列表属性

SELECT 列表属性 FROM TABLENAME WHERE 条件表达式，条件表达式二; //条件查询

SELECT 列表属性 FROM TABLENAME WHERE IN (NUMBER1,NUMBER2);//在这个集合内

SELECT 列表属性 FROM TABLENAME WHERE 条件1 AND 条件二 ;//条件一和条件二

SELECT 列表属性 FROM TABLENAME WHERE 列表属性 LIKE '%占位符代表后面的或者前面的 _代表一个字符' ; //模糊查询

SELECT 列表属性 FROM TABLENAME WHERE 列表属性 IS NULL; //空值查询

SELECT 列表属性 FROM TABLENAME WHERE 条件1 OR 条件2 ;// 满足一种之一即可查询

SELECT DISTINCT 列表属性 FROM TABLENAME ; //查询结果不重复

SELECT * FROM GROUP BY 列表属性 ASC/DESC，列表属性 ASC/DESC;  //排序 ASC升序 DESC降序 

SELECT 需要分组的列表属性 GROUP_CONCAT(列表属性) FROM  表名 GROUP BY 分组属性; //分组查询 

SELECT * FROM 表名 LIMIT 初始位置，记录条数  //分页查询 

HAVING的使用（用来限制分组以后的条件）（SELECT 分组属性 ,COUNT(分组属性) ‘组别名’ FROM 表名 GROUP BY 分组属性 HAVING COUNT(分组属性)> < = 条件）

SELECT 属性名1,属性名2,表名.外键属性名,属性名3，属性名4
FROM 子表名，父表名
WHERE 从表名.外键属性名=主表名.主键属性  

CREATE INDEX 索引名 ON 表名 （属性名 ASC/DESC）//创建索引

CREATE INDEX 索引名 ON 表名 （属性名1,属性名2 ASC/DESC）//创建多属性索引

CREATE UNIQUE INDEX 索引名 ON 表名 （属性名 ASC/DESC）//创建单例索引

CREATE SPATIAL INDEX 索引名 ON 表名 （属性名 ASC/DESC）//创建空间索引

CREATE FULLTEXT INDEX 索引名 ON 表名 （属性名 ASC/DESC）//创建全文索引

DROP INDEX 索引名 ON 表名  //移除索引

CREATE/REPLACE VIEW VIEWNAME(属性列表) AS SELECT(属性列表) FROM TABELNAME WITH LOCAL CHECK OPTION ;//创建视图 /修改视图

ALTER VIEW VIEWNAME(列表属性) SELECT (列表属性) FROM TABELNAME WHILE LOCAL CHECK OPTION;//修改视图 

UPDATE VIEW VIENAME SET 属性="属性值" WHERE 条件; //更新视图数据

如果视图包含下述结构中的任何一种，那么它就是不可更新的：
（1）聚合函数；
 
（2）DISTINCT关键字；
 
（3）GROUP BY子句；
 
（4）ORDER BY子句；
 
（5）HAVING子句；
 
（6）UNION运算符；
 
（7）位于选择列表中的子查询；
 
（8）FROM子句中包含多个表；
 
（9）SELECT语句中引用了不可更新视图；
 
（10）WHERE子句中的子查询，引用FROM子句中的表；
 
（11）ALGORITHM 选项指定为TEMPTABLE（使用临时表总会使视图成为不可更新的）。

INSERT INTO VIENAME VALUE();//视图插入数据

DELETE FROM VIENAME WHERE 条件; //删除数据

DROP VIEW VIENAME; //移除视图























