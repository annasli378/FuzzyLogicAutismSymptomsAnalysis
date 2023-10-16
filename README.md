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
        <li><a href="#summary">Summary</a></li>
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

![q10](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/Obraz1.jpg)

Q-4 system:
- Does the child make eye contact?
- Does the child look at objects the parent shows him or her?
- Does the child chatter?
- Does the child reciprocate smiles and respond to the parent's facial expressions?

### Proposed solution

Based on an analysis of the two questionnaires used, a system was developed that works according to the age of the patient ( in months). In addition, it took into account such parameters as the child's ethnicity, ASD cases in the family and gender:

![solution](https://github.com/annasli378/FuzzyLogicAutismSymptomsAnalysis/blob/main/schema.jpg)


### Databases

- Toddler Autism dataset July 2018
- Autism Spectrum Disorder Screening Data for Toddlers in Saudi Arabia Dataset

### Results

### Summary


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



<!-- README created using the following template -->
<!-- https://github.com/othneildrew/Best-README-Template -->
