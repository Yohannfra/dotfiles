" vim plugin to create code snippets
" Assouline Yohann
" 2019

function Create_main()
    call append(0, "int main(const int argc, const char **argv)")
    call append(1, "{")
    call append(3, "    return (0);")
    call append(4, "}")
endfunction

function! Create_makefile()
    let comment_tab = ["##", "## EPITECH PROJECT, 2019", "## Makefile",
                \"## File descriptions:", "## insert here", "##", "",
                \"CC = gcc", "", "SHELL = /bin/bash", "",  "NAME =", "",
                \"SRC =", "", "CPPFLAGS = -I./includes -Wall -Wextra", "",
                \"CFLAGS =", "",
                \"LDFLAGS = #-L./lib/my", "", "LDLIBS = #-lmy", "",
                \"OBJ = $(SRC:.c=.o)", "",  "all: $(NAME)", "",
                \"$(NAME): $(OBJ)",
                \"\tgcc -o $(NAME) $(OBJ) $(LDFLAGS) $(LDLIBS)",
                \"", "debug: CFLAGS += -g", "debug: fclean $(NAME)", "", "clean:",
                \"\t@rm -f $(OBJ)", "", "fclean: clean", "\t@rm -f $(NAME)",
                \"", "re: fclean all", "",".PHONY: all clean fclean re debug",
                \"END"]
    let i = 0
    while comment_tab[i] != "END"
        call append(i, "". comment_tab[i])
        let i += 1
    endwhile
endfunction

function! Snippet()
    let type = input('(1) Makefile | (2) main : ')

    if type == "1"
        call Create_makefile()
    endif
    if type == "2"
        call Create_main()
    endif
endfunction

command Snippet execute Snippet()
