-- 가장 기본
INSERT INTO MEMBER (MID, EMAIL, UPW, JOIN_DATE) VALUES ('ADMIN', 'ADMIN@admin.com', 'admin', sysdate);

COMMIT;
-- 추가계정, 추가게시글 2개씩
INSERT INTO MEMBER (MID, EMAIL, UPW, JOIN_DATE) VALUES('lsk','lsk@wb.com','lsk',sysdate);
INSERT INTO MEMBER (MID, EMAIL, UPW, JOIN_DATE) VALUES('user1','user1@wb.com','user1',sysdate);
COMMIT;
-- 여기까지 검증완료
INSERT INTO Review_Post (RP_NO, MID, RP_CONTENT, RP_TITLE, RP_AUTHOR, READ_DATE, REG_DATE, PHRASE,RP_READ_CHECK)
VALUES ((SELECT NVL(MAX(RP_NO),0)+1 FROM Review_Post), 'user1', '1CONTENT', '1TITLE', 'author1', sysdate, sysdate, 'phrase', 0)
;
INSERT INTO Review_Post (RP_NO, MID, RP_CONTENT, RP_TITLE, RP_AUTHOR, READ_DATE, REG_DATE, PHRASE,RP_READ_CHECK)
VALUES ((SELECT NVL(MAX(RP_NO),0)+1 FROM Review_Post), 'user2', '2CONTENT', '2TITLE', 'author2', sysdate, sysdate, 'phrase2', 0)
;
COMMIT;


--게시글
--원글 
INSERT INTO Review_Post (RP_NO, MID, RP_CONTENT, RP_TITLE, RP_AUTHOR, READ_DATE, REG_DATE, PHRASE,RP_READ_CHECK)
VALUES ((SELECT NVL(MAX(RP_NO),0)+1 FROM Review_Post), 'user2', 'CONTENT', '&NUMBER TITLE', 'author3', sysdate, sysdate, 'PHRASE', 0)
;
COMMIT;
-- 게시판목록보기
SELECT * FROM Review_Post ORDER BY RP_NO DESC;
SELECT * FROM Review_Post;
SELECT MAX(RP_NO) FROM Review_Post;
SELECT NVL(MAX(RP_NO),0) FROM Review_Post;
SELECT NVL(MAX(RP_NO),0)+1 FROM Review_Post;


DESC Review_Post;
DESC MEMBER;