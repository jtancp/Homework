# Problem 1: Code Jet; Edits Michelle (i - 1); Comments Michelle
function NPV(c, r)
    sum = 0
    for i in 1:length(c)
        sum += c[i] / (1 + r) ^ (i - 1)
    end
    return sum
end

#Problem 2: Code from above; Edits Jet (Structure); Comments Michelle
function NFV_end(c, r)
    sum = 0
    for i in 1:length(c)
        sum += c[i] * (1 + r) ^ (length(c) - i)
    end
    return sum
end

#Problem 3: Code from above; Edits Michelle (r[i]); Comments Michelle
function NFV_end(c, r)
    sum = 0
    for i in 1:length(c)
        sum += c[i]*(1+r[i])^(length(c)-i)
    end
    return sum
end

#Problem 4: Code Jet; Comments Michelle
function expense(x)
    x <= 25 ? 0.8*x : x <= 250 ? 0.7*x : 0.6*x
end

#Problem 5: Code Jet & Michelle; Comments Michelle
using Plots 
plot(0:300, expense, label = "Cost", xlabel = "Pounds of Flour", ylabel = "Cost in USD", title = "Cost of Flour")

#Problem 6: Code Michelle; Edits Jet (return funtion to make #7 work); Comments Michelle
function salary(w, L)
    if w < 0
        return "please enter a non-negative hourly wage"
    elseif L < 0
        return "please enter a non-negative number of hours worked"
    elseif L > 12
        return "please enter a number of hours worked no greater than 12"
    else
        return w*L + (L > 8 ? (L-8)*w*0.5 : 0)
    end
end

#Problem 7: Code Michelle; Edits Jet (defining L); Comments Michelle
w = 20 
using Plots 
plot(0:12, L -> salary(w, L), label = "Salary", xlabel = "Hours Worked", ylabel = "Salary in USD", title = "Salary of a Worker")

