import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

structure CrAdmittedObject where
  domain : Type
  codomain : Type
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  crFunction : domain → codomain
  order : ℕ
  differentiability : Prop
  higherOrderDerivatives : Prop
  conclusion : differentiability ∨ higherOrderDerivatives

structure AdmissibleClass where
  object : CrAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.differentiability ∧ A.object.higherOrderDerivatives) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrFunctionsCanonicalLaneLean
end HautevilleHouse