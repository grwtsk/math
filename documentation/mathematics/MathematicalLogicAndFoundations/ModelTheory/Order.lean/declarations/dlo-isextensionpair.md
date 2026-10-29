# dlo_isExtensionPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a58e46eb2b02234912088531e12af84a54f21efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 459,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81450f68-cf58-4b83-8118-52c99bb9f227",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3dffd3f-06a9-9eb8-4ee9-e07fb2cf077d",
  "kind": "lemma",
  "lexical_name": "dlo_isExtensionPair",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "dlo-isextensionpair",
  "source": {
    "blob": "a58e46eb2b02234912088531e12af84a54f21efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 459,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:558c0a0dc2819b0994e4a6f064469a8b98444b766956020e89f7a68f6c6d0cfe",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/Order.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3dffd3f-06a9-9eb8-4ee9-e07fb2cf077d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dlo_isExtensionPair
    (M : Type w) [Language.order.Structure M] [M ⊨ Language.order.linearOrderTheory]
    (N : Type w') [Language.order.Structure N] [N ⊨ Language.order.dlo] [Nonempty N] :
    Language.order.IsExtensionPair M N := by
  classical
  rw [isExtensionPair_iff_exists_embedding_closure_singleton_sup]
  intro S S_fg f m
  letI := Language.order.linearOrderOfModels M
  letI := Language.order.linearOrderOfModels N
  have := Language.order.denselyOrdered_of_dlo N
  have := Language.order.noBotOrder_of_dlo N
  have := Language.order.noTopOrder_of_dlo N
  have := NoBotOrder.to_noMinOrder N
  have := NoTopOrder.to_noMaxOrder N
  have hS : Set.Finite (S : Set M) := (S.fg_iff_structure_fg.1 S_fg).finite
  obtain ⟨g, hg⟩ := Order.exists_orderEmbedding_insert hS.toFinset
    ((OrderIso.setCongr hS.toFinset (S : Set M) hS.coe_toFinset).toOrderEmbedding.trans
      (OrderEmbedding.ofStrictMono f (HomClass.strictMono f))) m
  let g' :
    ((Substructure.closure Language.order).toFun {m} ⊔ S : Language.order.Substructure M) ↪o N :=
    ((OrderIso.setCongr _ _ (by
      convert LowerAdjoint.closure_eq_self_of_mem_closed _
        (Substructure.mem_closed_of_isRelational Language.order
        ((insert m hS.toFinset : Finset M) : Set M))
      simp only [Finset.coe_insert, Set.Finite.coe_toFinset, Substructure.closure_insert,
        Substructure.closure_eq])).toOrderEmbedding.trans g)
  use StrongHomClass.toEmbedding g'
  ext ⟨x, xS⟩
  refine congr_fun hg.symm ⟨x, (?_ : x ∈ hS.toFinset)⟩
  simp only [Set.Finite.mem_toFinset, SetLike.mem_coe, xS]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/Order.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58e46eb2b02234912088531e12af84a54f21efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=548d80dfe516f36a3bf2f8ad0ad608cbbc99c59dc34e0b2489ab34a9679dee37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
