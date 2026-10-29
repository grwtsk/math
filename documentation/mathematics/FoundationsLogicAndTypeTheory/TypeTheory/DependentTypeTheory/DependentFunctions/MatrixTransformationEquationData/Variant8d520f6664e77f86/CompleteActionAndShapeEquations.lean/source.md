# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86.CompleteActionAndShapeEquations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06b978508f290329c32f1021ff44efddd07f51ad` · SHA-256 `c931632020353cb4246a3e5a349d841320cb2467854fdb3cd284295c81b50d01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete typed matrix transformations with the five exact supplied action and shape equations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed
Organized SHA-256: d1f3860cd9eb82142f12c245d9774c595abc0f9427b0683cfcf0170cebf50df4
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.Archive.Spin
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Archive.MatrixSymmetry

Radiation role: archive-symmetry
BinaryMatrix spine: This module describes matrix symmetry actions on BinaryMatrix archive atoms.
Ontology: archive.matrix_symmetry
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

open Folder Folder.Archive

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86

structure MatrixAction where
  Spin : Type
  decEqSpin : DecidableEq Spin
  id : Spin
  comp : Spin → Spin → Spin
  inv : Spin → Spin
  act : Spin → Carrier.BinaryMatrix → Carrier.BinaryMatrix
  id_act : ∀ M, act id M = M
  comp_act : ∀ g h M, act (comp g h) M = act h (act g M)
  inv_act_left : ∀ g M, act (inv g) (act g M) = M
  preserves_rows : ∀ g M, (act g M).m = M.m
  preserves_cols : ∀ g M, (act g M).n = M.n


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.MatrixTransformationEquationData.Variant8d520f6664e77f86
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d42e781918b351cfc328421abbfedda206adbcd32f2683b280a1100c480d25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/MatrixTransformationEquationData/Variant8d520f6664e77f86/CompleteActionAndShapeEquations.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
