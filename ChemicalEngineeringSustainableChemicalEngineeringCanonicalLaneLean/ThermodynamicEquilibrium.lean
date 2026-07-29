import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  enthalpyChange : Prop
  entropyChange : Prop

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.enthalpyChange ∧ T.entropyChange

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.enthalpyChangeClosed E.entropyChangeClosed))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse
