# Runtime Contract — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88b3fe70487b8657be2e2d45c62a55991f1de6d3` · SHA-256 `0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8894a9b513254ce66cfee91e43ad1950c56b742cb29556247ae4a7c44ff4ac70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuntimeContract/Variant0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
