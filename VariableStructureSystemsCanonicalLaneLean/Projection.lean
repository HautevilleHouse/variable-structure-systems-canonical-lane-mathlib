import VariableStructureSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariableStructureEndgameState where
  object : VariableStructureAdmittedObject

def variableStructureProjection : Projection VariableStructureEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem variableStructure_projection_idempotent (x : VariableStructureEndgameState) :
    variableStructureProjection.toFun (variableStructureProjection.toFun x) = variableStructureProjection.toFun x := by
  exact variableStructureProjection.idempotent x

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse