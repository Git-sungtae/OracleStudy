CREATE TABLE topic (
    id         NUMBER NOT NULL,
    title      VARCHAR2(50) NOT NULL,
    decription VARCHAR(4000),
    created    DATE NOT NULL
);
--Mors�� ��Ű���� �ִ� ���̺���� �̸����� ��ȸ
SELECT
    table_name
FROM
    all_tables
WHERE
    owner = 'MORS';
--���̺� ��(������) ����

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
    
--�����۾��� ������ �ݵ�� COMMIT; ����� �������Ѵ�.
--Ʈ����� ���� ����
COMMIT;

--READ : ��������
--SELECT ���
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

--WHERE + ������ ����Ͽ� Ư�������� ������ SELECT ����
SELECT
    *
FROM
    topic
WHERE
    id <= 2;