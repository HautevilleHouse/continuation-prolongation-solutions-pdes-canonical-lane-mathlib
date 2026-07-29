import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ContinuationProlongationPDEPackage where
  abstractPDE : Type u
  timeDomain : Type v
  solutionSpace : Type w
  initialCondition : Prop
  continuationCriterion : Prop
  prolongationOperator : Type x
  maximalSolution : Prop

structure ContinuationProlongationPDEEvidence (F : ContinuationProlongationPDEPackage) where
  initialConditionClosed : F.initialCondition
  continuationCriterionClosed : F.continuationCriterion
  maximalSolutionClosed : F.maximalSolution

def ContinuationProlongationPDEClosed (F : ContinuationProlongationPDEPackage) : Prop :=
  F.initialCondition ∧ F.continuationCriterion ∧ F.maximalSolution

theorem continuation_prolongation_pde_closed_from_evidence
    (F : ContinuationProlongationPDEPackage) (E : ContinuationProlongationPDEEvidence F) :
    ContinuationProlongationPDEClosed F := by
  exact And.intro E.initialConditionClosed (And.intro E.continuationCriterionClosed E.maximalSolutionClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse