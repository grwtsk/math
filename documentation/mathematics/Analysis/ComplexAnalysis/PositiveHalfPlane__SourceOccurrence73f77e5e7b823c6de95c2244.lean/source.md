# Complete source: GRWTSK.Analysis.ComplexAnalysis.PositiveHalfPlane

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db9d2bc5a43180673435bbcb6403de1fdb98d95d` · SHA-256 `f7a4d6cd2a41cd742eca6f56de856c4dad0b6be2b1d8362eb628e0f7e9cdbabe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Complex.Basic

noncomputable section
namespace EulerP04RH.RHTerminal

def PositiveHalfPlane : Set ℂ := {z | 0 < z.re}

end EulerP04RH.RHTerminal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9719718f5796ace6ad7f0cf141cbf1ee5a941645f49f679188e5835c76007716 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/PositiveHalfPlane__SourceOccurrence73f77e5e7b823c6de95c2244.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
