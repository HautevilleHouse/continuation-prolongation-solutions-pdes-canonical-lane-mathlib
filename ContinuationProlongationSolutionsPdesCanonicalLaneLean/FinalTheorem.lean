import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesCanonicalLaneLean.ContinuationPrinciple

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

def ConstrainedContinuationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuation_endgame (A : AdmissibleClass) :
    ConstrainedContinuationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse