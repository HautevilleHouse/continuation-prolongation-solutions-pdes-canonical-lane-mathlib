import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure ProlongedSystemPackage {P : ProlongationStructurePackage}
    (C : CauchyProblemPackage P) where
  prolongedEquations : Set (JetOrder P.jetBundleOrder)
  compatibilityWithProlongation : Prop
  frobeniusCondition : Prop
  involutiveClosure : Prop
  formalIntegrability : Prop

structure ProlongedSystemEvidence {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} (S : ProlongedSystemPackage C) where
  compatibilityWithProlongationClosed : S.compatibilityWithProlongation
  frobeniusConditionClosed : S.frobeniusCondition
  involutiveClosureClosed : S.involutiveClosure
  formalIntegrabilityClosed : S.formalIntegrability

def ProlongedSystemClosed {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} (S : ProlongedSystemPackage C) : Prop :=
  S.compatibilityWithProlongation ∧ S.frobeniusCondition ∧
  S.involutiveClosure ∧ S.formalIntegrability

theorem prolonged_system_closed_from_evidence {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} (S : ProlongedSystemPackage C)
    (E : ProlongedSystemEvidence S) : ProlongedSystemClosed S := by
  exact And.intro E.compatibilityWithProlongationClosed
    (And.intro E.frobeniusConditionClosed
      (And.intro E.involutiveClosureClosed E.formalIntegrabilityClosed))

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse