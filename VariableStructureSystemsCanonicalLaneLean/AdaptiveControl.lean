import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure AdaptiveControlPackage where
  parameterEstimate : Type v
  adaptationGain : Prop
  persistentExcitation : Prop
  parameterConvergence : Prop
  stabilityGuarantee : Prop

structure AdaptiveControlEvidence (A : AdaptiveControlPackage) where
  adaptationGainClosed : A.adaptationGain
  persistentExcitationClosed : A.persistentExcitation
  parameterConvergenceClosed : A.parameterConvergence
  stabilityGuaranteeClosed : A.stabilityGuarantee

def AdaptiveControlClosed (A : AdaptiveControlPackage) : Prop :=
  A.adaptationGain ∧ A.persistentExcitation ∧ A.parameterConvergence ∧ A.stabilityGuarantee

theorem adaptiveControl_closed_from_evidence (A : AdaptiveControlPackage) (E : AdaptiveControlEvidence A) :
    AdaptiveControlClosed A := by
  exact And.intro E.adaptationGainClosed
    (And.intro E.persistentExcitationClosed
      (And.intro E.parameterConvergenceClosed E.stabilityGuaranteeClosed))

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse
