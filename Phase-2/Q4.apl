:Namespace Q4
⍝ Going to (Local) Extremes

⍝ Current idea:
⍝ Get deltas, remove zeroes and get indices
⍝ get overlapping pairs(inflection in slope)
⍝ create range for each pair and check equality of signs on both ends
⍝ filter out those ranges, then get indices for each where self = middle elem?
⍝ Then average each group of indices.
⍝ So far, works fine for all tests.

MinMax←{
	w←⍵,3/⊃⌽⍵  ⍝ extend the array to prevent errors
	⍬≡w:⍬      ⍝ 2-/ fails on ⍬
	∧/0=2-/w:⍬
	a←⍵
	ranges←{((⊃⍵)-1)↓⍳1+⍵[2]}¨2,/⍸0≠2-/⍵
	valid←ranges/⍨{{⍵[≢⍵]=-⊃⍵}×2-/a[⍵]}¨ranges
	{(+/÷≢)⍵/⍨{⍵=⍵[⌈.5×≢⍵]}a[⍵]}¨valid
}

:EndNamespace