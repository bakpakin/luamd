--[[
This test module renders all of the markdown files in the test documents directory
and outputs html files of the same name (minus the extension). Open these in a browser
to ensure they look alright.
]]

local md = require 'md'

local documents = {
    "1"
}

for _, name in ipairs(documents) do
    local fullpath = './test_documents/' .. name .. '.md'
    local source, err = md(io.lines(fullpath))
    if err then
        print(("Error in %s: %s"):format(fullpath, err))
    else
        local file = io.open('./test_documents/' .. name .. '.html', 'w')
        file:write(source)
        print(("Rendered %s."):format(fullpath))
    end
end
