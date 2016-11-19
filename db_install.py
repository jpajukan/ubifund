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

#telluspaikattila
conn.execute('''CREATE TABLE TELLUSPAIKATROW
       (ID INTEGER PRIMARY KEY     ,
       AIKA              TEXT     NOT NULL,
       PAIKKA1        INT     NOT NULL,
       PAIKKA2        INT     NOT NULL,
       PAIKKA3        INT     NOT NULL,
       PAIKKA4        INT     NOT NULL,
       PAIKKA5        INT     NOT NULL,
       PAIKKA6        INT     NOT NULL,
       PAIKKA7        INT     NOT NULL,
       PAIKKA8        INT     NOT NULL,
       PAIKKA9        INT     NOT NULL,
       PAIKKA10        INT     NOT NULL,
       PAIKKA11        INT     NOT NULL,
       PAIKKA12        INT     NOT NULL,
       PAIKKA13        INT     NOT NULL,
       PAIKKA14        INT     NOT NULL,
       PAIKKA15        INT     NOT NULL,
       PAIKKA16        INT     NOT NULL,
       PAIKKA17        INT     NOT NULL,
       PAIKKA18        INT     NOT NULL,
       PAIKKA19        INT     NOT NULL,
       PAIKKA20        INT     NOT NULL,
       PAIKKA21        INT     NOT NULL,
       PAIKKA22        INT     NOT NULL,
       PAIKKA23        INT     NOT NULL,
       PAIKKA24        INT     NOT NULL,
       PAIKKA25        INT     NOT NULL,
       PAIKKA26        INT     NOT NULL,
       PAIKKA27        INT     NOT NULL,
       PAIKKA28        INT     NOT NULL,
       PAIKKA29        INT     NOT NULL,
       PAIKKA30        INT     NOT NULL,
       PAIKKA31        INT     NOT NULL,
       PAIKKA32        INT     NOT NULL,
       PAIKKA33        INT     NOT NULL,
       PAIKKA34        INT     NOT NULL,
       PAIKKA35        INT     NOT NULL,
       PAIKKA36        INT     NOT NULL,
       PAIKKA37        INT     NOT NULL,
       PAIKKA38        INT     NOT NULL,
       PAIKKA39        INT     NOT NULL,
       PAIKKA40        INT     NOT NULL,
       PAIKKA41        INT     NOT NULL,
       PAIKKA42        INT     NOT NULL,
       PAIKKA43        INT     NOT NULL,
       PAIKKA44        INT     NOT NULL,
       PAIKKA45        INT     NOT NULL,
       PAIKKA46        INT     NOT NULL,
       PAIKKA47        INT     NOT NULL,
       PAIKKA48        INT     NOT NULL,
       PAIKKA49        INT     NOT NULL,
       PAIKKA50        INT     NOT NULL);''')
print("Table TELLUSPAIKATROW created successfully")


#tellusevents
conn.execute('''CREATE TABLE TELLUSEVENTS
       (ID INTEGER PRIMARY KEY     ,
       AIKA              TEXT     NOT NULL,
       EVENT            INT NOT NULL);''')
print("Table TELLUSEVENTS created successfully")

#configit
conn.execute('''CREATE TABLE PARKKIPAIKKACONFIG
       (ID INTEGER PRIMARY KEY     ,
       LAYOUT              INT     NOT NULL,
       DELAY        INT     NOT NULL);''')
print("Table PARKKIPAIKKACONFIG created successfully")

#configit
conn.execute('''CREATE TABLE TELLUSCONFIG
       (ID INTEGER PRIMARY KEY     ,
       LAYOUT              INT     NOT NULL,
       DELAY        INT     NOT NULL);''')
print("Table TELLUSCONFIG created successfully")



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

conn.execute("INSERT INTO TELLUSCONFIG(LAYOUT,DELAY) VALUES (1, 1)")


conn.commit()
conn.close()