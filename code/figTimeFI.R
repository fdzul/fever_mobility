



library(mvtnorm)

f = matrix(rep(seq(min(partLoc$absolute_frequency), 2, length.out = 1000), 1000), 1000, 1000)
d = t(matrix(rep(seq(min(partLoc$absolute_duration), 1, length.out = 1000), 1000), 1000, 1000))
total.time = f * d



durn.DEN.Child = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'DEN Child']
freq.DEN.Child = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'DEN Child']
par = coef(timeFI.models$F3.C4$DEN.Child)
surf.DEN.Child =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.DEN.Child[total.time > 1] = -1


durn.DEN.Homemaker = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'DEN Homemaker']
freq.DEN.Homemaker = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'DEN Homemaker']
par = coef(timeFI.models$F3.C4$DEN.Homemaker)
surf.DEN.Homemaker =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.DEN.Homemaker[total.time > 1] = -1
surf.DEN.Homemaker[surf.DEN.Homemaker > 0] =
  surf.DEN.Homemaker[surf.DEN.Homemaker > 0] *
  max(surf.DEN.Child) / max(surf.DEN.Homemaker)


durn.DEN.Other = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'DEN Other']
freq.DEN.Other = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'DEN Other']
par = coef(timeFI.models$F3.C4$DEN.Other)
surf.DEN.Other =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.DEN.Other[total.time > 1] = -1


durn.DEN.Student = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'DEN Student']
freq.DEN.Student = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'DEN Student']
par = coef(timeFI.models$F3.C4$DEN.Student)
surf.DEN.Student =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.DEN.Student[total.time > 1] = -1

durn.FEV.Child = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'FEV Child']
freq.FEV.Child = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'FEV Child']
par = coef(timeFI.models$F3.C4$FEV.Child)
surf.FEV.Child =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.FEV.Child[total.time > 1] = -1

durn.FEV.Homemaker = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'FEV Homemaker']
freq.FEV.Homemaker = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'FEV Homemaker']
par = coef(timeFI.models$F3.C4$FEV.Homemaker)
surf.FEV.Homemaker =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.FEV.Homemaker[total.time > 1] = -1

durn.FEV.Other = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'FEV Other']
freq.FEV.Other = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'FEV Other']
par = coef(timeFI.models$F3.C4$FEV.Other)
surf.FEV.Other =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.FEV.Other[total.time > 1] = -1

durn.FEV.Student = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'FEV Student']
freq.FEV.Student = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'FEV Student']
par = coef(timeFI.models$F3.C4$FEV.Student)
surf.FEV.Student =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.FEV.Student[total.time > 1] = -1

durn.Healthy.Child = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'NA Child']
freq.Healthy.Child = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'NA Child']
par = coef(timeFI.models$F3.C4$Healthy.Child)
surf.Healthy.Child =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.Healthy.Child[total.time > 1] = -1

durn.Healthy.Homemaker = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'NA Homemaker']
freq.Healthy.Homemaker = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'NA Homemaker']
par = coef(timeFI.models$F3.C4$Healthy.Homemaker)
surf.Healthy.Homemaker =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.Healthy.Homemaker[total.time > 1] = -1

durn.Healthy.Other = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'NA Other']
freq.Healthy.Other = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'NA Other']
par = coef(timeFI.models$F3.C4$Healthy.Other)
surf.Healthy.Other =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.Healthy.Other[total.time > 1] = -1

durn.Healthy.Student = partLoc$absolute_duration[paste(partLoc$pathogen,partLoc$category) == 'NA Student']
freq.Healthy.Student = partLoc$absolute_frequency[paste(partLoc$pathogen,partLoc$category) == 'NA Student']
par = coef(timeFI.models$F3.C4$Healthy.Student)
surf.Healthy.Student =
  matrix(dmvnorm(cbind(log(as.vector(f)), log(as.vector(d))),
                 c(par['freq.mean'], par['durn.mean']),
                 matrix(c(
                   par['freq.std'] ^ 2,
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   prod(par[c('freq.std', 'durn.std', 'corr')]),
                   par['durn.std'] ^ 2),
                   2, 2)),
         1000, 1000)
surf.Healthy.Student[total.time > 1] = -1





tiff(filename = '../output/freqDurn_FI.tiff', width = 960, height = 720)

par(mar = c(.5, 1, .5, 0), oma = c(4, 4, 4, 4))
layout(matrix(1 : 12, 3, 4, byrow = TRUE))


image(f[, 1], d[1, ], surf.Healthy.Child,
      zlim = range(surf.Healthy.Child[surf.Healthy.Child > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', cex = 1.5)
points(freq.Healthy.Child, durn.Healthy.Child, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.Healthy.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.Healthy.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.Healthy.Child)*mean(freq.Healthy.Child), digits = 2)), sep = ''),pos=2,cex=1)
mtext('School-age children',3,line=1)

