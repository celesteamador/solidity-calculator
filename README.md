# solidity-calculator
Calculator in Solidity.

This calculator uses modifiers, events and functions to do the following:
- Addition
- Substraction
- Multiplication
- Division

The modifiers are applied only to the multiplication and the division.
- Multiplication: The modifier checks whether the multiplication is equal to 0 or one of the multipliers is equals to 1. If so, the operation doesn't proceed.
- Division: The modifier checks whether the reminder of the division is 0 or not in order to proceed with the operation.

I implemented internal functions for the logic of each external function. The only pure function is the substraction.

Here are some pictures of its functionality once deployed locally:
Addition:
<img width="1918" height="1103" alt="Screenshot From 2026-02-23 14-39-17" src="https://github.com/user-attachments/assets/679ec352-9c77-447a-b499-b87711fb87bc" />

Division:
<img width="1918" height="1103" alt="Screenshot From 2026-02-23 14-39-37" src="https://github.com/user-attachments/assets/62bd3f59-d0fe-4595-8bac-19af72723d13" />

Multiplication:
<img width="1918" height="1103" alt="Screenshot From 2026-02-23 14-50-55" src="https://github.com/user-attachments/assets/87b5bd41-7b87-4c61-a2fc-15466f725abb" />

Substraction:
<img width="1918" height="1103" alt="Screenshot From 2026-02-23 14-51-12" src="https://github.com/user-attachments/assets/d67ac601-e9cc-475d-b081-0fb4e1fe46e7" />


