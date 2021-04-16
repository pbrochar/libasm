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

%.o : %.s
	$(NASM) $(NASM_FLAGS) $<

all: $(NAME)

$(NAME) : $(OBJS)
	ar crs $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BONUS)
	ar crs $(NAME) $(OBJS) $(OBJS_BONUS)

test: $(NAME)
	$(CC) -Wall -Wextra -Werror main.c $(NAME)

test_bonus: bonus
	$(CC) -Wall -Wextra -Werror main_bonus.c $(NAME)

clean_test:
	rm -rf a.out

clean:
	rm -rf $(OBJS)
	rm -rf $(OBJS_BONUS)

fclean: clean
	rm -rf $(NAME)


re: fclean all

.PHONY: all test bonus test_bonus clean_test clean fclean re