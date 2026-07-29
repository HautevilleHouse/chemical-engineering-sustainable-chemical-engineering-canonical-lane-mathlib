import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure CatalysisPackage where
  catalystSurface : Type u
  activeSite : Type v
  langmuirHinshelwood : Prop
  eyringEquation : Prop
  turnoverFrequency : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  langmuirHinshelwoodClosed : C.langmuirHinshelwood
  eyringEquationClosed : C.eyringEquation
  turnoverFrequencyClosed : C.turnoverFrequency

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.langmuirHinshelwood ∧ C.eyringEquation ∧ C.turnoverFrequency

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.langmuirHinshelwoodClosed (And.intro E.eyringEquationClosed E.turnoverFrequencyClosed)

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse