import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure ReactorDesignPackage where
  reactorType : Type u
  massBalance : Type v
  energyBalance : Prop
  conversionEfficiency : Prop
  selectivity : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  energyBalanceClosed : R.energyBalance
  conversionEfficiencyClosed : R.conversionEfficiency
  selectivityClosed : R.selectivity

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.energyBalance ∧ R.conversionEfficiency ∧ R.selectivity

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) :
    ReactorDesignClosed R := by
  exact And.intro E.energyBalanceClosed (And.intro E.conversionEfficiencyClosed E.selectivityClosed)

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse