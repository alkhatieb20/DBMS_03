CREATE TABLE author (
    author_id INTEGER PRIMARY KEY,
    last_name  TEXT NOT NULL,
    first_name TEXT NOT NULL
);

CREATE TABLE book (
    isbn       TEXT    PRIMARY KEY,
    title      TEXT    NOT NULL,
    pub_year   INTEGER NOT NULL
);

CREATE TABLE writes (
    author_id INTEGER NOT NULL,
    isbn      TEXT    NOT NULL,
    PRIMARY KEY (author_id, isbn),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (isbn)      REFERENCES book(isbn)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE copy (
    copy_no    INTEGER PRIMARY KEY,
    isbn       TEXT    NOT NULL,
    shelf_loc  TEXT    NOT NULL,
    FOREIGN KEY (isbn) REFERENCES book(isbn)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE member (
    member_no    INTEGER PRIMARY KEY,
    full_name    TEXT    NOT NULL,
    email        TEXT    NOT NULL UNIQUE,
    enrolled_on  DATE    NOT NULL
);

CREATE TABLE loan (
    loan_id     INTEGER PRIMARY KEY,
    member_no   INTEGER NOT NULL,
    copy_no     INTEGER NOT NULL,
    loan_date   DATE    NOT NULL,
    return_date DATE,           -- NULL while still on loan
    FOREIGN KEY (member_no) REFERENCES member(member_no)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (copy_no)   REFERENCES copy(copy_no)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
