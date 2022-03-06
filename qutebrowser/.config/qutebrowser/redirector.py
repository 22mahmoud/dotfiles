import random
from qutebrowser.api import interceptor
from qutebrowser.api.interceptor import Request

def get_youtube_redirects():
    return random.choice([
        "yewtu.be",
        "invidious.snopyta.org",
        "invidious.kavin.rocks",
        "vid.puffyan.us",
        "ytprivate.com",
        "invidious-us.kavin.rocks",
        "invidious.silkky.cloud",
        "inv.riverside.rocks",
        "y.com.cm",
    ])

def get_twitter_redirects():
    return random.choice([
        "nitter.net", 
        "nitter.42l.fr",
        "nitter.pussthecat.org",
        "nitter.kavin.rocks",
        "nitter.eu",
        "nitter.namazso.eu",
        "nitter.mailstation.de",
        "nitter.actionsack.com",
        "nitter.database.red",
        "nitter.bcow.xyz",
        "nitter.grimneko.de",
        "nitter.grimneko.de",
        "nitter.sugoma.tk",
        "nitter.alefvanoon.xyz",
        "nitter.ir",
    ])

def get_instagram_redirect():
    return random.choice([
        "bibliogram.art",
        "bibliogram.snopyta.org",
        "bibliogram.pussthecat.org",
        "bibliogram.nixnet.services",
        "bibliogram.ethibox.fr",
        "insta.trom.tf",
    ])

REDIRECT_MAP = {
    'reddit.com': lambda: 'old.reddit.com',
    'twitter.com': get_twitter_redirects,
     'youtube.com': get_youtube_redirects,
    'instagram.com': get_instagram_redirect,
    'medium.com': lambda: 'scribe.rip',
}

def redirect(request: Request):
    url = request.request_url
    if (request.resource_type != interceptor.ResourceType.main_frame) or (
        url.scheme() in {"data", "blob",}
    ):
        return

    host = url.host()
    if host[:4] == "www.":
        host = host[4:]

    get_redirect_url = REDIRECT_MAP.get(host)

    redirect_url = None

    if get_redirect_url is not None:
        redirect_url = get_redirect_url()

    if redirect_url is not None:
        request.request_url.setHost (redirect_url)

        try:
            request.redirect (request.request_url)
        except:
            pass

interceptor.register(redirect)
