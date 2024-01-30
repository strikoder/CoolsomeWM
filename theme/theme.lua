--- ░▀█▀░█░█░█▀▀░█▄█░█▀▀
--- ░░█░░█▀█░█▀▀░█░█░█▀▀
--- ░░▀░░▀░▀░▀▀▀░▀░▀░▀▀▀
local gears = require("gears")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local theme = dofile(themes_path .. "default/theme.lua")
-- local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local helpers = require("helpers")
local icons = require("icons")
local apps = require("configuration.apps")

--- ░█▀▀░█▀█░█▀█░▀█▀░█▀▀
--- ░█▀▀░█░█░█░█░░█░░▀▀█
--- ░▀░░░▀▀▀░▀░▀░░▀░░▀▀▀

--- Ui Fonts
theme.font_name = "Roboto "
theme.font = theme.font_name .. "Medium 10"

--- Icon Fonts
theme.icon_font = "Material Icons "
theme.material_icons = "Material Design Icons Desktop"
theme.ios = "Iosevka Nerd Font"
theme.jet = "JetBrainsMono Nerd Font"

--- ░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀
--- ░█░░░█░█░█░░░█░█░█▀▄░▀▀█
--- ░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

--- Special
theme.white = "#edeff0"
theme.darker_black = "#060809"
theme.black = "#0c0e0f"
theme.lighter_black = "#121415"
theme.one_bg = "#161819"
theme.one_bg2 = "#1f2122"
theme.one_bg3 = "#27292a"
theme.grey = "#343637"
theme.grey_fg = "#3e4041"
theme.grey_fg2 = "#484a4b"
theme.light_grey = "#505253"

theme.transparent = "#000000aa"

--- Black
theme.color0 = "#232526"
theme.color8 = "#2c2e2f"

--- Red
theme.color1 = "#df5b61"
theme.color9 = "#e8646a"

--- Green
theme.color2 = "#78b892"
theme.color10 = "#81c19b"

--- Yellow
theme.color3 = "#FFFF00"
theme.color11 = "#e79881"

--- Blue
theme.color4 = "#6791c9"
theme.color12 = "#709ad2"

--- Magenta
theme.color5 = "#bc83e3"
theme.color13 = "#c58cec"

--- Cyan
theme.color6 = "#67afc1"
theme.color14 = "#70b8ca"

--- White
theme.color7 = "#e4e6e7"
theme.color15 = "#f2f4f5"

-- amber
theme.amber = "#FBC02D"

--- Background Colors
theme.bg_normal = theme.transparent
theme.bg_focus = theme.transparent
theme.bg_urgent = theme.transparent
theme.bg_minimize = theme.transparent

--- Foreground Colors
theme.fg_normal = theme.white
theme.fg_focus = theme.accent
theme.fg_urgent = theme.color1
theme.fg_minimize = theme.color0

