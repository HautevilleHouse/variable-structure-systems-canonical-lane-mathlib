import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure FilippovSolution where
  stateSpace : Type u
  vectorField : stateSpace → Set (stateSpace → ℝ)
  initialCondition : stateSpace
  timeInterval : Set ℝ
  existenceInterval : Prop
  uniquenessCondition : Prop
   convexCombinationCondition : Prop

def FilippovSolutionClosed (F : FilippovSolution) : Prop :=
  F.existenceInterval ∧ F.uniquenessCondition ∧ F.convexCombinationCondition

structure FilippovSolutionEvidence (F : FilippovSolution) where
  existenceIntervalClosed : F.existenceInterval
  uniquenessConditionClosed : F.uniquenessCondition
  convexCombinationConditionClosed : F.convexCombinationCondition

theorem filippov_solution_closed_from_evidence (F : FilippovSolution)
    (E : FilippovSolutionEvidence F) : FilippovSolutionClosed F := by
  exact And.intro E.existenceIntervalClosed
    (And.intro E.uniquenessConditionClosed E.convexCombinationConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse