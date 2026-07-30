import VariableStructureSystemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariableStructureSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VariableStructureAdmittedObject where
  space : VariableStructureSpace
  slidingMode : Prop
  chatteringSuppressed : Prop
  plantModel : Type
  controllerModel : Type
  lyapunovStable : Prop
  conclusion : lyapunovStable

structure VariableStructureEndgameState where
  object : VariableStructureAdmittedObject

def VariableStructureWitnessClosed (O : VariableStructureAdmittedObject) : Prop :=
  O.lyapunovStable

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse