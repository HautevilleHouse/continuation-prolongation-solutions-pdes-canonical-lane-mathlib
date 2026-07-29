import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure NonlinearProlongationStructure where
  baseSpace : Type u
  fiber : Type v
  jetBundle : Type w
  prolongationOperator : jetBundle -> jetBundle
  involutiveDistribution : Prop
  cartanDistributionClosed : Prop
  involutionCondition : Prop

structure NonlinearProlongationEvidence (P : NonlinearProlongationStructure) where
  involutiveDistributionClosed : P.involutiveDistribution
  cartanDistributionClosedClosed : P.cartanDistributionClosed
  involutionConditionClosed : P.involutionCondition

def NonlinearProlongationClosed (P : NonlinearProlongationStructure) : Prop :=
  P.involutiveDistribution ∧ P.cartanDistributionClosed ∧ P.involutionCondition

theorem nonlinear_prolongation_closed_from_evidence (P : NonlinearProlongationStructure)
    (E : NonlinearProlongationEvidence P) : NonlinearProlongationClosed P := by
  exact And.intro E.involutiveDistributionClosed
    (And.intro E.cartanDistributionClosedClosed E.involutionConditionClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse