myDouble <- function (x) {
  x * 2
}


v <- c(1:100)

vv <- myDouble(v); vv; v

myTriple <- function(x) x * 3; myTriple(v)

cube <- function(x, power = 3) x ** power; cube(2); cube(2, 4); cube(2, power = 8)

rollDices <- function () sum(sample(1:6, 2))

print(rollDices())

