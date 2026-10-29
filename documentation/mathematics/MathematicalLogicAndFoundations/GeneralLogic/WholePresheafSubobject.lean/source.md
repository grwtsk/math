# Whole Presheaf Subobject — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c04ce69a00e4d260df471a7db01c0dfe457fd054` · SHA-256 `be825b9135e580ae01ab05d3ffdb2b6c749f0e2043c6f44b6d664ce97cf60aa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePresheafSubobject — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: b24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2
Organized SHA-256: 281bf7b521a09df4e469a9bb835052e9da5fce0d011d672d5c5dc12b3d084de8
PMD: 510.9.060.010.010 presheaves (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The complete presheaf subobject record, with every universe, ambient category and contravariant functor parameter, all contains values and the full restriction-closure field. Restriction runs from membership at V to membership at U along f:U⟶V using F.map f.op. No subobject classifier, endpoint law or extra naturality theorem is added. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

import Folder.Basic

/-!
# Folder.Category.Subobject

Radiation role: category-interface
BinaryMatrix spine: This module supplies categorical interfaces used by sheaf and monodromy layers around the BinaryMatrix spine.
Ontology: category.subobject
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Category

open CategoryTheory Opposite

universe u v w

structure Subobject
    {C : Type u} [Category.{v} C]
    (F : Cᵒᵖ ⥤ Type w) where
  contains : ∀ U : C, F.obj (op U) → Prop
  restrict :
    ∀ {U V : C} (f : U ⟶ V) {s : F.obj (op V)},
      contains V s →
      contains U (F.map f.op s)

end Category
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e9dcd05c5a6695cc28342b494ce97f932a48dae8388f39bb37f9507e140b389 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/CatalanAndCategoryInterfaces/Variantb24a2ab61ed97d67/WholePresheafSubobject.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
