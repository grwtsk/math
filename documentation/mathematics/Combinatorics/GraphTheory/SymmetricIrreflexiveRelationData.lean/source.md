# Symmetric Irreflexive Relation Data — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e4db60216c02bcf332f3028160ad2d3d9d7b20b` · SHA-256 `77954ba5e60afa3a2d242716e75927e4c136dc947a01986faa5dd7620001eebd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SymmetricIrreflexiveRelationData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: db67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e
Organized SHA-256: aa3934c1cb7943240c1778e8b1a21f65309fd6881a311137170afd5eb79debd5
PMD: 510.7.030.010 basic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete adjacency relation, symmetry, irreflexivity and per-cell finite-neighbor typeclass data on the original GridShape. No field or instance is removed. -/

import Folder.Carrier.Grid

/-!
# Folder.Spectral.Graph

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.graph
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b

open Folder

open Carrier

structure CellGraph (s : GridShape) where
  Adj : Cell s → Cell s → Prop
  symm : Std.Symm Adj
  irrefl : Std.Irrefl Adj
  finite_neighbors : ∀ c, Fintype {d : Cell s // Adj c d}

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df2f9fa34db94316bbe7e50546294be29472e4f884442b78a02dc6f13b7a7cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteGridGraphs/Variantdb67f9e459960a4b/SymmetricIrreflexiveRelationData.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
