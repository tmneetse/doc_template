
CREATE TABLE t_child
(
  uuid        uuid    NOT NULL,
  parent_uuid uuid   ,
  name        varchar,
  PRIMARY KEY (uuid)
);

COMMENT ON TABLE t_child IS 'childテーブル';

CREATE TABLE t_parent
(
  uuid uuid    NOT NULL,
  name varchar NOT NULL,
  PRIMARY KEY (uuid)
);

COMMENT ON TABLE t_parent IS 'parentテーブル';

ALTER TABLE t_child
  ADD CONSTRAINT FK_t_parent_TO_t_child
    FOREIGN KEY (parent_uuid)
    REFERENCES t_parent (uuid);
