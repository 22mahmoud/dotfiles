from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer

config: ConfigAPI = config  # type: ignore
c: ConfigContainer = c  # type: ignore

config.source('base16.py')
