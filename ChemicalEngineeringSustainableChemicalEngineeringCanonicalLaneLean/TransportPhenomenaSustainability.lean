import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure TransportPhenomenaPackage where
  viscosityModel : Prop
  thermalConductivity : Prop
  massDiffusivity : Prop
  convectiveHeatTransfer : Prop
  reactorDesign : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  viscosityModelClosed : T.viscosityModel
  thermalConductivityClosed : T.thermalConductivity
  massDiffusivityClosed : T.massDiffusivity
  convectiveHeatTransferClosed : T.convectiveHeatTransfer
  reactorDesignClosed : T.reactorDesign

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.viscosityModel ∧ T.thermalConductivity ∧ T.massDiffusivity ∧ T.convectiveHeatTransfer ∧ T.reactorDesign

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.viscosityModelClosed
    (And.intro E.thermalConductivityClosed
      (And.intro E.massDiffusivityClosed
        (And.intro E.convectiveHeatTransferClosed E.reactorDesignClosed)))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse