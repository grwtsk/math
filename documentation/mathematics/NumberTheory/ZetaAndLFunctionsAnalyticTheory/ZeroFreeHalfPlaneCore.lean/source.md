# Complete source: GRWTSK.Interfaces.ZeroFreeHalfPlaneCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c829d95ff98972109acf03bc45724521dfdce14d` · SHA-256 `e382e0c3898548a839cf830545f5c11ce1c5e4961316693ff503a3faeee7dbe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.ZeroFreeHalfPlaneControls

set_option autoImplicit false

/-!
# Isolated zero-free half-plane criterion root

This source-only root exposes the exact threshold ordering, the equivalence at
`re(s) > 1/2`, and strict-boundary controls.  It is intentionally not imported
by `GRWTSK.lean` or `GRWTSK.NumberTheory.Zeta.Riemann` in this increment.

The root supplies no zero-free estimate and therefore no proof of RH.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6b1ef8f464d3f4296f149a305036a22e4916dec8cbe599d8b1b4b49e497697b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ZeroFreeHalfPlaneCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
