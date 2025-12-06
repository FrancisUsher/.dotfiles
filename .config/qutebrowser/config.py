# Don't load the config from the GUI generated YML
config.load_autoconfig(False)

# Save browser session and relaunch it next time
c.auto_save.session = True

# Always use dark mode media type
c.colors.webpage.darkmode.enabled = True

# Don't show any images, except on certain pages
c.content.images = False
with config.pattern('*://*.usher.codes/*') as p:
    p.content.images = True

with config.pattern('*://wallhaven.cc/*') as p:
    p.content.images = True

with config.pattern('*://github.com/*') as p:
    p.content.images = True

with config.pattern('*://*.github.io/*') as p:
    p.content.images = True

with config.pattern('*://ohmyposh.dev/*') as p:
    p.content.images = True
