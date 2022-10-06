# MASc Thesis Meaningful Datatypes
Repository to accompany my MASc Thesis, Meaningful Datatypes: Ontologically-Sound Dependent Type Systems for Data Science

## Contents
1. Census Data Ontology 
2. MeTS Implementation
3. Soundness Theorem
4. Presentations

### Census Data Ontology
This folder contains the modules of the census data ontology, written in Prover9 syntax. The modules of the ontology are organized into the base modules, which describe the fundamental concepts underlying census data, and the operation modules, which model the ways which census data can be combined and manipulated. 

### MeTS Implementation
This folder contains the idris source code for the proof of concept implementation of MeTS, based on StatCAN census data. It is organized in a modular structure inlcuding modules for Mereology, Provenance, PopulationTypes, PopulationProvenance, Census, & Main idris source files.

### Soundness Theorem
This folder an example of a MeTS type environment and a first order logic theory which model the same underlying concept. This example is a simple geospatial mereology, and the proof of soundness of this type envrionment with respect to the theory is described in the thesis paper.

### Presentations
This folder contains pdf slides for several presentations given relating to the thesis work, these were all given at a high-level and do not assume a background with dependent types, functional programming, or knowledge modelling. These presentations are included to provide additional context to the development of the thesis in the spirit of transparency
