---
# Course title, summary, and position.
linktitle: Microsoft Power BI introduction
summary: Recursos y materiales de la tool de visualización Microsoft Power BI.
weight: 1

# Page metadata.
title: Introduction to Power BI
date: "2021-01-04T00:00:00Z"
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.
url: "en/power-bi/01-intro-power-bi"
description: Recursos y materiales de la tool de visualización Microsoft Power BI.
# Add menu entry to sidebar.
# - name: Declare this menu item as a parent with ID `name`.
# - weight: Position of link in menu.
menu:
  power-bi:
    name: Intro a Power BI
    weight: 2
---

Power BI may very well be one of the most aptly named tools ever developed by Microsoft, giving analysts and developers a powerful business intelligence and analytics playground while still packaging it in a surprisingly lightweight application. Using Microsoft Power BI, the processes of data discovery, data modeling, data visualization, and sharing are made elegantly simple using a single product. These processes are so commonplace when developing Power BI solutions that this book has adopted sections that follow this pattern. However, from your perspective, the really exciting thing may be that development problems that would previously take you weeks to solve in a corporate BI solution can now be accomplished in only hours.

Power BI is a Software as a Service (SaaS) offering in the Azure cloud and, as such, the Microsoft product team follows a strategy of cloud first as they develop and add new features to the product. However, this does not mean that Power BI is only available in the cloud. Microsoft presents two options for sharing your results with others. The first, most often-utilized, method is the cloud-hosted Power BI service, which is available to users for a low monthly subscription fee. The second option is the on-premises Power BI Report Server, which can be obtained through either your SQL Server Enterprise licensing with Software Assurance or a subscription level known as Power BI Premium. Both solutions require a development tool called Power BI Desktop, which is available for free, and is where you must start to design your solutions.

Using the Power BI Desktop application enables you to define your data discovery and data preparation steps, organize your data model, and design engaging data visualizations based on your reports. In this first chapter, the development environment will be introduced, and the data discovery process will be explored in depth. The topics detailed in this chapter include the following:

  - [ ] Getting started
  - [ ] Importing data
  - [ ] Direct query
  - [ ] Live connection

Let's first start by learning about what you need on your machine to get started.

## Getting started

Power BI Desktop is available for free and can be found via a direct download link at Power BI (https://powerbi.microsoft.com/), or by installing it as an app from Microsoft Store. There are several benefits of using  the Microsoft Store Power BI app, including automatic updates, no  requirement for admin privileges, and making it easier for planned IT  rollout of Power BI.

Once you've downloaded, installed, and launched Power  BI Desktop, you will likely be welcomed by the start up screen, which is designed to help new users find their way. Close this start up screen  so that we can review some of the most commonly used features of the  application:

![img](https://learning.oreilly.com/library/view/microsoft-power-bi/9781800561571/Images/B16601_01_01.png)

Figure 1.1: First view of Power BI Desktop

Following the preceding screenshot, let's learn the names and purposes of some of the most important features in Power BI Desktop:

- **Get data**: Used for selecting data connectors and configuring data source details.
- **Transform data**: Launches the Power Query Editor, which is used to apply data transformations to incoming data.
- **Report view**: Report canvas used for designing data visualizations. This is the default view that's open when Power BI Desktop is launched.
- **Data view**: Provides a view of the data in your model. This looks similar to a typical Excel spreadsheet, but it is read-only.
- **Model view**: Primarily used when your data model has multiple tables and relationships that need to be defined between them.

Now that you have a little familiarity with the  basic controls within Power BI Desktop, let's learn about the options  you have for connecting to your various data sources.