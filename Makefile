# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rtoast <rtoast@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/01 00:43:18 by rtoast            #+#    #+#              #
#    Updated: 2021/04/01 00:55:07 by rtoast           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

HEAD = ./libs.h

FLAGS = -f macho64

S_FILE = ft_read.s ft_strcmp.s ft_strcpy.s ft_write.s\
		ft_strlen.s ft_strdup.s

O_FILE = $(S_FILE:.s=.o)

all:
	$(MAKE) $(NAME) -j 4

$(NAME): $(O_FILE)
	ar -rcs $(NAME) $(O_FILE)

%.o: %.s $(HEAD)
	@nasm $(FLAGS) $<

clean:
	@rm -f $(O_FILE)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
