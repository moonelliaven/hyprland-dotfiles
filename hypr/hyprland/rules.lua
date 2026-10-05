-- ==========================================
-- HYPRLAND 0.55 WINDOW RULES
-- ==========================================

-- Disable blur for XWayland context menus
hl.window_rule({
    match = {
        class = "^()$",
    },
    blur = false,
})

-- Floating dialogs
hl.window_rule({
    match = { title = "^(Open File)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(Select a File)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(Choose wallpaper)(.*)$" },
    float = true,
    center = true,
    size = { "60%", "65%" },
})

hl.window_rule({
    match = { title = "^(Open Folder)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(Save As)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(Library)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(File Upload)(.*)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(.*)(wants to save)$" },
    float = true,
    center = true,
})

hl.window_rule({
    match = { title = "^(.*)(wants to open)$" },
    float = true,
    center = true,
})

-- Applications
hl.window_rule({
    match = { class = "^(blueberry%.py)$" },
    float = true,
})

hl.window_rule({
    match = { class = "^(guifetch)$" },
    float = true,
})

hl.window_rule({
    match = { class = "^(pavucontrol)$" },
    float = true,
    center = true,
    size = { "45%", "45%" },
})

hl.window_rule({
    match = { class = "^(org%.pulseaudio%.pavucontrol)$" },
    float = true,
    center = true,
    size = { "45%", "45%" },
})

hl.window_rule({
    match = { class = "^(nm%-connection%-editor)$" },
    float = true,
    center = true,
    size = { "45%", "45%" },
})

hl.window_rule({
    match = { class = ".*plasmawindowed.*" },
    float = true,
})

hl.window_rule({
    match = { class = "kcm_.*" },
    float = true,
})

hl.window_rule({
    match = { class = ".*bluedevilwizard" },
    float = true,
})

hl.window_rule({
    match = { title = ".*Welcome" },
    float = true,
})

hl.window_rule({
    match = { title = "^(illogical%-impulse Settings)$" },
    float = true,
})

hl.window_rule({
    match = { title = ".*Shell conflicts.*" },
    float = true,
})

hl.window_rule({
    match = {
        class = "^org%.freedesktop%.impl%.portal%.desktop%.kde$",
    },
    float = true,
    size = { "60%", "65%" },
})

hl.window_rule({
    match = { class = "^(Zotero)$" },
    float = true,
    size = { "45%", "45%" },
})

-- ==========================================
-- MOVE
-- ==========================================

hl.window_rule({
    match = { class = "^(plasma%-changeicons)$" },
    float = true,
    no_initial_focus = true,
    move = { 999999, 999999 },
})

hl.window_rule({
    match = { title = "^(Copying — Dolphin)$" },
    move = { 40, 80 },
})

-- ==========================================
-- TILING
-- ==========================================

hl.window_rule({
    match = { class = "^dev%.warp%.Warp$" },
    tile = true,
})

-- ==========================================
-- PICTURE IN PICTURE
-- ==========================================

local pip_title = "^([Pp]icture[-%s]?[Ii]n[-%s]?[Pp]icture)(.*)$"

hl.window_rule({
    match = { title = pip_title },
    float = true,
    pin = true,
    center = false,
    size = { "25%", "25%" },
    move = { "73%", "72%" },
})

-- ==========================================
-- TEARING
-- ==========================================

hl.window_rule({
    match = { title = ".*%.exe" },
    immediate = true,
})

hl.window_rule({
    match = { title = ".*minecraft.*" },
    immediate = true,
})

hl.window_rule({
    match = { class = "^(steam_app).*" },
    immediate = true,
})

-- ==========================================
-- JETBRAINS
-- ==========================================

hl.window_rule({
    match = {
        class = "^jetbrains%-.*$",
        float = true,
    },
    no_initial_focus = true,
})

-- ==========================================
-- NO SHADOW FOR TILED WINDOWS
-- ==========================================

hl.window_rule({
    match = {
        float = false,
    },
    shadow = false,
})


-- ==========================================
-- WORKSPACE RULE
-- ==========================================

hl.workspace_rule(
    "special:special",
    {
        gaps_out = 30,
    }
)


-- ==========================================
-- LAYER RULES
-- ==========================================

-- General
hl.layer_rule({
    match = { namespace = ".*" },
    xray = true,
})

-- No animation
for _, namespace in ipairs({
    "walker",
    "selection",
    "overview",
    "anyrun",
    "indicator.*",
    "osk",
    "hyprpicker",
}) do
    hl.layer_rule({
        match = { namespace = namespace },
        no_anim = true,
    })
end

-- GTK layer shell
hl.layer_rule({
    match = { namespace = "gtk-layer-shell" },
    blur = true,
    ignore_alpha = 0,
})

-- Launcher
hl.layer_rule({
    match = { namespace = "launcher" },
    blur = true,
    ignore_alpha = 0.5,
})

-- Notifications
hl.layer_rule({
    match = { namespace = "notifications" },
    blur = true,
    ignore_alpha = 0.69,
})

-- Logout dialog
hl.layer_rule({
    match = { namespace = "logout_dialog" },
    blur = true,
})

-- ==========================================
-- AGS
-- ==========================================

hl.layer_rule({
    match = { namespace = "sideleft.*" },
    animation = "slide left",
})

hl.layer_rule({
    match = { namespace = "sideright.*" },
    animation = "slide right",
})

for _, namespace in ipairs({
    "session[0-9]*",
    "bar[0-9]*",
    "barcorner.*",
    "dock[0-9]*",
    "indicator.*",
    "overview[0-9]*",
    "cheatsheet[0-9]*",
    "sideright[0-9]*",
    "sideleft[0-9]*",
    "osk[0-9]*",
}) do
    hl.layer_rule({
        match = { namespace = namespace },
        blur = true,
        ignore_alpha = 0.6,
    })
end

-- ==========================================
-- QUICKSHELL
-- ==========================================

hl.layer_rule({
    match = { namespace = "quickshell:.*" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.79,
})

hl.layer_rule({
    match = { namespace = "quickshell:bar" },
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = "quickshell:cheatsheet" },
    animation = "slide bottom",
})

hl.layer_rule({
    match = { namespace = "quickshell:crosshair" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:dock" },
    animation = "slide bottom",
})

hl.layer_rule({
    match = { namespace = "quickshell:screenCorners" },
    animation = "popin 120%",
})

hl.layer_rule({
    match = { namespace = "quickshell:lockWindowPusher" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:notificationPopup" },
    animation = "fade",
})

hl.layer_rule({
    match = { namespace = "quickshell:overview" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:osk" },
    animation = "slide bottom",
})

hl.layer_rule({
    match = { namespace = "quickshell:polkit" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:popup" },
    xray = false,
    ignore_alpha = 1,
})

hl.layer_rule({
    match = { namespace = "quickshell:mediaControls" },
    ignore_alpha = 1,
})

hl.layer_rule({
    match = { namespace = "quickshell:regionSelector" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:screenshot" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "quickshell:session" },
    blur = true,
    no_anim = true,
    ignore_alpha = 0,
})

hl.layer_rule({
    match = { namespace = "quickshell:sidebarRight" },
    animation = "slide right",
})

hl.layer_rule({
    match = { namespace = "quickshell:sidebarLeft" },
    animation = "slide left",
})

hl.layer_rule({
    match = { namespace = "quickshell:verticalBar" },
    animation = "slide",
})

hl.layer_rule({
    match = { namespace = "quickshell:wallpaperSelector" },
    animation = "slide top",
})

-- Launcher should be fast
hl.layer_rule({
    match = { namespace = "gtk4-layer-shell" },
    no_anim = true,
})