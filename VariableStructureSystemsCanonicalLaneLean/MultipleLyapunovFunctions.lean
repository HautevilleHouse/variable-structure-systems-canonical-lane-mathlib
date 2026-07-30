import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure MultipleLyapunovFunctionsPackage where
  subsystems : List (Type u)
  lyapunovFunctions : List (subsystemElement : ∀ s : Type u, s → ℝ)
  commonLyapunovCandidate : Prop
  decreasingCondition : Prop
  nonincreasingCondition : Prop
  mlfEvidence : MultipleLyapunovFunctionsEvidence

structure MultipleLyapunovFunctionsEvidence where
  commonLyapunovCandidateClosed : Prop
  decreasingConditionClosed : Prop
  nonincreasingConditionClosed : Prop

def MultipleLyapunovFunctionsClosed (M : MultipleLyapunovFunctionsPackage) : Prop :=
  M.commonLyapunovCandidate ∧ M.decreasingCondition ∧ M.nonincreasingCondition

theorem multiple_lyapunov_functions_closed_from_evidence (M : MultipleLyapunovFunctionsPackage) (E : MultipleLyapunovFunctionsEvidence) :
    MultipleLyapunovFunctionsClosed M := by
  exact And.intro E.commonLyapunovCandidateClosed (And.intro E.decreasingConditionClosed E.nonincreasingConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse