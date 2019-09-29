##
## EPITECH PROJECT, 2019
## project name
## File description:
## Makefile
##

CC = gcc

SHELL = /bin/bash

RM = rm -f

NAME = test

SRC_MAIN = src/main.c

SRC_OTHERS =

SRC = $(SRC_MAIN) $(SRC_OTHERS)

OBJ = $(SRC:.c=.o)

CPPFLAGS =

CFLAGS = -Wall -Wextra

LDFLAGS =

LDLIBS =

all: $(NAME) sign

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LDFLAGS) $(LDLIBS)

debug: CFLAGS += -g -D DEBUG
debug: fclean $(NAME)

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ)

re: fclean all

sign:
	@echo ""
	@echo "Assouline Yohann"
	@echo "EPITECH, 2018"
	@echo ""

.PHONY: all clean fclean re debug debug
