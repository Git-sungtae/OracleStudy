CREATE TABLE topic (
    id         NUMBER NOT NULL,
    title      VARCHAR2(50) NOT NULL,
    decription VARCHAR(4000),
    created    DATE NOT NULL
);
--Mors의 스키마에 있는 테이블들의 이름들을 조회
SELECT
    table_name
FROM
    all_tables
WHERE
    owner = 'MORS';
--테이블에 행(데이터) 삽입

INSERT INTO topic (
    id,
    title,
    description,
    created
) VALUES (
    1,
    'Oracle',
    'Oracle is...',
    sysdate
);

INSERT INTO topic (
    id,
    title,
    description,
    created
) VALUES (
    2,
    'SQL',
    'SQL is...',
    sysdate
);

INSERT INTO topic (
    id,
    title,
    description,
    created
) VALUES (
    3,
    'PostgreSQL',
    'PostgreSQL is...',
    sysdate
);
    
--수정작업을 했으면 반드시 COMMIT; 명령을 내려야한다.
--트랜잭션 관련 이유
COMMIT;

--READ : 가져오기
--SELECT 사용
SELECT
    *
FROM
    topic;

SELECT
    id,
    title,
    created
FROM
    topic;

--WHERE + 조건을 사용하여 특정조건의 데이터 SELECT 가능
SELECT
    *
FROM
    topic
WHERE
    id <= 2;