## Mechanics

1. Create a new method, and name it after the intention of the method (name it by what it does, not by how it does it).
If the code you want to extract is very simple, such as a single message or function call, you should extract it if the name of the new method reveals the intention of the code in a better way. If you can’t come up with a more meaningful name, don’t extract the code.

2. Copy the extracted code from the source method into the new target method.

3. Scan the extracted code for references to any variables that are local in scope to the source method.
These are local variables and parameters to the method.

4. See whether any temporary variables are used only within this extracted code.
If so, declare them in the target method as temporary variables.

5. Look to see whether any of these local-scope variables are modified by the extracted code.
If one variable is modified, see whether you can treat the extracted code as a query and assign the result to the variable con- cerned.
If this is awkward, or if there is more than one such variable, you can’t extract the method as it stands.
You may need to use Split Tempo- rary Variable and try again. You can eliminate temporary variables with Replace Temp with Query (see the discussion in the examples).

6. Pass into the target method as parameters local-scope variables that are read from the extracted code.

7. Replace the extracted code in the source method with a call to the target method.
If you moved any temporary variables over to the target method, look to see whether they were declared outside the extracted code.
If so, you can now remove the declaration.
8. Test.