--- Accent colors
function theme.random_accent_color()
    local accents = {
        theme.color9, theme.color10, theme.color11, theme.color12,
        theme.color13, theme.color14
    }

    local i = math.random(1, #accents)
    return accents[i]
end

theme.accent = theme.color4

--- UI events
-- theme.leave_event = transparent
theme.enter_event = "#ffffff" .. "10"
theme.press_event = "#ffffff" .. "15"
theme.release_event = "#ffffff" .. "10"

--- Widgets
theme.widget_bg = theme.transparent


--- Wibar
theme.wibar_bg = theme.transparent
theme.wibar_height = dpi(35)

--- Wallpapers
theme.wallpaper = gears.surface.load_uncached(
                      gfs.get_configuration_dir() .. "theme/assets/peace.png")
--- theme.wallpaper = gears.surface.load_uncached(gfs.get_configuration_dir() .. "theme/assets/dark.png")
--- theme.wallpaper = gears.surface.load_uncached(gfs.get_configuration_dir() .. "theme/assets/dark2.png")

--- Image Assets
theme.pfp = gears.surface.load_uncached(gfs.get_configuration_dir() ..
                                            "theme/assets/pfp.png")
theme.music = gears.surface.load_uncached(
                  gfs.get_configuration_dir() .. "theme/assets/music.png")

--- Layout
--- You can use your own layout icons like this:
theme.layout_floating = icons.floating
theme.layout_max = icons.max
-- theme.layout_tile = icons.tile
theme.layout_tile = gears.color.recolor_image(icons.tile, theme.accent)
theme.layout_dwindle = icons.dwindle
theme.layout_centered = icons.centered
theme.layout_mstab = icons.mstab
theme.layout_equalarea = icons.equalarea
theme.layout_machi = icons.machi

--- Icon Theme
--- Define the icon theme for application icons. If not set then the icons
--- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Tokyo Night-SE"

--- Borders
theme.border_width = 0
theme.oof_border_width = 0
theme.border_color_marked = theme.titlebar_bg
theme.border_color_active = theme.titlebar_bg
theme.border_color_normal = theme.titlebar_bg
theme.border_color_new = theme.titlebar_bg
theme.border_color_urgent = theme.titlebar_bg
theme.border_color_floating = theme.titlebar_bg
theme.border_color_maximized = theme.titlebar_bg
theme.border_color_fullscreen = theme.titlebar_bg

--- Corner Radius
theme.border_radius = 12
theme.rounded = dpi(20)

--- Edge snap
theme.snap_bg = theme.color8
theme.snap_shape = helpers.ui.rrect(0)

--- Main Menu
theme.main_menu_bg = theme.transparent

-- bar
theme.bar_height = 40

--- Tooltip
theme.tooltip_bg = theme.lighter_black
theme.tooltip_fg = theme.white
theme.tooltip_font = theme.font_name .. "Regular 10"

--- Hotkeys Pop Up
theme.hotkeys_bg = theme.black
theme.hotkeys_fg = theme.white
theme.hotkeys_modifiers_fg = theme.white
theme.hotkeys_font = theme.font_name .. "Medium 12"
theme.hotkeys_description_font = theme.font_name .. "Regular 10"
theme.hotkeys_shape = helpers.ui.rrect(theme.border_radius)
theme.hotkeys_group_margin = dpi(50)

--- Tag list
theme.taglist_bg = theme.accent
theme.taglist_bg_focus = theme.widget_bg
theme.taglist_fg_focus = theme.color3
theme.taglist_bg_urgent = theme.widget_bg
theme.taglist_fg_urgent = theme.color4
theme.taglist_bg_occupied = theme.widget_bg
theme.taglist_fg_occupied = theme.color7
theme.taglist_bg_empty = theme.widget_bg
theme.taglist_fg_empty = theme.fg_normal .. "66"
theme.taglist_disable_icon = true

-- tasklist
theme.tasklist_plain_task_name = true
theme.tasklist_bg = theme.wibar_bg
theme.tasklist_bg_focus = theme.one_bg
theme.tasklist_bg_urgent = theme.one_bg

--- Tag preview
theme.tag_preview_widget_margin = dpi(10)
theme.tag_preview_widget_border_radius = theme.border_radius
theme.tag_preview_client_border_radius = theme.border_radius / 2
theme.tag_preview_client_opacity = 1
theme.tag_preview_client_bg = theme.wibar_bg
theme.tag_preview_client_border_color = theme.wibar_bg
theme.tag_preview_client_border_width = 0
theme.tag_preview_widget_bg = theme.wibar_bg
theme.tag_preview_widget_border_color = theme.wibar_bg
theme.tag_preview_widget_border_width = 0

--- Layout List
theme.layoutlist_shape_selected = helpers.ui.rrect(theme.bbleachbitorder_radius)
theme.layoutlist_bg_selected = theme.widget_bg

--- Gaps
theme.useless_gap = dpi(2)

--- Tabs
theme.mstab_bar_height = dpi(60)
theme.mstab_bar_padding = dpi(0)
theme.mstab_border_radius = dpi(6)
theme.mstab_bar_disable = true
theme.tabbar_disable = true
theme.tabbar_style = "modern"
theme.tabbar_bg_focus = theme.black
theme.tabbar_bg_normal = theme.color0
theme.tabbar_fg_focus = theme.color0
theme.tabbar_fg_normal = theme.color15
theme.tabbar_position = "buttom"
theme.tabbar_AA_radius = 0
theme.tabbar_size = 0
theme.mstab_bar_ontop = true
-- theme.mstab_dont_resize_slaves = false

--- Notifications
theme.notification_spacing = dpi(4)
theme.notification_bg = theme.black
theme.notification_bg_alt = theme.lighter_black

--- Notif center
theme.notif_center_notifs_bg = theme.one_bg2
theme.notif_center_notifs_bg_alt = theme.one_bg3


--- Layout Machi
theme.machi_switcher_border_color = theme.lighter_black
theme.machi_switcher_border_opacity = 0.25
theme.machi_editor_border_color = theme.lighter_black
theme.machi_editor_border_opacity = 0.25
theme.machi_editor_active_opacity = 0.25

return theme