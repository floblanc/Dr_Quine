CC = gcc
NASM = nasm -f elf64
FLAGS = -Wall -Wextra -Werror

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

SRC1 = Colleen/Colleen.s
SRC2 = Grace/Grace.s
SRC3 = Sully/Sully.s

OBJ1 = $(SRC1:.s=.o)
OBJ2 = $(SRC2:.s=.o)
OBJ3 = $(SRC3:.s=.o)

_DEF = $'\033[0m
_RED = $'\033[31m
_GREEN = $'\033[32m
_YELLOW = $'\033[33m

.PHONY: all clean re fclean

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ1)
	@$(CC) -o Colleen/$(COLLEEN) $(OBJ1)
	@echo "$(_GREEN)$(COLLEEN) created.$(_DEF)"

$(GRACE): $(OBJ2)
	@$(CC) -o Grace/$(GRACE) $(OBJ2)
	@echo "$(_GREEN)$(GRACE) created.$(_DEF)"

$(SULLY): $(OBJ3)
	@$(CC) -o Sully/$(SULLY) $(OBJ3)
	@echo "$(_GREEN)$(SULLY) created.$(_DEF)"

%.o: %.s
	@echo "$(_YELLOW)$(NASM) $<$(_DEF)"
	@$(NASM) $<

clean:
	@echo "$(_RED)$(OBJ1) $(OBJ2) $(OBJ3) Grace/Grace_kid.s Sully/Sully_*.o Sully/Sully_*.s removed$(_DEF)"
	@rm -f $(OBJ1) $(OBJ2) $(OBJ3) Grace/Grace_kid.s Sully/Sully_*.o Sully/Sully_*.s

fclean: clean
	@echo "$(_RED)Colleen/$(COLLEEN) Grace/$(GRACE) Sully/$(SULLY) Sully/Sully_* removed$(_DEF)"
	@rm -f Colleen/$(COLLEEN) Grace/$(GRACE) Sully/$(SULLY) Sully/Sully_*

re: fclean all