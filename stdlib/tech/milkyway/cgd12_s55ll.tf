/*=========================================================================*\
 * For SMIC 65LL/55LL Logic 1.2/2.5/3.3V Process
 * Metal option: 1P9M_8Ic_1TMc_ALPA1
 * 
 * Reference technology documents:
 *   1. Design Rule:       TD-LO55-DR-2002     rev. 5
 *   2. SPICE Model:       TD-LO55-SP-2002     rev. 4
 * 
 * Copyright (c) 2016-2018 Cogenda Pte Ltd
 * 
 * All rights reserved
 * 
\*=========================================================================*/

Technology {
  name                                = "smic55ll"
  unitLengthName                      = "micron"
  lengthPrecision                     = 1000
  gridResolution                      = 5
  unitTimeName                        = "ns"
  timePrecision                       = 1000
  unitCapacitanceName                 = "pf"
  capacitancePrecision                = 100000
  unitResistanceName                  = "ohm"
  resistancePrecision                 = 100000
  unitInductanceName                  = "nh"
  inductancePrecision                 = 100
  unitPowerName                       = "mw"
  powerPrecision                      = 100000
  unitVoltageName                     = "V"
  voltagePrecision                    = 1000000
  unitCurrentName                     = "mA"
  currentPrecision                    = 1000
}

Layer "M1" {
  layerNumber                         = 61
  isDefaultLayer                      = 1
  maskName                            = "metal1"
  unitMinThickness                    = 0.1485
  unitNomThickness                    = 0.165
  unitMaxThickness                    = 0.1815
  unitMinResistance                   = 0.0919
  unitNomResistance                   = 0.132
  unitMaxResistance                   = 0.1721
  maxCurrDensity                      = 969000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minArea                             = 0.027
  minEnclosedArea                     = 0.13
  minSpacing                          = 0.09
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.09, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V1" {
  layerNumber                         = 70
  isDefaultLayer                      = 1
  maskName                            = "via1"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblExtensionRange                = ( 0, 0.499, 0.499 )
  fatTblFatContactNumber              = ( 1, 1, 5 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  fatTblExtensionContactNumber        = ( 1, 1, 1 )
  fatTblExtensionMinCuts              = ( 1, 2, 4 )
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M2" {
  layerNumber                         = 62
  isDefaultLayer                      = 1
  maskName                            = "metal2"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V2" {
  layerNumber                         = 71
  isDefaultLayer                      = 1
  maskName                            = "via2"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 6, 6, 10 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M3" {
  layerNumber                         = 63
  isDefaultLayer                      = 1
  maskName                            = "metal3"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V3" {
  layerNumber                         = 72
  isDefaultLayer                      = 1
  maskName                            = "via3"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 11, 11, 15 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M4" {
  layerNumber                         = 64
  isDefaultLayer                      = 1
  maskName                            = "metal4"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V4" {
  layerNumber                         = 73
  isDefaultLayer                      = 1
  maskName                            = "via4"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 16, 16, 20 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M5" {
  layerNumber                         = 65
  isDefaultLayer                      = 1
  maskName                            = "metal5"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V5" {
  layerNumber                         = 74
  isDefaultLayer                      = 1
  maskName                            = "via5"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 21, 21, 25 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M6" {
  layerNumber                         = 66
  isDefaultLayer                      = 1
  maskName                            = "metal6"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V6" {
  layerNumber                         = 75
  isDefaultLayer                      = 1
  maskName                            = "via6"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 26, 26, 30 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M7" {
  layerNumber                         = 67
  isDefaultLayer                      = 1
  maskName                            = "metal7"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "V7" {
  layerNumber                         = 76
  isDefaultLayer                      = 1
  maskName                            = "via7"
  minWidth                            = 0.09
  defaultWidth                        = 0.09
  minSpacing                          = 0.13
  sameNetMinSpacing                   = 0.11
  maxStackLevel                       = 4
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 0.809 )
  fatTblFatContactNumber              = ( 31, 31, 35 )
  fatTblFatContactMinCuts             = ( 1, 2, 4 )
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M8" {
  layerNumber                         = 68
  isDefaultLayer                      = 1
  maskName                            = "metal8"
  unitMinThickness                    = 0.18
  unitNomThickness                    = 0.2
  unitMaxThickness                    = 0.22
  unitMinResistance                   = 0.0741
  unitNomResistance                   = 0.099
  unitMaxResistance                   = 0.1239
  maxCurrDensity                      = 950000
  maxSegLenForRC                      = 2000
  pitch                               = 0.2
  maxWidth                            = 12
  minWidth                            = 0.1
  defaultWidth                        = 0.1
  minArea                             = 0.035
  minEnclosedArea                     = 0.12
  minSpacing                          = 0.1
  fatTblDimension                     = 4
  fatTblThreshold                     = ( 0, 1.001, 5.001, 12.001 )
  fatTblParallelLength                = ( 0, 2.001, 2.001, 2.001 )
  fatTblSpacing                       = ( 0.1, 0.16, 0.5, 0.5, 0.16, 0.16, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 )
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "dot"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "TV2" {
  layerNumber                         = 123
  isDefaultLayer                      = 1
  maskName                            = "via8"
  minWidth                            = 0.36
  defaultWidth                        = 0.36
  minSpacing                          = 0.34
  fatTblDimension                     = 3
  fatTblThreshold                     = ( 0, 0.499, 2.179 )
  fatTblFatContactNumber              = ( 36, 36, 38 )
  fatTblFatContactMinCuts             = ( 1, 2, 3 )
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "TM2" {
  layerNumber                         = 122
  isDefaultLayer                      = 1
  maskName                            = "metal9"
  unitMinThickness                    = 0.81
  unitNomThickness                    = 0.9
  unitMaxThickness                    = 0.99
  unitMinResistance                   = 0.0125
  unitNomResistance                   = 0.0177
  unitMaxResistance                   = 0.0229
  maxCurrDensity                      = 900000
  maxSegLenForRC                      = 20000
  pitch                               = 0.8
  maxWidth                            = 20
  minWidth                            = 0.4
  defaultWidth                        = 0.4
  minArea                             = 0.4
  minEnclosedArea                     = 0.6
  minSpacing                          = 0.4
  fatTblDimension                     = 2
  fatTblThreshold                     = ( 0, 2.001 )
  fatTblParallelLength                = ( 0, 2.001 )
  fatTblSpacing                       = ( 0.4, 0.5, 0.5, 0.5 )
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RDV" {
  layerNumber                         = 165
  isDefaultLayer                      = 1
  maskName                            = "via9"
  minWidth                            = 3
  defaultWidth                        = 3
  minSpacing                          = 3
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "rectangleX"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RDL" {
  layerNumber                         = 166
  isDefaultLayer                      = 1
  maskName                            = "metal10"
  unitMinThickness                    = 1.305
  unitNomThickness                    = 1.45
  unitMaxThickness                    = 1.595
  unitMinResistance                   = 0.0139
  unitNomResistance                   = 0.0179
  unitMaxResistance                   = 0.0219
  maxCurrDensity                      = 189000
  maxSegLenForRC                      = 20000
  pitch                               = 6
  minWidth                            = 3
  defaultWidth                        = 3
  minArea                             = 9
  minSpacing                          = 3
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "AA" {
  layerNumber                         = 10
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "NW" {
  layerNumber                         = 14
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DNW" {
  layerNumber                         = 19
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "DNWR" {
  layerNumber                         = 19
  dataTypeNumber                      = 2
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "PW" {
  layerNumber                         = 20
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "LOGO" {
  layerNumber                         = 26
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DG" {
  layerNumber                         = 29
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "GT" {
  layerNumber                         = 30
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "HRP" {
  layerNumber                         = 39
  color                               = "cyan"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "SN" {
  layerNumber                         = 40
  color                               = "green"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "ESD1" {
  layerNumber                         = 41
  color                               = "magenta"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "SP" {
  layerNumber                         = 43
  color                               = "purple"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "MVP" {
  layerNumber                         = 44
  color                               = "red"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "MVN" {
  layerNumber                         = 45
  color                               = "white"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "VTPH" {
  layerNumber                         = 46
  color                               = "yellow"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "VTNH" {
  layerNumber                         = 47
  color                               = "blue"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "SAB" {
  layerNumber                         = 48
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "CT" {
  layerNumber                         = 50
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "INST" {
  layerNumber                         = 60
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "TV1" {
  layerNumber                         = 121
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "TM1" {
  layerNumber                         = 120
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "STV1" {
  layerNumber                         = 243
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "STM1" {
  layerNumber                         = 228
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "STV2" {
  layerNumber                         = 244
  color                               = "cyan"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "STM2" {
  layerNumber                         = 229
  color                               = "green"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "PA" {
  layerNumber                         = 80
  color                               = "magenta"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "ALPA" {
  layerNumber                         = 83
  color                               = "purple"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "FUSE" {
  layerNumber                         = 81
  color                               = "red"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "GTFUSE" {
  layerNumber                         = 81
  dataTypeNumber                      = 1
  color                               = "white"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "EFUSE" {
  layerNumber                         = 81
  dataTypeNumber                      = 2
  color                               = "yellow"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "ALPAR" {
  layerNumber                         = 83
  dataTypeNumber                      = 1
  color                               = "blue"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "ALPATXT" {
  layerNumber                         = 83
  dataTypeNumber                      = 2
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "PSUB" {
  layerNumber                         = 85
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DUMBM" {
  layerNumber                         = 90
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DUMBA" {
  layerNumber                         = 91
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DUMBP" {
  layerNumber                         = 92
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "VARMOS" {
  layerNumber                         = 93
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "VARJUN" {
  layerNumber                         = 94
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RESNW" {
  layerNumber                         = 95
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RESP1" {
  layerNumber                         = 96
  color                               = "cyan"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RESAA" {
  layerNumber                         = 97
  color                               = "green"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "OPCBA" {
  layerNumber                         = 100
  color                               = "magenta"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "OPCBP" {
  layerNumber                         = 101
  color                               = "purple"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "OPCBM" {
  layerNumber                         = 102
  color                               = "red"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "LVP" {
  layerNumber                         = 218
  color                               = "white"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "LVN" {
  layerNumber                         = 219
  color                               = "yellow"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "TG" {
  layerNumber                         = 125
  color                               = "blue"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "OVERPL" {
  layerNumber                         = 125
  dataTypeNumber                      = 4
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "UNDEPL" {
  layerNumber                         = 125
  dataTypeNumber                      = 5
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "BORDER" {
  layerNumber                         = 127
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "MD" {
  layerNumber                         = 130
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "SUBD" {
  layerNumber                         = 131
  dataTypeNumber                      = 1
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "MOSCKT" {
  layerNumber                         = 131
  dataTypeNumber                      = 2
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "ESDIO1" {
  layerNumber                         = 133
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "CAPBP" {
  layerNumber                         = 137
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "DMMFC" {
  layerNumber                         = 137
  dataTypeNumber                      = 1
  color                               = "cyan"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DSTR" {
  layerNumber                         = 138
  color                               = "green"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "DCTY" {
  layerNumber                         = 139
  color                               = "magenta"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "RDLPA2" {
  layerNumber                         = 167
  color                               = "white"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M1TXT" {
  layerNumber                         = 141
  color                               = "yellow"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M2TXT" {
  layerNumber                         = 142
  color                               = "blue"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M3TXT" {
  layerNumber                         = 143
  color                               = "cyan"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M4TXT" {
  layerNumber                         = 144
  color                               = "green"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M5TXT" {
  layerNumber                         = 145
  color                               = "magenta"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M6TXT" {
  layerNumber                         = 146
  color                               = "purple"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M7TXT" {
  layerNumber                         = 147
  color                               = "red"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "M8TXT" {
  layerNumber                         = 148
  color                               = "white"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "TM1TXT" {
  layerNumber                         = 120
  dataTypeNumber                      = 3
  color                               = "yellow"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "TM2TXT" {
  layerNumber                         = 122
  dataTypeNumber                      = 3
  color                               = "blue"
  lineStyle                           = "solid"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "STM1TXT" {
  layerNumber                         = 228
  dataTypeNumber                      = 3
  color                               = "cyan"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "STM2TXT" {
  layerNumber                         = 229
  dataTypeNumber                      = 3
  color                               = "green"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "EXDFM" {
  layerNumber                         = 239
  dataTypeNumber                      = 1
  color                               = "magenta"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

LayerDataType "COGENDA" {
  layerNumber                         = 63
  dataTypeNumber                      = 63
  color                               = "purple"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "EGLMR1" {
  layerNumber                         = 184
  color                               = "red"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

Layer "EGLMR2" {
  layerNumber                         = 185
  color                               = "white"
  lineStyle                           = "dash"
  pattern                             = "blank"
  visible                             = 1
  selectable                          = 1
  blink                               = 0
}

ContactCode "via1_HV" {
  contactCodeNumber                   = 1
  cutLayer                            = "V1"
  lowerLayer                          = "M1"
  upperLayer                          = "M2"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via1_VH" {
  contactCodeNumber                   = 2
  cutLayer                            = "V1"
  lowerLayer                          = "M1"
  upperLayer                          = "M2"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via1_HH" {
  contactCodeNumber                   = 3
  cutLayer                            = "V1"
  lowerLayer                          = "M1"
  upperLayer                          = "M2"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via1_VV" {
  contactCodeNumber                   = 4
  cutLayer                            = "V1"
  lowerLayer                          = "M1"
  upperLayer                          = "M2"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via1_fat" {
  contactCodeNumber                   = 5
  cutLayer                            = "V1"
  lowerLayer                          = "M1"
  upperLayer                          = "M2"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via2_VH" {
  contactCodeNumber                   = 6
  cutLayer                            = "V2"
  lowerLayer                          = "M2"
  upperLayer                          = "M3"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via2_HV" {
  contactCodeNumber                   = 7
  cutLayer                            = "V2"
  lowerLayer                          = "M2"
  upperLayer                          = "M3"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via2_VV" {
  contactCodeNumber                   = 8
  cutLayer                            = "V2"
  lowerLayer                          = "M2"
  upperLayer                          = "M3"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via2_HH" {
  contactCodeNumber                   = 9
  cutLayer                            = "V2"
  lowerLayer                          = "M2"
  upperLayer                          = "M3"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via2_fat" {
  contactCodeNumber                   = 10
  cutLayer                            = "V2"
  lowerLayer                          = "M2"
  upperLayer                          = "M3"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via3_HV" {
  contactCodeNumber                   = 11
  cutLayer                            = "V3"
  lowerLayer                          = "M3"
  upperLayer                          = "M4"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via3_VH" {
  contactCodeNumber                   = 12
  cutLayer                            = "V3"
  lowerLayer                          = "M3"
  upperLayer                          = "M4"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via3_HH" {
  contactCodeNumber                   = 13
  cutLayer                            = "V3"
  lowerLayer                          = "M3"
  upperLayer                          = "M4"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via3_VV" {
  contactCodeNumber                   = 14
  cutLayer                            = "V3"
  lowerLayer                          = "M3"
  upperLayer                          = "M4"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via3_fat" {
  contactCodeNumber                   = 15
  cutLayer                            = "V3"
  lowerLayer                          = "M3"
  upperLayer                          = "M4"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via4_VH" {
  contactCodeNumber                   = 16
  cutLayer                            = "V4"
  lowerLayer                          = "M4"
  upperLayer                          = "M5"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via4_HV" {
  contactCodeNumber                   = 17
  cutLayer                            = "V4"
  lowerLayer                          = "M4"
  upperLayer                          = "M5"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via4_VV" {
  contactCodeNumber                   = 18
  cutLayer                            = "V4"
  lowerLayer                          = "M4"
  upperLayer                          = "M5"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via4_HH" {
  contactCodeNumber                   = 19
  cutLayer                            = "V4"
  lowerLayer                          = "M4"
  upperLayer                          = "M5"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via4_fat" {
  contactCodeNumber                   = 20
  cutLayer                            = "V4"
  lowerLayer                          = "M4"
  upperLayer                          = "M5"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via5_HV" {
  contactCodeNumber                   = 21
  cutLayer                            = "V5"
  lowerLayer                          = "M5"
  upperLayer                          = "M6"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via5_VH" {
  contactCodeNumber                   = 22
  cutLayer                            = "V5"
  lowerLayer                          = "M5"
  upperLayer                          = "M6"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via5_HH" {
  contactCodeNumber                   = 23
  cutLayer                            = "V5"
  lowerLayer                          = "M5"
  upperLayer                          = "M6"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via5_VV" {
  contactCodeNumber                   = 24
  cutLayer                            = "V5"
  lowerLayer                          = "M5"
  upperLayer                          = "M6"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via5_fat" {
  contactCodeNumber                   = 25
  cutLayer                            = "V5"
  lowerLayer                          = "M5"
  upperLayer                          = "M6"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via6_VH" {
  contactCodeNumber                   = 26
  cutLayer                            = "V6"
  lowerLayer                          = "M6"
  upperLayer                          = "M7"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via6_HV" {
  contactCodeNumber                   = 27
  cutLayer                            = "V6"
  lowerLayer                          = "M6"
  upperLayer                          = "M7"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via6_VV" {
  contactCodeNumber                   = 28
  cutLayer                            = "V6"
  lowerLayer                          = "M6"
  upperLayer                          = "M7"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via6_HH" {
  contactCodeNumber                   = 29
  cutLayer                            = "V6"
  lowerLayer                          = "M6"
  upperLayer                          = "M7"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via6_fat" {
  contactCodeNumber                   = 30
  cutLayer                            = "V6"
  lowerLayer                          = "M6"
  upperLayer                          = "M7"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via7_HV" {
  contactCodeNumber                   = 31
  cutLayer                            = "V7"
  lowerLayer                          = "M7"
  upperLayer                          = "M8"
  isDefaultContact                    = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via7_VH" {
  contactCodeNumber                   = 32
  cutLayer                            = "V7"
  lowerLayer                          = "M7"
  upperLayer                          = "M8"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via7_HH" {
  contactCodeNumber                   = 33
  cutLayer                            = "V7"
  lowerLayer                          = "M7"
  upperLayer                          = "M8"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.005
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.005
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via7_VV" {
  contactCodeNumber                   = 34
  cutLayer                            = "V7"
  lowerLayer                          = "M7"
  upperLayer                          = "M8"
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.005
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.005
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.11
  viaFarmSpacing                      = 0.15
  maxNumRows                          = 3
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via7_fat" {
  contactCodeNumber                   = 35
  cutLayer                            = "V7"
  lowerLayer                          = "M7"
  upperLayer                          = "M8"
  isFatContact                        = 1
  cutWidth                            = 0.09
  cutHeight                           = 0.09
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.03
  lowerLayerEncHeight                 = 0.03
  minCutSpacing                       = 0.13
  viaFarmSpacing                      = 0.15
  minNumRows                          = 4
  unitMinResistance                   = 1.25
  unitNomResistance                   = 2.5
  unitMaxResistance                   = 3.75
}

ContactCode "via8_VX" {
  contactCodeNumber                   = 36
  cutLayer                            = "TV2"
  lowerLayer                          = "M8"
  upperLayer                          = "TM2"
  isDefaultContact                    = 1
  cutWidth                            = 0.36
  cutHeight                           = 0.36
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.01
  lowerLayerEncHeight                 = 0.05
  minCutSpacing                       = 0.34
  viaFarmSpacing                      = 0.56
  maxNumRows                          = 2
  unitMinResistance                   = 0.12
  unitNomResistance                   = 0.24
  unitMaxResistance                   = 0.36
}

ContactCode "via8_HX" {
  contactCodeNumber                   = 37
  cutLayer                            = "TV2"
  lowerLayer                          = "M8"
  upperLayer                          = "TM2"
  cutWidth                            = 0.36
  cutHeight                           = 0.36
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.05
  lowerLayerEncHeight                 = 0.01
  minCutSpacing                       = 0.34
  viaFarmSpacing                      = 0.56
  maxNumRows                          = 2
  unitMinResistance                   = 0.12
  unitNomResistance                   = 0.24
  unitMaxResistance                   = 0.36
}

ContactCode "via8_fat" {
  contactCodeNumber                   = 38
  cutLayer                            = "TV2"
  lowerLayer                          = "M8"
  upperLayer                          = "TM2"
  isFatContact                        = 1
  cutWidth                            = 0.36
  cutHeight                           = 0.36
  upperLayerEncWidth                  = 0.02
  upperLayerEncHeight                 = 0.02
  lowerLayerEncWidth                  = 0.05
  lowerLayerEncHeight                 = 0.05
  minCutSpacing                       = 0.5
  viaFarmSpacing                      = 0.56
  minNumRows                          = 3
  unitMinResistance                   = 0.12
  unitNomResistance                   = 0.24
  unitMaxResistance                   = 0.36
}

ContactCode "via9_RDV" {
  contactCodeNumber                   = 39
  cutLayer                            = "RDV"
  lowerLayer                          = "TM2"
  upperLayer                          = "RDL"
  isDefaultContact                    = 1
  cutWidth                            = 3
  cutHeight                           = 3
  upperLayerEncWidth                  = 1.5
  upperLayerEncHeight                 = 1.5
  lowerLayerEncWidth                  = 1
  lowerLayerEncHeight                 = 1
  minCutSpacing                       = 3
  unitMinResistance                   = 0.05
  unitNomResistance                   = 0.1
  unitMaxResistance                   = 0.15
}

DensityRule {
  layer                               = "M1"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M2"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M3"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M4"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M5"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M6"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M7"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "M8"
  windowSize                          = 200
  minDensity                          = 15
  maxDensity                          = 80
  maxGradientDensity                  = 45
}

DensityRule {
  layer                               = "TM2"
  windowSize                          = 400
  minDensity                          = 20
  maxDensity                          = 85
}

DensityRule {
  layer                               = "RDL"
}

Tile "unit" {
  width                               = 0.2
  height                              = 2.4
}

PRRule {
  rowSpacingTopTop                    = 0
  rowSpacingBotBot                    = 0
  abuttableTopTop                     = 1
  abuttableBotBot                     = 1
  abuttableTopBot                     = 0
}

