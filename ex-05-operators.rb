#!/usr/bin/ruby 

#Arithmetic Operators

puts 3 + 12         # 15
puts 17 - 2         # 15
puts 3 * 5          # 15
puts 45 / 3         # 15
a = 5
puts a = a + 10     # 15 
puts a += 2 - 2     # 15
puts a -= 2 - 2     # 15

http://stackoverflow.com/questions/21060234/ruby-operator-precedence-table

An operator is a token that represents an operation (such as addition or comparison) to be performed on one or more operands. The operands are expressions, and operators allow us to combine these operand expressions into larger expressions. (Ref)

N = arity = The number of operands the operator operates on. (Ref)

A = associativity = The order of evaluation when the same operator (or operators with the same precedence) appear sequentially in an expression. The value L means that expressions are evaluated from left to right. The value R means that expressions are evaluated from right to left. And the value N means that the operator is nonassociative and cannot be used multiple times in an expression without parentheses to specify the evaluation order. (Ref)

M = definability = Ruby implements a number of its operators as methods, allowing classes to define new meanings for those operators. Column M of specifies which operators are methods. Operators marked with a Y are implemented with methods and may be redefined, and operators marked with an N may not. (Ref)

The following table is ordered according to descending precedence (highest precedence at the top).

N A M  Operator(s)            Description
- - -  -----------            -----------
1 R Y  ! ~ +                  boolean NOT, bitwise complement, unary plus
                              (unary plus may be redefined from Ruby 1.9 with +@)

2 R Y  **                     exponentiation
1 R Y  -                      unary minus (redefine with -@)

2 L Y  * / %                  multiplication, division, modulo (remainder)
2 L Y  + -                    addition (or concatenation), subtraction

2 L Y  << >>                  bitwise shift-left (or append), bitwise shift-right
2 L Y  &                      bitwise AND

2 L Y  | ^                    bitwise OR, bitwise XOR (exclusive OR)
2 L Y  < <= >= >              ordering

2 N Y  == === != =~ !~ <=>    equality, pattern matching, comparison
                              (!= and !~ may not be redefined prior to Ruby 1.9)

2 L N  &&                     boolean AND
2 L N  ||                     boolean OR

2 N N  .. ...                 range creation (inclusive and exclusive)
                              and boolean flip-flops

3 R N  ? :                    ternary if-then-else (conditional)
2 L N  rescue                 exception-handling modifier

2 R N  =                      assignment
2 R N  **= *= /= %= += -=     assignment
2 R N  <<= >>=                assignment
2 R N  &&= &= ||= |= ^=       assignment

1 N N  defined?               test variable definition and type
1 R N  not                    boolean NOT (low precedence)
2 L N  and or                 boolean AND, boolean OR (low precedence)
2 N N  if unless while until  conditional and loop modifiers
