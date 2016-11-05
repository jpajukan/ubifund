from bottle import route, run, get, request

from bottle import static_file

from bottle import install, template
from bottle_sqlite import SQLitePlugin


install(SQLitePlugin(dbfile='data/info.db'))

# Static Routes
@get('/<filename:re:.*\.js>')
def javascripts(filename):
    return static_file(filename, root='js')

@get('/<filename:re:.*\.html>')
def javascripts(filename):
    return static_file(filename, root='page')


@get('/<filename:re:.*\.(jpg|png|gif|ico)>')
def images(filename):
    return static_file(filename, root='img')

    
@get('/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root='css')

@get('/<filename:re:.*\.(eot|ttf|woff|svg)>')
def fonts(filename):
    return static_file(filename, root='fonts')



#info3
@route('/info3')
def info3(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
    
    delayrow = db.execute("SELECT * FROM PARKKIPAIKKACONFIG").fetchone()
    
    delay = delayrow['DELAY']
    
    info = {'freespaces1': '1','freespaces2': '1','freespaces3': '1','freespaces4': '1'}
    
    if row:
       info = {'freespaces1': row[0]["NYKYMAARA"],
       'freespaces2': row[1]["NYKYMAARA"],
       'freespaces3': row[2]["NYKYMAARA"],
       'freespaces4': row[3]["NYKYMAARA"],
       }
    
    #modifying looping dictionary in loop?
    picture = {}
    
    for key, value in info.items():
        if value == 0:
            picture[key] = 2;#full
        else:
            picture[key] = 1;#free
    
    
    picture['delay'] = delay
    
    return template('templates/info3tpl.tpl', picture)

#info4
@route('/info4')
def info4(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
    
    delayrow = db.execute("SELECT * FROM PARKKIPAIKKACONFIG").fetchone()
    
    delay = delayrow['DELAY']
    info = {'freespaces1': '1','freespaces2': '1','freespaces3': '1','freespaces4': '1'}
    
    if row:
       info = {'freespaces1': row[0]["NYKYMAARA"],
       'freespaces2': row[1]["NYKYMAARA"],
       'freespaces3': row[2]["NYKYMAARA"],
       'freespaces4': row[3]["NYKYMAARA"]
       }
    
    #modifying looping dictionary in loop?
    picture = {}
    
    for key, value in info.items():
        if value == 0:
            picture[key] = 2;#full
        else:
            picture[key] = 1;#free
    
    picture['delay'] = delay  
    
    return template('templates/info4tpl.tpl', picture)



#pinfo
@route('/pinfo')
def pinfo(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKACONFIG").fetchone()
    layout = row['LAYOUT']
    
    if layout == 1:
        return info3(db)
    
    if layout == 2:
        return info4(db)
    return info3(db)

    
@route('/padmin', method='POST')
def padminPost(db):
    value1 = request.forms.get('quant[1]')
    value2 = request.forms.get('quant[2]')
    value3 = request.forms.get('quant[3]')
    value4 = request.forms.get('quant[4]')
    
    kohde = request.POST.get('kohde', 0)
    
    delay = request.POST.get('delay', -1)
    
    layout = request.POST.get('layout', 0)
    
    
    


    if kohde == 0:
        db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=1", (value1,))
        db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=2", (value2,))
        db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=3", (value3,))
        db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=4", (value4,))
        
        
        db.execute("INSERT INTO PARKKIPAIKKALOGTILA \
                        VALUES (NULL,CURRENT_TIMESTAMP,?,?,?,?)", (value1, value2, value3, value4))
        
    else:
        db.execute("INSERT INTO PARKKIPAIKKALOGAUTOT \
                        VALUES (NULL,?,CURRENT_TIMESTAMP,?,?,?,?)", (kohde, value1, value2, value3, value4))
    
    
    if delay != -1:
        db.execute("UPDATE PARKKIPAIKKACONFIG SET DELAY=?", (delay,))
        
    if layout != 0:
        db.execute("UPDATE PARKKIPAIKKACONFIG SET LAYOUT=?", (layout,))
    
    return padmin(db)
    
    
#Admin interface  
@route('/padmin')
def padmin(db):  
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
    info = {'freespaces1': '1','freespaces2': '1','freespaces3': '1','freespaces4': '1'}
    
    if row:
        info = {'freespaces1': row[0]["NYKYMAARA"],
        'freespaces2': row[1]["NYKYMAARA"],
        'freespaces3': row[2]["NYKYMAARA"],
        'freespaces4': row[3]["NYKYMAARA"]
        }
    return template("templates/admin2tpl.tpl", info)
    
    

run(host='localhost', port=8080, debug=True)


