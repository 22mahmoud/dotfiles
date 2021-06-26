from qutebrowser.api import interceptor, message

REDIRECT_MAP = {
    'reddit.com': 'old.reddit.com',
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
