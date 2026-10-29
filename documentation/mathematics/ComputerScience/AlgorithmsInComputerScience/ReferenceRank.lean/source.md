# Reference Rank — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59f24c8a488ce93eeeabe0665c308b5f6434a427` · SHA-256 `749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.ReferenceGraph

/-!
# Folder.Presentation.ReferenceRank

Radiation role: presentation-reference-rank
BinaryMatrix spine: This module records reference-ranked document ordering for views derived from BinaryMatrixStream archives.
Ontology: presentation.reference_rank
Pivot role: none
Zero typology: none
Contract boundary: interface
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure RankedModule where
  moduleId : ModuleId
  inbound : Nat
  outbound : Nat
  score : Nat

def rankModule
    (G : ReferenceGraph)
    (M : ModuleId) : RankedModule where
  moduleId := M
  inbound := inboundWeight G M
  outbound := outboundWeight G M
  score := inboundWeight G M * 1000 + outboundWeight G M

structure ReferenceRanking where
  graph : ReferenceGraph
  ranked : List RankedModule
  contains_all :
    ∀ M, M ∈ graph.modules → ∃ R, R ∈ ranked ∧ R.moduleId = M
  sorted_desc :
    ranked.Pairwise (fun a b => b.score ≤ a.score)

theorem ranking_contains_module
    (R : ReferenceRanking)
    {M : ModuleId}
    (h : M ∈ R.graph.modules) :
    ∃ RM, RM ∈ R.ranked ∧ RM.moduleId = M :=
  R.contains_all M h

end Presentation
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=509641a9cb7ed4486585f08faccee8c70ed465c87db0d07b20328fbbab479bb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
