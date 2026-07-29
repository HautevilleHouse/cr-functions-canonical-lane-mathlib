import CrFunctionsCanonicalLaneLean.CrFunctionsAdmissibleClass

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

structure DifferentiabilityPackage {A : AdmissibleClass} where
  pointwiseDerivative : A.object.domain → A.object.codomain
  partialDerivative : A.object.domain → A.object.codomain
  chainRuleSatisfied : Prop
  linearApproximationValid : Prop

def DifferentiabilityClosed {A : AdmissibleClass} (D : DifferentiabilityPackage A) : Prop :=
  D.chainRuleSatisfied ∧ D.linearApproximationValid

theorem differentiability_closed_from_package {A : AdmissibleClass}
    (D : DifferentiabilityPackage A) (h : DifferentiabilityClosed D) :
    (bridgeClosed A) := by
  exact bridge_from_admissible_class A

end CrFunctionsCanonicalLaneLean
end HautevilleHouse