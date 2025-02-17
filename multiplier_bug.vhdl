```vhdl
ENTITY multiplier IS
  GENERIC (width : INTEGER := 8);
  PORT (a, b : IN  UNSIGNED(width-1 DOWNTO 0);
       product : OUT UNSIGNED(2*width-1 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
BEGIN
  product <= a * b;
END ARCHITECTURE;
```
Uncommon error:  The above code will likely compile without error but might produce unexpected results for larger values of 'width'. The reason is the implicit conversion of unsigned numbers and the potential for overflow during the multiplication operation.  While VHDL will handle the multiplication, it might not correctly handle the assignment if the result exceeds the bit-width of the 'product' signal. For example, if width = 8, multiplying two large 8-bit numbers can result in a 16-bit number that is truncated when assigned to a 15-bit signal.