CREATE TABLE simple_board (
      sb_num VARCHAR2(7) NOT NULL, /* �Խñ۹�ȣ */
      subject VARCHAR2(300) NOT NULL, /* ���� */
      content CLOB NOT NULL, /* ���� */
      input_date DATE DEFAULT SYSDATE, /* ��¥ */
      view_cnt NUMBER DEFAULT 0 /* ��ȸ�� */
);
CREATE UNIQUE INDEX PK_simple_board
      ON simple_board (
            sb_num ASC
      );
ALTER TABLE simple_board
      ADD
            CONSTRAINT PK_simple_board
            PRIMARY KEY (
                  sb_num
            );