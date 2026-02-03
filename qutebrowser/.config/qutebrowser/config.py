import os
from typing import cast

from qutebrowser.config.config import ConfigContainer
from qutebrowser.config.configfiles import ConfigAPI
from whitelist import js_whitelist

config = cast(ConfigAPI, config)  # type: ignore  # noqa: F821
c = cast(ConfigContainer, c)  # type: ignore  # noqa: F821

config.load_autoconfig(False)

config.source(os.path.expanduser("~/.config/ricing/theme-qutebrowser.py"))
config.source("search_engines.py")
config.source("binding.py")
config.source("whitelist.py")
# config.source("redirector.py")

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
c.logging.level.console = "error"
c.logging.level.ram = "error"
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
default_start_page = os.path.expanduser("~/.config/qutebrowser/startpage.html")
# default_start_page = "http://localhost:8580"
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
c.content.cookies.accept = "never"
c.content.headers.accept_language = "en-US,en;q=0.5"
# c.content.headers.custom = {
#     "accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
# }
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
# c.content.site_specific_quirks.enabled = False
# c.content.webgl = False
# c.content.canvas_reading = False
# c.content.headers.do_not_track = True
c.content.tls.certificate_errors = "ask-block-thirdparty"
c.content.media.audio_capture = "ask"
c.content.media.video_capture = "ask"
c.content.desktop_capture = "ask"
c.content.mouse_lock = "ask"

# Completion bar
c.completion.cmd_history_max_items = 500
c.completion.height = "40%"
c.completion.scrollbar.width = 8
c.completion.timestamp_format = "%Y-%m-%d %H:%M"

# Status bar
c.statusbar.show = "always"
c.statusbar.widgets = [
    "keypress",
    "progress",
    "url",
    "clock",
    "scroll",
]

# Tabs
c.tabs.position = "left"
c.tabs.last_close = "close"
c.tabs.title.alignment = "left"
c.tabs.title.format = "{index}{audio}: {current_title}"
c.tabs.favicons.scale = 1
c.tabs.padding = {"left": 5, "right": 5, "top": 2, "bottom": 2}
c.tabs.show = "multiple"
c.tabs.width = 36

# Fonts
c.fonts.completion.entry = "11pt monospace"
c.fonts.downloads = "11pt monospace"
c.fonts.hints = "bold 11pt monospace"
c.fonts.keyhint = "11pt monospace"
c.fonts.messages.error = "11pt monospace"
c.fonts.messages.info = "11pt monospace"
c.fonts.messages.warning = "11pt monospace"
c.fonts.statusbar = "11pt monospace"
c.fonts.tabs.selected = "11pt monospace"
c.fonts.tabs.unselected = "11pt monospace"

# Javascript
c.content.javascript.enabled = False

for website in js_whitelist:
    with config.pattern(website) as p:
        p.content.javascript.enabled = True
        p.content.cookies.accept = "no-3rdparty"
