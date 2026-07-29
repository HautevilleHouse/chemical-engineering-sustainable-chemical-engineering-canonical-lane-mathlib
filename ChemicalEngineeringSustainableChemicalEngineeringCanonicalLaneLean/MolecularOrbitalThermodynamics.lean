import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure MolecularOrbitalPackage where
  huckelMethod : Prop
  symmetryBasis : Prop
  energyLevels : Prop
  bondOrder : Prop
  chemicalPotential : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  huckelMethodClosed : M.huckelMethod
  symmetryBasisClosed : M.symmetryBasis
  energyLevelsClosed : M.energyLevels
  bondOrderClosed : M.bondOrder
  chemicalPotentialClosed : M.chemicalPotential

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.huckelMethod ∧ M.symmetryBasis ∧ M.energyLevels ∧ M.bondOrder ∧ M.chemicalPotential

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.huckelMethodClosed
    (And.intro E.symmetryBasisClosed
      (And.intro E.energyLevelsClosed
        (And.intro E.bondOrderClosed E.chemicalPotentialClosed)))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse