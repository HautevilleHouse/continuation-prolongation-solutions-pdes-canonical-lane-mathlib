import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure SingularSolutionPackage {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} (S : ProlongedSystemPackage C) where
  singularLocus : Set (baseSpace × fiberSpace)
  classificationByJetRank : Prop
  branchSetStructure : Prop
  envelopeCompatibility : Prop

structure SingularSolutionEvidence {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} {S : ProlongedSystemPackage C}
    (G : SingularSolutionPackage S) where
  classificationByJetRankClosed : G.classificationByJetRank
  branchSetStructureClosed : G.branchSetStructure
  envelopeCompatibilityClosed : G.envelopeCompatibility

def SingularSolutionClosed {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} {S : ProlongedSystemPackage C}
    (G : SingularSolutionPackage S) : Prop :=
  G.classificationByJetRank ∧ G.branchSetStructure ∧ G.envelopeCompatibility

theorem singular_solution_closed_from_evidence {P : ProlongationStructurePackage}
    {C : CauchyProblemPackage P} {S : ProlongedSystemPackage C}
    (G : SingularSolutionPackage S) (E : SingularSolutionEvidence G) :
    SingularSolutionClosed G := by
  exact And.intro E.classificationByJetRankClosed
    (And.intro E.branchSetStructureClosed E.envelopeCompatibilityClosed)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse