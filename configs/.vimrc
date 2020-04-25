"
"   Основные настройки
"
" Включаем подсветку синтаксиса
syntax on
" Цветовая схема
colorscheme darkblue
" Регистронезависимый поиск
set ignorecase
" Игнорировать регистр при поиске, если нет больших букв
set smartcase
" Выключаем перенос строк
set wrap
" Перенос по словам, а не по буквам
set linebreak
" Дополнение в виде меню
set completeopt=menu
" Чтобы нормально вводить команды в русской раскладке
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
" Установить вирутальный звонок
set visualbell
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is
" настраиваю для работы с русскими словами (чтобы w, b, * понимали русские слова)
set iskeyword=@,48-57,_,192-255
" задать размер табуляции в четыре пробела
set ts=4
" Заменять tab на пробелы
set expandtab
" В командах отступа 4 пробела
set shiftwidth=4
" отображение выполняемой команды
set showcmd 
" перенос по словам, а не по буквам
set linebreak
set dy=lastline
" устанавливаем номера строк
set number
" Проверка орфографии
"set spell spelllang=ru,en
" set charset translation encoding
set encoding=utf-8
" set terminal encoding
set termencoding=utf-8
" set save encoding
set fileencoding=utf-8
" Список для определения кодировки файла в порядке предпочтения
set fileencodings=utf8,koi8r,cp1251,cp866,ucs-2le   
" Строка состояния
set laststatus=2   " всегда показывать строку статуса
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
" Сворачивание блоков
set foldenable
" Сворачиваем на основе синтаксиса
set foldmethod=syntax
" Сворачиваем на основе отступов
" set foldmethod=indent
autocmd FileType *.py execute 'set foldmethod=indent'
" При автодополнении подсказки
set wildmenu
" Отображать табуляцию и переводы строк
set list
" Настройка отображения специальных символов
set list listchars=tab:→\ ,trail:·
" Включить автоматическую расстановку отступов
set autoindent
" Включить “умную” расстановку отступов
set smartindent
" Включаем несовместимость настроек с Vi, так как Vi нам и не понадобится
set nocompatible
" Показывать положение курсора всё время.
set ruler
" Показывать незавершённые команды в статусбаре
set showcmd
" Отображение парных символов
set showmatch
" Подсвечивать линию текста, на которой находится курсор
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=lightblue
"highlight CursorLine term=none cterm=inverse,bold
" В 7-й версии увеличиваем вложенность UNDO 
if version >= 700
    set history=64
    set undolevels=128
    set undodir=~/.vim/undodir/
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
"
"    Работа с мышкой 
"
set mouse=a
" Скрывать указатель мыши, когда печатаем
set mousehide
"
"   Маппинг клавиш
"
" прокручивать текст колёсиком мыши и вставлять выделенное в X`ах мышкой в Vim нажатием средней кнопки мыши 
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
" Cохранение по F2
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
" По F3 вставка файла
imap <F3> <Esc>:read 
map <F3> <Esc>:read 
" По <F4> открывается новая вкладка (tab) и выводится список каталогов и файлов текущего каталога.
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>
" По <F5> позволяет переключать вкладки справа-налево, по-порядку, отображая открытые в них файлы.
imap <F5> <Esc> :tabprev <CR>i
map <F5> :tabprev <CR>
" По <F6> позволяет переключать вкладки слева-направо, по-порядку, отображая открытые в них файлы.
imap <F6> <Esc> :tabnext <CR>i
map <F6> :tabnext <CR>
" По <F12> в конец файла и добавляем
imap <F12> <Esc> GGO
map <F12>  GGO
"
"   Меню
"
" проверка орфографии:
set wildmenu
set wcm=<Tab>
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F7> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F8> <Esc> z=<CR>i
map <F8> z=<CR>
" По <F9> позволяет приостановить работу Vim и вызвать соответствующие программы:
set wildmenu
set wcm=<Tab>
menu Exec.Python    :!python % <CR>
menu Exec.bash      :!/bin/bash<CR>
menu Exec.mc        :!mc<CR>
map <F9> :emenu Exec.<Tab>
" Пользовательское меню. По <F10> позволяет вызвать меню различных вариантов завершения работы с Vim. ( Глоток воздуха для новичка :)
set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F10> :emenu Exit.<Tab>
" F11 - работа с кодировками
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r  :e ++enc=koi8-r<CR>
menu Encoding.cp1251  :e ++enc=cp1251<CR>
menu Encoding.cp866   :e ++enc=cp866<CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
menu Encoding.utf-8   :e ++enc=utf-8<CR>
map <F11> :emenu Encoding.<Tab>
"
"   Функции
"
" Позволяет по <Tab>, более привычному некоторым пользователям, вызывать авто-дополнение для текущего активного синтаксиса:
 function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
 endfunction
 inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
 inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" 
" Всплывающий перевод
function! MyBalloonExpr()
       return system("sdcv -0nce ". v:beval_text)
endfunction
set bexpr=MyBalloonExpr()
set ballooneval
set balloondelay=100

" Новый Python файл забиваем стандартом
function! WritePyinit()
    let @q = "
    \#\!/usr/bin/env python\n\#-*- encoding: utf-8 -*-\n\nimport sys, warnings\n\nwarnings.simplefilter('always')\n\ndef main(argv=sys.argv):\n    pass\n\nif __name__ == \"__main__\":\n           
sys.exit(main())\n"
    execute "0put q"
endfunction
autocmd BufNewFile *.py call WritePyinit()

" Включить словарь - исходя из расширения файла
autocmd FileType * execute 'setlocal dict+=~/.vim/words/'.&filetype.'.txt'


" доработка – автозагрузка произвольного конфигурационного файла из директории запуска vim. это позволяет, к примеру, задать определенные настройки компилятора для каждой из директорий и при запуски vim-а подгружить их автоматически. настройки должны быть записаны в файл .vim_config.
if filereadable(".vim_config")
    source .vim_config
endif
