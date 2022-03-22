# MASc Thesis Meaningful Datatypes
Repository to accompany my MASc Thesis, Meaningful Datatypes

## Contents
1. Census Data Ontology 
2. MeTS Implementation
3. Soundness Theorem

### Census Data Ontology
This folder contains the modules of the census data ontology, written in Prover9 syntax. The modules of the ontology are organized into the base modules, which describe the fundamental concepts underlying census data, and the operatiosn modules, which model the ways which census data can be combined and manipulated. 

### MeTS Implementation
This folder contains the idris source code for the proof of concept implementation of MeTS, based on StatCAN census data. It is organized in a modular structure inlcuding modules for Mereology, Provenance, PopulationTypes, PopulationProvenance, Census, & Main idris source files.

### Soundness Theorem
This folder an example of a MeTS type environment and a first order logic theory which model the same underlying concept. This example is a simple geospatial mereology, and the proof of soundness of this type envrionment with respect to the theory is described in the thesis paper.
