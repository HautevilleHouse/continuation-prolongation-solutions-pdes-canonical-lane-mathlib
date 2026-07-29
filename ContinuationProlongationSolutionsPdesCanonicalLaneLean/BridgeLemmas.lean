import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuationProlongationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse