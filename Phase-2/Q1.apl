:Namespace Q1
⍝ Bowling!

⍝ Helper function to get all matches
    RollNumbers←('-',(1↓⎕D),'X/')∘⍳
    Sets←{ ⍝ X is the only thing that doesn't take up two characters, so pad and split.
        w←('X'⎕R'XX')⍵
        w⊂⍨(18⍴1 0),((≢w)-18)↑1
    }


⍝ Now, in order to be valid:
⍝ 1. Rank must be 1 → 1 = ≢⍴⍵
⍝ 2. No. of sets = 10
⍝ 3.
ValidGame ← {
    1≠≢⍴⍵:0
    11>≢⍵:0 ⍝ Minimum game size 11: XXXXXXXXX11
    sets←Sets ⍵
    10≠≢sets:0
    ({ ⍝ check the last set
        ≢⍵<2:0
        ∧/(2↑⍵)∊⎕D:2=≢⍵ ⍝ no bonus without the below conditions
        revert ← ('XX'⎕R,'X')⍵
        'XX'≡2↑⍵:(3=≢revert)∧∧/(2↓⍵)∊⎕D,'X-' ⍝ Strike - 2 bonus rolls
        ((⊃⍵)∊⎕D)∧'/'=2⊃⍵:(3=≢revert)∧(⊃⌽⍵)∊⎕D,'X-' ⍝ spare - 1 bonus roll
        0
    }⊃⌽sets) ∧ ∧/{
        'XX'≡⍵:1
        ((⊃⍵)∊⎕D)∧'/-'∊⍨⊃⌽⍵:1
        ∧/⍵∊⎕D:10≥+/⍎¨⍵
        0
    }¨¯1↓sets
}
⍝ Part 2: (TODO)
:EndNamespace
