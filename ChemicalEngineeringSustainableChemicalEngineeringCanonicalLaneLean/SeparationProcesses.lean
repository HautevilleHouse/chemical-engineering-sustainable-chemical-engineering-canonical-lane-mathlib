import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineering

structure SeparationPackage where
  separationType : Type u
  drivingForce : Type v
  equilibriumStageModel : Prop
  massTransferCoefficient : Prop
  separationEfficiency : Prop

structure SeparationEvidence (S : SeparationPackage) where
  equilibriumStageModelClosed : S.equilibriumStageModel
  massTransferCoefficientClosed : S.massTransferCoefficient
  separationEfficiencyClosed : S.separationEfficiency

def SeparationClosed (S : SeparationPackage) : Prop :=
  S.equilibriumStageModel ∧ S.massTransferCoefficient ∧ S.separationEfficiency

theorem separation_closed_from_evidence (S : SeparationPackage) (E : SeparationEvidence S) :
    SeparationClosed S := by
  exact And.intro E.equilibriumStageModelClosed (And.intro E.massTransferCoefficientClosed E.separationEfficiencyClosed)

end ChemicalEngineeringSustainableChemicalEngineering
end HautevilleHouse