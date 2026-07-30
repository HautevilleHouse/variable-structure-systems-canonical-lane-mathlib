import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure PrimitiveSlidingMode where
  switchingSurface : Type u
  reachabilityCondition : Prop
  equivalentControl : Prop
  chatteringSuppression : Prop
  reachabilityConditionTerm : reachabilityCondition
  equivalentControlTerm : equivalentControl
  chatteringSuppressionTerm : chatteringSuppression

structure PrimitiveAdaptiveLaw where
  parameterEstimate : Type v
  adaptationGain : Prop
  persistentExcitation : Prop
  parameterConvergence : Prop
  adaptationGainTerm : adaptationGain
  persistentExcitationTerm : persistentExcitation
  parameterConvergenceTerm : parameterConvergence

structure PrimitiveBackstepping where
  virtualControl : Type w
  stabilizingFunction : Prop
  lyapunovFunction : Prop
  recursiveDesign : Prop
  stabilizingFunctionTerm : stabilizingFunction
  lyapunovFunctionTerm : lyapunovFunction
  recursiveDesignTerm : recursiveDesign

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse
