# Arrow Operations — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b72d774372736a7181051c38ac349a7a4b04b8d0` · SHA-256 `cd01204f9d2898f115cd0b14be7b7bfb9d5ea6d517efce74a8eb8ce2cd37b57e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Object and indexed arrow operations only: SiteCategory supplies Obj/Hom/id/comp without identity or associativity equations. No lawful category is asserted.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e421ae8a0617bca4bbf55840af2c4019323aaadb39c3e13a8f5ab980a13e94b7
Organized SHA-256: ad264f4e5217d706b2ecb0ffa6483fa0526aa3792925a019f7821e1b3ac3bf89
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.ResearchTopos.GrothendieckTopology

Radiation role: research-boundary
BinaryMatrix spine: This module supplies abstract site/topology infrastructure, not a BinaryMatrix descent theorem.
Ontology: research_topos.grothendieck_topology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4

open Folder
open Folder.ResearchTopos

structure SiteCategory where
  Obj : Type _
  Hom : Obj → Obj → Type _
  id : ∀ X, Hom X X
  comp : ∀ {X Y Z}, Hom X Y → Hom Y Z → Hom X Z

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=662bc35caefd9c8b5ffea13c5a2053811ed8f9ef6eadbb6f9eba9643271efebd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentArrowData/Variante421ae8a0617bca4/ArrowOperations.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
