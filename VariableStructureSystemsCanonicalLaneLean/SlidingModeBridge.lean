import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VSSWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse