local function ConvertText( child )
	local str = child:GetText()

	-- This will contain all possible changes to change the color method.
	local charindex = 0
	-- Here we'll store the  all the possible matches to color.
	local ColoringProcess = {}

	-- Let's use gmatch to get all matches where a string is enclosed on square brackets.
	-- A trick being used here are the empty parenthesis, as gmatch doesn't provide a general index value
	-- when there's a proper match found. However, if you include parenthesis before or after a successful match,
	-- you'll get the index value of the the start and the end of the match relative to the entire string, which is 
	-- useful to get the position to apply each attribute.
	for p1,m,p2 in str:gmatch("()(%[.-%])()" ) do
		ColoringProcess[#ColoringProcess+1] = {
			-- The attributes need the value to be 0-indexed, hence the -1, as Lua provides all results starting with 1.
			Start = p1-1,
			Attr = {
				Diffuse = Color.Red,
				Length = m:len()
			}
		}
	end
	
	-- We're done. Apply the resulting table's atributes to the text.
	for k,v in pairs( ColoringProcess ) do
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