import VariableStructureSystemsCanonicalLaneLean.ChatteringReachability

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure ReachingLawPackage where
  controlStructure : Prop
  surfaceAttractivity : Prop
  reachingTimeBounded : Prop
  slidingModeCondition : Prop

structure ReachingLawEvidence (R : ReachingLawPackage) where
  controlStructureClosed : R.controlStructure
  surfaceAttractivityClosed : R.surfaceAttractivity
  reachingTimeBoundedClosed : R.reachingTimeBounded
  slidingModeConditionClosed : R.slidingModeCondition

def ReachingLawClosed (R : ReachingLawPackage) : Prop :=
  R.controlStructure ∧ R.surfaceAttractivity ∧ R.reachingTimeBounded ∧ R.slidingModeCondition

theorem reaching_law_closed_from_evidence
    (R : ReachingLawPackage) (E : ReachingLawEvidence R) : ReachingLawClosed R := by
  exact And.intro E.controlStructureClosed
    (And.intro E.surfaceAttractivityClosed
      (And.intro E.reachingTimeBoundedClosed E.slidingModeConditionClosed))

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse