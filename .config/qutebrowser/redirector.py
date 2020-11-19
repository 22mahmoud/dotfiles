from qutebrowser.api import interceptor, message

REDIRECT_MAP = {
    'www.twitter.com': 'nitter.snopyta.org',
    'www.instagram.com': 'bibliogram.snopyta.org',
    'www.youtube.com': 'invidious.snopyta.org',
    'www.maps.google.com': 'openstreetmap.org',
    'www.reddit.com': 'old.reddit.com',
}

def redirect(request: interceptor.Request):
    url = request.request_url.host()
    redir = REDIRECT_MAP.get(url)

    if redir is not None:
        request.request_url.setHost(redir)

        try:
            request.redirect(request.request_url)
        except:
            pass

interceptor.register(redirect)
