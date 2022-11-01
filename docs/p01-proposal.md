# A Data-Oriented Unpacking of Global Hunger and Undernourishment

**TODO**: Edit this file. Your project proposal goes here.

For what to do, see the [`../instructions/`](../instructions/) directory, specifically:

* [Design Brief](../instructions/project-design-brief.pdf)
* [Project Proposal Requirements](../instructions/p01-proposal-requirements.md)

## Code Name
country_hunger
## Authors
Samaya Badrieh, Natalie Stillwell, Desiree Vera
## Affilitation
The University of Washington
## Date
31 October, 2022
## Abstract
We are concerned with global hunger, and how starvation and food insecurity across countries contribute to the undernourishment of populations. We are concerned with this because prolonged hunger can have negative health effects on many, especially children, and severely impact a person’s quality of life. To address this concern, we plan to compare hunger and malnutrition over time by country, as targeting countries where starvation is the worst is a critical step in coming up with solutions to address food instability.
## Keywords
Starvation; food insecurity; undernourishment; malnutrition; Global Hunger Index
## Introduction
One in four people globally are moderately or severely food insecure, which means that they lack consistent access to enough food to maintain an active, healthy lifestyle. World Hunger has been on the rise in recent years, despite previously declining and our project aims to find out where this rise is occurring the most. We are analysing data from the Global Hunger Index and other hunger undernourishment data collected by OurWorldInData in order to examine where GHI scores have been the highest in recent years, thus most alarming and how each component of the GHI score compares in those areas. The GHI Index is based on the following four indicators, “Undernourishment: the proportion of undernourished people as a percentage of the population (reflecting the share of the population with insufficient caloric intake); Child Wasting: the proportion of children under the age of five who suffer from wasting (low weight for their height, reflecting acute undernutrition); Child Stunting: the proportion of children under the age of five who suffer from stunting (low height for their age, reflecting chronic undernutrition); and Child Mortality: the mortality rate of children under the age of five (partially reflecting the fatal synergy of inadequate nutrition and unhealthy environments).” Understanding which of these indicators are contributing most to a high GHI score will inform future additional efforts to end hunger in each country and can help other countries see what types of efforts their international aid would be most useful toward.

## Problem Domain
**Background**

- Good health and longevity rests on a foundation afforded by a diet which is both sufficient in caloric and nutritional value. Unfortunately, undernourishment continues to be a leading risk factor for death and other health consequences. By examining the connections between hunger and its causes and effects, a richness of knowledge can be extracted which can allow more urgency around the issue to spring forth, and encourage action on the part of those possessing the means to incite change.

**Direct & Indirect Stakeholders**
- According to Action Against Hunger, global food insecurity most directly affects the impoverished, young children, women, the most socially marginalized individuals, people in conflict settings, and refugees and the displaced.<sub>1</sub> Indirect stakeholders are those working in the food supply chain who experience extra strain thanks to the insatiable demand for what they can provide. Those who increase access to food in critical areas, such as food banks or small family-owned grocery stores located in “food deserts”, have a hard time protecting their stock and preventing people from taking advantage of their generosity.

**Human Values**
- Our human values are how we guide our project to take into account the human element of what we are attempting to record through how we process our data.<sub>2</sub> These are Openness, empathy, love and respect for the dignity and health of our fellow humans.

**Potential Benefits and Harms**
- Benefits of reducing world hunger include reducing its ability to ripple out and harm the development of nations, communities, and even individual humans (as hunger stunts growth).<sub>3</sub> The harms of approaching the issue are minimal, there is mostly very much good that can be done in this area. However, it is possible that by attempting to tackle world hunger rather than general trends in overpopulation, the problem will simply get worse, and we will always be behind the curve on the issue.

## Research Questions
**1. Has global hunger been reduced in any areas of note over the years?**

  **a)** This question is an important one to answer because it helps provide hope and positive feedback to the efforts already in place to end the issue.

  **b)** This is connected to the problem domain because it helps us keep tabs on where the efforts to reduce hunger are currently.

**2. Does world hunger tend to occur in countries that are grouped together, or further apart?**

  **a)** This question is important because it can help us figure out whether climate or trans-state political or social conflicts are causing the worst of the issue.

  **b)** This is connected to the problem domain in that it captures a range of the issue that is more specific than simply “global” and therefore advances the conversation.

**3.   What were politics like in the years when global hunger was at its highest**

  **a)** This question is an important one to answer because it allows us to think about how politics or economics may be impacting world hunger by thinking about events at the times when hunger was at its worst.

  **b)** The connection between this question and the problem domain is that it covers some of the context of the problem domain.




