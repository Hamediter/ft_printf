*This project has been created as part of the 42 curriculum by [aboutale].*

# 🖨️ ft_printf - Because putstr isn't enough

<p align="center">
  <img src="https://img.shields.io/badge/Score-100%2F100-success?style=for-the-badge&logo=42" alt="Score">
  <img src="https://img.shields.io/badge/Language-C-blue?style=for-the-badge&logo=c" alt="C">
</p>

## 📝 Description
The **ft_printf** project at 42 is a re-implementation of the famous `printf` function from the standard C library. The goal is to create a versatile and extensible printing function that can handle various format specifiers.

This project introduces the concept of **variadic functions** in C, allowing a function to accept a variable number of arguments.

### Key Features
My implementation supports the following format specifiers:
- `%c` : Prints a single character.
- `%s` : Prints a string.
- `%p` : Prints a void * pointer in hexadecimal format.
- `%d` / `%i` : Prints a decimal (base 10) number.
- `%u` : Prints an unsigned decimal (base 10) number.
- `%x` / `%X` : Prints a number in hexadecimal (base 16) lowercase or uppercase.
- `%%` : Prints a percent sign.

---

## 🏗️ Infrastructure Overview
The project is built to be modular and integrated with my previous `libft`:
- **Variadic Logic:** Extensive use of `stdarg.h` macros (`va_start`, `va_arg`, `va_copy`, `va_end`).
- **Dispatching:** A central engine parses the format string and dispatches the work to specific sub-functions for each type.
- **Integration:** This version is standalone but designed to be easily merged into a personal global library.

---

## 🛠️ Project Description & Design Choices

### Design Choices
*   **Buffer Management:** Instead of multiple small `write` calls, I focused on a structure that could easily be adapted to buffer management in the future to improve I/O performance.
*   **Recursive Hex Conversion:** I chose a recursive approach for hexadecimal and decimal conversions to keep the code clean and strictly compliant with the 42 Norm.
*   **Return Value Accuracy:** Particular attention was paid to ensuring the return value (total number of characters printed) is identical to the original `printf`, even in edge cases with NULL pointers or empty strings.
*   **Extensibility:** The parsing logic is separated from the printing logic, making it easy to add new flags or specifiers later.

---

## 🚀 Instructions

### Prerequisites
- `gcc` or `clang` compiler.
- `make` tool.

### Step-by-Step Installation
1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/ft_printf.git](https://github.com/your-username/ft_printf.git) && cd ft_printf
    ```
2.  **Compile the library:**
    
```bash
    make
    ```
3.  **Usage:**
    To use it in your code, include the header and link the library:
    ```c
    #include "ft_printf.h"
    
    int main()
    {
        ft_printf("Hello %s, the answer is %d\n", "World", 42);
        return (0);
    }
    ```
    `gcc main.c libftprintf.a && ./a.out`

---

## 📚 Resources

### References
- [Secrets of printf](https://www.cypress.com/file/54441/download) - A deep dive into how printf works under the hood.
- [Variadic Functions (GNU)](https://www.gnu.org/software/libc/manual/html_node/Variadic-Functions.html) - Official documentation on handling variable arguments.

### AI Usage
For this project, AI was used for:
- **Conceptualizing:** Understanding the memory stack behavior when using `va_list`.
- **Testing:** Generating a wide range of format combinations to compare my output with the real `printf`.
- **Documentation:** Formatting this README to match my GitHub profile's visual style.
*All logic and code were manually implemented according to 42's academic integrity standards.*
