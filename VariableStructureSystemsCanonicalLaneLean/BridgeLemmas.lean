import VariableStructureSystemsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VariableStructureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse