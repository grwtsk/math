# Categorical Trace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3ce09fc2131776e6d833f93095c6284de75a3a5` · SHA-256 `b4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.CategoricalTrace
import Folder.CrystallineTensor.HattoriStallingsTrace

/-!
# Folder.Theorem.CrystallineTensor.CategoricalTrace

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports categorical trace boundary facts.
Ontology: proof.crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace CategoricalTrace

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : Folder.CrystallineTensor.CategoricalTrace alpha) :
    T.cyclic :=
  Folder.CrystallineTensor.categorical_trace_cyclic T

theorem hattori_stallings_trace_defined
    (T : Folder.CrystallineTensor.HattoriStallingsTraceContract) :
    T.traceDefined :=
  Folder.CrystallineTensor.hattori_stallings_trace_defined T

end CategoricalTrace
end CrystallineTensor
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=209f3abf4b3b88b0d0c24738e5ebe7d8ef22a7a7d98b921ce6d5be86bbdf588d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CategoricalTrace/Variantb4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
