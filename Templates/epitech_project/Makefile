##
## EPITECH PROJECT, 2019
## project name
## File description:
## Makefile
##

CC = gcc

SHELL = /bin/bash

NAME = my_project

SRC_MAIN = src/main.c

SRC_OTHERS =

SRC_TEST =

SRC = $(SRC_OTHERS)

OBJ = $(SRC:.c=.o) $(SRC_MAIN:.c=.o)

CPPFLAGS = -iquote ./includes

CFLAGS = -Wall -Wextra

LDFLAGS =

LDLIBS =

all: $(NAME) sign

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LDFLAGS) $(LDLIBS)

debug: CFLAGS += -g3 -D DEBUG
debug: fclean $(NAME)

test: LDFLAGS += -lcriterion
test: fclean
	gcc $(SRC) $(SRC_TEST) $(LDFLAGS) $(CFLAGS) $(LDLIBS) -o tester
	./tester --verbose

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ)

re: fclean all

sign:
	@echo ""
	@echo "Assouline Yohann"
	@echo "EPITECH, 2020"
	@echo ""

.PHONY: all clean fclean re debug sign test
