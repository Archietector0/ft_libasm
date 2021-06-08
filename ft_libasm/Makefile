# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbarth <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 15:42:00 by tbarth            #+#    #+#              #
#    Updated: 2021/04/26 16:01:51 by tbarth           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

INC		= libasm.h

EXEC_N  = test_libasm 

SRCS	=	ft_read.s	\
			ft_write.s	\
			ft_strlen.s \
			ft_strcpy.s \
			ft_strdup.s \
			ft_strcmp.s	

OBJS	= $(SRCS:.s=.o)

SRC		= main.c

OBJ     =  ${SRC:.c=.o}

NASM	= nasm
ARS		= ar rcs
RANL	= ranlib

RM		= rm -f

NASM_FLAGS	= -f macho64

%.o : %.c $(INC)
			gcc -Wall -Wextra -Werror -c $< -o  $@

%.o : %.s	$(INC)	
			$(NASM) $(NASM_FLAGS) -I $(INC) $<

all : $(NAME) $(EXEC_N)

$(EXEC_N):	$(NAME) $(OBJ)
			cc -o $(EXEC_N) $(NAME) $(OBJ) -I $(INC) $< 

$(NAME):	$(OBJS) $(INC)
			$(ARS) $(NAME) $(OBJS)

$(OBJS):	$(INC)

clean:
			$(RM) $(OBJS) 
			$(RM) $(OBJ)
			$(RM) $(NAME)

fclean:		clean
			$(RM) $(EXEC_N)

re:			fclean all

.PHONY:		all clean fclean re
