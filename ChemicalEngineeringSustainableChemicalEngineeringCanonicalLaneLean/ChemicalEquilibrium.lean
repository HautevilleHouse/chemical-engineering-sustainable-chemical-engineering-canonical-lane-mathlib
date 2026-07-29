import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  standardGibbsChange : Type w
  temperature : Type x
  leChatelierPrinciple : Prop
  lawOfMassAction : Prop
  equilibriumCompositionComputed : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  lawOfMassActionClosed : C.lawOfMassAction
  equilibriumCompositionComputedClosed : C.equilibriumCompositionComputed

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.lawOfMassAction ∧ C.equilibriumCompositionComputed

theorem chemical_equilibrium_closed_from_evidence
    (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleClosed
    (And.intro E.lawOfMassActionClosed E.equilibriumCompositionComputedClosed)

end ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean
end HautevilleHouse