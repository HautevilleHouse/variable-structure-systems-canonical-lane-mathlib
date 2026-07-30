import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure ChatteringEffect where
  switchingSurface : SwitchingSurface
  switchingFrequency : ℕ → ℝ
  amplitude : ℕ → ℝ
  limitBehavior : Prop
  boundednessCondition : Prop
  convergenceCondition : Prop

def ChatteringEffectClosed (C : ChatteringEffect) : Prop :=
  C.limitBehavior ∧ C.boundednessCondition ∧ C.convergenceCondition

structure ChatteringEffectEvidence (C : ChatteringEffect) where
  limitBehaviorClosed : C.limitBehavior
  boundednessConditionClosed : C.boundednessCondition
  convergenceConditionClosed : C.convergenceCondition

theorem chattering_effect_closed_from_evidence (C : ChatteringEffect)
    (E : ChatteringEffectEvidence C) : ChatteringEffectClosed C := by
  exact And.intro E.limitBehaviorClosed
    (And.intro E.boundednessConditionClosed E.convergenceConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse