# Fuzzy Logic based system for analysing symptoms of autism in children

<!-- PROJECT LOGO -->
<br />
  <p align="left">
    The main objective of the project was to develop a fuzzy system that allows early assessment of the probability of autism in children under the age of 3 and to indicate further recommendations for parents.
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#methods-of-diagnosis">Methods of diagnosis</a></li>
        <li><a href="#proposed-solution">Proposed solution</a></li>
        <li><a href="#databases">Databases</a></li>
        <li><a href="#results">Results</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#bibliography">Bibliography</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

Early signs of autism in a child may include : 
- atypical eye contact,
- lack of response to messages directed to the child,
- insufficient reciprocation of social smiles,
- impoverished vocalization,
- lack of or significant delay in responding to one's own name,
- lack of emotional attunement to emotions shown by others,
- lack of spontaneous pointing to objects of interest in the environment,
- lack of following with the eyes a person, a toy being shown, etc,
- lack of understanding and imitation of gestures.

### Methods of diagnosis
Q-10 system:

![q10](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/q10.jpg)


Q-4 system:
- Does the child make eye contact?
- Does the child look at objects the parent shows him or her?
- Does the child chatter?
- Does the child reciprocate smiles and respond to the parent's facial expressions?

### Proposed solution

Based on an analysis of the two questionnaires used, a system was developed that works according to the age of the patient ( in months). In addition, it took into account such parameters as the child's ethnicity, ASD cases in the family and gender:

![schem](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/schem.JPG)

Q10 system applied in Matlab:

![Obraz2](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/Q10.png)

Q4 system applied in Matlab:

![Obraz3](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/Q4.png)

PredAut system applied in Matlab:

![Obraz4](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/predAut.png)


### Databases
Databases used to develop and test the system:
- Toddler Autism dataset July 2018 https://www.kaggle.com/datasets/fabdelja/autism-screening-for-toddlers 
- Autism Spectrum Disorder Screening Data for Toddlers in Saudi Arabia Dataset https://www.kaggle.com/datasets/asdpredictioninsaudi/asd-screening-data-for-toddlers-in-saudi-arabia

### Results

The system was tested by manually entering sample inputs and comparing the results obtained and on two databases. The results are shown below.

Toddler Autism Dataset - probabilities for patients with ASD (left) and no ASD (right):
![tad](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/tad.JPG)

ASD Screening Data for Toddlers - probabilities for patients with ASD (left) and no ASD (right):
![asds](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/asds.JPG)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites
To build this project, you require:
* MATLAB with Fuzzy Logic Toolbox Add-On
https://www.mathworks.com/matlabcentral/fileexchange/6434-fuzzy-logic-toolbox-add-on

### Installation
1. Clone the repo
   ```sh
   git clone https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis.git
   ```
2. Open project in Matlab.
3. Run 'system_test' file or 'system_matrix' file.


# Bibliography:

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4067639/
Autism Spectrum Disorders and Race, Ethnicity, and Nativity: A Population-Based Study.
Becerra TA, von Ehrenstein OS, Heck JE, Olsen J, Arah OA, Jeste SS, Rodriguez M, Ritz B

https://www.cdc.gov/ncbddd/autism/addm-community-report/differences-in-children.html
Spotlight On: Racial and Ethnic Differences in Children Identified with Autism Spectrum Disorder (ASD)

https://www.cdc.gov/ncbddd/autism/data/index.html

https://pubmed.ncbi.nlm.nih.gov/18253102/
Diagnosis of autism spectrum disorders in the first 3 years of life.
Rebecca J Landa

https://srcd.onlinelibrary.wiley.com/doi/full/10.1111/cdep.12031
Sensory Symptoms in Autism: A Blooming, Buzzing Confusion?
Elizabeth Pellicano

https://www.bmj.com/content/327/7413/488.short
Diagnosis of autism
Baird G, Cass H, Slonims V.

https://link.springer.com/content/pdf/10.1007/978-1-4899-0882-7.pdf?pdf=button
Diagnosis and Treatment of Autism.
Christopher Gillberg 





<!-- README created using the following template -->
<!-- https://github.com/othneildrew/Best-README-Template -->
