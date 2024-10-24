" Global settings
syntax on
set tabstop=4
set shiftwidth=4
set hlsearch
set number
set mouse=a
set wildmenu
set wildmode=list:longest,full
set completeopt=menuone
set completeopt=preview
set laststatus=2
set spelllang=en_us
set encoding=utf-8
colorscheme elflord

nnoremap ; A;<Esc>

function TabIndent(line_num)
    let line_content = getline(a:line_num)
    let tab_count = 0

    let i = 0
    while i < strlen(line_content) && strpart(line_content, i, 1) == "\t"
        let tab_count += 1
        let i += 1
    endwhile
    
    return tab_count
endfunction

function InsertEmptyLineBetweenBrackets()
    let col = col('.')
    let line = getline('.')
    let indent = match(line, '\zs[{]\%'.col.'c')

    if indent >= 0
		let tab_count = TabIndent(line('.'))
		let tabs = repeat("\t", tab_count)
        return "\<CR>".tabs."}\<ESC>O".tabs."\<Tab>"
    else
        return "\<CR>"
    endif
endfunction

inoremap <expr> <CR> InsertEmptyLineBetweenBrackets()

