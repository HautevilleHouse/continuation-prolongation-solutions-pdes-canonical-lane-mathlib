import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure BonyEdgeProlongationPackage where
  edgeOperator : Type u
  bicharacteristicFlow : Type v
  propagationSet : Prop
  edgeEstimate : Prop
  prolongationAcrossEdge : Prop

structure BonyEdgeProlongationEvidence (B : BonyEdgeProlongationPackage) where
  propagationSetClosed : B.propagationSet
  edgeEstimateClosed : B.edgeEstimate
  prolongationAcrossEdgeClosed : B.prolongationAcrossEdge

def BonyEdgeProlongationClosed (B : BonyEdgeProlongationPackage) : Prop :=
  B.propagationSet ∧ B.edgeEstimate ∧ B.prolongationAcrossEdge

theorem bony_edge_prolongation_closed_from_evidence (B : BonyEdgeProlongationPackage)
    (E : BonyEdgeProlongationEvidence B) : BonyEdgeProlongationClosed B := by
  exact And.intro E.propagationSetClosed
    (And.intro E.edgeEstimateClosed E.prolongationAcrossEdgeClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse