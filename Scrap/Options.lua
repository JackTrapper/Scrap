--[[
By João Cardoso

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>

This file is part of Scrap.
--]]

local Options = CreateFrame('Frame', 'ScrapOptions', InterfaceOptionsFrame)
Options.name = 'Scrap'
Options:SetScript('OnShow', function()
	local loaded, reason = LoadAddOn('Scrap_Options')
	if not loaded then
		local string = Options:CreateFontString(nil, nil, 'GameFontHighlight')
		string:SetText(format('"Scrap_Options" could not be loaded because the addon is %s', strlower(_G['ADDON_'..reason])))
		string:SetPoint('RIGHT', -40, 0)
		string:SetPoint('LEFT', 40, 0)
		string:SetHeight(30)
	end 
end)

InterfaceOptions_AddCategory(Options)