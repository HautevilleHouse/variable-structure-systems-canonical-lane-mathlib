import Mathlib

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "0000000000000000000000000000000000000000"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/extract_constants.py", sha256 := "0000000000000000000000000000000000000000000000000000000000000000", functionCount := 1, classCount := 0, assignmentCount := 1, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/extract_constants.py", name := "extract", args := ["inputs"], returns := "dict", doc := "", line := 1, isAsync := false }]

def sourceClasses : List SourceClassDecl := []

def sourceAssignments : List SourceAssignmentDecl :=
  [{ file := "scripts/extract_constants.py", name := "DEFAULT_GAIN", value := "\"1.0\"", line := 1 }]

def sourceRegistryConstants : List RegistryConstant :=
  [{ key := "sliding_gain", value := "1.0", theoremLevel := true, status := "derived_numeric", source := "extract_constants.py", sourceSection := "paper/VARIABLE_STRUCTURE_SYSTEMS.md" }]

def constantSpecs : List ConstantSpec :=
  [{ group := "constants", key := "sliding_gain", status := "derived_numeric", formula := "sliding_gain_raw", sourceSection := "paper/VARIABLE_STRUCTURE_SYSTEMS.md", validation := "required_positive", componentKeys := ["sliding_gain_raw"] }]

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse