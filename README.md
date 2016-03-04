# luamd
luamd is a Markdown to HTML renderer written in portable, pure Lua. It's also really easy to use.

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
Render markdown from a string. On bad input, retuns nil and an error message.
```lua
local html, err = md.render(mdSoucre, options)
```

Render markdown from a line iterator.
```lua
local html, err = md.renderLines(iterator, options)
```

Calling the module as a function will invoke `md.render` if the first argument is a string, and
`md.renderLines` if the first argument is a function. This is the easiest way to use this module.

The options table is an optional table of options. The currently supported options are below.
* `tag` - Surrounding HTML tag for HTML fragment.
* `attributes` - A table attributes for the surround HTML node. For example, `{ style = "padding: 10px;" }`.
* `insertHead` - An HTML fragment to insert before the main body of HTML. (Inserted after the wrapping tag, if present.)
* `insertTail` - An HTML fragment to insert after the main body of HTML. (Inserted before the closing tag, if present.)

## Todo

Needs some good unit testing. :).

Supports most of basic Markdown syntax, but there are some features that need to be implemented.
I haven't implemented them because I don't need them - yet.

* HTML and code escapes - Probably the most important one on the list.
* Some alternative syntax for numbered Lists (using `#.`)
* Indent style code - I prefer backtick quoted code
* Tables - GitHub style tables would be cool
* Footnotes - Might need them, but not yet.

## Bugs

If anyone wants to use this and finds bugs and issues, let me know! I usually can fix things pretty quickly, 
and I appreciate help.
