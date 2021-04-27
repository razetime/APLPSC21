:Namespace Q5
⍝ Lexicographical ordering
⍝ Part 1:
	⍝ Works perfectly with all edge cases and base but hacky and inefficient
	lexf←{↓(,⍵)[↑⍵∘{⍵/⍨∧/¨⍵≤≢,⍺}∪⍺↑¨,∘.,⍣(0⌈⍺-1)⍨⍳≢⍵]}
	⍝ Base decoding method:
	lexf←{↓⍵[⍉1+(⍺/≢⍵)⊤¯1+⍳⍺*⍨≢⍵]}
⍝ Part 2:
	⍝ A bit more complex. I used recursion, but there's probably an iterative way to generate the indices.
	⍝ I am pretty happy with how this one turned out.
	lexv←{w←⍵ ⋄ Inner←{a←⍺ ⋄ ⍺=1:⍵ ⋄ ⊃,/{(⊂⍵),(a-1)Inner ⍵∘,¨w}¨⍵} ⋄ ⍺ Inner ,¨⍵}
:EndNamespace
