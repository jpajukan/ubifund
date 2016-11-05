import sqlite3
conn=sqlite3.connect('data/info.db')
print("Database created and opened succesfully")

conn.execute('''CREATE TABLE PARKKIPAIKKAPAIKAT
       (ID INT PRIMARY KEY     NOT NULL,
       ALUE           INT    NOT NULL,
       VARATTU        INT     NOT NULL);''')
print("Table PARKKIPAIKKAPAIKAT created successfully")

conn.execute('''CREATE TABLE TELLUSPAIKAT
       (ID INT PRIMARY KEY     NOT NULL,
       VARATTU        INT     NOT NULL);''')
print("Table TELLUSPAIKAT created successfully")


#Tähän tauluun vain yksi rivi
conn.execute('''CREATE TABLE TELLUSNUMEROT
       (ID INT PRIMARY KEY     NOT NULL,
       NYKYMAARA           INT    NOT NULL);''')
print("Table TELLUSNUMEROT created successfully")
       
#Neljä riviä tähän tauluun
conn.execute('''CREATE TABLE PARKKIPAIKKANUMEROT
       (ID INT PRIMARY KEY     NOT NULL,
       ALUE           INT    NOT NULL,
       NYKYMAARA        INT     NOT NULL);''')
print("Table PARKKIPAIKKANUMEROT created successfully")

#autojen sisäänajamislogi
conn.execute('''CREATE TABLE PARKKIPAIKKALOGAUTOT
       (ID INTEGER PRIMARY KEY     ,
       KOHDEALUE           INT    NOT NULL,
       AIKA              TEXT     NOT NULL,
       NYKYMAARA1        INT     NOT NULL,
       NYKYMAARA2        INT     NOT NULL,
       NYKYMAARA3        INT     NOT NULL,
       NYKYMAARA4        INT     NOT NULL);''')
print("Table PARKKIPAIKKALOGAUTOT created successfully")


#tilan logi
conn.execute('''CREATE TABLE PARKKIPAIKKALOGTILA
       (ID INTEGER PRIMARY KEY     ,
       AIKA              TEXT     NOT NULL,
       NYKYMAARA1        INT     NOT NULL,
       NYKYMAARA2        INT     NOT NULL,
       NYKYMAARA3        INT     NOT NULL,
       NYKYMAARA4        INT     NOT NULL);''')
print("Table PARKKIPAIKKALOGTILA created successfully")


#configit
conn.execute('''CREATE TABLE PARKKIPAIKKACONFIG
       (ID INTEGER PRIMARY KEY     ,
       LAYOUT              INT     NOT NULL,
       DELAY        INT     NOT NULL);''')
print("Table PARKKIPAIKKACONFIG created successfully")



conn.execute("INSERT INTO PARKKIPAIKKANUMEROT(ID,ALUE,NYKYMAARA) \
      VALUES (1, 1,0)")

conn.execute("INSERT INTO PARKKIPAIKKANUMEROT(ID,ALUE,NYKYMAARA) \
      VALUES (2, 2,0)")
conn.execute("INSERT INTO PARKKIPAIKKANUMEROT(ID,ALUE,NYKYMAARA) \
      VALUES (3, 3,0)")
conn.execute("INSERT INTO PARKKIPAIKKANUMEROT(ID,ALUE,NYKYMAARA) \
      VALUES (4, 4,0)")
      
conn.execute("INSERT INTO TELLUSNUMEROT(ID,NYKYMAARA) \
      VALUES (1, 0)")
      
conn.execute("INSERT INTO PARKKIPAIKKACONFIG(LAYOUT,DELAY) VALUES (1, 1)")

conn.commit()
conn.close()