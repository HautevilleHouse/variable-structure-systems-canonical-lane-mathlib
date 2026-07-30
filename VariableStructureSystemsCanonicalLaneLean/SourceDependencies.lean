import VariableStructureSystemsCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace VariableStructureSystemsCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/extract_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 }]

def sourceRuntimeModules : List String :=
  ["json"]

def sourcePathDependencies : List SourcePathDependency :=
  [{ file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", path := "artifacts/constants_extraction_inputs.json", role := "artifact", line := 1 }]

def sourceImportDependencyCount : Nat := 1
def sourceRuntimeModuleCount : Nat := 1
def sourcePathDependencyCount : Nat := 1

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 1 := by
  native_decide

theorem source_runtime_module_count_checked : sourceRuntimeModules.length = 1 := by
  native_decide

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 1 := by
  native_decide

end VariableStructureSystemsCanonicalLaneLean
end HautevilleHouse