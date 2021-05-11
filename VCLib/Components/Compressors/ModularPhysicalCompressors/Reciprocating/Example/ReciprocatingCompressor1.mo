within VCLib.Components.Compressors.ModularPhysicalCompressors.Reciprocating.Example;
model ReciprocatingCompressor1
  "Compressor model using constants for valve areas, Constants valid for propen"

  Modelica.Mechanics.Rotational.Sources.ConstantSpeed constantSpeed(w_fixed=314.16)
    annotation (Placement(transformation(extent={{-72,74},{-52,94}})));
  Modelica.Fluid.Sources.FixedBoundary Evaporator_out(
    use_p=true,
    use_T=true,
    redeclare package Medium =
        ModularPhysicalCompressors.ReciprocatingCompressor.Medium,
    nPorts=1,
    T(displayUnit="K") = 290.15,
    p(displayUnit="bar") = 1000000)
              annotation (Placement(transformation(extent={{-100,28},{-80,48}})));
  Modelica.Fluid.Sources.FixedBoundary Condenser_in(
    use_T=true,
    redeclare package Medium =
        ModularPhysicalCompressors.ReciprocatingCompressor.Medium,
    T(displayUnit="degC") = 373.15,
    nPorts=1,
    p=6000000)                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={88,38})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Ambient(T=298.15)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={28,-62})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor CompressorWall(      T(start=
          315, displayUnit="K"), C=50)
                       annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-38,-12})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor
    thermalConductor_ambient(G=G)
    "Thermal conduction between cylinder and ambient" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-6,-38})));
  parameter Modelica.Units.SI.ThermalConductance G=ModularPhysicalCompressors.ReciprocatingCompressor.Utilities.Geometry_Roskoch.G_wall_env
    "Constant thermal conductance of material";
equation

  connect(constantSpeed.flange, volumes.flange_a) annotation (Line(points={{-52,84},
          {-44,84},{-44,78},{-10,78}},     color={0,0,0}));
  connect(Ambient.port, thermalConductor_ambient.port_a)
    annotation (Line(points={{18,-62},{-6,-62},{-6,-48}},
                                                 color={191,0,0}));
  connect(thermalConductor_ambient.port_b, CompressorWall.port)
    annotation (Line(points={{-6,-28},{-6,-12},{-28,-12}}, color={191,0,0}));
  connect(thermalConductor_Gas_Cylinder.port_a, CompressorWall.port)
    annotation (Line(points={{-12,2},{-20,2},{-20,-12},{-28,-12}}, color={191,0,
          0}));
  connect(volumes.A_gas_cyl, thermalConductor_Gas_Cylinder.A_cg) annotation (
      Line(points={{-14,57},{-28,57},{-28,16},{-22,16}}, color={0,0,127}));
  connect(Evaporator_out.ports[1], test_closedVolume_v6_1.Fluid_in)
    annotation (Line(points={{-80,38},{-20,38}}, color={0,127,255}));
  connect(test_closedVolume_v6_1.Fluid_out, Condenser_in.ports[1])
    annotation (Line(points={{0,38},{78,38}}, color={0,127,255}));
  connect(test_closedVolume_v6_1.Heat_port, thermalConductor_Gas_Cylinder.port_b)
    annotation (Line(points={{-12,28},{-12,22}}, color={191,0,0}));
  connect(test_closedVolume_v6_1.alpha_gas_cyl, thermalConductor_Gas_Cylinder.alpha)
    annotation (Line(points={{-7.8,27.8},{-7.8,22},{-38,22},{-38,8},{-22,8}},
        color={0,0,127}));
  connect(volumes.v_x_avg, test_closedVolume_v6_1.v_pis)
    annotation (Line(points={{-10,57},{-12,57},{-12,48}}, color={0,0,127}));
  connect(volumes.V1, test_closedVolume_v6_1.u)
    annotation (Line(points={{-6,57},{-8,57},{-8,48}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ReciprocatingCompressor1;
