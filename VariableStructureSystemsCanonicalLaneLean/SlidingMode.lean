import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SlidingMode where
  switchingSurface : SwitchingSurface
  slidingRegion : Set (switchingSurface.domain)
  equivalentControl : switchingSurface.domain → ℝ
  reducedOrderDynamics : Prop
  reachabilityCondition : Prop
  stabilityCondition : Prop

def SlidingModeClosed (S : SlidingMode) : Prop :=
  S.reducedOrderDynamics ∧ S.reachabilityCondition ∧ S.stabilityCondition

structure SlidingModeEvidence (S : SlidingMode) where
  reducedOrderDynamicsClosed : S.reducedOrderDynamics
  reachabilityConditionClosed : S.reachabilityCondition
  stabilityConditionClosed : S.stabilityCondition

theorem sliding_mode_closed_from_evidence (S : SlidingMode)
    (E : SlidingModeEvidence S) : SlidingModeClosed S := by
  exact And.intro E.reducedOrderDynamicsClosed
    (And.intro E.reachabilityConditionClosed E.stabilityConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse