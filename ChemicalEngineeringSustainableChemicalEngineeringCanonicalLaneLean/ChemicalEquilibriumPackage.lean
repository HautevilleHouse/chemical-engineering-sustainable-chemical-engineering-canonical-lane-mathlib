import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  leChatelierPrinciple : Prop
  equilibriumComposition : Prop
  temperatureDependence : Prop
  equilibriumShift : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  equilibriumCompositionClosed : C.equilibriumComposition
  temperatureDependenceClosed : C.temperatureDependence
  equilibriumShiftClosed : C.equilibriumShift

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.equilibriumComposition ∧
  C.temperatureDependence ∧ C.equilibriumShift

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleClosed
    (And.intro E.equilibriumCompositionClosed
      (And.intro E.temperatureDependenceClosed E.equilibriumShiftClosed))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse