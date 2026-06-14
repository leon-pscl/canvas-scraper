Matplotlib is a comprehensive plotting library for the Python programming language, designed for creating static, animated, and interactive visualizations. It provides a flexible framework for producing high-quality graphs and plots, making it an essential tool for data analysis and scientific research.

Matplotlib consists of several submodules that enhance its functionality for creating various types of visualizations. Below is a summary of the key submodules within Matplotlib:
SubmoduleDescriptionmatplotlib.pyplotProvides a MATLAB-like interface for creating static, animated, and interactive plots easily.matplotlib.animationContains tools for creating animated visualizations by updating plots over time.matplotlib.backendsManages how plots are rendered, supporting various GUI frameworks and output formats.matplotlib.collectionsFacilitates the creation and management of collections of objects, such as scatter points or lines.matplotlib.colorsOffers utilities for color mapping and normalization, allowing advanced color handling in plots.matplotlib.datesSupports handling date data in plots, improving formatting and representation of time series data.matplotlib.figureManages the figure object, which serves as a container for all plot elements (axes, titles, etc.).matplotlib.patchesEnables the creation of various shapes (rectangles, circles) that can be added to plots.matplotlib.tickerProvides control over tick placement and formatting on axes to enhance plot readability.mpl_toolkits.mplot3dAdds support for 3D plotting capabilities within Matplotlib.

The pyplot interface

Our course will use the main object-oriented interface-- pyplot.

The code above import the submodule and name it plt. While using the name plt is not necessary for the program to work, this is a very strongly-followed convention.

plt.subplot

The plt.subplot command, when called without any inputs, creates two different objects: a Figure object and an Axes object.

The Figure object is a container that holds everything that you see on the page.

The Axes is the part of the page that holds the data. It is the canvas on which we will draw with our data, to visualize it. Below, you can see a Figure with empty Axes. No data has been added yet.

Case Study: US State's Weather Data

This is a DataFrame that contains information about the weather in the city of Seattle in the different months of the year. The "MONTH" column contains the three-letter names of the months of the year. The "monthly average normal temperature" column contains the temperatures in these months, in Fahrenheit degrees, averaged over a ten-year period.

Adding data to the plt.subplot command

In the code below, we call the method called plot with the month column as the first argument and the temperature column as the second argument. Finally, we call the plt.show function to show the effect of the plotting command. This adds a line to the plot. The horizontal dimension of the plot represents the months according to their order and the height of the line at each month represents the average temperature. The trends in the data are now much clearer than they were just by reading off the temperatures from the table.

Adding (more) data to the plt.subplot command

We can add more data to the plot. For example, we also have a table that stores data about the average temperatures in the city of Austin, Texas. We add these data to the axes by calling the plot method again.

In here, we create the Figure and the Axes objects. We call the Axes method plot to add first the Seattle temperatures, and then the Austin temperatures to the Axes. Finally, we ask Matplotlib to show us the figure.

Customizing data appearance

One of the things that  to improve this plot is on how the data appears to be continuous, but it was actually only measured in monthly intervals. A way to indicate this would be to add markers to the plot that show us where the data exists and which parts are just lines that connect between the data points.

Adding markers

The plot method takes an optional keyword argument, marker, which lets you indicate that you are interested in adding markers to the plot and also what kind of markers you'd like. For example, passing the lower-case letter "o" indicates that you would like to use circles as markers.

Choosing markers

If you were to pass a lower case letter "v" instead, you would get markers shaped like triangles pointing downwards. To see all the possible marker styles, you can visit this page in the [Matplotlib online documentation](https://matplotlib.org/stable/api/markers_api.html). In these versions of the plot, the measured data appears as markers of some shape, and it becomes more apparent that the lines are just connectors between them.

Setting the line style

Changing the appearance of these lines emphasize that the they are just connecters. This is done by adding the linestyle keyword argument. Here two dashes are used to indicate that the line should be dashed. Like marker shapes, there are a few linestyles you can choose from, listed in this documentation page.

Eliminating lines with linestyle

Eliminate the lines altogether, by passing the string "None" as input to this keyword argument.

Choosing color

You can choose the color that you would like to use for the data. For example, here we've chosen to show this data in red, indicated by the letter "r".

Customizing axes label

Another important thing to customize are the axis labels. If you want your visualizations to communicate properly you need to always label the axes. This is really important but is something that is often neglected. In addition to the plot method, the Axes object has several methods that start with the word set. These are methods that you can use to change certain properties of the object, before calling show to display it.

Adding a title

You can also add a title to your Axes using the set-underscore-title method. This adds another source of information about the data to provide context for your visualization.

Read more about matplotlib [here](https://matplotlib.org/stable/api/matplotlib_configuration_api.html).