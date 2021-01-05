---
# Course title, summary, and position.
linktitle: Data transformation strategies
summary: El sistema de archivos controla como se almacenan los archivos en el ordenador. Sus dos tareas principales son guardar y leer archivos previamente guardados.
weight: 1

# Page metadata.
title: Data transformation strategies
date: "2021-01-04T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "/en/power-bi/03-data-transformation-strategies"
description: El sistema de archivos controla como se almacenan los archivos en el ordenador. Sus dos tareas principales son guardar y leer archivos previamente guardados.
# Features
reading_time: true  # Show estimated reading time?
share: false  # Show social sharing links?
profile: false  # Show author profile?
commentable: false  # Allow visitors to comment? Supported by the Page, Post, and Docs content types.
editable: true  # Allow visitors to edit the page? Supported by the Page, Post, and Docs content types.

# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  power-bi:
    name: Data transformation strategies
    weight: 4
---

# Data Transformation Strategies

Within any BI project, it is essential that the  data you are working with has been properly scrubbed to ensure accurate  results on your reports and dashboards. Applying data cleansing business rules, also known as transforms, is the primary method for correcting  inaccurate or malformed data, but the process can often be the most  time-consuming part of any corporate BI solution. However, the data  transformation capabilities built into Power BI are both very powerful  and user-friendly. Using the Power Query Editor, tasks that would  typically be difficult or time-consuming in an enterprise BI tool are as simple as right-clicking on a column and selecting the appropriate  transform for the field. While interacting with the user interface, the  Power Query Editor automatically writes queries using a language called M behind the scenes.

Through the course of this chapter, you will  explore some of the most common features of the Power Query Editor that  make it so highly regarded by its users. Since one sample dataset cannot provide all the problems you will run into, you will be provided with  several small, disparate examples to show you what is possible. This  chapter will detail the following topics:

- The Power Query Editor
- Transform basics
- Advanced data transformation options
- Leveraging R
- AI Insights
- The M formula language

To get started, let's get familiar with the interface known as the Power Query Editor.

# The Power Query Editor

The **Power Query Editor** is the primary tool that you will utilize for applying transformations and cleansing processes to your data. This editor can be launched as part of  establishing a connection to your data, or by simply clicking **Transform Data** on the **Home** ribbon of the Power BI Desktop. When the Power Query Editor is opened,  you will notice that it has its own separate environment for you to work in. The environment encapsulates a user-friendly method for working  with all of the queries that you will define. Before you dive deep into  the capabilities of the Power Query Editor, let's first start by  reviewing the key areas of the Power Query Editor interface, as shown in *Figure 2.1*:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/1.png)

Figure 2.1: First view of the Power Query Editor

Following the numbered figures, let's review some of the most important features of the Power Query Editor:

1. **New Source**: This launches the interface to establish your connection details, which is the same interface as the **Get data** button that you learned about in *Chapter 1*, *Getting Started with Importing Data Options*.
2. The **Queries** pane: A list of all the queries that you have connected to. From here, you  can rename a query, disable the load and modify report refresh  capabilities, and organize your queries into groups.
3. **Query Settings**: Within this pane, you can rename the query, but more importantly, you  can see and change the list of steps, or transforms, that have been  applied to your query. If you ever accidentally close this pane, you can relaunch it from the **View** menu.
4. **Advanced Editor**: By launching the **Advanced Editor**, you can see the M query that is automatically written for you by the Power Query Editor.
5. **Close & Apply**: Choosing this option will close the Power Query Editor and load the results into the data model.

With this basic navigation understood, let's start to discuss some of the basics of working with various transforms.

# Transform basics

Applying data transformations within the Power Query Editor can be a surprisingly simple thing to do. However, there are a few things to consider as we begin this process.  The first is that there are multiple ways to solve a problem. As you  work your way through this book, the authors have tried to show you the  fastest and easiest methods of solving the problems that are presented,  but these solutions will certainly not be the only ways to reach your  goals.

The next thing you should understand is that every click you do inside the Power Query Editor is automatically converted  into a formula language called M. Virtually all the basic transforms you will need can be accomplished by simply interacting with the Power  Query Editor user interface, but for more complex business problems  there is a good chance you may have to modify the M queries that are  written for you by the editor. You will learn more about M later in this chapter.

Finally, the last important consideration to  understand is that all transforms that are created within the editor are stored in the **Query Settings** pane under a section called **Applied Steps**. Why is this important to know? The **Applied Steps** section has many features, but here are some of the most critical to know for now:

- **Deleting transforms**: If you make a mistake and need to undo a step, you can click the **Delete** button next to a step.
- **Modifying transforms**: This can be done with any step that has a gear icon next to it.
- **Changing the order of transforms**: If you realize that it is better for one step to execute before another one, you can change the order of how the steps are executed.
- **Selecting previous steps**: Clicking on any step prior to the current one will allow you to see how your query results would change one step earlier in the process.

With this understanding, you will now get hands-on with applying several basic transforms inside the Power Query Editor.  The goal of these first sets of examples is to get you comfortable with the Power Query Editor user interface before the more complex use cases are covered.

## Use First Row as Headers

Organizing column names or headers is often an important first task when managing your dataset. Providing relevant column names makes many of the downstream processes, such as building  reports, much easier. Often, column headers are automatically imported  from your data source, but sometimes you may be working with a more  unique data source that makes it difficult for Power BI to capture the  column header information. This walkthrough will show how to deal with  such a scenario:

1. Launch Power BI Desktop, and click **Get data** on the **Home** ribbon.

2. Choose **Excel**, then navigate to and select **Open** on the `Failed Bank List.xlsx` file that is available in the book source files.

3. In the **Navigator** window, select the table called **Data**, then choose **Transform Data**. When the Power Query Editor launches, you should notice that the column headers are not automatically imported. In fact, the column headers are in the first row of the data.

4. To push the column names that are in the first row of data to the header section, select the transform called 

   Use First Row as Headers

    from the 

   Home

    ribbon as shown in 

   Figure 2.2

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_03.png)

Figure 2.2: Leveraging the Use First Row as Headers transform

Once complete, you will see the first row of the  dataset has been promoted to the column header area. This is a very  common transform that you can expect to use often with flat files. Next, let's look at another commonly used transform, **Remove Columns**.

## Remove Columns

Often, the data sources you will connect to will include many columns that are not necessary for the solution you are designing. It is important to remove these  unnecessary columns from your dataset because these unused columns  needlessly take up space inside your data model. There are several  different methods for removing columns in the Power Query Editor. This  example will show one of these methods using the same dataset from the  previous demonstration:

1. Multi-select (*Ctrl* + click) the column headers of the columns you wish to keep as part of your solution. In this scenario, select the columns **Bank Name**, **City**, **ST**, and **Closing Date**.

2. With these four columns selected, right-click on any of the selected columns and choose 

   Remove Other Columns

   , as shown in 

   Figure 2.3

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_04.png)

Figure 2.3: Selecting the Remove Other Columns transform

Once this transform is completed, you should be left with only the columns you need.

Another popular method for removing columns is clicking the **Choose Columns** button on the **Home** ribbon of the Power Query Editor. This option provides a list of all  the columns, and you can choose the columns you wish to keep or exclude.

You can also select the columns you wish to remove; right-click on one of the selected columns and click **Remove**. This seems like the more obvious method. However, this option is not as user-friendly in the long run because it does not provide an option to  edit the transform in the **Applied Steps** section like the first two methods do.

With any data cleansing tool, data type manipulation is critical and can help save you from many headaches later in the development of your solution. In the next section, you will learn about how to change data types.

## Change Type

Defining column data types properly early on in your data scrubbing process can help to ensure proper business rules can be applied and data is presented properly in reports. The Power  Query Editor has various numeric, text, and date-time data types for you to choose from. In our current example, all of the data types were  automatically interpreted correctly by the Power Query Editor, but let's look at where you could change this if necessary:

1. Locate the data type indicator on the column header to the left of the column name.

2. Click the data type icon, and a menu will open that allows you to choose whichever data type you desire, as shown in 

   Figure 2.4

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_05.png)

Figure 2.4: Choosing a different data type

Another method you can use for changing column data types is to right-click on the column you wish to change, then select **Change Type** and choose the new data type. You should always be careful when  changing data types to ensure your data supports the change. For instance, if you change a column data type to a Whole Number while it has letters stored in it, Power BI will produce an error.

If you want to change multiple  column data types at once, you can multi-select the necessary columns,  then select the new data type from the **Data Type** property on the **Home** ribbon.

Many of the transforms you will encounter in the  future are contextually based on the column data types you are working  with. For example, if you have a column that is a date, then you will be provided with special transforms that can only be executed against a  date data type, such as extracting the month name from a date column.

Understanding how to properly set data types in  Power BI is often the first step to using more exciting transforms. In  the next section, you will learn how Power BI can read from an example  you provide to automatically create transform rules.

## Column From Examples

One option that can make complex data transformations seem simple is the feature called **Add Column From Examples**. Using **Add Column From Examples**, you can provide the Power Query Editor with a sample of what you would  like your data to look like, and it can then automatically determine  which transforms are required to accomplish your goal. Continuing with  the same failed banks example, let's walk through a simple example of  how to use this feature:

1. Find and select the **Add Column** tab in the Power Query Editor ribbon.

