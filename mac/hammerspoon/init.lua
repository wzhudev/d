local configFileWatcher
function reloadConfig()
	configFileWatcher:stop()
	configFileWatcher = nil
	hs.reload()
end

-- watch config file change and auto reload
configFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/init.lua/", reloadConfig)
configFileWatcher:start()
function getWinList(name)
	return hs.window.filter
		.new(false)
		:setAppFilter(name, {
			currentSpace = true,
		})
		:getWindows()
end

function launchOrNextWindow(name, showName)
	local findName = showName or name
	local appName = hs.application.frontmostApplication():name()

	if findName ~= appName then
		hs.application.launchOrFocus(name)
	else
		local wlist = getWinList(findName)
		local wcount = #wlist

		if wcount > 1 then
			hs.eventtap.keyStroke({ "cmd" }, "`")
		else
			local win = wlist[1]
			if win:isMinimized() then
				win:unminimize()
			end
		end
	end
end

hs.hotkey.bind({ "alt" }, "e", function()
	launchOrNextWindow("Microsoft Edge")
end)

hs.hotkey.bind({ "alt" }, "v", function()
	launchOrNextWindow("Visual Studio Code", "Code")
end)

hs.hotkey.bind({ "alt" }, "q", function()
	launchOrNextWindow("企业微信")
end)

hs.hotkey.bind({ "alt" }, "t", function()
	launchOrNextWindow("Terminal")
end)

hs.hotkey.bind({ "alt" }, "w", function()
	launchOrNextWindow("WeChat")
end)

hs.notify.new({ title = "Hammerspoon", subTitle = "Configuration reloaded!" }):send()
