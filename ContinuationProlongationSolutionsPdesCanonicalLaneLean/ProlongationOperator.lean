import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ProlongationOperator (A : AdmissibleClass) where
  baseSpace : Type u
  fiber : Type v
  sectionSpace : Type w
  operator : sectionSpace → sectionSpace
  prolongationMap : sectionSpace → sectionSpace
  linearity : Prop
  formalIntegrability : Prop

structure ProlongationOperatorEvidence (A : AdmissibleClass) (P : ProlongationOperator A) where
  linearityClosed : P.linearity
  formalIntegrabilityClosed : P.formalIntegrability

def ProlongationOperatorClosed (A : AdmissibleClass) (P : ProlongationOperator A) : Prop :=
  P.linearity ∧ P.formalIntegrability

theorem prolongation_operator_closed_from_evidence (A : AdmissibleClass) (P : ProlongationOperator A) (E : ProlongationOperatorEvidence A P) : ProlongationOperatorClosed A P := by
  exact And.intro E.linearityClosed E.formalIntegrabilityClosed

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse