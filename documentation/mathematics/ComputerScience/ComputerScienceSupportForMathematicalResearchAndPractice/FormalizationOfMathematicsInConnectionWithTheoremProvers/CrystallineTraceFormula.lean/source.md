# Crystalline Trace Formula — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed90bb25f6f0e809807c9c67a895ae35a5eeaa0b` · SHA-256 `91e4407d10c39c2f840e673be0f6d0e4907dbd5fffb5c3662e78ddee5ece67ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CrystallineTraceFormula

/-!
# Folder.Theorem.CrystallineIndex.CrystallineTraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline trace formula contract facts.
Ontology: proof.crystalline_index.trace_formula
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CrystallineTraceFormula

theorem crystalline_trace_formula_holds
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : Folder.CrystallineIndex.CrystallineTraceFormula H) :
    T.traceFormulaHolds :=
  Folder.CrystallineIndex.crystalline_trace_formula_holds T

end CrystallineTraceFormula
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a0e9605948c6fcf2ff798c8244e12531622cffb8f6731155583af2a6c5b39a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallineTraceFormula/Variant91e4407d10c39c2f840e673be0f6d0e4907dbd5fffb5c3662e78ddee5ece67ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
