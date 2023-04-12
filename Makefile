
CC			:= cc
CFLAGS		:= -g -Wall -Wextra -Werror

NAME		:= push_swap

SRCS_D		:= srcs/

LIBFT_D		:= $(SRCS_D)/libft

SRCS_F		:= is_sort sort quick_sort rev_rota rotate swap_push pivot pre_sort main

SRCS		:= $(addprefix $(SRCS_D), $(addsuffix .c, $(SRCS_F)))
OBJ			:= $(addprefix $(SRCS_D), $(addsuffix .o, $(SRCS_F)))

all: 		$(NAME)

$(NAME): 	$(OBJ)
				make -C $(LIBFT_D)
				mv $(LIBFT_D)/libft.a .
				$(CC) $(OBJ) -L. -lft -o $(NAME)

clean:
				rm -f $(OBJ)

fclean:		clean
				rm -f $(NAME)
				rm -f libft.a
				make fclean -C $(LIBFT_D)

re: 		fclean all

.PHONY: 	all clean fclean re bonus