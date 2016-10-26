from bottle import route, run, get

from bottle import static_file


# Static Routes
@get('/<filename:re:.*\.js>')
def javascripts(filename):
    return static_file(filename, root='js')

@get('/<filename:re:.*\.html>')
def javascripts(filename):
    return static_file(filename, root='page')

    
@get('/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root='css')

@get('/<filename:re:.*\.(eot|ttf|woff|svg)>')
def fonts(filename):
    return static_file(filename, root='fonts')
















run(host='localhost', port=8080, debug=True)


