import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ContinuationProlongationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuationProlongationAdmittedObject where
  space : ContinuationProlongationSpace
  pdeDefined : Prop
  prolongationExists : Prop
  continuationExists : Prop
  conclusion : pdeDefined ∧ prolongationExists ∧ continuationExists

def ContinuationProlongationWitnessClosed (O : ContinuationProlongationAdmittedObject) : Prop :=
  O.prolongationExists ∧ O.continuationExists

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse