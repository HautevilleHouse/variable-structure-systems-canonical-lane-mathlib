import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SlidingModePackage where
  switchingSurface : Type u
  reachabilityCondition : Prop
  equivalentControl : Prop
  chatteringSuppression : Prop
  slidingMotion : Prop

structure SlidingModeEvidence (S : SlidingModePackage) where
  reachabilityConditionClosed : S.reachabilityCondition
  equivalentControlClosed : S.equivalentControl
  chatteringSuppressionClosed : S.chatteringSuppression
  slidingMotionClosed : S.slidingMotion

def SlidingModeClosed (S : SlidingModePackage) : Prop :=
  S.reachabilityCondition ∧ S.equivalentControl ∧ S.chatteringSuppression ∧ S.slidingMotion

theorem slidingMode_closed_from_evidence (S : SlidingModePackage) (E : SlidingModeEvidence S) :
    SlidingModeClosed S := by
  exact And.intro E.reachabilityConditionClosed
    (And.intro E.equivalentControlClosed
      (And.intro E.chatteringSuppressionClosed E.slidingMotionClosed))

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse
