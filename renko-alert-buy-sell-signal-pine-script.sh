//@version=2
study("RENKO MAGIC ALERT")  // Credit to CryptoJoncis for reusing some of his code
longCondition = close > open[1] and close[1] < open[2]
shortCondition = close < open[1] and close[1] > open[2]
plot(shortCondition, 'sell', color=red, linewidth=1)
plot(longCondition, 'long', color=blue, linewidth=1)
