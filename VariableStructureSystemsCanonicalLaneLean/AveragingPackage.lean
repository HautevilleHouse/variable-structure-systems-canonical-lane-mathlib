import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure AveragingPackage where
  fastOscillatingSystem : Type u
  averagedSystem : Type v
  approximationError : Prop
  timeScaleSeparation : Prop
  convergenceResult : Prop
  averagingEvidence : AveragingEvidence

structure AveragingEvidence where
  approximationErrorClosed : Prop
  timeScaleSeparationClosed : Prop
  convergenceResultClosed : Prop

def AveragingClosed (A : AveragingPackage) : Prop :=
  A.approximationError ∧ A.timeScaleSeparation ∧ A.convergenceResult

theorem averaging_closed_from_evidence (A : AveragingPackage) (E : AveragingEvidence) :
    AveragingClosed A := by
  exact And.intro E.approximationErrorClosed (And.intro E.timeScaleSeparationClosed E.convergenceResultClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse