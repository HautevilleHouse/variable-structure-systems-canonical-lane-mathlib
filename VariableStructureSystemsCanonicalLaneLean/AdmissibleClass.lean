import VariableStructureSystemsCanonicalLaneLean.VariableStructureSystemsCanonicalLaneLean

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : VariableStructureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VariableStructureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse