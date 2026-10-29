# Crystalline Trace Formula Crystalline Trace Kind — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a85999b588c4c63c12e199941c7a95dcf4d397d` · SHA-256 `d217c128fe8192bc2df761dc538fadc23b49d4c1e1b4556e2a0d06a6b498a0e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineTraceFormula

Radiation role: research-boundary
BinaryMatrix spine: This module records crystalline trace formula contracts, not BinaryMatrix traces.
Ontology: crystalline_index.trace_formula
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

inductive CrystallineTraceKind where
  | grothendieckMessing
  | deligneIllusie
  | hattoriStallings
  | categorical
deriving DecidableEq, Repr

structure CrystallineTraceFormula
    (H : CohomologyTheory) where
  traceKind : CrystallineTraceKind
  AnalyticSide : Type _
  GeometricSide : Type _
  traceMap : AnalyticSide → GeometricSide
  targetClass : CohomologyClass H
  traceFormulaHolds : Prop
  traceFormulaHolds_certified : traceFormulaHolds
  sourceLabel : String

theorem crystalline_trace_formula_holds
    {H : CohomologyTheory}
    (T : CrystallineTraceFormula H) :
    T.traceFormulaHolds :=
  T.traceFormulaHolds_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db8d33e2d8b6b180b98ced8baa2819623c3a3897060899b154769a85c5f263c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrystallineTraceFormula/Variantd217c128fe8192bc2df761dc538fadc23b49d4c1e1b4556e2a0d06a6b498a0e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
