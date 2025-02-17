```vhdl
ENTITY multiplier IS
  GENERIC (width : INTEGER := 8);
  PORT (a, b : IN  UNSIGNED(width-1 DOWNTO 0);
       product : OUT UNSIGNED(2*width-1 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
BEGIN
  product <= a * b;  -- Explicitly sized to avoid overflow
END ARCHITECTURE;
```
The solution is simply to explicitly define the width of the `product` signal to be twice the width of the input signals.  This guarantees that there will be enough bits to accommodate the largest possible product, preventing overflow and truncation.