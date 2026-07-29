import CrFunctionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

structure AdmissibleClass where
  object : CrFunctionsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrFunctionsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrFunctionsCanonicalLaneLean
end HautevilleHouse