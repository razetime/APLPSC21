:Namespace Q2
⍝ Q2: Make a List
⍝ Time to use my favourite idiom: (≠⊆⊢)!
⍝ The page numbers can be partitioned at a digit - minus junction
⍝ Regex equivalent: \d-
⍝ then the rest is simply generating each range.


⍝ Similar to dyadic … in Dyalog Extended
Range←{
    i←⍵-⍺
    ⍺+(×i)×0,⍳|i
}
MakeList←{
    0=≢⍵:⍬ ⍝ Handle empty case
    ⊃,/⊃¨Range/¨{⍎¨⍵⊆⍨~0,2{(⍵∊'-¯')∧⍺∊⎕D}/⍵}¨','(≠⊆⊢),⍵
}
:EndNamespace
