import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure BacksteppingPackage where
  virtualControl : Type w
  stabilizingFunction : Prop
  lyapunovFunction : Prop
  recursiveDesign : Prop
  trackingErrorConvergence : Prop

structure BacksteppingEvidence (B : BacksteppingPackage) where
  stabilizingFunctionClosed : B.stabilizingFunction
  lyapunovFunctionClosed : B.lyapunovFunction
  recursiveDesignClosed : B.recursiveDesign
  trackingErrorConvergenceClosed : B.trackingErrorConvergence

def BacksteppingClosed (B : BacksteppingPackage) : Prop :=
  B.stabilizingFunction ∧ B.lyapunovFunction ∧ B.recursiveDesign ∧ B.trackingErrorConvergence

theorem backstepping_closed_from_evidence (B : BacksteppingPackage) (E : BacksteppingEvidence B) :
    BacksteppingClosed B := by
  exact And.intro E.stabilizingFunctionClosed
    (And.intro E.lyapunovFunctionClosed
      (And.intro E.recursiveDesignClosed E.trackingErrorConvergenceClosed))

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse
