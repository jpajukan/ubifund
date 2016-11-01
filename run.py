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


    
#info1    
@route('/info1')
def info1(db):
    row = db.execute("SELECT * FROM TELLUSNUMEROT").fetchone()
    info = {'freespaces': '1'}
    
    if row:
        info = {'freespaces': row["NYKYMAARA"]}

    return template('templates/info1tpl.tpl', info)

    
#info2
@route('/info2')
def info2(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
    info = {'freespaces1': '1','freespaces2': '1','freespaces3': '1','freespaces4': '1'}
    
    if row:
        info = {'freespaces1': row[0]["NYKYMAARA"],
        'freespaces2': row[1]["NYKYMAARA"],
        'freespaces3': row[2]["NYKYMAARA"],
        'freespaces4': row[3]["NYKYMAARA"]
        }
        
    return template('templates/info2tpl.tpl', info)

#info3
@route('/info3')
def info3(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
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
    
        
    return template('templates/info3tpl.tpl', picture)

    
#admin interface to info 1
@route('/admininfo1')
def admin1(db):
    row = db.execute("SELECT * FROM TELLUSNUMEROT").fetchone()
    info = {'freespaces': '1'}
    
    if row:
        info = {'freespaces': row["NYKYMAARA"]}
    return template("templates/admin1tpl.tpl", info)

@route('/admininfo1', method='POST')
def admin1post(db):
    value = request.forms.get('quant[1]')
    db.execute("UPDATE TELLUSNUMEROT SET NYKYMAARA=? WHERE ID=1", (value,))
    
    return admin1(db)

    
    
    
    
    
#Admin interface to info2    
@route('/admininfo2')
def admin2(db):
    row = db.execute("SELECT * FROM PARKKIPAIKKANUMEROT").fetchall()
    info = {'freespaces1': '1','freespaces2': '1','freespaces3': '1','freespaces4': '1'}
    
    if row:
        info = {'freespaces1': row[0]["NYKYMAARA"],
        'freespaces2': row[1]["NYKYMAARA"],
        'freespaces3': row[2]["NYKYMAARA"],
        'freespaces4': row[3]["NYKYMAARA"]
        }
    return template("templates/admin2tpl.tpl", info)
    
    
@route('/admininfo2', method='POST')
def admin1post(db):
    value1 = request.forms.get('quant[1]')
    value2 = request.forms.get('quant[2]')
    value3 = request.forms.get('quant[3]')
    value4 = request.forms.get('quant[4]')
    
    db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=1", (value1,))
    db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=2", (value2,))
    db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=3", (value3,))
    db.execute("UPDATE PARKKIPAIKKANUMEROT SET NYKYMAARA=? WHERE ALUE=4", (value4,))

    return admin2(db)




    
    
    
    
    
    
    

run(host='localhost', port=8080, debug=True)