## The Dataset

Our data has several subsections evaluating, undernurishment in the world by location, age group, food insecurity, etc. 

| Chart Title      | Purpose       | # of Observations | # of Variables | Citations |
|------------------|---------------|-------------------|----------------|-----------|
|Undernourishment  | The purpose of these charts is to share the prevalence of undernourishment across the planet. It also highlights the effect of food insecurity on the population and how that directly correlates with undernourishment. | 188 | Country Date % Change in prevalence of undernouri-shment(3)| Share of the population that is undernourished| 
|Childhood Malnutrition | The purpose of these graphs is to show children facing undernourishmnet are showing its effects in two specific ways. Stunting is observed in severe malnutrition cases where the height of children is two standard deviations below the mean height of children their age. The second factor is wasting. Here, the children are dangerously skinny for their height. It shows the severity of hunger on our newest generation. | 165 |Country Date % Change in prevalence of stunting/wasting/ underweight (3)| Malnutrition: Share of children who are stunted, 2020 Malnutrition: Share of children who are wasted, 2020 Malnutrition: Share of children who are underweight, 2020 |
| The Global Hunger Index | The Global Hunger Index takes into account four of the pieces mentioned above: undernourishment, child wasting, child stunting, and child mortality. It allows us to understand how all three play a role on each individual country overtime. | 157 | Country Year % change in global hunger based on the 4 parts explained in the purpose (3) | Global Hunger Index, 2021| 
| Long-term decline in undernourishment | This graph highlights the deep lasting effects of undernourishment on the population. It analyzes how developing countries have been noticing a decline in undernourishment over time. | 1 (developing countries all clubbed as 1) | Year % change in prevalence of undernourishment in developing countries (2) | Prevalence of undernourishment in developing countries, 1970 to 2015 | 
| Food Insecurity | These graphs analyze food insecurity specifically. It looks at regions and the prevalence of this insecurity. It also looks at the correlation of different levels of  food insecurity and poverty as well. | 164 |Countries Years % change in prevalence of food insecurity in the total population (3) | Share of population with severe food insecurity, 2019 Number of people who are severely food insecure, 2019 |

We got our data from the website, ourworldindata.org, which uses data from WHO, the food security indicator, and other reliable data collection sites. This data set allows us to look at answer our research questions by giving us several difference aspects of what contributes to world hunger and how it has changed over time. It also allows us to view our data in a map format so that we can see where hunger stems from and if its near countries located next to eachother. It also lets us analyze how specific events over time which contributes this data. 

## Expected Implications
If we were to answer our research question, we would know the countries across the world that struggle the most with food instability and malnutrition. The implications of this are that humanitarian groups and governments would know best where to direct efforts and funding into reducing starvation. While the ultimate goal is to end hunger in all countries, addressing areas where hunger is especially severe or prolonged may be a good place to start. Presenting hunger data is additionally a good way to encourage people to donate or volunteer to help fight hunger, either in their own country or in others. And since our data is overtime, we will be able to see countries where starvation has been an issue for a long time compared to countries where widespread hunger has become more recent. Analysts may be able to compare this data to world events to see what changes or environments are likely to cause widespread hunger in a country.
## Limitations
The limitations of this project that we must address are that we don’t have many metrics on contributing/risk factors for each element of the GHI score, so we cannot test if there are any associations between certain factors and increased hunger over time. We will be able to identify where hunger is worsening, but not why. For instance, the politics of a country and potential civil unrest may contribute to the most recent, and even sudden, declines in food availability for a country or group of countries and this would not be demonstrated in the dataset as is. Additionally, how countries get their food, either by mostly imports or mostly domestically, can impact consistent food accessibility, especially in pandemic situations and times of unrest and we would not necessarily be able to identify this situation for every country in this dataset.

## Appendix A: Questions
For the final report, will we be required to have an appendix A?

How many columns and features are necessary for our data set?

## References
1. Who Does Hunger Affect? (2022, October 4). actionagainsthunger.org. https://www.actionagainsthunger.org/the-hunger-crisis/world-hunger-facts/who-does-hunger-affect/

2. Human Values. (2016, August 8). grainesdepaix.org. https://www.google.com/url?q=https://www.grainesdepaix.org/en/resources/peace-dictionary/human-values&sa=D&source=docs&ust=1667267691221274&usg=AOvVaw2AXtJ79NWFJbNM5qTMZLaW

3. 5 Reasons to Care about Ending Hunger. (2018, October 15). unfoundation.org. https://unfoundation.org/blog/post/5-reasons-care-end-hunger/
