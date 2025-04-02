# Personal Website

This is my personal academic website built with [Franklin.jl](https://franklinjl.org/), a static site generator written in Julia.

## Overview

The website includes:
- Academic profile and contact information
- Research interests in Neural Algorithmic Reasoning, Graph Deep Learning, and Deep Learning for Remote Sensing
- Projects page showcasing my work
- Blog section for research and technical writing

## Technology Stack

- [Julia](https://julialang.org/) programming language
- [Franklin.jl](https://franklinjl.org/) for static site generation
- Custom CSS based on Tufte style
- Font Awesome icons for social links

## Local Development

1. Install Julia and required packages:
```julia
using Pkg
Pkg.add(["Franklin", "NodeJS"])
```

2. Clone the repository:
```bash
git clone https://github.com/ronaldalbrt/ronaldalbrt.github.io.git
cd ronaldalbrt.github.io
```

3. Start the Franklin server:
```julia
using Franklin
serve()
```

4. Visit `http://localhost:8000` to view the site

## License

See [LICENSE](LICENSE) file for details.