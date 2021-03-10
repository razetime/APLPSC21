:Namespace Q4
⍝ Going to (Local) Extremes
⍝ Pretty gamer task
⍝ Not properly done yet
⍝ need to do something with the indices

	MinMax←{0,0,⍨{x y z←⍵ ⋄ ((x<y)∧y≥z)∨(x≥y)∧y<z}¨3,/⍵}

:EndNamespace