image(f[, 1], d[1, ], surf.Healthy.Student,
      zlim = range(surf.Healthy.Student[surf.Healthy.Student > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.Healthy.Student, durn.Healthy.Student, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.Healthy.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.Healthy.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.Healthy.Student)*mean(freq.Healthy.Student), digits = 2)), sep = ''),pos=2,cex=1)
mtext('College students',3,line=1)

image(f[, 1], d[1, ], surf.Healthy.Homemaker,
      zlim = range(surf.Healthy.Homemaker[surf.Healthy.Homemaker > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.Healthy.Homemaker, durn.Healthy.Homemaker, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.Healthy.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.Healthy.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.Healthy.Homemaker)*mean(freq.Healthy.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Homemakers / Unemployed adults',3,line=1)

image(f[, 1], d[1, ], surf.Healthy.Other,
      zlim = range(surf.Healthy.Other[surf.Healthy.Other > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.Healthy.Other, durn.Healthy.Other, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.Healthy.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.Healthy.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.Healthy.Other)*mean(freq.Healthy.Other), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Afebrile',4,line=2)
mtext('Working adults',3,line=1)



image(f[, 1], d[1, ], surf.DEN.Child,
      zlim = range(surf.DEN.Child[surf.DEN.Child > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', cex = 1.5)
points(freq.DEN.Child, durn.DEN.Child, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.DEN.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.DEN.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.DEN.Child)*mean(freq.DEN.Child), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Duration of visits (days)',2,line=3)

image(f[, 1], d[1, ], surf.DEN.Student,
      zlim = range(surf.DEN.Student[surf.DEN.Student > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.DEN.Student, durn.DEN.Student, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.DEN.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.DEN.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.DEN.Student)*mean(freq.DEN.Student), digits = 2)), sep = ''),pos=2,cex=1)

image(f[, 1], d[1, ], surf.DEN.Homemaker,
      zlim = range(surf.DEN.Homemaker[surf.DEN.Homemaker > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.DEN.Homemaker, durn.DEN.Homemaker, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.DEN.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.DEN.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.DEN.Homemaker)*mean(freq.DEN.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)

image(f[, 1], d[1, ], surf.DEN.Other,
      zlim = range(surf.DEN.Other[surf.DEN.Other > -1]),
      xlab = '', ylab = '', main = '', xaxt = 'n', yaxt = 'n', cex = 1.5)
points(freq.DEN.Other, durn.DEN.Other, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.DEN.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.DEN.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.DEN.Other)*mean(freq.DEN.Other), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Febrile, DENV+',4,line=2)



image(f[, 1], d[1, ], surf.FEV.Child,
      zlim = range(surf.FEV.Child[surf.FEV.Child > -1]),
      xlab = '', ylab = '', main = '', cex = 1.5)
points(freq.FEV.Child, durn.FEV.Child, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.FEV.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.FEV.Child), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.FEV.Child)*mean(freq.FEV.Child), digits = 2)), sep = ''),pos=2,cex=1)

image(f[, 1], d[1, ], surf.FEV.Student,
      zlim = range(surf.FEV.Student[surf.FEV.Student > -1]),
      xlab = '', ylab = '', main = '', yaxt = 'n', cex = 1.5)
points(freq.FEV.Student, durn.FEV.Student, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.FEV.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.FEV.Student), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.FEV.Student)*mean(freq.FEV.Student), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Frequency of visits (times per day)',1,at=2.05,line=3)

image(f[, 1], d[1, ], surf.FEV.Homemaker,
      zlim = range(surf.FEV.Homemaker[surf.FEV.Homemaker > -1]),
      xlab = '', ylab = '', main = '', yaxt = 'n', cex = 1.5)
points(freq.FEV.Homemaker, durn.FEV.Homemaker, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.FEV.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.FEV.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.FEV.Homemaker)*mean(freq.FEV.Homemaker), digits = 2)), sep = ''),pos=2,cex=1)

image(f[, 1], d[1, ], surf.FEV.Other,
      zlim = range(surf.FEV.Other[surf.FEV.Other > -1]),
      xlab = '', ylab = '', main = '', yaxt = 'n', cex = 1.5)
points(freq.FEV.Other, durn.FEV.Other, cex = .25, pch = 20, col = rgb(0, 0, 0, .6))
text(2, .96,
     paste('Mean duration = ', as.character(formatC(mean(durn.FEV.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .91,
     paste('Mean frequency = ', as.character(formatC(mean(freq.FEV.Other), digits = 2)), sep = ''),pos=2,cex=1)
text(2, .86,
     paste('Mean time = ', as.character(formatC(mean(durn.FEV.Other)*mean(freq.FEV.Other), digits = 2)), sep = ''),pos=2,cex=1)
mtext('Febrile, DENV-',4,line=2)


dev.off()