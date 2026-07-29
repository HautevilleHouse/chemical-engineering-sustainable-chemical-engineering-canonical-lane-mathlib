import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  concentrationProfiles : Type w
  lawOfMassAction : Prop
  arrheniusRelation : Prop
  steadyStateAssumption : Prop
  rateExpressionDerived : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  lawOfMassActionClosed : R.lawOfMassAction
  arrheniusRelationClosed : R.arrheniusRelation
  steadyStateAssumptionClosed : R.steadyStateAssumption
  rateExpressionDerivedClosed : R.rateExpressionDerived

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.lawOfMassAction ∧ R.arrheniusRelation ∧ R.steadyStateAssumption ∧ R.rateExpressionDerived

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.lawOfMassActionClosed
    (And.intro E.arrheniusRelationClosed
      (And.intro E.steadyStateAssumptionClosed E.rateExpressionDerivedClosed))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse