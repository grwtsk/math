import Folder.Basic

/-!
# Folder.Shader.RuntimeContract

Radiation role: shader-spec
BinaryMatrix spine: This module states runtime shader boundaries for BinaryMatrix-adjacent phase witnesses.
Ontology: shader.runtime_contract
Pivot role: none
Zero typology: none
Contract boundary: shader
Composite stack role: infrastructure
-/

namespace Folder
namespace Shader

structure ShaderRuntimeContract where
  shaderName : String
  computesVisibleResidualSplit : Prop
  validatesShape : Prop
  doesNotProveModularity : Prop
  doesNotProveBSD : Prop
  doesNotProveModularity_certified : doesNotProveModularity
  doesNotProveBSD_certified : doesNotProveBSD

theorem shader_does_not_prove_modularity
    (C : ShaderRuntimeContract) :
    C.doesNotProveModularity :=
  C.doesNotProveModularity_certified

theorem shader_does_not_prove_bsd
    (C : ShaderRuntimeContract) :
    C.doesNotProveBSD :=
  C.doesNotProveBSD_certified

end Shader
end Folder
