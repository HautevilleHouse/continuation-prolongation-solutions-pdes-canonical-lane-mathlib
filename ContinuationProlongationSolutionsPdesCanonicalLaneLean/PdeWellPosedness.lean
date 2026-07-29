import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuationProlongationSolutionsPdesCanonicalLaneLean

structure PdeWellPosedness where
  differentialOperator : Type
  boundaryConditions : Type
  existence : Prop
  uniqueness : Prop
  stability : Prop

def WellPosednessClosed (W : PdeWellPosedness) : Prop :=
  W.existence ∧ W.uniqueness ∧ W.stability

theorem well_posedness_closed_intro (W : PdeWellPosedness) (he : W.existence) (hu : W.uniqueness) (hs : W.stability) : WellPosednessClosed W :=
  And.intro he (And.intro hu hs)

end ContinuationProlongationSolutionsPdesCanonicalLaneLean
end HautevilleHouse