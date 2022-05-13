from qutebrowser.config.config import ConfigContainer

c: ConfigContainer = c  # type: ignore

c.url.searchengines = {
    'DEFAULT': 'https://searx.mahmoudashraf.dev/search?q={}',
    'b': 'https://search.brave.com/search?q={}',
    'sx': 'https://searx.mahmoudashraf.dev/search?q={}',
    'd': 'https://duckduckgo.com/?q={}',
    'aw': 'https://wiki.archlinux.org/?search={}',
    "aur": "https://aur.archlinux.org/packages/?K={}",
    "arch": "https://www.archlinux.org/packages/?q={}",
    'w': 'https://en.wikipedia.org/?search={}',
    'arw': 'https://ar.wikipedia.org/?search={}',
    'g': 'https://www.google.com/search?&q={}',
    'sr': 'https://www.reddit.com/r/{unquoted}',
    'gh': 'https://github.com/search?q={}',
    'yt': 'https://youtube.com/search?q={}',
    'tw': 'https://twitter.com/search?q={}',
    'twh': 'https://twitter.com/{unquoted}',
    'insta': 'https://instagram.com/u/{unquoted}',
    'npm': 'https://www.npmjs.com/search?q={}',
    'mdn': 'https://developer.mozilla.org/en-US/search?q={}',
    "maps": "https://www.openstreetmap.org/search?query={}",
    "imdb": "https://www.imdb.com/find?q={}&s=all",
    "souq": "https://www.amazon.eg/s?field-keywords={}",
    "noon": "https://www.noon.com/egypt-ar/search?q={}",
    "jumia": "https://www.jumia.com.eg/ar/catalog/?q={}",
    "olx": "https://www.olx.com.eg/alexandria/q-{}/",
    "az": "https://www.amazon.com/s?field-keywords={}",
    "pdb": "https://www.protondb.com/search?q={}"
}
