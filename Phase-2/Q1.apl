:Namespace Q1
⍝ Bowling! (TODO)

⍝ Helper function to get all matches
    getRolls←'(\d|-)(\d|-|/)|X'⎕S'&'
    rollNumbers←('/-',1↓⎕D,'X')∘⍳

⍝ Now, in order to be valid:
⍝ ∘ Rank must be 1 → 1 = ≢⍴⍵
⍝ ∘ The Rolls concatenated must match the original string → ⍵ = ⊃,/getRolls ⍵
⍝ ∘ The rolls must contain only valid chars i.e. digits, '/', '-', 'X'
⍝ ∘ If the last roll contains a / or X, then a bonus roll must be counted in the previous step.
⍝ ∘ All roll scores must be under 10

    ∇ result←ValidGame text
      ;rolls;result
      rolls←getRolls text
     ⍝ ⊃⌽ used here to prevent errors with scalars
      :If 'X/'∊⍨⊃⌽⊃⌽rolls
          rolls,←⊃⌽text
      :EndIf
      result←(text≡⊃,/rolls)∧(1=≢⍴text)∧∨/text∊⎕D,'/X-'
    ∇
:EndNamespace
