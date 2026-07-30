import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SwitchingSurface where
  domain : Type u
  topology : TopologicalSpace domain
  switchingFunction : domain → Prop
  surfaceSmooth : Prop
  piecewiseDefined : Prop
  continuityCondition : Prop

def SwitchingSurfaceClosed (S : SwitchingSurface) : Prop :=
  S.surfaceSmooth ∧ S.piecewiseDefined ∧ S.continuityCondition

structure SwitchingSurfaceEvidence (S : SwitchingSurface) where
  surfaceSmoothClosed : S.surfaceSmooth
  piecewiseDefinedClosed : S.piecewiseDefined
  continuityConditionClosed : S.continuityCondition

theorem switching_surface_closed_from_evidence (S : SwitchingSurface)
    (E : SwitchingSurfaceEvidence S) : SwitchingSurfaceClosed S := by
  exact And.intro E.surfaceSmoothClosed (And.intro E.piecewiseDefinedClosed E.continuityConditionClosed)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse