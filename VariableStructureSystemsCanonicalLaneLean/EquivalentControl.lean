import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure EquivalentControl where
  switchingSurface : SwitchingSurface
  slidingDynamics : SlidingMode
  equivalentInput : switchingSurface.domain → ℝ
  matchingCondition : Prop
  wellDefinedness : Prop

def EquivalentControlClosed (E : EquivalentControl) : Prop :=
  E.matchingCondition ∧ E.wellDefinedness

structure EquivalentControlEvidence (E : EquivalentControl) where
  matchingConditionClosed : E.matchingCondition
  wellDefinednessClosed : E.wellDefinedness

theorem equivalent_control_closed_from_evidence (E : EquivalentControl)
    (E2 : EquivalentControlEvidence E) : EquivalentControlClosed E := by
  exact And.intro E2.matchingConditionClosed E2.wellDefinednessClosed

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse