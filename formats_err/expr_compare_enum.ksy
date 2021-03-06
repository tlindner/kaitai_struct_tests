# expr_compare_enum: /seq/1/if: can't use comparison operator Gt on enums
meta:
  id: expr_compare_enum
seq:
  - id: foo
    type: u1
    enum: animal
  - id: bar
    type: u1
    if: 'foo > animal::cat'
enums:
  animal:
    1: cat
    2: dog
