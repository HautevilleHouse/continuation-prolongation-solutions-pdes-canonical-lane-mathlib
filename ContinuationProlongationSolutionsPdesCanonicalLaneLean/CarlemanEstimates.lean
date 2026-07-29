import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure CarlemanEstimatesPackage where
  operatorSymbol : Type u
  weightFunction : Type v
  estimateConstant : Prop
  carlemanInequality : Prop
  spectralGap : Prop

structure CarlemanEstimatesEvidence (C : CarlemanEstimatesPackage) where
  estimateConstantClosed : C.estimateConstant
  carlemanInequalityClosed : C.carlemanInequality
  spectralGapClosed : C.spectralGap

def CarlemanEstimatesClosed (C : CarlemanEstimatesPackage) : Prop :=
  C.estimateConstant ∧ C.carlemanInequality ∧ C.spectralGap

theorem carleman_estimates_closed_from_evidence (C : CarlemanEstimatesPackage)
    (E : CarlemanEstimatesEvidence C) : CarlemanEstimatesClosed C := by
  exact And.intro E.estimateConstantClosed
    (And.intro E.carlemanInequalityClosed E.spectralGapClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse