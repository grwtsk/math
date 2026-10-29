# Canonical Path Composition Canonical Path Contract — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de731fdd87cc3e35a517da071eb28bb210772007` · SHA-256 `008ecb541b582549a659887350a4628fd506c2c763ad306296d73ae1b30a7ede`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.CanonicalPathComposition

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied canonical-path contracts.
Ontology: canonical.path
Pivot role: dual
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
The current canonical path is contract composition only.

Do not read `finalAlignment` as RH, GRH, or an unconditional boundary theorem.
-/
structure CanonicalPathContract where
  familiesIndex : Type
  transportInvariance : Type
  traceIdentity : Type
  positivityAlignment : Type
  finalAlignment : Prop
  finalAlignment_certified : finalAlignment
  sourceLabel : String

theorem canonical_path_contract_composes
    (C : CanonicalPathContract) :
    C.finalAlignment :=
  C.finalAlignment_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ae81880e580f56246cac68b9a95d0690bf9c7a623df37d62850434549b57dfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalPathComposition/Variant008ecb541b582549a659887350a4628fd506c2c763ad306296d73ae1b30a7ede.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
