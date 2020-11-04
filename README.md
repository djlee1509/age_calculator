# age_calculator

### method 1: age
Returns an Integer representing the user's current age.

Logic:-
- if the today's date has not passed user's birth date then,
age = (this year - date of birth year - 1).
- If today's date has passed user's birth date then,
age = (this year - date of birth year).



### method 2: next_birthday
Returns a date object for the user's next birthday.

Logic:
- If age < (difference between this year and D.O.B year) then,
year = this year
- If same, year = next year (this year + 1)


