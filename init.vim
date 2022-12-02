"=============================================== -
"___________
"| Indice: | 
"-----------
"1. 
"2.
"3. Lenguajes de Marcado
"    3.1. LaTeX
"    3.2. HTML
"4.
"
"===============================================



"Configuración de mis templates para NeoVim

"augroup templates
	"au !
	"let g:template_name = 'Santiago Flores'
	"autocmd BufNewFile *.* silent! execute '0r 	"no se muestran erores en caso de fallar
"$HOME/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
	"autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge 
	"autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
	"autocmd BufNewFile * %s/{{EVAL\s*\
"([^}]*\)}}/\=eval(submatch(1))/ge
"augroup END

autocmd BufNewFile *.html 0r ~/.config/nvim/templates/html.tpl	"Cuando se cree un archivo con xtensión .html neovim cargara la plantilla indicada en la ruta anterior.

"au BufNewFile * silent! 0r  ~/.config/nvim/template/html.%:e

inoremap ,lo <Esc>:-1read ~/.config/nvim/templates/.lorem<CR>

"===============================================
"3. Lenguajes de marcado.
"===============================================
"3.1. LaTeX
"-----------------------------------------------
"Snipets: Partes de codigo reutilizables.
"
	
" 3.1.HTML
" -----------------------------------------------
Autocompletar el cierre de las etiquetas HTML
autocmd  FileType  html  set  omnifunc = htmlcomplete#CompleteTags
Creando una abreviatura para el comando anterior
: ab  <<< </<Cx><Co>
