:Namespace Q2
⍝ Q2: Make a List
⍝ Time to use my favourite idiom: (≠⊆⊢)!
⍝ The page numbers can be partitioned at a digit - minus junction
⍝ Regex equivalent: \d-
⍝ then the rest is simply generating each range.

splitRange←{⍎¨⍵⊆⍨~0,2{(⍵∊'-¯')∧⍺∊⎕D}/⍵}

⍝ Similar to dyadic … in Dyalog Extended
range←{
    i←⍵-⍺
    ⍺+(×i)×0,⍳|i
}/
MakeList←{⊃,/⊃¨range¨splitRange¨',' (≠⊆⊢) ⍵}
:EndNamespace
