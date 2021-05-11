within VCLib.Components.HeatExchangers.MovingBoundaryHeatExchangers.Validation.MovingBoundaryCells.SwitchingStates;
model EvaporatorSC_SCTP_SCTPSC_SCTP_SC
  "Validation model to check a moving boundary cell of an evaporator"
  extends BaseExampleEvaporator(
    redeclare package Medium =
      Modelica.Media.R134a.R134a_ph,
    gua(modCVPar=Utilities.Types.ModeCV.SC,
      useFixModCV=false),
    sin(use_p_in=true),
    movBouCel(tauVoiFra=125,
      calBalEqu=false,
      heaFloCal=Utilities.Types.CalculationHeatFlow.E_NTU,
      useVoiFra=true,
      useVoiFraMod=true),
    trapTemp(
      offset=263.15, amplitude=45));
  extends Modelica.Icons.Example;
  extends Modelica.Icons.UnderConstruction;

  annotation (Documentation(revisions="<html>
<ul>
  <li>
  December 10, 2017, by Mirko Engelpracht:<br/>
  First implementation
  (see <a href=\"https://github.com/RWTH-EBC/AixLib/issues/516\">issue 516</a>).
  </li>
</ul>
</html>"), experiment(StopTime=6400));
end EvaporatorSC_SCTP_SCTPSC_SCTP_SC;
