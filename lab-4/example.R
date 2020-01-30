# Data frames are lists of vectors
iris_df <- as.data.frame(iris)

View(iris)
typeof(iris_df)

# List of specified column/colums
sepal_length_only <- iris_df[1]
typeof(sepal_length_only)
View(sepal_length_only)
is.vector(sepal_length_only)

sepal_length_column <- iris$Sepal.Length
typeof(sepal_length_column)
View(sepal_length_column)
is.vector(sepal_length_column)
# Same as: iris[["Petal.Length"]]



find_length_width <- iris_df[1:2]
typeof(find_length_width)
View(find_length_width)

# Get specific element 
iris_df[8, "Species"]

#All frequencies
petal_width_versicolor <- iris_df[iris_df$Species == "versicolor", "Petal.Width"]
petal_width_versicolor
is.vector(petal_width_versicolor)

# Get all Frequencies of specific class 
p_w_v_dollar <- iris_df[iris_df$Species == "versicolor", ]$Petal.Width
p_w_v_dollar
is.vector(p_w_v_dollar)

# Get all ROWS as a Vector 
find_width_comma <- iris_df[ ,"Petal.Width"]
View(find_width_comma)
typeof(find_width_comma)

# Get all COLUMNS of a particular row
eigth_row <- iris_df[8, ]
eigth_row
typeof(eigth_row)
is.data.frame(eigth_row)

# Get all COLUMNS using a filter 
all_virginica <- iris_df[iris_df$Species == "virginica", ]
View(all_virginica)
is.data.frame(all_virginica)
typeof(all_virginica)


#########################################################


# RETURN EARLY

a_big_long_function <- function(a, b, c) {
  negative_b <- -(b)
  b2 <- b * b
  step_one <- 4 * a * c
  a2 <- 2*a
  sqrt_inside <- sqrt((b2 - step_one))
  numerator1 <- negative_b + sqrt_inside
  numerator2 <- negative_b - sqrt_inside
  ans1 <- numerator1/a2
  ans2 <- numerator2/a2
  return(paste(ans1, "or", ans2))
}

a_big_long_function(1,4,3)