from dooit.api.theme import DooitThemeBase


class Theme(DooitThemeBase):
    _name = "dooit-theme"

    background1: str = "#151413"  # Darkest
    background2: str = "#1c1b1a"  # Lighter
    background3: str = "#262423"  # Lightest

    # foreground colors
    foreground1: str = "#7a7875"  # Darkest
    foreground2: str = "#b8b5b1"  # Lighter
    foreground3: str = "#e3cba5"  # Lightest

    # other colors
    red: str = "#8c504a"
    orange: str = "#e3cba5"
    yellow: str = "#c2b280"
    green: str = "#76856a"
    blue: str = "#6ab0c7"
    purple: str = "#a48cb3"
    magenta: str = "#846b97"
    cyan: str = "#c4824d"

    # accent colors
    primary: str = "#96af88"
    secondary: str = "#c9776f"