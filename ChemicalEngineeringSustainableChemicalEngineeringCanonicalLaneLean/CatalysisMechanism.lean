import ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean

structure CatalysisMechanismPackage where
  activeSiteModel : Prop
  turnoverFrequency : Prop
  activationBarrierReduction : Prop
  selectivity : Prop
  catalystRegeneration : Prop

structure CatalysisMechanismEvidence (C : CatalysisMechanismPackage) where
  activeSiteModelClosed : C.activeSiteModel
  turnoverFrequencyClosed : C.turnoverFrequency
  activationBarrierReductionClosed : C.activationBarrierReduction
  selectivityClosed : C.selectivity
  catalystRegenerationClosed : C.catalystRegeneration

def CatalysisMechanismClosed (C : CatalysisMechanismPackage) : Prop :=
  C.activeSiteModel ∧ C.turnoverFrequency ∧ C.activationBarrierReduction ∧ C.selectivity ∧ C.catalystRegeneration

theorem catalysis_mechanism_closed_from_evidence (C : CatalysisMechanismPackage) (E : CatalysisMechanismEvidence C) :
    CatalysisMechanismClosed C := by
  exact And.intro E.activeSiteModelClosed
    (And.intro E.turnoverFrequencyClosed
      (And.intro E.activationBarrierReductionClosed
        (And.intro E.selectivityClosed E.catalystRegenerationClosed)))

end ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean
end HautevilleHouse