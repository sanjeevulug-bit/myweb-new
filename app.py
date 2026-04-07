from http.server import SimpleHTTPRequestHandler, HTTPServer

PORT = 10000

Handler = SimpleHTTPRequestHandler

with HTTPServer(("", PORT), Handler) as httpd:
    print("Server running...")
    httpd.serve_forever()