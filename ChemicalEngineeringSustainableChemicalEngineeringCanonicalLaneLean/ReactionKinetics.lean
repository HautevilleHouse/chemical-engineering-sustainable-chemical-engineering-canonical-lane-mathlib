import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ReactionRatePackage where
  rateConstant : Prop
  concentrationExponents : Prop
  temperatureDependence : Prop
  activationEnergy : Prop

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateConstant ∧ R.concentrationExponents ∧ R.temperatureDependence ∧ R.activationEnergy

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateConstantClosed : R.rateConstant
  concentrationExponentsClosed : R.concentrationExponents
  temperatureDependenceClosed : R.temperatureDependence
  activationEnergyClosed : R.activationEnergy

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) :
    ReactionRateClosed R := by
  exact And.intro E.rateConstantClosed
    (And.intro E.concentrationExponentsClosed
      (And.intro E.temperatureDependenceClosed E.activationEnergyClosed))

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse
