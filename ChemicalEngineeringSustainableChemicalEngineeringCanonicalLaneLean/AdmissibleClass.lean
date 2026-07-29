import ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean

structure AdmissibleClass where
  object : SustainableChemicalEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SustainableChemicalEngineeringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringSustainableChemicalEngineeringCanonicalLaneLean
end HautevilleHouse
