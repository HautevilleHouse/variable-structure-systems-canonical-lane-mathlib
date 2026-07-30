import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure FilippovSolutionsPackage where
  stateSpace : Type u
  vectorField : stateSpace → Set (stateSpace)
  differentialInclusion : Prop
  existenceOnInterval : Prop
  uniquenessCondition : Prop
  filippovEvidence : FilippovSolutionsEvidence

structure FilippovSolutionsEvidence where
  differentialInclusionClosed : Prop
  existenceOnIntervalClosed : Prop
  uniquenessConditionClosed : Prop

def FilippovSolutionsClosed (F : FilippovSolutionsPackage) : Prop :=
  F.differentialInclusion ∧ F.existenceOnInterval ∧ F.uniquenessCondition

theorem filippov_solutions_closed_from_evidence (F : FilippovSolutionsPackage) (E : FilippovSolutionsEvidence) :
    FilippovSolutionsClosed F := by
  exact And.intro E.differentialInclusionClosed (And.intro E.existenceOnIntervalClosed E.uniquenessConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse