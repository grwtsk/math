# Labeled Endofunction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6757b49a185c89eb75b738711882bbcd442d91` · SHA-256 `2fef2ab116295ac9462f89042a878493ccb314f53a439dc275b3a54958a23bae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Labeled finite-matrix endofunctions and their exact fixed-point predicate
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32
Organized SHA-256: 2098788527d19ff91c9d21b8e4736e7b68601f2b81a226455045790ba777450b
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Complete two-field labeled endofunction and point equation only; no preservation, group action, continuity, IO, authority or archive reconstruction law. -/

import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.PresentationRule

Radiation role: archive-rule-engine
BinaryMatrix spine: This module separates local reconstruction rules from materialized BinaryMatrixStream storage.
Ontology: archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

open Folder

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.MatrixEndofunctionFixedPoints.Variant2e0be18b5a4ace73

structure PresentationRule where
  name : String
  apply : Carrier.BinaryMatrix → Carrier.BinaryMatrix

def IsFixedBy
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) : Prop :=
  R.apply M = M

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.MatrixEndofunctionFixedPoints.Variant2e0be18b5a4ace73
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71231c3fb9f6a3c99c117153ce65668ce765e32bcc330f82c7503d1f5982b38b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/MatrixEndofunctionFixedPoints/Variant2e0be18b5a4ace73/LabeledEndofunction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
