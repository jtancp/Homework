# Problem 1: Code Jet; Edits Michelle (i - 1); Comments Michelle
# define net present value function with cash flow vector and interest rate inputs
function NPV(c, r)
    # initialize sum object
    sum = 0
    # for each item in the cash flow vector, compute the present value and add it to sum
    for i in 1:length(c)
        sum += c[i] / (1 + r) ^ (i - 1)
    end
    # return the sum object
    return sum
end

#Problem 2: Code from above; Edits Jet (Structure); Comments Michelle
# define net future value function with cash flow vector and interest rate inputs
function NFV_end(c, r)
    # initialize the sum object
    sum = 0
    # for each item in the cash flow vector, compute the value and add it to sum
    for i in 1:length(c)
        sum += c[i] * (1 + r) ^ (length(c) - i)
    end
    # return the sum object
    return sum
end

#Problem 3: Code from above; Edits Michelle (r[i]); Comments Michelle
# define net future value function with cash flow vector and interest rate vector inputs
function NFV_end(c, r)
    # initialize the sum object
    sum = 0
    # for each item in the cash flow vector, compute the value with the corresponding rate and add it to sum
    for i in 1:length(c)
        sum += c[i] * (1 + r[i]) ^ (length(c) - i)
    end
    # return the sum object
    return sum
end

#Problem 4: Code Jet; Edits Michelle (<); Comments Michelle
# define the expense function with scalar input x
function expense(x)
    # if x is less than 25, less than 250, or above 250, compute x times 0.8, 0.7, and 0.6, respectively
    x < 25 ? 0.8 * x : x < 250 ? 0.7 * x : 0.6 * x
end

#Problem 5: Code Jet & Michelle; Comments Michelleaeuaoe
# call Plots package
using Plots
# create plot of expense function with x from 0 to 300
plot(0:300, expense, label = "Cost", xlabel = "Pounds of Flour", ylabel = "Cost in USD", title = "Cost of Flour")

#Problem 6: Code Michelle; Edits Jet (return funtion to make #7 work); Comments Michelle
# define salary function with wage and labour hours inputs
function salary(w, L)
    # if wage is less than 0, return an error message
    if w < 0
        return "please enter a non-negative hourly wage"
    # if hours are less than 0, return an error message
    elseif L < 0
        return "please enter a non-negative number of hours worked"
    # if wage is greater than 12, return an error message
    elseif L > 12
        return "please enter a number of hours worked no greater than 12"
    # if wage and hours are within range, multiply wage by hours and add overtime for hours over 8
    else
        return w * L + (L > 8 ? (L - 8) * w * 0.5 : 0)
    end
end

#Problem 7: Code Michelle; Edits Jet (defining L); Comments Michelle
# define wage at 20
w = 20 
# call Plots package
using Plots 
# create plot of salary function with x from 0 to 12
plot(0:12, L -> salary(w, L), label = "Salary", xlabel = "Hours Worked", ylabel = "Salary in USD", title = "Salary of a Worker")

