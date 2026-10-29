# Rado Finite Partial Iso — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68410298ccb0621601f511baca52904021505bbd` · SHA-256 `9839585aedadf32d4b3d98b2a9f07629c50f9d3cddb2d7bb2bdcce38df03154f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e


/- source-tree-label: STL1|L|addr=01100000|role=proof_code_atom|slug=pipeline-center-radofinitepartialiso|owner=canonical_owner|core=Pipeline/Center/RadoFinitePartialIso.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePartialIso

open Think.Pipeline.Center.RadoExtension
open Think.Pipeline.Center.RadoFiniteEmbedding

/-!
Definition-only finite partial-isomorphism API for future Rado witness work.

This file introduces only finite data predicates over lists and a finite Boolean
graph.  It does not prove extension, homogeneity, back-and-forth, countable
universality, Fraisse authority, or any analytic/spectral theorem.
-/

structure FinitePartialIsoData where
  G : FiniteBoolGraph
  domain : List Nat
  image : List Nat
  map : Nat -> Nat
  domainNodup : domain.Nodup
  imageNodup : image.Nodup
  mapsDomainToImage :
    ∀ a : Nat, a ∈ domain -> map a ∈ image
  preservesListedEdges :
    ∀ a b : Nat,
      a ∈ domain ->
      b ∈ domain ->
      a ≠ b ->
      (bitRadoEdge (map a) (map b) ↔ G.edge a b = true)

theorem finitePartialIso_domain_nodup
    (P : FinitePartialIsoData) :
    P.domain.Nodup := by
  exact P.domainNodup

theorem finitePartialIso_image_nodup
    (P : FinitePartialIsoData) :
    P.image.Nodup := by
  exact P.imageNodup

theorem finitePartialIso_maps_domain_to_image
    (P : FinitePartialIsoData)
    {a : Nat}
    (ha : a ∈ P.domain) :
    P.map a ∈ P.image := by
  exact P.mapsDomainToImage a ha

theorem finitePartialIso_preserves_listed_edges
    (P : FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b) :
    (bitRadoEdge (P.map a) (P.map b) ↔ P.G.edge a b = true) := by
  exact P.preservesListedEdges a b ha hb hne

theorem finitePartialIso_source_edge_to_bitRadoEdge
    (P : FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b)
    (hedge : P.G.edge a b = true) :
    bitRadoEdge (P.map a) (P.map b) := by
  exact (finitePartialIso_preserves_listed_edges P ha hb hne).2 hedge

theorem finitePartialIso_bitRadoEdge_to_source_edge
    (P : FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b)
    (hedge : bitRadoEdge (P.map a) (P.map b)) :
    P.G.edge a b = true := by
  exact (finitePartialIso_preserves_listed_edges P ha hb hne).1 hedge

end Think.Pipeline.Center.RadoFinitePartialIso
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baa735eea4cac5392dff925aab630c293b99e608c051f89f5954080a569397ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c656/Variant9839585aedadf32d4b3d98b2a9f07629c50f9d3cddb2d7bb2bdcce38df03154f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
