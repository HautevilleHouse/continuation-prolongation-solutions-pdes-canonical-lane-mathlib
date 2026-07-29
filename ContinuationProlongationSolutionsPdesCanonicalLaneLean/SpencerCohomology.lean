import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure SpencerCohomologyPackage (A : AdmissibleClass) where
  jetBundle : Type u
  cohomologyGroups : ℕ → Type v
  vanishingCondition : ℕ → Prop
  formalIntegrabilityImplication : Prop

structure SpencerCohomologyEvidence (A : AdmissibleClass) (S : SpencerCohomologyPackage A) where
  vanishingConditionClosed : ∀ n, S.vanishingCondition n
  formalIntegrabilityImplicationClosed : S.formalIntegrabilityImplication

def SpencerCohomologyClosed (A : AdmissibleClass) (S : SpencerCohomologyPackage A) : Prop :=
  (∀ n, S.vanishingCondition n) ∧ S.formalIntegrabilityImplication

theorem spencer_cohomology_closed_from_evidence (A : AdmissibleClass) (S : SpencerCohomologyPackage A) (E : SpencerCohomologyEvidence A S) : SpencerCohomologyClosed A S := by
  exact And.intro E.vanishingConditionClosed E.formalIntegrabilityImplicationClosed

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse