# CSC512

# Compiler-based Seminal Input Features Detection

This project implements two key LLVM passes for:
1. **Key Point Detection**: Identifies key points in C programs such as conditional branches and function pointer calls.
2. **Seminal Input Feature Detection**: Detects which parts of the input affect the program's behavior at those key points.

## Project Structure

- **`KeyPointsPass.cpp`**: LLVM pass to detect key points in a C program.
- **`SeminalInputPass.cpp`**: LLVM pass to analyze input features and determine which parts of the input influence program behavior.
- **`CMakeLists.txt`**: Configuration for building the LLVM passes.
- **`test.c`**: Sample C program to test the passes.

## Prerequisites

To compile and run this project, you'll need:
- LLVM (version 12 or higher)
- Clang (for generating LLVM IR)
- CMake (for building the LLVM passes)

### Installing LLVM and Clang (Ubuntu)

```bash
sudo apt-get install llvm llvm-dev clang
```

## Build Instructions

1. Clone the project repository.
2. Navigate to the project directory:

```bash
git clone <repository-url>
cd <project-directory>
```

3. Create a `build` directory and run `cmake`:

```bash
mkdir build
cd build
cmake ..
make
```

This will compile the `KeyPointsPass` and `SeminalInputPass` as shared libraries.

## Running the Passes

### Key Points Detection

1. Write a sample C program (e.g., `test.c`).
2. Compile the C program into LLVM IR:

```bash
clang -S -emit-llvm ../test.c -o test.ll
```

3. Run the Key Points Detection pass on the LLVM IR:

```bash
opt -load ./KeyPointsPass.so -keypoints < test.ll > /dev/null
```

The output will print conditional branches and function pointer calls along with their line numbers.

### Seminal Input Feature Detection

1. Use the same `test.c` or a more complex program involving user input (e.g., `scanf`, `getc`).
2. Compile the program into LLVM IR:

```bash
clang -S -emit-llvm ../test.c -o test.ll
```

3. Run the Seminal Input Feature Detection pass:

```bash
opt -load ./SeminalInputPass.so -seminalinput < test.ll > /dev/null
```

The output will print information about the input functions and how their values are used in the program.

## Testing with Other Programs

You can create more complex test programs to evaluate both passes. Ensure that these programs include:
- Conditional branches (`if-else`, `while`, `for` loops).
- Input operations (`scanf`, `fscanf`, `getc`, etc.).
- Function pointer calls.

### Example Test Program (`test.c`)

```c
#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    
    if (n > 10) {
        printf("Large number\n");
    } else {
        printf("Small number\n");
    }
    return 0;
}
```

## Development and Submission Repositories

- **Development Repository URL**: https://github.com/zahrashiraz97/CSC512.git
- **Submission Repository URL**: https://github.com/zahrashiraz97/CSC512.git
## Further Development

- For **Milestone 2**, continue working on extending input feature detection for more complex cases (e.g., file input, deeper def-use chain analysis).
- In **Milestone 3**, integrate the key points and input feature detection into one unified tool.
