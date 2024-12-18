# base16-qutebrowser (https://github.com/theova/base16-qutebrowser)

import subprocess
from qutebrowser.config.config import ConfigContainer


def read_xresources(prefix):
    props = {}
    x = subprocess.run(["xrdb", "-query"], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split("\n")
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(":\t")
        props[prop] = value
    return props


xresources = read_xresources("*")

c: ConfigContainer = c  # type: ignore

base00 = xresources["*color0"]  # black
base08 = xresources["*color1"]  # red
base0B = xresources["*color2"]  # green
base0A = xresources["*color3"]  # yellow
base0D = xresources["*color4"]  # blue
base0E = xresources["*color5"]  # magenta
base0C = xresources["*color6"]  # cyan
base05 = xresources["*color7"]  # white
base02 = xresources["*color8"]  # bright black
base08 = xresources["*color9"]  # bright red (same as base08)
base0B = xresources["*color10"]  # bright green (same as base0B)
base0A = xresources["*color11"]  # bright yellow (same as base0A)
base0D = xresources["*color12"]  # bright blue (same as base0D)
base0E = xresources["*color13"]  # bright magenta (same as base0E)
base0C = xresources["*color14"]  # bright cyan (same as base0C)
base07 = xresources["*color15"]  # bright white
base09 = xresources["*color16"]  # extra color
base0F = xresources["*color17"]  # extra color
base01 = xresources["*color18"]  # extra color
base02 = xresources["*color19"]  # extra color (same as base02)
base04 = xresources["*color20"]  # extra color
base06 = xresources["*color21"]  # extra color

# Completion widget
c.colors.completion.fg = base05
c.colors.completion.odd.bg = base00
c.colors.completion.even.bg = base00
c.colors.completion.category.fg = base0D
c.colors.completion.category.bg = base00
c.colors.completion.category.border.top = base00
c.colors.completion.category.border.bottom = base00
c.colors.completion.item.selected.fg = base05
c.colors.completion.item.selected.bg = base02
c.colors.completion.item.selected.border.top = base02
c.colors.completion.item.selected.border.bottom = base02
c.colors.completion.item.selected.match.fg = base05
c.colors.completion.match.fg = base09
c.colors.completion.scrollbar.fg = base05
c.colors.completion.scrollbar.bg = base00

# Context menu
c.colors.contextmenu.disabled.bg = base01
c.colors.contextmenu.disabled.fg = base04
c.colors.contextmenu.menu.bg = base00
c.colors.contextmenu.menu.fg = base05
c.colors.contextmenu.selected.bg = base02
c.colors.contextmenu.selected.fg = base05

# Downloads
c.colors.downloads.bar.bg = base00
c.colors.downloads.start.fg = base00
c.colors.downloads.start.bg = base0D
c.colors.downloads.stop.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.error.fg = base08

# Hints
c.colors.hints.fg = base00
c.colors.hints.bg = base0A
c.colors.hints.match.fg = base05

# Keyhint widget
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = base00

# Messages
c.colors.messages.error.fg = base00
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.warning.fg = base00
c.colors.messages.warning.bg = base0E
c.colors.messages.warning.border = base0E
c.colors.messages.info.fg = base05
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00

# Prompts
c.colors.prompts.fg = base05
c.colors.prompts.border = base00
c.colors.prompts.bg = base00
c.colors.prompts.selected.bg = base02

# Statusbar
c.colors.statusbar.normal.fg = base05
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.insert.fg = base0C
c.colors.statusbar.insert.bg = base00
c.colors.statusbar.passthrough.fg = base0A
c.colors.statusbar.passthrough.bg = base00
c.colors.statusbar.private.fg = base0E
c.colors.statusbar.private.bg = base00
c.colors.statusbar.command.fg = base04
c.colors.statusbar.command.bg = base01
c.colors.statusbar.command.private.fg = base0E
c.colors.statusbar.command.private.bg = base01
c.colors.statusbar.caret.fg = base0D
c.colors.statusbar.caret.bg = base00
c.colors.statusbar.caret.selection.fg = base0D
c.colors.statusbar.caret.selection.bg = base00
c.colors.statusbar.progress.bg = base0D
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.error.fg = base08
c.colors.statusbar.url.hover.fg = base09
c.colors.statusbar.url.success.http.fg = base0B
c.colors.statusbar.url.success.https.fg = base0B
c.colors.statusbar.url.warn.fg = base0E

# Tabs
c.colors.tabs.bar.bg = base00
c.colors.tabs.indicator.start = base0D
c.colors.tabs.indicator.stop = base0C
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = base05
c.colors.tabs.odd.bg = base00
c.colors.tabs.even.fg = base05
c.colors.tabs.even.bg = base00
c.colors.tabs.pinned.even.bg = base0B
c.colors.tabs.pinned.even.fg = base00
c.colors.tabs.pinned.odd.bg = base0B
c.colors.tabs.pinned.odd.fg = base00
c.colors.tabs.pinned.selected.even.bg = base02
c.colors.tabs.pinned.selected.even.fg = base05
c.colors.tabs.pinned.selected.odd.bg = base02
c.colors.tabs.pinned.selected.odd.fg = base05
c.colors.tabs.selected.odd.fg = base05
c.colors.tabs.selected.odd.bg = base02
c.colors.tabs.selected.even.fg = base05
c.colors.tabs.selected.even.bg = base02

# Webpage
# c.colors.webpage.bg = base00
