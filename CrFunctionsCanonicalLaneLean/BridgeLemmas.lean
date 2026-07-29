import CrFunctionsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CrFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrFunctionsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrFunctionsCanonicalLaneLean
end HautevilleHouse