2. Select the 

   Column From Examples

    button and, if prompted, choose 

   From All Columns

   . This will launch a new 

   Add Column From Examples

    interface:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_06.png)

   Figure 2.5: Choosing the Column from Examples transform

3. Our goal is to leverage this feature to combine the `City` and `ST` columns together. In the first empty cell, type `Barboursville, WV` and then hit *Enter*. In *Figure 2.5* you will notice that the text you typed has automatically been  translated into an M query and applied for every row in the dataset.

4. Once you click 

   OK

   , the transform is finalized and automatically added to the overall M  query that has been built through the user interface. The newly merged  column will be added with the rest of your columns and you can  optionally rename the column something more appropriate by  double-clicking on the column header:

    ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_07.png)

Figure 2.6: Adding Column from Examples

As you can see, the **Add Column from Examples** feature is great because you don't have to be an expert in which  transforms are appropriate because Power BI will automatically choose  them for you!

Sometimes, you may encounter scenarios where the **Add Column From Examples** feature needs more than one example to properly translate your example  into an M query function that accomplishes your goal. If this happens,  simply provide additional examples of how you would like the data to  appear in different rows, and the Power Query Editor should adjust to  account for outliers.

Now that you have learned some basic transforms, let's explore some more complex design patterns that are still used quite frequently.

# Advanced data transformation options

Now that you should be more comfortable working within the Power Query Editor, let's take the next step and discuss more advanced options. Often, you will find the need to go beyond these basic transforms when dealing with data that requires more care. In  this section, you will learn about some common advanced transforms that  you may have a need for, which include **Conditional Columns**, **Fill Down**, **Unpivot**, **Merge Queries**, and **Append Queries**.

## Conditional Columns

Using the Power Query Editor **Conditional Columns** functionality is a great way to add new columns to your query that follow logical `if`/`then`/`else` statements. This concept of `if`/`then`/`else` is common across many programming languages, including Excel formulas.  Let's review a real-world scenario where you would be required to do  some data cleansing on a file before it could be used. In this example,  you will be provided with a file of all the counties in the United  States, and you must create a new column that extracts the state name  from the county column and places it in its own column:

