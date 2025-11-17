library(colorspace)

analog.colors <- setNames(
  lapply(p$palette, function(col) {
    h <- as(hex2RGB(col), "polarLUV")@coords[1, "H"]  # tonalità
    hcl(h + c(-100, -60, 60, 100), 80, 70)
  }),
  p$palette
)

analog.colors
