import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ReactionKineticsPackage where
  rateEquation : Prop
  arrheniusLaw : Prop
  catalystActivity : Prop
  massBalance : Prop
  energyBalance : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateEquationClosed : R.rateEquation
  arrheniusLawClosed : R.arrheniusLaw
  catalystActivityClosed : R.catalystActivity
  massBalanceClosed : R.massBalance
  energyBalanceClosed : R.energyBalance

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateEquation ∧ R.arrheniusLaw ∧ R.catalystActivity ∧ R.massBalance ∧ R.energyBalance

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateEquationClosed
    (And.intro E.arrheniusLawClosed
      (And.intro E.catalystActivityClosed
        (And.intro E.massBalanceClosed E.energyBalanceClosed)))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse