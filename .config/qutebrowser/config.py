config.load_autoconfig(False)

# pylint: disable=C0111
from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
from qutebrowser.config.config import ConfigContainer  # noqa: F401

config = config  # type: ConfigAPI # noqa: F821 pylint: disable=E0602,C0103
c = c  # type: ConfigContainer # noqa: F821 pylint: disable=E0602,C0103

import os

config.source('theme.py')
config.source('redirector.py')
config.source('search_engines.py')
config.source('binding.py')

# Misc
c.downloads.location.directory = os.path.expanduser('~/Downloads')
c.downloads.location.prompt = False
c.downloads.position = "bottom"
c.confirm_quit = ["downloads"]
c.auto_save.session = True
c.session.lazy_restore = True
c.session.default_name = "default"
c.backend = 'webengine'
c.editor.command = [os.environ.get("TERMINAL"), '-e', 'nvim', '-f' ,'{file}', '-c', 'normal {line}G{column0}l']
c.logging.level.console = 'debug'
c.logging.level.ram = 'debug'
c.url.open_base_url = True
c.spellcheck.languages = ["en-US"]

# qt engin
c.qt.highdpi = True
c.qt.args = [
    "disable-reading-from-canvas",
    "enable-strict-mixed-content-checking",
]

# startpage
default_start_page = "file:///home/ashraf/.config/qutebrowser/startpage.html"
c.url.start_pages = [default_start_page]
c.url.default_page = default_start_page

# Darkmode
c.colors.webpage.preferred_color_scheme = "dark"
# c.colors.webpage.darkmode.enabled = True

# Content (js, cookies, encoding, privacy, css, etc)
c.content.pdfjs = False
c.content.autoplay = False
c.content.blocking.enabled = True
c.content.blocking.method = "adblock"
c.content.notifications.enabled = False
c.content.geolocation = False
c.content.default_encoding = "utf-8"
c.content.cookies.accept = 'no-3rdparty'
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0"
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://accounts.google.com/*')
c.content.headers.accept_language = 'en-US,en;q=0.5'
c.content.site_specific_quirks.enabled = False
c.content.canvas_reading = False
c.content.webgl = False
c.content.headers.do_not_track = True

# Completion bar
c.completion.cmd_history_max_items = 500
c.completion.height = "40%"
c.completion.scrollbar.width = 8
c.completion.timestamp_format = "%Y-%m-%d %H:%M"

# Status bar
c.statusbar.show = "always"
c.statusbar.widgets = ["keypress", "progress", "url", "scroll"]

# Tabs
c.tabs.last_close = "close"
c.tabs.title.alignment = 'left'
c.tabs.title.format = "{index}{audio}: {current_title}"
c.tabs.padding = {"left": 5, "right": 5, "top": 2, "bottom": 2}

# Fonts
c.fonts.completion.entry = "8pt monospace"
c.fonts.downloads = "8pt monospace"
c.fonts.hints = "bold monospace"
c.fonts.keyhint = "9pt monospace"
c.fonts.messages.error = "9pt monospace"
c.fonts.messages.info = "9pt monospace"
c.fonts.messages.warning = "9pt monospace"
c.fonts.statusbar = "9pt monospace"
c.fonts.tabs.selected = "8pt monospace"
c.fonts.tabs.unselected = "8pt monospace"
c.fonts.web.family.fixed = "monospace"

# for old.reddit.com expand thread.
config.set('hints.selectors', {'preview': ['.expando-button']}, pattern='*://*.reddit.com/*')
config.bind(';p', 'hint preview')

# Javascript
c.content.javascript.enabled = False

js_whitelist = [
    "*://*.github.com/*",
    "*://*.gitlab.com/*",
    "*://*.youtube.com/*",
    "*://*.duckduckgo.com/*",
    "*://*.mahmoudashraf.dev/*",
    "*://*.linkedin.com/*",
    "*://*.reddit.com/*",
    "*://*.element.io/*",
    "*://*.dev.to/*",
    "*://*.brave.com/*",
    "*://*.twitter.com/*",
    "*://*.vid.puffyan.us/*",
    "*://*.yewtu.be/*",
    "*://*.invidious.fdn.fr/*",
]

for website in js_whitelist:
    with config.pattern(website) as p:
        p.content.javascript.enabled = True
