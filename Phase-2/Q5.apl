:Namespace Q5
⍝ Lexicographical ordering
⍝ Part 1:
	⍝ Works perfectly with all edge cases and base but hacky and inefficient
	lexf←{↓(,⍵)[↑⍵∘{⍵/⍨∧/¨⍵≤≢,⍺}∪⍺↑¨,∘.,⍣(0⌈⍺-1)⍨⍳≢⍵]}
	⍝ Base decoding method:
	lexf←{↓⍵[⍉1+(⍺/≢⍵)⊤¯1+⍳⍺*⍨≢⍵]}
⍝ Part 2:
	⍝ Using APLcart powerset
	lexv←{⍵∘{⍵[⍺∘⍳¨⍵]}⌿∘⍵¨↓⌽⍉2⊥⍣¯1⊢¯1+⍳2*≢⍵}
⍝ interface A {
⍝ public static void main(String[] args){
⍝     char [] letters = new char [] {'0','a','b','c','1','2','3'};
⍝     int max_length = 4;

⍝     int b = letters.length - 1;  // base to convert to
⍝     int n = 0;
⍝     for (int k = 0; k < max_length; k++)
⍝         n = (n*b)+b;  // number of combinations

⍝     int remainder;
⍝     for (int i = 1; i <= n; i++) {
⍝         int current = i;  // m and q_n in the formula
⍝         String combination = "";
⍝         do {
⍝             remainder = current % b;

⍝             if (remainder == 0) {
⍝                 combination += letters[b];
⍝                 current = current/b - 1;
⍝             } else {
⍝                 combination += letters[remainder];
⍝                 current = current/b;
⍝             }
⍝         } while (current > 0);
⍝         System.out.println(combination);
⍝     }

⍝ }
⍝ }
:EndNamespace