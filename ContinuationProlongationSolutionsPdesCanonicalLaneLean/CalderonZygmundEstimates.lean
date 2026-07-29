import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure CalderonZygmundEstimatesPackage where
  normEstimate : Prop
  kernelBound : Prop
  schauderRegularity : Prop
  applicationToContinuation : Prop

structure CalderonZygmundEstimatesEvidence (C : CalderonZygmundEstimatesPackage) where
  normEstimateClosed : C.normEstimate
  kernelBoundClosed : C.kernelBound
  schauderRegularityClosed : C.schauderRegularity
  applicationToContinuationClosed : C.applicationToContinuation

def CalderonZygmundEstimatesClosed (C : CalderonZygmundEstimatesPackage) : Prop :=
  C.normEstimate ∧ C.kernelBound ∧ C.schauderRegularity ∧ C.applicationToContinuation

theorem calderon_zygmund_estimates_closed_from_evidence
    (C : CalderonZygmundEstimatesPackage) (E : CalderonZygmundEstimatesEvidence C) :
    CalderonZygmundEstimatesClosed C := by
  exact And.intro E.normEstimateClosed (And.intro E.kernelBoundClosed (And.intro E.schauderRegularityClosed E.applicationToContinuationClosed))

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse