//@version=3
study("Renko Alerts", overlay=true)

//Define block open and block close
BlockOpen = open
BlockClose = close


Entry() => BlockClose[0] > BlockOpen[2] and BlockClose[2] < BlockOpen[4]
Exit() => BlockClose[0] < BlockOpen[2] and BlockClose[2] > BlockOpen[4]
No_Trade() => Entry() == Exit()

alertcondition(Entry(), title='Alert on ENTRY', message='LONG')
alertcondition(Exit(), title='ALert on Exit', message='SHORT')

plotchar(Entry(),char="⇧",location=location.belowbar,color=green,textcolor=green,size=size.tiny)
plotchar(Exit(),char="⇩",location=location.abovebar, color=red,textcolor=red,size=size.tiny)
