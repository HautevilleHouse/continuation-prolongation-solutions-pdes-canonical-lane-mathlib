import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuationProlongationSolutionsPdesCanonicalLaneLean.ProlongationStructure

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ContinuationPrinciple where
  initialCondition : Prop
  existenceInterval : Prop
  prolongationUniqueness : Prop
  continuationBarrier : Prop
  blowUpCondition : Prop
  initialConditionTerm : initialCondition
  existenceIntervalTerm : existenceInterval
  prolongationUniquenessTerm : prolongationUniqueness
  continuationBarrierTerm : continuationBarrier
  blowUpConditionTerm : blowUpCondition

structure ContinuationPrincipleEvidence (C : ContinuationPrinciple) where
  initialConditionClosed : C.initialCondition
  existenceIntervalClosed : C.existenceInterval
  prolongationUniquenessClosed : C.prolongationUniqueness
  continuationBarrierClosed : C.continuationBarrier
  blowUpConditionClosed : C.blowUpCondition

def ContinuationPrincipleClosed (C : ContinuationPrinciple) : Prop :=
  C.initialCondition ∧ C.existenceInterval ∧ C.prolongationUniqueness ∧
  C.continuationBarrier ∧ C.blowUpCondition

theorem continuation_principle_closed_from_evidence (C : ContinuationPrinciple) (E : ContinuationPrincipleEvidence C) :
    ContinuationPrincipleClosed C := by
  exact And.intro E.initialConditionClosed
    (And.intro E.existenceIntervalClosed
      (And.intro E.prolongationUniquenessClosed
        (And.intro E.continuationBarrierClosed E.blowUpConditionClosed)))

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse