import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ThermodynamicsPackage where
  stateVariables : Type u
  firstLaw : Prop
  secondLaw : Prop
  gibbsFreeEnergy : Prop
  phaseEquilibrium : Prop
  chemicalPotential : Prop
  thermodynamicConsistency : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseEquilibriumClosed : T.phaseEquilibrium
  chemicalPotentialClosed : T.chemicalPotential
  thermodynamicConsistencyClosed : T.thermodynamicConsistency

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.gibbsFreeEnergy ∧
  T.phaseEquilibrium ∧ T.chemicalPotential ∧ T.thermodynamicConsistency

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.phaseEquilibriumClosed
          (And.intro E.chemicalPotentialClosed
            E.thermodynamicConsistencyClosed))))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse