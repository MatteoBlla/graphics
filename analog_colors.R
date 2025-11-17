library(colorspace)

analog.colors <- list()
for (i in 1:nrow(p)) {
  h <- as(hex2RGB(p$palette[i]), "polarLUV")@coords[1, "H"] # estrai tonalità
  analog.colors[[i]] <- hcl(h + c(-100,-60,60,100), 80, 70) # tonalità ± 60,100 gradi
}

names(analog.colors) <- p$palette
analog.colors