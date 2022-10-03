### 1. A cash flow is a vector 𝑐 = (𝑐1, 𝑐2, ..., 𝑐𝑛) with positive entries representing payments to you, 
###and negative entities representing payments from you. We follow the convention in
###the BM book and consider, for 𝑖 = 1, ... , 𝑛, the payment 𝑐𝑖 to take place “at the start”
###of period 𝑖. Given a constant interest rate per period 𝑟 > 0, and a cash flow, write a
###function in Julia, call it NPV(c, r), that computes the present value of the cash flow,
###which is given by the expression

function NPV(c, r)
    PV = 0
    for i in length c
        PV = PV + c / (1 + r)^i
    end
    return PV


###2. Given a constant interest rate per period 𝑟 > 0 and a cash flow, write a function in Julia,
###NFV_end(c, r), that computes its net future value at the end of period n, which is given
###by the expression
###𝑁 𝐹 𝑉𝑒𝑛𝑑 = 𝑐1(1 + 𝑟)𝑛 + 𝑐2(1 + 𝑟)𝑛−1 + ⋯ + 𝑐𝑛(1 + 𝑟).

function NPV_end (c, r)
    NFV_end = 0
    for i in length c
        NFV_end = NFV_end + c(1 + r)^i
    end
    return NFV_end


###3. Repeat problem 2 above, but now assume that the interest is different from period to
###eriod, and known to be given, in any given period, by the vector 𝑟 = (𝑟1, ... , 𝑟𝑛). The
###interpretation is that, for 𝑖 = 1, ... , 𝑛, the amount 𝑐𝑖(1 + 𝑟𝑖) denotes the value, in period
### + 1, of payment 𝑐𝑖. Call the function NFV_end(c, r).


###4. A wholesaler sells you the flour you need to bake bread in your bakery. If you order less
###than 25 lbs. of flour, they sell you all the flour you order at 80 cents per pound. If you
###order 25 lbs. or more, but less than 250 lbs., they sell you all the flour you order at 70
###cents per pound. If you order 250 lbs. of flour or more, they sell you all the flour you
###order at 60 cents per pound. Write a function in Julia, expense(x), such that, given the
###number 𝑥 of lbs. of flour you want to order, the function returns the total cost of your
###order.


###5. Write code to plot the function expense in Julia, with 𝑥 on the horizontal axis and
###expense(x) on the vertical axis, with 𝑥 ranging from 0 to 300 lbs. (you may use the
###package Plots -or other Julia packages to this effect)
###6. You work for a company for a wage of 𝑤 > 0 per hour. They’re required, by law, to pay
##you “time and a half” for any hour (or fraction of an hour) you work in excess of eight
###hours per day. In any given day, the company is not allowed to hire you for more than
###12 hours. Given an hourly wage, 𝑤, and a number of hours worked in the day, 𝐿 > 0,
##write a function in Julia, call it salary(w,L), that returns how much money you make
#1


in the day. Have the function return the following messages (and then terminate) when
the following conditions hold:
• If 𝑤 <0, the function should return “please enter a non-negative hourly wage”.
• If 𝐿 < 0, the function should return “please enter a non-negative number of hours
worked”.
• If 𝐿 > 12, the function should return “please enter a number of hours worked no greater
than 12”.
7. Letting 𝑤 = 20 dollars per hour, write code to plot the function salary, with 𝐿 on the
horizontal axis and salary(20, L) on the vertical axis, with 𝐿 ranging from 0 to 12
hours.
The deliverable is a single .jl file that contains the answers to all the questions posed, num-
bered. Make sure to properly document your code to help the grader (and yourself!) under-
stand what you did.
You may submit this assignment in groups of up to three students. If you discuss the assign-
ment with other students in the class, and you need to properly attribute some of the ideas
you used in your assignment to them, please report in your assignment who you discussed the
assignment with, and what they helped you with. Give credit where credit is due.

