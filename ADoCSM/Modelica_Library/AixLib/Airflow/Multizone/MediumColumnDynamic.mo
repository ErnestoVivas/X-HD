within AixLib.Airflow.Multizone;
model MediumColumnDynamic
  "Vertical shaft with no friction and storage of heat and mass"
  extends AixLib.Fluid.Interfaces.LumpedVolumeDeclarations;

  replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
    "Medium in the component" annotation (choicesAllMatching=true);

  parameter Modelica.SIunits.Length h(min=0) = 3 "Height of shaft";

  parameter Modelica.SIunits.MassFlowRate m_flow_nominal(min=0)
    "Nominal mass flow rate"
    annotation(Dialog(group = "Nominal condition, used only for steady-state model"));

  Modelica.Fluid.Interfaces.FluidPort_a port_a(
    redeclare final package Medium = Medium,
    p(start=Medium.p_default))
    "Fluid connector a (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{-10,90},{10,110}}),
        iconTransformation(extent={{-10,90},{10,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(
    redeclare final package Medium = Medium,
    p(start=Medium.p_default))
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{10,-110},{-10,-90}}), iconTransformation(extent={{10,-110},{-10,-90}})));

  // m_flow_nominal is not used by vol, since this component
  // can only be configured as a dynamic model.
  AixLib.Fluid.MixingVolumes.MixingVolume vol(
    final nPorts=2,
    redeclare final package Medium = Medium,
    final m_flow_nominal=m_flow_nominal,
    final V=V,
    final energyDynamics=energyDynamics,
    final massDynamics=massDynamics,
    final p_start=p_start,
    final T_start=T_start,
    final X_start=X_start,
    final C_start=C_start) "Air volume in the shaft" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-20,0})));

  MediumColumn colTop(
    redeclare final package Medium = Medium,
    final densitySelection=AixLib.Airflow.Multizone.Types.densitySelection.fromBottom,
    h=h/2)
    "Medium column that connects to top port"
    annotation (Placement(transformation(extent={{-10,40},{10,60}})));

  MediumColumn colBot(
    redeclare final package Medium = Medium,
    final densitySelection=AixLib.Airflow.Multizone.Types.densitySelection.fromTop,
    h=h/2)
    "Medium colum that connects to bottom port"
    annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));

  parameter Modelica.SIunits.Volume V "Volume in medium shaft";

  // Heat transfer through boundary
  parameter Boolean use_HeatTransfer = false
    "= true to use the HeatTransfer model"
      annotation (Dialog(tab="Assumptions", group="Heat transfer"));
  replaceable model HeatTransfer =
      Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer
    constrainedby
    Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer
    "Wall heat transfer"
      annotation (Dialog(tab="Assumptions", group="Heat transfer",enable=use_HeatTransfer),choicesAllMatching=true);
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if use_HeatTransfer
    "Heat port to exchange energy with the fluid volume"
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));

equation
  connect(colBot.port_a, vol.ports[1]) annotation (Line(
      points={{0,-40},{0,-40},{0,-2},{-10,-2}},
      color={0,127,255}));
  connect(vol.ports[2], colTop.port_b) annotation (Line(
      points={{-10,2},{0,2},{0,40},{0,40}},
      color={0,127,255}));
  connect(colTop.port_a, port_a) annotation (Line(
      points={{0,60},{0,80},{0,80},{0,100}},
      color={0,127,255}));

  connect(colBot.port_b, port_b) annotation (Line(
      points={{0,-60},{0,-60},{0,-100}},
      color={0,127,255}));
  connect(heatPort, vol.heatPort) annotation (Line(
      points={{-100,0},{-60,0},{-60,-20},{-20,-20},{-20,-10}},
      color={191,0,0}));

  annotation (
    Icon(graphics={
        Line(
          points={{0,100},{0,-100},{0,-98}}),
        Text(
          extent={{24,-78},{106,-100}},
          lineColor={0,0,127},
          textString="Bottom"),
        Text(
          extent={{32,104},{98,70}},
          lineColor={0,0,127},
          textString="Top"),
        Text(
          extent={{42,26},{94,-10}},
          lineColor={0,0,127},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid,
          textString="h=%h"),
        Rectangle(
          visible=densitySelection == AixLib.Airflow.Multizone.Types.densitySelection.fromTop,
          extent={{-16,78},{16,-2}},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0}),
        Text(
          extent={{-50.5,20.5},{50.5,-20.5}},
          lineColor={0,0,127},
          origin={-72.5,-12.5},
          rotation=90,
          textString="%name"),
        Rectangle(
          visible=densitySelection == AixLib.Airflow.Multizone.Types.densitySelection.actual,
          extent={{-16,80},{16,54}},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0}),
        Rectangle(
          visible=densitySelection == AixLib.Airflow.Multizone.Types.densitySelection.fromBottom,
          extent={{-16,0},{16,-82}},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0}),
        Rectangle(
          visible=densitySelection == AixLib.Airflow.Multizone.Types.densitySelection.actual,
          extent={{-16,-55},{16,-80}},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0}),
        Ellipse(
          extent={{-40,40},{40,-40}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Sphere,
          fillColor={0,128,255}),
        Line(
          visible=use_HeatTransfer,
          points={{-90,0},{-40,0}},
          color={255,0,0})}),
defaultComponentName="col",
Documentation(info="<html>
<p>
This model contains a completely mixed fluid volume and
models that take into account the pressure difference of
a medium column that is at the same temperature as the
fluid volume. It can be used to model the pressure difference
caused by a stack effect.
</p>
<h4>Typical use and important parameters</h4>
<p>
Set the parameter <code>use_HeatTransfer=true</code> to expose
a <code>heatPort</code>. This <code>heatPort</code> can be used
to add or subtract heat from the volume. This allows, for example,
to use this model in conjunction with a model for heat transfer through
walls to model a solar chimney that stores heat.
</p>
<h4>Dynamics</h4>
<p>
For a steady-state model, use
<a href=\"modelica://AixLib.Airflow.Multizone.MediumColumn\">
AixLib.Airflow.Multizone.MediumColumn</a> instead of this model.
</p>
<p>In this model, the parameter <code>h</code> must always be positive, and the port <code>port_a</code> must be
at the top of the column.
</p>
</html>",
revisions="<html>
<ul>
<li>
May 1, 2018, by Filip Jorissen:<br/>
Removed declaration of <code>allowFlowReversal</code>
and changed default density computation such
that it assumes a constant pressure.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/877\">#877</a>.
</li>
<li>
October 6, 2014 by Michael Wetter:<br/>
Removed assignment of <code>port_?.p.nominal</code> to avoid a warning
in OpenModelica because
alias sets have different nominal values.
</li>
<li>
July 31, 2011 by Michael Wetter:<br/>
Changed model to use new base class
<a href=\"modelica://AixLib.Fluid.Interfaces.LumpedVolumeDeclarations\">
AixLib.Fluid.Interfaces.LumpedVolumeDeclarations</a>.
</li>
<li>May 25, 2011 by Michael Wetter:<br/>
Added <code>m_flow_nominal</code>, which is used if component is configured as steady-state.
</li>
<li>July 28, 2010 by Michael Wetter:<br/>
Released first version.
</li>
</ul>
</html>"));
end MediumColumnDynamic;