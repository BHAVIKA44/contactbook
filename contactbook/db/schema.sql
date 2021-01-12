
CREATE TABLE CONTACTS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME TEXT NOT NULL,
    EMAIL TEXT NOT NULL UNIQUE,
    PHONE TEXT NOT NULL
);


CREATE TABLE GROUPS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME TEXT NOT NULL
);


CREATE TABLE CONTACTS_GROUPS (
  CONTACT_ID INT NOT NULL,
  GROUP_ID INT NOT NULL,
  UNIQUE(CONTACT_ID, GROUP_ID) ON CONFLICT REPLACE,
  FOREIGN KEY(CONTACT_ID) REFERENCES CONTACTS(ID) ON DELETE CASCADE,
  FOREIGN KEY(GROUP_ID) REFERENCES GROUPS(ID) ON DELETE CASCADE
);
