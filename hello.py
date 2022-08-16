def app(environ, start_response):
    body = [bytes(e + '\n', encoding='ascii') for e in environ['QUERY_STRING'].split(sep='&')]
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    start_response(status, headers)
    return body
