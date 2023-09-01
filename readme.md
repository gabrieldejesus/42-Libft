# Libft

This project is your very first project as a student at 42. You will need to recode a few functions of the C standard library as well as some other utility functions that you will use during your whole cursus.

## Skills

- Algorithms & AI
- Imperative programming

### Mandatory part

| Program name | Turn in files               | Makefile | External functs. | Libft authorized | Description                                                                                   |
| ------------ | --------------------------- | -------- | ---------------- | ---------------- | --------------------------------------------------------------------------------------------- |
| libft.a      | Makefile, libft.h, ft\_\*.c | None     | Detailed below   | n/a              | Write your own library: a collection of functions that will be a useful tool for your cursus. |

#### Technical considerations

- Declaring global variables is forbidden.
- If you need helper functions to split a more complex function, define them as static functions. This way, their scope will be limited to the appropriate file.
- Place all your files at the root of your repository.
- Turning in unused files is forbidden.
- Every .c files must compile with the flags -Wall -Wextra -Werror.
- You must use the command ar to create your library. Using the libtool command is forbidden.
- Your libft.a has to be created at the root of your repository

#### Part 1 - Libc functions

To begin, you must redo a set of functions from the libc. Your functions will have the
same prototypes and implement the same behaviors as the originals. They must comply
with the way they are defined in their man. The only difference will be their names. They
will begin with the ’ft\_’ prefix. For instance, strlen becomes ft_strlen.

> Some of the functions’ prototypes you have to redo use the ’restrict’ qualifier. This keyword is part of the c99 standard. It is therefore forbidden to include it in your own prototypes and to compile your code with the -std=c99 flag.

You must write your own function implementing the following original ones. They do not require any external functions:

- isalpha
- isdigit
- isalnum
- isascii
- isprint
- strlen
- memset
- bzero
- memcpy
- memmove
- strlcpy
- strlcat
- toupper
- tolower
- strchr
- strrchr
- strncmp
- memchr
- memcmp
- strnstr
- atoi

In order to implement the two following functions, you will use **malloc()**:

- calloc
- strdup

#### Part 2 - Additional functions

In this second part, you must develop a set of functions that are either not in the libc,
or that are part of it but in a different form.

> Some of the following functions can be useful for writing the functions of Part 1.

| Program name | Prototype                                                       | Turn in files | Parameters                                                                                                                                                   | Return value                                     | External functs. | Description                                                                                                                                    |
| ------------ | --------------------------------------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------ | ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| ft_substr    | char *ft_substr(char const *s, unsigned int start, size_t len); | -             | s: The string from which to create the substring.<br>start: The start index of the substring in the string ’s’.<br>len: The maximum length of the substring. | The substring.<br/>NULL if the allocation fails. | malloc           | Allocates (with malloc(3)) and returns a substring from the string ’s’.<br>The substring begins at index ’start’ and is of maximum size ’len’. |
