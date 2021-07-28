@startuml




 Class PartialFlowCoefficient << partial >>  {
}






 Class PartialExpansionValve << partial >>  {
 + parameter Modelica.SIunits.Area AVal = 2.5e-6 
 + parameter Modelica.SIunits.Diameter dInlPip = 7.5e-3 
 + parameter Boolean useInpFil = true 
 + parameter Modelica.SIunits.Time risTim = 0.5 
 + parameter Utilities.Types.CalcProc calcProc=Utilities.Types.CalcProc.nominal 
 + parameter Modelica.SIunits.MassFlowRate mFlowNom = m_flow_nominal 
 + parameter Modelica.SIunits.PressureDifference dpNom = 15e5 
 + parameter Medium.MassFlowRate m_flow_nominal = 0.1 
 + parameter Boolean show_flow_coefficient = true 
 + parameter Boolean show_staInl = true 
 + parameter Boolean show_staOut = false 
}












 Class PartialIsenthalpicExpansionValve << partial >>  {
}






Class IsenthalpicExpansionValve << model >>  {
}






enum	 CalcProc << type >> {
}





package Utilities.FlowCoefficient.SpecifiedFlowCoefficients{ 

Class ConstantFlowCoefficient << model >>  {
 + parameter Real C_const  {  unit="1", min = 0, max = 100, nominal = 25  }   = 15 
}
}






 Class PartialTwoPort << partial >>  {
 + parameter Boolean allowFlowReversal = true 
}








 Class PartialTwoPortTransport << partial >>  {
 + parameter Modelica.SIunits.PressureDifference dp_start  {  displayUnit="Pa"  }   = 0 
 + parameter Medium.MassFlowRate m_flow_start = 0 
 + parameter Medium.MassFlowRate m_flow_small 
 + parameter Boolean show_T = true 
 + parameter Boolean show_V_flow = true 
}

 

Modelica.Media.R134a.R134a_ph <|..-up "Medium"PartialFlowCoefficient


CalcProc -down--* "calcProc"PartialExpansionValve


ConstantFlowCoefficient <|..-up "FlowCoefficient"PartialExpansionValve


PartialTwoPortTransport <|---up PartialExpansionValve


RealInput -down--* "manVarVal"PartialExpansionValve


RealOutput -down--* "curManVarVal"PartialExpansionValve


Filter -down--* "filterOpening"PartialExpansionValve


RealPassThrough -down--* "openingThrough"PartialExpansionValve


PartialExpansionValve <|---up PartialIsenthalpicExpansionValve


PartialIsenthalpicExpansionValve <|---up IsenthalpicExpansionValve


PartialFlowCoefficient <|---up ConstantFlowCoefficient


Modelica.Media.Interfaces.PartialMedium <|..-up "Medium"PartialTwoPort


FluidPort_a -down--* "port_a"PartialTwoPort


FluidPort_b -down--* "port_b"PartialTwoPort


PartialTwoPort <|---up PartialTwoPortTransport


 @enduml
