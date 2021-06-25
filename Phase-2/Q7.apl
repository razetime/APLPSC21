	:Namespace Q7
⍝ Finding subsequences.

⍝ Part 1:
sseq ← {
    seqs ← ⊃{⊃,/↓⍺∘.,⍵}/⍸¨↓⍵∘.=⍺ ⍝ find all index combos
    seqs ← seqs/⍨{∧/2</⍵}¨seqs  ⍝ Check if in order
    0=≢seqs:0⍬
    1(⊃seqs)
 }
    sseq ← sseq⍥,

⍝ Part 2:
    ⍝ Builds a comparison matrix. Each row is converted to indices.
    ⍝ join each index with the ones greater than it. reduce each row this way.
    ⍝ then, take the first sequence with longest length.
    lcsq←{
      seqs←{⍵,⍵∘{⍵,¨(⍺>⍵)/⍺}¨⍺}/⍸¨↓⍺∘.=⍵
      ⊃seqs[⍒≢¨seqs]
    }
    
    ⍝ Test Suite:
    'AACCTTGG' lcsq 'ACACTGTGA' ⍝ AACTTG, ACCTTG, ACCTGG are also valid results 
    ⍝ AACTGG 
    'ACGTACGTGACG' lcsq '' ⍝ returns empty

    'ACGTACGTGACG' lcsq 'XYZZYX' ⍝ returns empty

:EndNamespace
