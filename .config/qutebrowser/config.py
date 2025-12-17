# Don't load the config from the GUI generated YML
config.load_autoconfig(False)

# Save browser session and relaunch it next time
c.auto_save.session = True

# Always use dark mode media type
c.colors.webpage.darkmode.enabled = True


# Don't show any images, except on certain pages
c.content.images = False

def whitelist_images(url_pattern):
    with config.pattern(url_pattern) as p:
        p.content.images = True

whitelisted_image_urls = [
    '*://*.usher.codes/*',
    '*://wallhaven.cc/*',
    '*://github.com/*',
    '*://*.github.io/*',
    '*://ohmyposh.dev/*',
    '*://*.jethro.dev/*',
]

for url in whitelisted_image_urls:
    whitelist_images(url)

