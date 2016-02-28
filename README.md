# luamd
luamd is a Markdown to HTML renderer written in portable, pure Lua. Its also really easy to use.

```lua
local md = require "md"
local htmlFragment = md[[
# This is Some Markdown
Write whatever you want.
* Supports Lists
* And other features
]]
```

## Install
Copy `md.lua` to your project in whatever directory you want.

## Use it
Render markdown from a string.
```lua
local html = md.render(mdSoucre)
```

Render markdown from a line iterator.
```lua
local html = md.renderLines(iterator)
```

Calling the module as a function will invoke `md.render` if the first argument is a string, and
`md.renderLines` if the first argument is a function. This is the easiest way to use this module.

## Todo

Needs some good unit testing. :).

Supports most of basic Markdown syntax, but there are some features that need to be implemented.
I haven't implemented them because I don't need them - yet.

* HTML and code escapes - Probably the most important one on the list.
* Some alternative syntax for Headers and Numbered Lists (using `#.` for lists, and underlined headers)
* Indent style code - I prefer backtick quoted code
* Tables - GitHub style tables would be cool
* Footnotes - Might need them, but not yet.

## Bugs

If anyone wants to use this and finds bugs and issues, let me know! I usually can fix things pretty quickly, 
and I appreciate help.
