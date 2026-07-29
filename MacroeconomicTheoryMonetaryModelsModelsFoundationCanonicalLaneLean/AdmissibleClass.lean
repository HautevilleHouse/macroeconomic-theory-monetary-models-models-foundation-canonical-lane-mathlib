import MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MacroeconomicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MacroeconomicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MacroeconomicTheoryMonetaryModelsModelsFoundationCanonicalLaneLean
end HautevilleHouse