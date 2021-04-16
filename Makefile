NAME = libasm.a

SRC_DIR = srcs
SRCS = $(wildcard $(SRC_DIR)/*.s)
BONUS_DIR = srcs/bonus
BONUS_SRCS = $(wildcard $(BONUS_DIR)/*.s)

OBJS = $(SRCS:.s=.o)
OBJS_BONUS = $(BONUS_SRCS:.s=.o)

NASM = nasm
NASM_FLAGS = -felf64
CC = clang


#-o $@ $?
%.o : %.s
	$(NASM) $(NASM_FLAGS) $<

all: $(NAME)

$(NAME) : $(OBJS)
	ar crs $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BONUS)
	ar crs $(NAME) $(OBJS) $(OBJS_BONUS)

test: $(NAME)
	$(CC) -Wall -Wextra -Werror main.c $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re