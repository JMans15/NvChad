vim.g.mkdp_auto_start = 1

vim.g.mkdp_auto_close = 1

vim.g.mkdp_refresh_slow = 0

vim.g.mkdp_command_for_global = 0

vim.g.mkdp_open_to_the_world = 0

vim.g.mkdp_open_ip = ''

vim.g.mkdp_browser = ''

vim.g.mkdp_echo_preview_url = 0

vim.cmd(
[[
function OpenMarkdownPreview (url)
  execute "silent ! firefox --new-window " . a:url
endfunction
]]
)

vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'

-- options for markdown render
-- mkit: markdown-it options for render
-- katex: katex options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: if disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: mean the cursor position alway show at the middle of the preview page
--   top: mean the vim top viewport alway show at the top of the preview page
--   relative: mean the cursor position alway show at the relative positon of the preview page
-- hide_yaml_meta: if hide yaml metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0

function spantoc(x, htmlencode)
  return ''
end

vim.g.mkdp_preview_options = {
     mkit = {},
     katex = {},
     uml = {},
     maid = {},
     disable_sync_scroll = 0,
     sync_scroll_type = 'middle',
     hide_yaml_meta = 1,
     sequence_diagrams = {},
     flowchart_diagrams = {},
     content_editable = false,
     disable_filename = 0,
     toc = {}
}


vim.g.mkdp_markdown_css = '/home/mansj/repos/markdown_stylesheets/air/css/air.css'

vim.g.mkdp_highlight_css = ''

vim.g.mkdp_port = ''

vim.g.mkdp_page_title = '${name}'

vim.g.mkdp_filetypes = {'markdown'}

vim.g.mkdp_theme = 'light'
