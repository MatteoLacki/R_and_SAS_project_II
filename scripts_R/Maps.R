mapa1<-readShapePoly("G:/Skrypty/Sweave/Projekt 2/R_and_SAS_project_II/data/POL_adm/POL_adm1.shp")

dane$wojewodztwo <- factor(dane$wojewodztwo)
dane$wojewodztwo <- factor(dane$wojewodztwo, levels = sort(levels(dane$wojewodztwo)))
levels(dane$wojewodztwo) <- sort(levels(mapa$VARNAME_1))
dane$wojewodztwo <- factor(dane$wojewodztwo, levels = levels(mapa$VARNAME_1))

sr.dochody <- sapply(levels(dane$wojewodztwo), function(x) mean(dane$dochod[dane$wojewodztwo == x]))
sr.dochody.spodziewane <- sapply(levels(dane$wojewodztwo), function(x) mean(dane$spodziewany_dochod[dane$wojewodztwo == x]))
roznica <- round(sr.dochody.spodziewane - sr.dochody)

mapa$roznica <- sapply(mapa$VARNAME_1, function(x) roznica[x])

brks <- c(min(roznica), 100, 500, 1000, max(roznica))
kolory <- brewer.pal(4, "Blues")

lglbls <- gsub("under", "pon.", leglabs(brks))
lglbls <- gsub("over", "pow.", lglbls)

par(xpd=TRUE, mar=c(5,3,2,3))
plot(mapa, col=kolory[findInterval(mapa$roznica, brks, all.inside=TRUE)], axes=F, bty='L')
legend(x="bottom", inset=0, legend=lglbls, fill=kolory, cex=0.7, title="Różnica pomiędzy spodziewanym a osiaganym dochodem w PLN", horiz=TRUE)