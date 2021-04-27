:Namespace Q6
⍝ Battleship
⍝ Pretty fun game.

⍝ Task 1
⍝ operator which validates a battle
⍝ (Who are we to determine the validity of battles? smh)
⍝ TODO: working with the empty and zero edge cases
ValidBoard←{
	⍝ Reference:
	⍝ ⍺⍺ → board size
	⍝ ⍵⍵ → fleet sizes in order
	⍝ ⍵ → board as matrix
		m←⌈/,⍵ ⍝ max element
		fleets←⍸¨⍵∘=¨⍳m ⍝ get dem ships
		(m=0)∧0=≢fleets:1
⍝ ⍺⍺≡⍴⍵ shape match?
⍝ Reminder to self that all the points can't be the same for the above since we're taking distinct pts from a matrix.
⍝ ⍵⍵≡≢¨ships check ship lengths
⍝ Points have to be collinear and 1 unit away from each other.
		(⍺⍺≡⍴⍵)∧(⍵⍵≡≢¨fleets)∧∧/{2>≢⍵:0⋄∧/0 1∘=¨{⍵[⍋⍵]}¨|2-/⍵}¨fleets
}

:EndNamespace
