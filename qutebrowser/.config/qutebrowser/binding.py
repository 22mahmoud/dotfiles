from qutebrowser.config.configfiles import ConfigAPI

config: ConfigAPI = config # type: ignore


# Bindings for normal mode
config.bind('V', 'spawn mpv --ytdl-format="[height<=?1080]" {url}')
config.bind(',v', 'hint links spawn mpv --ytdl-format="[height<=?1080]" {hint-url}')
config.bind('M', 'spawn mpv --ytdl-format="[height<=?480]" {url}')
config.bind(',m', 'hint links spawn mpv --ytdl-format="[height<=?480]" {hint-url}')
config.bind(',p', 'spawn --userscript qute-bitwarden --auto-lock 60480000')
config.bind(',r', 'hint links userscript readability-js')
config.bind(',R', 'spawn --userscript readability-js')
config.bind(',j', 'spawn --userscript format_json')
config.bind(',i', 'hint images run open {hint-url}')
config.bind(',C', 'config-source')
config.bind("<", "tab-move -")
config.bind(">", "tab-move +")
config.bind('<alt-left>', 'back')
config.bind('<alt-right>', 'forward')
config.bind("<Ctrl+Shift+Tab>", "tab-prev")
config.bind("<Ctrl+Tab>", "tab-next")
config.unbind('<Ctrl+h>', "normal")
config.bind("<Ctrl+h>", "history")
config.unbind('d')
config.unbind('D')
config.bind('x', 'tab-close')
config.bind('X', 'undo')
config.bind('zl', 'spawn --userscript localhost list')

# for old.reddit.com expand thread.
config.set('hints.selectors', {'preview': ['.expando-button']}, pattern='*://*.reddit.com/*')
config.bind(';p', 'hint preview')

# Bindings for insert mode
config.bind('<Ctrl+Shift+e>', 'edit-text', mode='insert')
config.bind('<Ctrl-a>', 'fake-key <Home>', mode='insert')
config.bind('<Ctrl-e>', 'fake-key <End>', mode='insert')
config.bind('<Ctrl-d>', 'fake-key <Delete>', mode='insert')
config.bind('<Ctrl-h>', 'fake-key <Backspace>', mode='insert')
config.bind('<Ctrl-k>', 'fake-key <Shift-End> ;; fake-key <Delete>', mode='insert')
config.bind('<Ctrl-u>', 'fake-key <Shift+Home> ;; fake-key <BackSpace>', mode='insert')
config.bind('<Ctrl-f>', 'fake-key <Right>', mode='insert')
config.bind('<Ctrl-b>', 'fake-key <Left>', mode='insert')
config.bind('<Ctrl-n>', 'fake-key <Down>', mode='insert')
config.bind('<Ctrl-p>', 'fake-key <Up>', mode='insert')
config.bind('<Escape>', 'mode-leave ;; fake-key <Escape>', mode='insert')
config.bind('<Ctrl-[>', 'mode-leave', mode='insert')
