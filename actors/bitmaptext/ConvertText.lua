local function ConvertText( child )
	local str = child:GetText()

	-- This will contain all possible changes to change the color method.
	local charindex = 0
	-- Here we'll store the  all the possible matches to color.
	local ColoringProcess = {}
	-- First we'll look into all instances where there are words.
	for k in string.gmatch( str, "(%g+)" ) do
		-- Now look for matches where they're enclosed in square brackets.
		for m in string.gmatch( k,"%[(.-)%]" ) do
			-- If it does, insert the entry into the ColoringProcess table, which includes the following:
			-- 1 - The number index of where this match occurs
			-- 2 - The attributes to apply.
			-- 2.1 -- Diffuse, how to color this section.
			-- 2.2 -- Length, how long is this section.
			ColoringProcess[#ColoringProcess+1] = {
				Start = charindex > 1 and charindex+1 or 0,
				Attr = {
					Diffuse = Color.Red,
					Length = m:len()
				}
			}
		end
		-- Now that we're done with that loop, regardless if we got a match or now, increase the starting index
		-- to prevent duplicates.
		charindex = charindex + k:len()
	end
	
	-- We're done, get rid of the brackets themselves.
	child:settext( str:gsub( "%[","" ):gsub("%]","") )
	for k,v in pairs( ColoringProcess ) do
		-- Apply the resulting table's atributes to the text.
		child:AddAttribute( v.Start, v.Attr )
	end
end

return Def.BitmapText{
	Font = "Common Normal",
	Text = "I'm [Text]",
	OnCommand = function(self)
		self:Center() -- Center the BitmapText so it's visible
		-- Call the function above.
		ConvertText(self)
	end
}