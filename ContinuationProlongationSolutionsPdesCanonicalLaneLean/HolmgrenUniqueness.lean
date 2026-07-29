import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure HolmgrenUniquenessPackage where
  pdeSystem : Type u
  characteristicSurface : Type v
  uniquenessDomain : Prop
  holmgrenCondition : Prop
  uniquenessResult : Prop

structure HolmgrenUniquenessEvidence (H : HolmgrenUniquenessPackage) where
  uniquenessDomainClosed : H.uniquenessDomain
  holmgrenConditionClosed : H.holmgrenCondition
  uniquenessResultClosed : H.uniquenessResult

def HolmgrenUniquenessClosed (H : HolmgrenUniquenessPackage) : Prop :=
  H.uniquenessDomain ∧ H.holmgrenCondition ∧ H.uniquenessResult

theorem holmgren_uniqueness_closed_from_evidence (H : HolmgrenUniquenessPackage)
    (E : HolmgrenUniquenessEvidence H) : HolmgrenUniquenessClosed H := by
  exact And.intro E.uniquenessDomainClosed
    (And.intro E.holmgrenConditionClosed E.uniquenessResultClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse