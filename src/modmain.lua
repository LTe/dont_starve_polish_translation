LoadPOFile("polski.po", "pl")

io=GLOBAL.io
assert=GLOBAL.assert

table.insert(GLOBAL.STRINGS, "PL_MARK")
GLOBAL.STRINGS.PL_MARK = "-#&#-"
table.insert(GLOBAL.STRINGS, "PL_SWAP_KEY")
GLOBAL.STRINGS.PL_SWAP_KEY = GLOBAL.KEY_C

function ApplyPolishFontsRewrite()
	local PlFontFiles={
        "belisaplumilla50__pl.zip",
		"belisaplumilla100__pl.zip",
        "buttonfont__pl.zip",
        "opensans50__pl.zip",
        "stint-ucr20__pl.zip",
		"stint-ucr50__pl.zip",
        "talkingfont__pl.zip",
        "talkingfont_wathgrithr__pl.zip",
  }

	local function copyfile(source,dest)
		local f = assert(io.open(source,"rb"))
		local content = f:read("*all")
		f:close()
		f = assert(io.open(dest,"w"))
		f:write(content)
		f:close()
	end

	for i,FileName in ipairs(PlFontFiles) do
    local orig = FileName:gsub("__pl", "");
    copyfile(MODROOT.."fonts/"..FileName,"fonts/"..orig);
	end
end

ApplyPolishFontsRewrite()
