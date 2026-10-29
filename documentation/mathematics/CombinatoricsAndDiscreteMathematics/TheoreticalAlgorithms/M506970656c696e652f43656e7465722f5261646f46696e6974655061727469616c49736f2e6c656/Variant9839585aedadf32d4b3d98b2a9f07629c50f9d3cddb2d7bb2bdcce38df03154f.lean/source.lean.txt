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
