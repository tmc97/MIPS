# Russian Peasant Multiplication
One of many ways to calculate the product of two integers. With Russian Peasant Multiplication, you only need to double and halve numbers. 
## Rules
<ul>
<li>Write each number at the head of a column.</li>
<li>Double the number in the first column, and halve the number in the second column.</li>
<li>If the number in the second column is odd, divide it by two and drop the remainder.</li>
<li>If the number in the second column is even, cross out that entire row.</li>
<li>Keep doubling, halving, and crossing out until the number in the second column is 1.</li>
<li>Add up the remaining numbers in the first column. The total is the product of your original numbers.</li>
</ul>

## Example
Let's try: 57 * 86
57 will be in the first column, the column that gets doubled, and 86 in the second, the column that gets halved.

|First Column|Second Column|
|:-:|:-:|
|57|86|

Since 86 is even, we cross this first row out.

| First Column | Second Column |
| :-: | :-: |
| ~~57~~ | ~~86~~ |

Again, we double the first column and divide the second in half, crossing out the row when the second column is even.

| First Column | Second Column |
| :-: | :-: |
| ~~57~~ | ~~86~~ |
| 114 | 43 |
| 228 | 21 |
| ~~456~~ | ~~10~~ |
| 912 | 5 |
| ~~1824~~ | ~~2~~ |
| 3648 | 1 |

Now, we add up everything left in the first column.

| Total |
| :-: |
| 114 |
| 228 |
| 912 |
| <u>+3648</u> |
| 4902 |

Example and description from:
http://mathforum.org/dr.math/faq/faq.peasant.html
