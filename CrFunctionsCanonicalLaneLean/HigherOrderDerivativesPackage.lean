import CrFunctionsCanonicalLaneLean.DifferentiabilityPackage

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

structure HigherOrderDerivativesPackage {A : AdmissibleClass} where
  taylorExpansion : Type
  remainderEstimate : Prop
  smoothnessOrder : ℕ
  iteratedDerivatives : A.object.domain → A.object.codomain

def HigherOrderDerivativesClosed {A : AdmissibleClass} (H : HigherOrderDerivativesPackage A) : Prop :=
  H.remainderEstimate ∧ H.smoothnessOrder = A.object.order

theorem higher_order_derivatives_closed_from_package {A : AdmissibleClass}
    (H : HigherOrderDerivativesPackage A) (h : HigherOrderDerivativesClosed H) :
    (bridgeClosed A) := by
  exact bridge_from_admissible_class A

end CrFunctionsCanonicalLaneLean
end HautevilleHouse