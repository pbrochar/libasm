NAME = libasm.a

SRC_DIR = srcs
SRCS = $(wildcard $(SRC_DIR)/*.s)

OBJS = ${SRCS:.s=.o}

NASM = nasm
NASM_FLAGS = -felf64

$(NAME) : $(OBJS)
	ar crs $(NAME) $(OBJS)

.s.o :
	$(NASM) $(NASM_FLAGS) -o $@ $?

all: $(NAME)

test: $(NAME)
	clang -Wall -Wextra -Werror main.c $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re