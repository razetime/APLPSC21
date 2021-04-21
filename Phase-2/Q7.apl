:Namespace Q7
⍝ Finding subsequences.

⍝ Part 1:
sseq ← {
    seqs ← ⊃{⊃,/↓⍺∘.,⍵}/⍸¨↓⍵∘.=⍺ ⍝ find all index combos
    seqs ← seqs/⍨{∧/2</⍵}¨seqs  ⍝ Check if in order
    0=≢seqs:0⍬
    1(⊃seqs)
}⍥,

⍝ Part 2:

:EndNamespace
