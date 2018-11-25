local REPEAT_FASTER = 10 * 1000

local function keyStroke(mod, key, repeatDelay)
    hs.eventtap.event.newKeyEvent(mod, key, true):post()
    if repeatDelay <= 0 then
        repeatDelay = REPEAT_FASTER
    end
    hs.timer.usleep(repeatDelay)
    hs.eventtap.event.newKeyEvent(mod, key, false):post()
end

local function keyStrokeSystem(key, repeatDelay)
    hs.eventtap.event.newSystemKeyEvent(key, true):post()
    if repeatDelay <= 0 then
        repeatDelay = REPEAT_FASTER
    end
    hs.timer.usleep(repeatDelay)
    hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

-- Map sourceKey + sourceMod -> targetKey + targetMod
local function keymap(sourceKey, sourceMod, targetKey, targetMod, repeatDelay, sendAfter)
    sourceMod = sourceMod or {}

    repeatDelay = repeatDelay or REPEAT_FASTER
    noRepeat = repeatDelay <= 0

    local fn = nil
    if targetMod == nil then
        fn = hs.fnutils.partial(keyStrokeSystem, string.upper(targetKey), repeatDelay)
    else
        targetMod = utils.splitStr(targetMod, '+')
        fn = hs.fnutils.partial(keyStroke, targetMod, targetKey, repeatDelay)
    end
    local beforeFn = fn
    local afterFn = nill
    if sendAfter then
    	beforeFn = nill
    	afterFn = fn
    end
    if noRepeat then
        hs.hotkey.bind(sourceMod, sourceKey, beforeFn, afterFn, nil)
    else
        hs.hotkey.bind(sourceMod, sourceKey, beforeFn, afterFn, fn)
    end
end

local hyper = {'cmd', 'alt', 'control'}
local hyper_shift = {'cmd', 'alt', 'control', 'shift'}

-- ------------------
-- move
-- ------------------
--local arrows = {
--    h = 'left',
--    j = 'down',
--    k = 'up',
--    l = 'right'
--}
--for k, v in pairs(arrows) do
--    keymap(k, hyper, v, '')
--    keymap(k, hyper_shift, v, 'shift')
--end

--keymap('b', hyper, 'left', 'alt')
--keymap('b', hyper_shift, 'left', 'alt+shift')
--keymap('w', hyper, 'right', 'alt')
--keymap('w', hyper_shift, 'right', 'alt+shift')
--keymap('a', hyper, 'left', 'cmd')
--keymap('a', hyper_shift, 'left', 'cmd+shift')
--keymap('e', hyper, 'right', 'cmd')
--keymap('e', hyper_shift, 'right', 'cmd+shift')
--keymap('p', hyper, 'pageup', '')
--keymap('p', hyper_shift, 'pageup', 'shift')
--keymap(';', hyper, 'pagedown', '')
--keymap(';', hyper_shift, 'pagedown', 'shift')

-- ------------------
-- command mapping
-- ------------------
keymap('c', hyper, 'c', 'cmd', 0, true)
keymap('x', hyper, 'x', 'cmd', 0, true)
keymap('v', hyper, 'v', 'cmd', 0, true)
keymap('z', hyper, 'z', 'cmd', 0, true)
keymap('z', hyper_shift, 'z', 'cmd+shift', 0, true)
keymap('s', hyper, 's', 'cmd', 0, true)
keymap('t', hyper, 't', 'cmd', 0, true)

keymap('g', hyper, 'l', 'cmd')
keymap('y', hyper, 'w', 'cmd')

-- ------------------
-- editing
-- ------------------
keymap('m', hyper, 'return', '')
keymap('d', hyper, 'delete', '')
keymap('d', hyper_shift, 'delete', 'alt')
keymap('f', hyper, 'forwarddelete', '')
keymap('f', hyper_shift, 'forwarddelete', 'alt')
keymap('space', hyper, 'tab', '')
keymap('space', hyper_shift, 'tab', 'shift')
keymap('r', hyper, 'f6', 'shift')

-- ------------------
-- mirror unused keys
-- ------------------
keymap('4', hyper, '4', 'shift', 0, true)
keymap('5', hyper, '5', 'shift', 0, true)
keymap('6', hyper, '6', 'shift', 0, true)
keymap('7', hyper, '7', 'shift', 0, true)
keymap('8', hyper, '8', 'shift', 0, true)
keymap('9', hyper, '9', 'shift', 0, true)
keymap('0', hyper, '0', 'shift', 0, true)
keymap("\\", hyper, "\\", 'shift', 0, true)
keymap("'", hyper, "'", 'shift', 0, true)
keymap("-", hyper, '-', 'shift', 0, true)
keymap("=", hyper, '=', 'shift', 0, true)
keymap("[", hyper, "[", 'shift', 0, true)
keymap("]", hyper, "]", 'shift', 0, true)
keymap(",", hyper, ",", 'shift', 0, true)
keymap(".", hyper, ".", 'shift', 0, true)
keymap("/", hyper, "/", 'shift', 0, true)

-- ------------------
-- strings
-- ------------------
local function keyToString(sourceKey, sourceMod, string)
    hs.hotkey.bind(sourceMod, sourceKey, function()
        hs.eventtap.keyStrokes(string)
    end)
end

keyToString("3", hyper, "#")
keyToString("q", hyper, "'")
keyToString("2", hyper, '"')
keyToString("-", hyper_shift, "->")
keyToString("=", hyper_shift, "=>")
