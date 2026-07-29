import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure GibbsFreeEnergyPackage where
  enthalpyEntropyRelation : Prop
  equilibriumConstant : Prop
  LeChatelierPrinciple : Prop
  phaseStability : Prop
  activityCoefficient : Prop

structure GibbsFreeEnergyEvidence (G : GibbsFreeEnergyPackage) where
  enthalpyEntropyRelationClosed : G.enthalpyEntropyRelation
  equilibriumConstantClosed : G.equilibriumConstant
  LeChatelierPrincipleClosed : G.LeChatelierPrinciple
  phaseStabilityClosed : G.phaseStability
  activityCoefficientClosed : G.activityCoefficient

def GibbsFreeEnergyClosed (G : GibbsFreeEnergyPackage) : Prop :=
  G.enthalpyEntropyRelation ∧ G.equilibriumConstant ∧ G.LeChatelierPrinciple ∧ G.phaseStability ∧ G.activityCoefficient

theorem gibbs_free_energy_closed_from_evidence (G : GibbsFreeEnergyPackage) (E : GibbsFreeEnergyEvidence G) :
    GibbsFreeEnergyClosed G := by
  exact And.intro E.enthalpyEntropyRelationClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.LeChatelierPrincipleClosed
        (And.intro E.phaseStabilityClosed E.activityCoefficientClosed)))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse