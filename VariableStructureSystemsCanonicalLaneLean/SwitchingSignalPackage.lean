import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SwitchingSignalPackage where
  timeDomain : Type u
  signal : timeDomain → ℕ
  piecewiseConstant : Prop
  finiteSwitchesOnCompact : Prop
  dwellTimeCondition : Prop
  signalEvidence : SwitchingSignalEvidence

structure SwitchingSignalEvidence where
  piecewiseConstantClosed : Prop
  finiteSwitchesOnCompactClosed : Prop
  dwellTimeConditionClosed : Prop

def SwitchingSignalClosed (S : SwitchingSignalPackage) : Prop :=
  S.piecewiseConstant ∧ S.finiteSwitchesOnCompact ∧ S.dwellTimeCondition

theorem switching_signal_closed_from_evidence (S : SwitchingSignalPackage) (E : SwitchingSignalEvidence) :
    SwitchingSignalClosed S := by
  exact And.intro E.piecewiseConstantClosed (And.intro E.finiteSwitchesOnCompactClosed E.dwellTimeConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse