import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ContinuationSolutionPDE (A : AdmissibleClass) where
  domain : Type u
  timeDomain : Type v
  equation : domain → timeDomain → Prop
  initialCondition : domain → Prop
  prolongation : domain → timeDomain → Prop
  continuationPastBoundary : Prop
  solutionExists : continuationPastBoundary → (∀ t, equation (prolongation ...) t)

structure ContinuationSolutionPDEEvidence (A : AdmissibleClass) (C : ContinuationSolutionPDE A) where
  continuationPastBoundaryClosed : C.continuationPastBoundary
  solutionExistsClosed : C.solutionExists C.continuationPastBoundaryClosed

def ContinuationSolutionPDEClosed (A : AdmissibleClass) (C : ContinuationSolutionPDE A) : Prop :=
  C.continuationPastBoundary ∧ (∀ t, C.equation (C.prolongation ...) t)

theorem continuation_solution_pde_closed_from_evidence (A : AdmissibleClass) (C : ContinuationSolutionPDE A) (E : ContinuationSolutionPDEEvidence A C) : ContinuationSolutionPDEClosed A C := by
  exact And.intro E.continuationPastBoundaryClosed E.solutionExistsClosed

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse