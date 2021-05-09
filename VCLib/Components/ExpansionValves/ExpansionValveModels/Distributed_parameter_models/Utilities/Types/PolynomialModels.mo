within VCLib.Components.ExpansionValves.ExpansionValveModels.Distributed_parameter_models.Utilities.Types;
type PolynomialModels = enumeration(
    ShanweiEtAl2005
    "ShanweiEtAl2005 - Function of area, pressures, subcooling and densities",
    Li2013
    "Li2013 - Function of opening degree and subcooling")
  "Enumeration to define polynomial models for calculating flow coefficient"
  annotation (Evaluate=true);
