import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure MolecularOrbitalPackage where
  hamiltonian : Type u
  orbitalBasis : Type v
  homoEnergy : Prop
  lumoEnergy : Prop
  bandGap : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  homoEnergyClosed : M.homoEnergy
  lumoEnergyClosed : M.lumoEnergy
  bandGapClosed : M.bandGap

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.homoEnergy ∧ M.lumoEnergy ∧ M.bandGap

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.homoEnergyClosed (And.intro E.lumoEnergyClosed E.bandGapClosed)

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse