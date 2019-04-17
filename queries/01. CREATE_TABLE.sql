CREATE TABLE simple_board (
      sb_num VARCHAR2(7) NOT NULL, /* 게시글번호 */
      subject VARCHAR2(300) NOT NULL, /* 제목 */
      content CLOB NOT NULL, /* 내용 */
      input_date DATE DEFAULT SYSDATE, /* 날짜 */
      view_cnt NUMBER DEFAULT 0 /* 조회수 */
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