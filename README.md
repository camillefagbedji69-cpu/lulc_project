# LULC-Dynamics: Spatio-Temporal Land Use Change Analysis

## 📌 Context & Overview
Understanding Land Use and Land Cover (LULC) transitions is critical for assessing anthropogenic pressure on ecosystems. Utilizing **Copernicus Global Land Cover (CGLS-LC100)** data, this project quantifies landscape transformations, highlighting the competition between urban expansion, agricultural maintenance, and natural ecosystem shifts.

## 🎯 Objectives
* **Transition Quantification:** Measuring the net and gross changes between land cover classes.
* **Trajectory Identification:** Pinpointing dominant trends such as urbanization, wetland expansion, and deforestation.
* **Planning Support:** Providing a data-driven baseline for sustainable territorial management.

## 🛠️ Methodology & Tech Stack
* **Data Source:** Copernicus CGLS-LC100 (100m resolution, 1ha/pixel).
* **Core Classes:** Closed/Open Forest, Shrubs, Herbaceous, Agriculture, Urban, and Wetlands.
* **Analytical Framework:** * Pixel-frequency based transition matrix.
    * Surface area calculation ($Area = Count \times Resolution$).
    * Percentage-based trend analysis.



## 🚀 Key Results
* **Net Dynamics:** A total area of **118 hectares** underwent significant class transitions during the study period.
* **The Urbanization Wave:** 76 ha were converted to Urban areas, with **64.4% of this expansion** occurring at the expense of valuable agricultural land.
* **Hydrological Shifts:** A 22 ha expansion of wetlands was observed, primarily emerging from former open forest areas (11%), suggesting local hydrological modifications.
* **Ecological Impact:** These trends reveal a dual pressure of artificialization and ecosystem restructuring, necessitating urgent conservation focus.

## 🔮 Perspectives for Improvement
* **Carbon-Loss Linking:** Directly correlating LULC transitions with carbon stock depletion (linking back to Project N°11 & 12).
* **Driver Analysis:** Integrating socio-economic data (population growth, infrastructure) to model the drivers of the agricultural-to-urban shift.
* **Predictive Simulation:** Using Markov Chains or Cellular Automata (CA-Markov) to project future landscape scenarios based on observed rates.

---
*Geospatial Intelligence for Environmental Monitoring & Land-Use Governance.*
