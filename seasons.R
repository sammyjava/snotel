##
## plot the snow depth overlying each season
##

library(RColorBrewer)
n = 19

qual_col_pals = brewer.pal.info[brewer.pal.info$category == 'qual',]
color = unlist(mapply(brewer.pal, qual_col_pals$maxcolors, rownames(qual_col_pals)))

## color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]

## ## use in order
## cols = color

## ## random selection
## cols = sample(color, n)

plot( snotel.2001$Date-as.Date("2001-09-30"), snotel.2001$Depth, col=cols[1], type="l",
     xlim=c(0,150), ylim=c(0,80),
     xlab="Days from 10/1", ylab="Snow Depth (in)",
     main="Snotel 922: Santa Fe 11445 ft")
lines(snotel.2002$Date-as.Date("2002-09-30"), snotel.2002$Depth, col=cols[2])
lines(snotel.2003$Date-as.Date("2003-09-30"), snotel.2003$Depth, col=cols[3])
lines(snotel.2004$Date-as.Date("2004-09-30"), snotel.2004$Depth, col=cols[4])
lines(snotel.2005$Date-as.Date("2005-09-30"), snotel.2005$Depth, col=cols[5])
lines(snotel.2006$Date-as.Date("2006-09-30"), snotel.2006$Depth, col=cols[6])
lines(snotel.2007$Date-as.Date("2007-09-30"), snotel.2007$Depth, col=cols[7])
lines(snotel.2008$Date-as.Date("2008-09-30"), snotel.2008$Depth, col=cols[8])
lines(snotel.2009$Date-as.Date("2009-09-30"), snotel.2009$Depth, col=cols[9])
lines(snotel.2010$Date-as.Date("2010-09-30"), snotel.2010$Depth, col=cols[10])
lines(snotel.2011$Date-as.Date("2011-09-30"), snotel.2011$Depth, col=cols[11])
lines(snotel.2012$Date-as.Date("2012-09-30"), snotel.2012$Depth, col=cols[12])
lines(snotel.2013$Date-as.Date("2013-09-30"), snotel.2013$Depth, col=cols[13])
lines(snotel.2014$Date-as.Date("2014-09-30"), snotel.2014$Depth, col=cols[14])
lines(snotel.2015$Date-as.Date("2015-09-30"), snotel.2015$Depth, col=cols[15])
lines(snotel.2016$Date-as.Date("2016-09-30"), snotel.2016$Depth, col=cols[16])
lines(snotel.2017$Date-as.Date("2017-09-30"), snotel.2017$Depth, col=cols[17])
lines(snotel.2018$Date-as.Date("2018-09-30"), snotel.2018$Depth, col=cols[18])
lines(snotel.2019$Date-as.Date("2019-09-30"), snotel.2019$Depth, col=cols[19], lw=5)

legend(x="topleft", legend=2001:2019, text.col=cols, cols, pch="-")
