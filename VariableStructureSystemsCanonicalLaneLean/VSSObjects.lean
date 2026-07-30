import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure VSSSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VSSAdmittedObject where
  space : VSSSpace
  varyingStructure : Prop
  stabilityCondition : Prop
  model : Type
  modelTopology : TopologicalSpace model
  embeddedInModel : Prop
  conclusion : embeddedInModel

def VSSWitnessClosed (O : VSSAdmittedObject) : Prop :=
  O.embeddedInModel

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse
