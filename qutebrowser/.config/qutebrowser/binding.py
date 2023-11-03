from qutebrowser.config.configfiles import ConfigAPI

config: ConfigAPI = config # type: ignore


# Bindings for normal mode
config.bind('V', 'spawn mpx -a {url}')
config.bind(',v', 'hint links spawn mpx -a {hint-url}')

qute_bitwarden = 'spawn --userscript qute-bitwarden -p "dmenu -p \'Master Password\' -P" -d "dmenu -i -p Bitwarden -l 5"  --auto-lock 60480000 -t'
config.bind(',pl', qute_bitwarden)
config.bind(',pu', f'{qute_bitwarden} --username-only')
config.bind(',pp', f'{qute_bitwarden} --password-only')
config.bind(',po', f'{qute_bitwarden} --totp-only')

config.bind(',r', 'hint links userscript readability-js')
config.bind(',R', 'spawn --userscript readability-js')

config.bind(',e', 'config-cycle -p content.javascript.enabled ;; config-cycle -p content.cookies.accept no-3rdparty never ;; reload')


config.bind('zl', 'spawn --userscript localhost list')

config.bind(',j', 'spawn --userscript format_json')
config.bind(',t', 'config-cycle tabs.width 30 300')

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
config.bind(',xb', 'config-cycle statusbar.show always never')
config.bind(',xt', 'config-cycle tabs.show always never')
config.bind('<Shift+">', 'config-cycle tabs.width 30 200')

# for old.reddit.com expand thread.
config.set('hints.selectors', {'preview': ['.expando-button']}, pattern='*://*.reddit.com/*')
config.bind(';p', 'hint preview')

# Bindings for insert mode
config.bind('<Ctrl+Shift+e>', 'edit-text', mode='insert')
config.bind('<Ctrl+Shift+a>', 'fake-key <Ctrl-A>', mode='insert')
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
