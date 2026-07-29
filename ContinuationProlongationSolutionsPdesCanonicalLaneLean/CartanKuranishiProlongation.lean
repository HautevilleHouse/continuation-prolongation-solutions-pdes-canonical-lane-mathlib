import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure CartanKuranishiProlongationPackage (A : AdmissibleClass) where
  involutiveSymbol : Prop
  finiteType : Prop
  prolongationStabilizes : Prop
  formalIntegrability : Prop
  analyticSolvability : Prop

structure CartanKuranishiProlongationEvidence (A : AdmissibleClass) (C : CartanKuranishiProlongationPackage A) where
  involutiveSymbolClosed : C.involutiveSymbol
  finiteTypeClosed : C.finiteType
  prolongationStabilizesClosed : C.prolongationStabilizes
  formalIntegrabilityClosed : C.formalIntegrability
  analyticSolvabilityClosed : C.analyticSolvability

def CartanKuranishiProlongationClosed (A : AdmissibleClass) (C : CartanKuranishiProlongationPackage A) : Prop :=
  C.involutiveSymbol ∧ C.finiteType ∧ C.prolongationStabilizes ∧ C.formalIntegrability ∧ C.analyticSolvability

theorem cartan_kuranishi_prolongation_closed_from_evidence (A : AdmissibleClass) (C : CartanKuranishiProlongationPackage A) (E : CartanKuranishiProlongationEvidence A C) : CartanKuranishiProlongationClosed A C := by
  exact And.intro E.involutiveSymbolClosed
    (And.intro E.finiteTypeClosed
      (And.intro E.prolongationStabilizesClosed
        (And.intro E.formalIntegrabilityClosed E.analyticSolvabilityClosed)))

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse