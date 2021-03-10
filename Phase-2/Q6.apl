:Namespace Q6
⍝ Battleship
⍝ Pretty fun game.

⍝ Task 1
⍝ operator which validates a battle
⍝ (Who are we to determine the validity of battles? smh)
⍝ TODO: work on (3 3 ValidBoard ⍬) ⎕←3 3⍴0 (zero-only)
ValidBoard←{
	m←⌈/,⍵ ⍝ max element
	ships←⍸¨⍵∘=¨⍳m ⍝ get dem ships
	x y←↓⍉↑ships
	allEqual←{1=≢∪⍵} ⍝ exactly 1 distinct element?
	differBy1←{⍵≡(⌊/⍵)↓⍳⌈/⍵} ⍝ matches range min..max?
	⍝ ⍺⍺≡⍴⍵ shape match?
	⍝ (((allEqual y) ∧ differBy1 x)∨(allEqual x) ∧ differBy1 y) check the x and y values for straight line
	⍝ Reminder to self that all the points can't be the same for the above since we're taking distinct pts froma matrix.
	⍝ can definitely be improved, if I can find a way to do the single point case.
	⍝ ⍵⍵≡≢¨ships check ship lengths
	(⍺⍺≡⍴⍵)∧(((allEqual y) ∧ differBy1 x)∨(allEqual x) ∧ differBy1 y)∧⍵⍵≡≢¨ships
}
	
:EndNamespace