1. Start by connecting to the `FIPS_CountyName.txt` file that is found in the book files using the **Text**/**CSV** connector.

2. Launch the Power Query Editor by selecting **Transform Data**, then start by changing the data type of `Column1` to **Text**. When you do this, you will be prompted to replace an existing type conversion. You can accept this by clicking **Replace current**.

3. Now, on `Column2`, filter out the value **UNITED STATES** from the column by clicking the arrow next to the column header and unchecking **UNITED STATES**. Then, click **OK**.

4. Remove the state abbreviation from 

   ```
   Column2
   ```

    by right-clicking on the column header and selecting 

   Split Column

    | 

   By Delimiter

   . Choose 

   -- Custom --

    for the delimiter type, and type 

   ,

    before then clicking 

   OK

   , as shown in 

   Figure 2.7

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_08.png)

   Figure 2.7: Splitting a column based on a delimiter

5. Next, rename the column names `Column1`, `Column 2.1`, and `Column 2.2`, to `County Code`, `County Name`, and `State Abbreviation`, respectively.

6. To isolate the full state name into its own column, you will need to implement **Conditional Column**. Go to the **Add Column** ribbon and select **Conditional Column**.

7. Change the 

   New column name

    property to 

   ```
   State Name
   ```

    and implement the logic 

   ```
   If State Abbreviation equals null Then return County Name Else return null
   ```

    as shown in 

   Figure 2.8

   . To return the value from another column, you must select the icon in the 

   Output

    property, then choose 

   Select a column

   . Once this is complete, click 

   OK

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_09.png)

Figure 2.8: Adding a conditional column

This results in a new column called **State Name**, which has the fully spelled-out state name only appearing on rows where the `State Abbreviation` is `null`:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_10.png)

Figure 2.9: End result of following these steps

This is only setting the stage to fully scrub this dataset. To complete the data cleansing process for this file, read on  to the next section about **Fill Down**. However, for the purposes of this example, you have now learned how to leverage the capabilities of the **Conditional Column** transform in the Power Query Editor.

## Fill Down

**Fill Down** is a rather unique transform in how it operates. By selecting **Fill Down** on a particular column, a value will replace all `null` values below it until another non-null appears. When another non-null value is present, that value will then fill down to all subsequent `null` values. To examine this transform, you will pick up from where you left off in the **Conditional Column** example in the previous section:

1. Right-click on the **State Name** column header and select **Transform** | **Capitalize Each Word**. This transform should be self-explanatory.

2. Next, select the **State Name** column and, in the **Transform** ribbon, select **Fill** | **Down**. This will take the value in the **State Name** column and replace all non-null values until there is another **State Name** value that it can switch to. After performing this transform, scroll through the results to ensure that the value of `Alabama` switches to `Alaska` when appropriate.

3. To finish this example, filter out any 

   ```
   null
   ```

    values that appear in the 

   State Abbreviation

    column. The final result should look like 

   Figure 2.10

   , as follows:

    ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_11.png)

Figure 2.10: End result of following these steps

In this example, you learned how you can use **Fill Down** to replace all of the `null` values below a non-null value. You can also use **Fill Up** to do the opposite, which would replace all the `null` values above a non-null value. One important thing to note is that the data must be sorted properly for **Fill Down** or **Fill Up** to be successful. In the next section, you will learn about another advanced transform, known as **Unpivot**.

## Unpivot

The **Unpivot** transform is an incredibly powerful transform that allows you to reorganize your dataset into a more structured format best suited for BI. Let's discuss this by visualizing a practical example to help understand the purpose of **Unpivot**. Imagine you are provided with a file that contains the populations of US states over the last three years, and looks as in *Figure 2.11*:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_12.png)

Figure 2.11: Example data that will cause problems in Power BI

The problem with data stored like this is you  cannot very easily answer simple questions. For example, how would you  answer questions like, *What was the total population for all states in the US in 2018?* or *What was the average state population in 2016?* With the data stored in this format, simple reports are made rather difficult to design. This is where the **Unpivot** transform can be a lifesaver. Using **Unpivot**, you can change this dataset into something more acceptable for an analytics project, as shown in *Figure 2.12*:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_13.png)

Figure 2.12: Results of unpivoted data

Data stored in this format can now easily answer  the questions posed earlier by simply dragging a few columns into your  visuals. To accomplish this in other programming languages would often require fairly complex logic, while the Power Query Editor does it in just a few clicks.

There are three different methods for selecting the **Unpivot** transform that you should be aware of, and they include the following options:

- **Unpivot Columns**: Turns any selected columns, headers into row values and the data in  those columns into a corresponding row. With this selection, any new  columns that may get added to the data source *will* automatically be included in the **Unpivot** transform.
- **Unpivot Other Columns**: Turns all column headers that *are not* selected into row values and the data in those columns into a  corresponding row. With this selection, any new columns that may get  added to the data source *will* automatically be included in the **Unpivot** transform.
- **Unpivot Only Selected Columns**: Turns any selected columns' headers into row values and the data in  those columns into a corresponding row. With this selection, any new  columns that may get added to the data source *will not* be included in the **Unpivot** transform.

Let's walk through two examples of using the **Unpivot** transform to show you the first two of these methods, and provide an  understanding of how this complex problem can be solved with little  effort in Power BI. The third method mentioned for doing **Unpivot** will not be shown since it's so similar to the first option:

1. Launch a new instance of the Power BI Desktop, and use the Excel connector to import the workbook called 

   ```
   Income Per Person.xlsx
   ```

    found in the book source files. Once you 

   

   select this workbook, choose the spreadsheet called 

   Data

    in the 

   Navigator

    window, and then select 

   Transform Data

    to launch the Power Query Editor. 

   Figure 2.13

    shows what our data looks like before the 

   Unpivot

    operation:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_14.png)

   Figure 2.13: Example before Unpivot is performed

2. Now, make the first row of data into column headers by selecting the transform called **Use First Row as Headers** on the **Home** ribbon.

3. Rename the **GDP per capita PPP, with projections** column to **Country**.

4. If you look closely at the column headers,  you can tell that most of the column names are actually years and the  values inside those columns are the income for those years. This is not  the ideal way to store this data because it would be incredibly  difficult to answer a question like, *What is the average income per person for Belgium?* To make it easier to answer this type of question, right-click on the **Country** column and select **Unpivot Other Columns**.

5. Rename the columns `Attribute` and `Value` to `Year` and `Income`, respectively.

6. To finish this first example, you should also rename this query 

   Income

   . The results of these first steps can be seen in 

   Figure 2.14

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_15.png)

Figure 2.14: Results of unpivoted data

This first method walked you through what can often be the fastest method for performing an **Unpivot** transform, which is by using the **Unpivot Other Columns** option. In this next example, you will learn how to use the **Unpivot Columns** method as well:

1. Remain in the Power Query Editor, and select 

   New Source

    from the 

   Home

    ribbon. Use the Excel connector to import the 

   ```
   Total Population.xlsx
   ```

    workbook from the book source files. Once you select this workbook, choose the spreadsheet called 

   Data

    in the 

   Navigator

    window, and then select 

   OK

   . 

   Figure 2.15

    shows the dataset before 

   Unpivot

    has been added:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_16.png)

   Figure 2.15: Example before Unpivot is performed

2. Like the last example, you will again need to make the first row of data into column headers by selecting the transform called **Use First Row as Headers** on the **Home** ribbon.

3. Then, rename the column **Total population** to **Country**.

4. This time, multi-select all the columns except 

   Country

   , then right-click on one of the selected columns and choose 

   Unpivot Other Columns

    as shown in 

   Figure 2.16

   . The easiest way to multi-select these columns is to select the first column then hold 

   Shift

    before clicking the last column:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_17.png)

   Figure 2.16: Using the Unpivot Other Columns transform

5. Rename the columns from 

   Attribute

    and 

   Value

    to 

   Year

    and 

   Population

   , respectively, to see the result showing in 

   Figure 2.17

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_18.png)

Figure 2.17: Shows the final result of these steps

In this section, you learned about two different methods for performing an **Unpivot**. To complete the data cleansing process on these two datasets, it's  recommended that you continue through the next section on merging  queries.

## Merge Query

Another common requirement when building BI solutions is the need to join two tables together to form a new outcome that includes some columns from both tables in the result.  Fortunately, Power BI makes this task very simple with the **Merge Queries** feature. Using this feature requires that you select two tables and  then determine which column or columns will be the basis of how the two  queries are merged. After determining the appropriate columns for your  join, you will select a join type. The join types are listed here with  the description that is provided within the product:

- **Left Outer** (all rows from the first table, only matching rows from the second) 
- **Right Outer** (all rows from the second table, only matching rows from the first)
- **Full Outer** (all rows from both tables)
- **Inner** (only matching rows from both tables)
- **Left Anti** (rows only in the first table)
- **Right Anti** (rows only in the second table)

Many of you may already be very familiar with these different join terms from SQL programming you have  learned in the past. However, if these terms are new to you, I recommend reviewing *Visualizing Merge Join Types in Power BI*, courtesy of Jason Thomas in the *Power BI Data Story Gallery*: https://community.powerbi.com/t5/Data-Stories-Gallery/Visualizing-Merge-Join-Types-in-Power-BI/m-p/219906. This visual aid is a favorite of many users that are new to these concepts. 

To examine the **Merge Queries** option, you will pick up from where you left off with the **Unpivot** examples in the previous section:

1. With the **Population** query selected, find and select **Merge Queries** | **Merge Queries as New** on the **Home** ribbon.

2. In the **Merge** dialog box, select the **Income** query from the drop-down selection in the middle of the screen.

3. Then, multi-select the **Country** and **Year** columns on the **Population** query, and do the same under the **Income** query. This defines which columns will be used to join the two queries  together. Ensure that the number indicators next to the column headers  match, as demonstrated in *Figure 2.18*. If they don't, you could accidentally attempt to join on the incorrect columns.

4. Next, select 

   Inner

    (

   only matching rows

   ) for 

   Join Kind

   . This join type will return rows only when the columns you chose to join on have values that exist in both queries. Before you click 

   OK

   , confirm that your screen matches 

   Figure 2.18

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_19.png)

   Figure 2.18: Configuring a merge between two queries

5. Once you select **OK**, this will create a new query called `Merge1` that combines the results of the two queries. Go ahead and rename this query `Country Stats`.

6. You will also notice that there is a column called `Income` that has a value of `Table` for each row. This column is actually representative of the entire `Income` query that you joined to. To choose which columns you want from this query, click the **Expand** button on the column header. After clicking the **Expand** button, uncheck **Country**, **Year**, and **Use original column name as prefix**, then click **OK**.

7. Rename the column called 

   ```
   Income.1
   ```

    to 

   ```
   Income
   ```

   . 

   Figure 2.19

    shows this step completed:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_20.png)

   Figure 2.19: Configuring a merge between two queries

8. Finally, since you chose the option 

   Merge Queries as New

    in 

   Step 1

   , you can disable the load 

   

   option for the original queries that you started with. To do this, right-click on the 

   Income

    query in the 

   Queries

    pane and click 

   Enable load

    to disable it. Do the same thing for the 

   Population

    query as shown in 

   Figure 2.20

   . Disabling these queries means that the only query that will be loaded into your Power BI data model is the new one, called 

   Country Stats

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_21.png)

Figure 2.20: Uncheck to disable the loading of this query into the data model

To begin using this dataset in a report, you would click **Close & Apply**. You will learn more about building reports in *Chapter 5*, *Visualizing Data*.

By default, merging queries together relies on  exact matching values between your join column(s). However, you may work with data that does not always provide perfect matching values. For  example, a user enters data and misspells their country as "Unite  States" instead of `United States`. In those cases, you may consider the more advanced feature called Fuzzy Matching. With Fuzzy Matching, Power BI can perform an approximate match and  still join on these two values based on the similarity of the values. In this section, you learned how the **Merge Queries** option is ideal for joining two queries together. In the next section,  you will learn how you could solve the problem of performing a union of  two or more queries.

## Append Query

Occasionally, you will work with multiple datasets that need to be appended to each other. Here's a scenario: you work for a customer service department for a company that provides  credit or loans to customers. You are regularly provided with `.csv` and `.xlsx` files that give summaries of customer complaints regarding credit cards and student loans. You would like to analyze both of these data  extracts at the same time but, unfortunately, the credit card and  student loan complaints are provided in two separate files. In this  example, you will learn how to solve this problem by performing an  append operation on these two different files:

1. Launch a new instance of the Power BI Desktop, and use the Excel connector to import the workbook called `Student Loan Complaints.xlsx` found in the book source files. Once you select this workbook, choose the spreadsheet called **Student Loan Complaints** in the **Navigator** window, and then select **Transform Data** to launch the Power Query Editor.

2. Next, import the credit card data by selecting **New Source** | **Text/CSV**, then choose the file called `Credit Card Complaints.csv` found in the book source files. Click **OK** to bring this data into the Power Query Editor.

3. With the `Credit Card Complaints` query selected, find and select **Append Queries** | **Append Queries as New** on the **Home** ribbon.

4. Select 

   Student Loan Complaints

    as the table to append to, then select 

   OK

    as shown in 

   Figure 2.21

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_22.png)

   Figure 2.21: Configuring an append between two queries

5. Rename the newly created query 

   All Complaints

    and view the results as seen in 

   Figure 2.22

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_23.png)

   Figure 2.22: Configuring an append between two queries

6. Similar to the  previous example, you would likely want to disable the load option for  the original queries that you started with. To do this, right-click on  the **Student Load Complaints** query in the **Queries** pane and click **Enable load** to disable it.

7. Do the same to the **Credit Card Complaints** query, and then select **Close & Apply**.

Now that you have learned about the various  methods for combining data, the next section will discuss a more  advanced method of working with data using the R programming language.

# Leveraging R

R is a very powerful scripting language that is primarily used for advanced analytics tools, but also has several integration points within Power BI. One such  integration is the ability to apply business rules to your data with the R language. Why is that important? Well, with this capability you can  extend beyond the limits of the Power Query Editor and call functions  and libraries from R to do things that would not normally be possible.  In the next two sections, you will explore how to set up your machine to leverage R within Power BI and then walk through an example of using an R script transform.

There are many additional books and references you can read to learn more about the R scripting  language, but for the purposes of this book, our goal is to inform you  of what is possible when R and Power BI are combined.

## Installation and configuration

To use R within Power BI, you must first install an R distribution for you to run and execute scripts against. In this book, we will leverage Microsoft's distribution, Microsoft R Open. It is an open source project and free for anyone to use. Once Microsoft R Open has  been installed, you can then configure Power BI to recognize the home  directory where R libraries may be installed. Let's walk through these  setup steps together:

1. Navigate to the website https://mran.microsoft.com/download/ to download and install Microsoft R Open.

2. For the purposes of our example, you will select **Download** next to **Windows**.

3. Once the download has completed, run the installation and accept all default settings and user agreements.

4. Next, launch a new instance of Power BI Desktop to set up the R integration with Power BI. Click the menu options **File** | **Options and settings** | **Options**.

5. Choose the 

   R scripting

    section and ensure that the 

   Detected R home directories

    property is filled with the R instance you just installed, as shown in 

   Figure 2.23

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_24.png)

   Figure 2.23: Mapping the R home directories in Power BI

6. Once this is completed, click **OK**.

With this setup now complete, let's see how we can take advantage of R within Power BI.

## The R script transform

With the R distribution now installed and configured to integrate with Power BI, you are now ready to see what's possible with these new capabilities. In this example, you will be  looking at data from the European stock market. The problem with this  dataset, which calls for it to be corrected with R, is that the file  provided to you has missing values for certain days. So, to get a more  accurate reading of the stock market, you will use an R package called `MICE` to impute the missing values:

1. Before beginning in Power BI, you should ensure that the 

   ```
   MICE
   ```

    library is installed and available in the R distribution you set up in  the last section. To do this, launch Microsoft R Open from your device.  This is the basic RGui that was installed for you to run R scripts with.

   For many developers, the preferred method for writing `R` scripts is a free open source tool called RStudio. RStudio includes a code editor, debugging, and visualization tools that many find easier to work with. You can download RStudio from https://www.rstudio.com/.

2. Type the following script in the 

   R Console

    window, and then hit 

   Enter

   :        

   ```
       install.packages("mice")
   ```

   This input is illustrated in the following screenshot:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_25.png)

   Figure 2.24: Running the library install in RGui

3. You can close the 

   R Console

    window and return to Power BI Desktop after it returns an output like the following:        

   ```
   package 'mice' successfully unpacked and MD5 sums checked.
   ```

4. In Power BI Desktop, start by connecting to the required data source called `EuStockMarkets_NA.csv` from the book source files. Once you connect to the file, click **Transform Data** to launch the Power Query Editor.

5. You will notice that there are a few days missing values in the **SMI** (**Stock Market Index**) column. We would like to replace values that show **NA** with approximate values using an R script. Go to the **Transform** ribbon, and select the **Run R Script** button on the far right.

6. Use the following R script to call the 

   ```
   MICE
   ```

    library that you recently installed to detect what the missing values in this dataset should be:        

   ```
       # 'dataset' holds the input data for this script
       library(mice)
       tempData <- mice(dataset,m=1,maxit=50,meth='pmm',seed=100)
       completedData <- complete(tempData,1)
       output <- dataset
       output$completedValues <- completedData$"SMI missing values"
   ```

7. Click **OK**. If you are prompted with a warning indicating **Information is required about data privacy** click **Continue**.

8. Next, click on the hyperlink on the table value next to the `completedData` row to see the result of the newly implemented transform for detecting missing values.

This new output has replaced the missing values  with new values that were detected based on the algorithm used within  the R script. To now build a set of report visuals on this example, you  can click **Close & Apply** on the **Home** ribbon.

This is just one simple way that R can be used  with Power BI. You should note that in addition to using R as a  transform, it can also be used as a data source and as a visual within  Power BI.

While this book highlights the programming  language R to extend the capabilities of Power BI, some might prefer  Python. Python is another programming language that allows for  extensibility into Power BI to create new  data connectors, transforms, and visuals. So, should you choose R or  Python? That depends on which you are more comfortable with. If you have already spent time learning `Python`, then stick with that! In the next section of this chapter, you will  learn about Power BI's AI integration features, which give you the  ability to call on components of Azure Cognitive Services with the Power Query Editor.

# AI Insights

As you learned in the previous section, Power BI integrates and takes advantage of outside tools to enhance the capabilities within itself. That continues to be the case with the  AI Insights features. Leveraging the AI Insights capabilities gives you  the ability to tap into core features and algorithms within Azure  Cognitive Services and expose them within Power BI. So how can this be  useful to you?

Imagine you work for a company that runs a  vacation rentals website. Customers can book travel and post reviews of  their trips on your website. With thousands of customers and hundreds of rental homes, it can be difficult to manage all the reviews that come  in to make sure your locations are all meeting the standards your  customers expect. With AI Insights you can run algorithms that can  perform sentiment analysis, key phrase extraction, language detection,  and even image tagging. So, if you have international customers that  post reviews, you can use language detection to understand what language the post was written in. Then you can use sentiment analysis to capture whether the review was positive or negative. Finally, using phrase  extraction, you can pull out key terms in the reviews to see if the same locations continue to receive feedback regarding similar problems.  Furthermore, if your feedback system allows photos to be posted in the  reviews, the image tagging capabilities can return a list of  characteristics found in the images posted. This would allow for  automated categorization of images using AI.

As you can see, these are very powerful features  that take your analytics processing to the next level. There are  limitations, however, that you should be aware of before exploring these features. As of the time that this book was published, Cognitive  Services integration is only supported for Power BI Premium capacity  nodes `EM2`, `A2`, or `P1` and above. This means if your company is not currently leveraging Power BI Premium, then these features are not available to you.

Before using the AI Insights  features in Power BI, you will need to change the capacity settings in  the Power BI admin portal to enable the AI workload. After turning on  the AI workload setting, you can also set the maximum amount of memory  you would like to give the workload. The general recommendation is a  memory limit of 20%.

In the next section, you will learn how to leverage an AI Insights Text Analytics feature called Sentiment Analysis.

## Sentiment Analysis with Text Analytics

The Text Analytics features within the AI Insights features can be incredible time-savers. Imagine  having to read paragraphs of information and conclude what was important or whether it was written in a positive or negative light. These are  exactly the type of things that this feature can do for you. In this  next example, you are going to test out one of these features by running a sentiment analysis algorithm on hotel reviews to see how customers  feel about staying at your hotel locations:

1. Launch a new instance of Power BI Desktop, and use the Excel connector to import the workbook called `Hotel Ratings.xlsx` found in the book source files. Once you select this workbook, choose the spreadsheet called **Reviews** in the **Navigator** window, and then select **Transform Data** to launch the Power Query Editor.

2. Select **Text Analytics** on the **Home** ribbon of the Power Query Editor. If this is your first time using this feature, you may be prompted to sign into a Power BI account that has  Power BI Premium capacity assigned to it.

3. Next, you will be prompted to choose which Text Analytics algorithm you would like to use. Select 

   Score sentiment

   , as shown in 

   Figure 2.25

   , and ensure the 

   ReviewText

    field is the 

   Text

    that will be analyzed. Then click 

   OK

   :

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_26.png)

   Figure 2.25: Using the Text Analytics feature

4. If prompted with a data privacy warning, click **Continue** and then select **Ignore Privacy Levels check** for this file before clicking **Save**. This type of warning can occur when you combine two disparate sources  or services together and is to ensure it is OK for these data sources to be combined.

This transform will produce a new numeric column with a value between `0` and `1` for every row in the dataset. A sentiment score of `.50` is considered neutral, while any score lower is negative and any score higher is generally positive:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_27.png)

Figure 2.26: Results of Score sentiment

Looking at *Figure 2.26*, it looks like the AI integration, with a few exceptions, did a good job determining how to rate each review.

Next, in the final section of this chapter, you will be introduced to the M formula language.

# The M formula language

The Power Query Editor is the user interface that is used to design and build data imports. However,  you should also know that every transform you apply within this editor  is actually, quietly and behind the scenes, writing an M query for you.  The letter M here is a reference to the language's data mashup  capabilities.

For simple solutions, it is unlikely that you will ever need to even look at the M query that is being written, but there  are some more complex cases where it's helpful to understand how to read and write your own M. For the purposes of this book, covering just the  Power BI essentials, you will learn how to find the M query editor  within your solution and then understand how to read what it is doing  for you.

For the purposes of this example, you can open up  any previously built example, however, the screenshot used here is from  the very first example in this chapter on basic transforms:

1. Using any Power BI solution you have designed, launch the Power Query Editor.

2. On the 

   Home

    ribbon, select 

   Advanced Editor

    to see the M query that has been written by the user interface. 

   Figure 2.27

    shows an example of what your 

   Advanced Editor

    might show:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_28.png)

Figure 2.27: Understanding the elements of M

This query has been formatted to make it easier to read. Let's review the key elements that are present here:

1. **The let expression**: Encapsulates a set of values or named expressions to be computed.
2. **Named expressions or variables**: The name given to a set of operations in a step. These names can be  anything, but you should note that if you wish to have a space in the  name of a step then it must be surrounded by `#""`. For example, if I wanted something to be called *Step 1*, then I would have to name an expression `#"Step 1"`. If a space is not required in the name of your step then the double quotes are not required.
3. **M functions**: The operations that are used to manipulate the data source.
4. **Prior step reference**: The M query language generally executes its functions as serial  operations, meaning each operation is executed one after the other  sequentially. You can see this when you look at a query because each  call to an M function always references the prior-named expression, to  pick up where it left off.
5. **The in expression**: Oddly, the `in` expression is actually a reference to what the query will output. Whichever named expression is referenced in the `in` expression will be what is returned back in the `Power Query Editor` preview.

It is important to realize that M is case-sensitive. That means if you ever make a change to a query or write one from scratch, you should be careful because there is a  difference between "a" and "A."

## #shared

As mentioned  previously, this book will not dive deep into writing your own M queries since that would be far beyond the essentials of Power BI. However, there is a great method for exploring the M functions that are available, and how to use them. Within the Power Query Editor, you can  use the `#shared` function to  return documentation on every available function in the M library. Let's walk through how you can leverage this tool:

1. In a new instance of Power BI Desktop, select **Get data** and then choose **Blank Query**. This will launch the Power Query Editor with an empty formula bar waiting for you to provide your own M.

2. In this formula bar, type `= #shared`, then hit *Enter*. Remember that M is case-sensitive so you must use a lowercase `s` when typing `shared`.

3. This will return a list of all the available M functions. By selecting the cell that has the hyperlink text of a  certain function, you can see documentation on how to use each function. 

   Figure 2.28

    shows an example of this:

   ![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_02_29.png)

Figure 2.28: Example of function documentation

This is a great method for learning what M functions are available, and how each may be used.  If you are stumped on how to solve a problem using M then make this your first stop to explore what options you have.

# Summary

In this chapter, you learned that the Power Query  Editor is an extremely powerful tool for applying business rules to  incoming data. Implementing data cleansing techniques can be as simple  as right-clicking on a column, or more complex, such as when building a  conditional column. While the Power Query Editor does have a vast  library of transforms available, you also learned that you can tap into  the capabilities of R to extend what's possible when designing queries.  Finally, this chapter discussed the AI capabilities within the Power  Query Editor that allow you to leverage several algorithms available  within Azure Cognitive Services. In the next chapter, on building the  data model, you will learn about proper techniques for building a  well-designed Power BI data model to ensure your solutions can solve all your reporting needs.