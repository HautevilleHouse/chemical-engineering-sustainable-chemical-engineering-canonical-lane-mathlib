import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpy : Type u
  entropy : Type v
  gibbsFreeEnergy : Type w
  temperature : Type x
  pressure : Type y
  phaseEquilibrium : Prop
  thermodynamicPotentialDefined : Prop
  maxwellRelationsApplied : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  phaseEquilibriumClosed : T.phaseEquilibrium
  thermodynamicPotentialDefinedClosed : T.thermodynamicPotentialDefined
  maxwellRelationsAppliedClosed : T.maxwellRelationsApplied

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.phaseEquilibrium ∧ T.thermodynamicPotentialDefined ∧ T.maxwellRelationsApplied

theorem thermodynamics_closed_from_evidence
    (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.phaseEquilibriumClosed
    (And.intro E.thermodynamicPotentialDefinedClosed E.maxwellRelationsAppliedClosed)

end ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean
end HautevilleHouse