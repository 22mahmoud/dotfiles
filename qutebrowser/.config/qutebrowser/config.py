import os

from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer

config: ConfigAPI = config  # type: ignore
c: ConfigContainer = c  # type: ignore

config.load_autoconfig(False)

config.source("theme.py")
config.source("redirector.py")
config.source("search_engines.py")
config.source("binding.py")

# Misc
c.downloads.location.directory = os.path.expanduser("~/dls/qute")
c.downloads.location.prompt = False
c.downloads.position = "bottom"
c.confirm_quit = ["downloads"]
c.auto_save.session = True
c.session.lazy_restore = True
c.session.default_name = "default"
c.backend = "webengine"
c.editor.command = [
    os.environ.get("TERMINAL"),
    "-e",
    "nvim",
    "-f",
    "{file}",
    "-c",
    "normal {line}G{column0}l",
]
c.logging.level.console = "debug"
c.logging.level.ram = "debug"
c.url.open_base_url = True
c.spellcheck.languages = ["en-US"]
# c.scrolling.smooth = True

# qt engin
c.qt.highdpi = True
c.qt.args = [
    "enable-gpu-rasterization",
    "ignore-gpu-blocklist",
    "enable-accelerated-video-decode",
]

# startpage
# default_start_page = os.path.expanduser("~/.config/qutebrowser/startpage.html")
default_start_page = "http://localhost:8580"
c.url.start_pages = [default_start_page]
c.url.default_page = default_start_page

# Darkmode
c.colors.webpage.preferred_color_scheme = "dark"
# c.colors.webpage.darkmode.enabled = True

# Content (js, cookies, encoding, privacy, css, etc)
c.content.pdfjs = False
c.content.autoplay = False
c.content.blocking.enabled = True
c.content.blocking.method = "both"
c.content.notifications.enabled = False
c.content.geolocation = False
c.content.default_encoding = "utf-8"
c.content.cookies.accept = "never"
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0"
# c.headers.custom = '{"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}'
c.content.headers.accept_language = "en-US,en;q=0.5"
c.content.site_specific_quirks.enabled = False
c.content.canvas_reading = False
c.content.webgl = False
c.content.headers.do_not_track = True
c.content.tls.certificate_errors = "ask-block-thirdparty"
c.content.media.audio_capture = 'ask'
c.content.media.video_capture = 'ask'
c.content.desktop_capture = 'ask'
c.content.mouse_lock = 'ask'
# c.content.proxy = 'socks://localhost:9050/'

config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}",
    "https://web.whatsapp.com/",
)

config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0",
    "https://accounts.google.com/*",
)

config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36",
    "https://*.slack.com/*",
)
config.set(
    "content.register_protocol_handler",
    True,
    "https://mail.google.com?extsrc=mailto&url=%25s",
)
config.set(
    "content.register_protocol_handler",
    False,
    "https://outlook.office365.com?mailtouri=%25s",
)

config.set("content.media.video_capture", True, "https://meet.google.com")
config.set("content.notifications.enabled", True, "https://meet.google.com")

# Completion bar
c.completion.cmd_history_max_items = 500
c.completion.height = "40%"
c.completion.scrollbar.width = 8
c.completion.timestamp_format = "%Y-%m-%d %H:%M"

# Status bar
c.statusbar.show = "always"
c.statusbar.widgets = ["keypress", "progress", "url", "scroll"]

# Tabs
c.tabs.position = "left"
c.tabs.last_close = "close"
c.tabs.title.alignment = "left"
c.tabs.title.format = "{index}{audio}: {current_title}"
c.tabs.favicons.scale = 1
c.tabs.padding = {"left": 5, "right": 5, "top": 2, "bottom": 2}
c.tabs.show = 'multiple'
c.tabs.width = 30

# Fonts
c.fonts.completion.entry = "9pt monospace"
c.fonts.downloads = "8pt monospace"
c.fonts.hints = "bold 10pt monospace"
c.fonts.keyhint = "9pt monospace"
c.fonts.messages.error = "9pt monospace"
c.fonts.messages.info = "9pt monospace"
c.fonts.messages.warning = "9pt monospace"
c.fonts.statusbar = "9pt monospace"
c.fonts.tabs.selected = "9pt monospace"
c.fonts.tabs.unselected = "9pt monospace"

# Javascript
c.content.javascript.enabled = False

js_whitelist = [
    "*://*.github.com/*",
    "*://*.gitlab.com/*",
    "*://*.duckduckgo.com/*",
    "*://*.mahmoudashraf.dev/*",
    "*://*.maw.sh/*",
    "*://*.maw-s.duckdns.org/*",
    "*://*.olx.com.eg/*",
    "*://*.reddit.com/*",
    "*://*.dev.to/*",
    "*://*.brave.com/*",
    "*://fosstodon.org/*",
    "*://odysee.com/*",
    "*://tilvids.com/*",
    "*://*.protondb.com/*",
    "*://*.localhost:*/*",
    "*://*.accounts.google.com/*",
    "chrome-devtools://*",
    "devtools://*",
    "chrome://*",
    "qute://*",
    "file://*",
]

for website in js_whitelist:
    with config.pattern(website) as p:
        p.content.javascript.enabled = True
        p.content.cookies.accept = "no-3rdparty"
