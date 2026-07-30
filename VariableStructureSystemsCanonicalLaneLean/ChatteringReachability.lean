import VariableStructureSystemsCanonicalLaneLean.SlidingModeBridge
import VariableStructureSystemsCanonicalLaneLean.SwitchingSurfaceGate

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure ChatteringReachabilityPackage where
  switchingSurface : Prop
  equivalentControl : Prop
  idealSlidingDynamics : Prop
  finiteTimeReachability : Prop

structure ChatteringReachabilityEvidence (C : ChatteringReachabilityPackage) where
  switchingSurfaceClosed : C.switchingSurface
  equivalentControlClosed : C.equivalentControl
  idealSlidingDynamicsClosed : C.idealSlidingDynamics
  finiteTimeReachabilityClosed : C.finiteTimeReachability

def ChatteringReachabilityClosed (C : ChatteringReachabilityPackage) : Prop :=
  C.switchingSurface ∧ C.equivalentControl ∧ C.idealSlidingDynamics ∧ C.finiteTimeReachability

theorem chattering_reachability_closed_from_evidence
    (C : ChatteringReachabilityPackage) (E : ChatteringReachabilityEvidence C) :
    ChatteringReachabilityClosed C := by
  exact And.intro E.switchingSurfaceClosed
    (And.intro E.equivalentControlClosed
      (And.intro E.idealSlidingDynamicsClosed E.finiteTimeReachabilityClosed))

def ConstrainedVSSClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vss_endgame (A : AdmissibleClass) :
    ConstrainedVSSClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse