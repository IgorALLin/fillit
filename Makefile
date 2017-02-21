
NAME = fillit

FLAG =	-Wall -Wextra -Werror 

SRCS =	main.c\
		check.c\
		ft_arr_putstr.c\
		ft_memalloc.c\
		ft_putendl.c\
		ft_strjoin.c\
		ft_strlen.c\
		ft_strndup.c\
		ft_strnew.c\
		ft_strsplit.c\
		put_data_in_tetr.c\
		solve.c\
		solve_tools.c\

SRO  =  $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(SRCS)
		@gcc $(FLAG) -c $(SRCS)
		@gcc $(FLAG) -o $(NAME) $(SRCS)
clean:
	@rm -f *.o
fclean:	
	@make clean
	@rm -f $(NAME)

re: 
	@make fclean
	@make all
	@gcc $(FLAG) -o $(NAME) $(SRCS)
