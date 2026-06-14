An introduction on accessing data in pandas has been provided. In this topic, we'll go more in-depth.

Selecting multiple dataframe columns

Selecting rows

Since the square brackets are reserved for selecting columns, you need to use an attribute to select rows. There are two ways to select rows in pandas: using the pandas' index with the attribute "loc" or using Python indexing with the attribute "iloc".

Selecting rows using panda indexing

Recall that the pandas' index contains unique labels for each row. Even if the DataFrame is re-ordered, the labels will still correspond to the same data. You can access a row by passing in the pandas' index into the "loc" attribute using the square brackets. For example, here we've retrieved the data on pet ownership for Massachusetts by using the ".loc" attribute, then passing in the string "Massachusetts" into the square brackets.

Selecting rows using Python indexing

Sometimes you may wish to ignore the labels and instead use the absolute position of the row. You can use Python indexing to get the first, second, last, or whatever row from the DataFrame by using the ".iloc" attribute. Here, I've retrieved the 18th row of the DataFrame by passing the value 17 into the ".iloc" attribute.