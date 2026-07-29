import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure CauchyProblemPackage (P : ProlongationStructurePackage) where
  initialData : baseSpace -> fiberSpace
  existenceInterval : Set Real
  uniquenessCondition : Prop
  continuousDependence : Prop
  blumStepContinuation : Prop

structure CauchyProblemEvidence {P : ProlongationStructurePackage}
    (C : CauchyProblemPackage P) where
  existenceIntervalClosed : C.existenceInterval ≠ ∅
  uniquenessConditionClosed : C.uniquenessCondition
  continuousDependenceClosed : C.continuousDependence
  blumStepContinuationClosed : C.blumStepContinuation

def CauchyProblemClosed {P : ProlongationStructurePackage}
    (C : CauchyProblemPackage P) : Prop :=
  C.existenceInterval ≠ ∅ ∧ C.uniquenessCondition ∧
  C.continuousDependence ∧ C.blumStepContinuation

theorem cauchy_problem_closed_from_evidence {P : ProlongationStructurePackage}
    (C : CauchyProblemPackage P) (E : CauchyProblemEvidence C) :
    CauchyProblemClosed C := by
  exact And.intro E.existenceIntervalClosed
    (And.intro E.uniquenessConditionClosed
      (And.intro E.continuousDependenceClosed E.blumStepContinuationClosed))

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse