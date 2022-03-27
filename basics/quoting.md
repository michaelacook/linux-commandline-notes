# Quoting
- Preserve input that contains special characters and/or spaces
- Spaces need to be contained within double quotes, or be preceded by an escape character `\`
  - ie. `echo this\ is\ a\ sentence\ with\ spaces`
- Single quotes preserve the literal value of every character contained within the quotes, including the escape character
  - Thus variables cannot be interpolated into strings that use single quotes
- Double quotes preserve the literal value of **most characters** contained within the quotes, exceptions include **$** (for variables), **'** (for single quoting), and **\** (for escaping a character)