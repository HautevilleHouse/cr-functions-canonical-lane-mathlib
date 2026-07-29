import CrFunctionsCanonicalLaneLean.CrFunctionGateLemmas

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

def ConstrainedCrClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cr_endgame (A : AdmissibleClass) :
    ConstrainedCrClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrFunctionsCanonicalLaneLean
end HautevilleHouse