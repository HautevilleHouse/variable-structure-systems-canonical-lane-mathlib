import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure ReachabilityAnalysis where
  system : FilippovSolution
  targetSet : Set (system.stateSpace)
  initialSet : Set (system.stateSpace)
  forwardReachability : Prop
  backwardReachability : Prop
  invarianceCondition : Prop

def ReachabilityAnalysisClosed (R : ReachabilityAnalysis) : Prop :=
  R.forwardReachability ∧ R.backwardReachability ∧ R.invarianceCondition

structure ReachabilityAnalysisEvidence (R : ReachabilityAnalysis) where
  forwardReachabilityClosed : R.forwardReachability
  backwardReachabilityClosed : R.backwardReachability
  invarianceConditionClosed : R.invarianceCondition

theorem reachability_analysis_closed_from_evidence (R : ReachabilityAnalysis)
    (E : ReachabilityAnalysisEvidence R) : ReachabilityAnalysisClosed R := by
  exact And.intro E.forwardReachabilityClosed
    (And.intro E.backwardReachabilityClosed E.invarianceConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse