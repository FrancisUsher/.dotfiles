from dooit.ui.api import DooitAPI, subscribe
from dooit.ui.api.events import Startup
from Theme import Theme

@subscribe(Startup)
def layout_setup(api: DooitAPI, _):
    api.css.set_theme(Theme)
