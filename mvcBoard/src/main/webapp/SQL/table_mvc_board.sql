CREATE TABLE mvc_board (
bId NUMBER(4) PRIMARY KEY,
bName VARCHAR2(20),
bTitle VARCHAR2(100),
bContent VARCHAR2(300),
bDate DATE DEFAULT SYSDATE,
bHit NUMBER(4) DEFAULT 0,
bGroup NUMBER(4),
bStep NUMBER(4),
bIndent NUMBER(4)
);

CREATE SEQUENCE mvc_board_seq;

insert into mvc_board (bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent)
values (MVC_BOARD_SEQ.nextval, 'abcd', 'is title', 'is content', 0, mvc_board_seq.currval, 0,0);

COMMIT;