import VariableStructureSystemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

def ConstrainedVariableStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variable_structure_endgame (A : AdmissibleClass) :
    ConstrainedVariableStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse