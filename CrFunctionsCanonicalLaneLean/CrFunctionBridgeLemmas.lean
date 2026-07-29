import CrFunctionsCanonicalLaneLean.CrFunctionsAdmissibleClass

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.differentiability ∧ A.object.higherOrderDerivatives

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.differentiability A.object.higherOrderDerivatives

end CrFunctionsCanonicalLaneLean
end HautevilleHouse