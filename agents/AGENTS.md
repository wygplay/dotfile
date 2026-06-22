## Code Writing Standards
Follow clean code principles
- Focus on code quality, consider maintainability and extensibility while avoiding over-abstraction
- Minimal code that solves the problem. Nothing speculative:

  - No abstractions for single-use code

  - No "flexibility" and "configurability" that wasn't reqeusted

  - If you write 200 lines and it could be 50, rewrite it

- When adding new methods, consider whether existing methods can be reused

  - Avoid overusing comments; add comments to explain "why", not "what". If function or variable names clearly convey meaning, no additional comments are needed

  - Do not generate test cases for requirement code without explicit consent

  - Avoid excessive blank lines in code

- When editing existing code:

  - Don't "improve" adjacent code, comments, or formatting

  - Don't refactor things that aren't broken

  - Match existing style, even if you'd do it differently

  - If you notice unrelated dead code, mention it — don't delete it

- When your changes create orphans:

  - Remove imports/variables/functions that **YOUR** changes made unused

  - Don't remove pre-existind dead code unless asked

## Content Output Standards
- Use Mermaid for all flowcharts
