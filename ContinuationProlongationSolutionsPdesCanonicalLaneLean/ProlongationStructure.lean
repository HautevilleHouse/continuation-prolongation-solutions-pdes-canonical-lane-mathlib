import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ProlongationStructure where
  baseSpace : Type u
  fiber : Type v
  jetBundle : Type w
  sectionSpace : Type x
  prolongationOperator : jetBundle → jetBundle
  compatibilityConditions : Prop
  overdeterminedSystem : Prop
  integrabilityConditions : Prop
  compatibilityConditionsTerm : compatibilityConditions
  overdeterminedSystemTerm : overdeterminedSystem
  integrabilityConditionsTerm : integrabilityConditions

structure ProlongationStructureEvidence (P : ProlongationStructure) where
  compatibilityConditionsClosed : P.compatibilityConditions
  overdeterminedSystemClosed : P.overdeterminedSystem
  integrabilityConditionsClosed : P.integrabilityConditions

def ProlongationStructureClosed (P : ProlongationStructure) : Prop :=
  P.compatibilityConditions ∧ P.overdeterminedSystem ∧ P.integrabilityConditions

theorem prolongation_structure_closed_from_evidence (P : ProlongationStructure) (E : ProlongationStructureEvidence P) :
    ProlongationStructureClosed P := by
  exact And.intro E.compatibilityConditionsClosed (And.intro E.overdeterminedSystemClosed E.integrabilityConditionsClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse