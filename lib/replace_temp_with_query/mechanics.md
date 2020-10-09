## Mechanics

Here is the simple case:

1. Extract the right-hand side of the assignment into a method.
Initially mark the method as private. You may find more use for it later, but you can easily relax the protection then.
Ensure the extracted method is free of side effects—that is, it does not modify any object. If it is not free of side effects, use Separate Query from Modifier.

2. Test.

3. Inline Temp on the temp.
