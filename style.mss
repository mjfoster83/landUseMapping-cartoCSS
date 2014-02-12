/* Land Use Style Color Palette
Creation Date: February 12, 2014
Author: Mike Foster (@mjfoster83)
Description: Color palette for land use and zoning maps. */

/* Tilemill Background */
Map {
  background-color: #ffffff;
}

/* --- Generalized Land Use Color Palette --- */
@yellow: #ffdd00; /* Single-Family Residential */
@orange: #f5821f; /* Multi-Family Residential */
@red: #ed1846; /* Commercial */
@purple: #7e78b8; /* Industrial or Utility */
@blue: #30769c; /* Institutional */
@pink: #c882a8; /* Mixed Use - Residential, Industrial, Commercial */
@violet: #bfaec9; /* Extractive - Gravel Pit or Quarry */
@green: #3a8757; /* Park, Recreational, or Preservation Area */
@offwhite: #f5ece5; /* Undeveloped */
@blue-light: #c6def3; /* Water */
@green-light: #cbd5ca; /* Agricultural */
@brown: #987f64; /* Farmstead */
@gray-light: #c6c8ca; /* Railway */
@gray: #939597; /* Airport and Aviation */
@gray-dark: #404041; /* Highways and Roads */

/* Generalized Land Use Palette Implementation
   Using 2010 Land Use data of the greater Minneapolis-St Paul region
   from MetroGIS */
#generalizedlanduse20::fill[zoom>=0] {
  polygon-fill: @gray;
    [LUSE2010='111'] {
      polygon-fill: @brown; /* Farmstead */
  }
    [LUSE2010='112'],[LUSE2010='113'],[LUSE2010='116'] {
      polygon-fill: @yellow; /* Single-Family Residential */
  }
    [LUSE2010='114'],[LUSE2010='115'] {
      polygon-fill: @orange; /* Multi-Family Residential */
  }
    [LUSE2010='120'],[LUSE2010='130'] {
      polygon-fill: @red; /* Commercial */
  }
    [LUSE2010='141'],[LUSE2010='142'],[LUSE2010='143'] {
      polygon-fill: @pink; /* Mixed Use - Residential, Industrial, Commercial */
  }
    [LUSE2010='151'] {
      polygon-fill: @purple; /* Industrial or Utility */
  }
    [LUSE2010='153'] {
      polygon-fill: @violet; /* Extractive - Gravel Pit or Quarry */
  }
    [LUSE2010='160'] {
      polygon-fill: @blue; /* Institutional */
  }
    [LUSE2010='170'],[LUSE2010='173'] {
      polygon-fill: @green; /* Park, Recreational, or Preservation Area */
  }
    [LUSE2010='201'] {
      polygon-fill: @gray-dark; /* Highways and Roads */
  }
    [LUSE2010='202'] {
      polygon-fill: @gray-light; /* Railway */
  }
    [LUSE2010='203'] {
      polygon-fill: @gray; /* Airport and Aviation */
  }
    [LUSE2010='210'] {
      polygon-fill: @offwhite; /* Undeveloped */
  }
    [LUSE2010='220'] {
      polygon-fill: @blue-light; /* Water */
  }
    [LUSE2010='100'] {
      polygon-fill: @green-light; /* Agricultural */
  }
}
