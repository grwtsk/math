# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.LightweightCore.Variant23db0bf34a1f68f8.FunctorData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85ef3546b760c2eccc18e8fb6d936fbbd4f2b2fc` · SHA-256 `fa2d64b8467d20443a0cb7c4cfe1739db91102023029c2964f3fdac93887d61b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Functor data preserving the supplied category identity and composition
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840
Organized SHA-256: 9f68bb1286a3ee4ab992bc37d0088476317b77f95938123fc808de85512b54b4
PMD: 510.9.010.020 functors (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.LightweightCore.Variant23db0bf34a1f68f8.CategoryData
namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.LightweightCore.Variant23db0bf34a1f68f8

/-! Core lightweight category and bijection predicates for Think logic receipts. -/

structure Functor (C D : Category) where
  obj : C.Obj → D.Obj
  map : {A B : C.Obj} → C.Hom A B → D.Hom (obj A) (obj B)
  map_id : ∀ A : C.Obj, map (C.id A) = D.id (obj A)
  map_comp :
    ∀ {A B C' : C.Obj} (f : C.Hom A B) (g : C.Hom B C'),
      map (C.comp f g) = D.comp (map f) (map g)

end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categories.LightweightCore.Variant23db0bf34a1f68f8
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=780fa7cf41ff88d08cf15cb9eeee9a6a9df4c416730a42ef33e4b717e33328de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/LightweightCore/Variant23db0bf34a1f68f8/FunctorData.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
