# vanishingIdeal_zeroLocus_eq_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "301e933c464eb7361c16ce68bc6fe1083c09de85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e775b11-2c48-7d3b-cf49-053071cd927e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a5ac8ad-d1fd-888f-7204-74ae1c91cc81",
  "kind": "theorem",
  "lexical_name": "vanishingIdeal_zeroLocus_eq_radical",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "vanishingideal-zerolocus-eq-radical--a4f77e9b765f1feab053c585",
  "source": {
    "blob": "301e933c464eb7361c16ce68bc6fe1083c09de85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f77e9b765f1feab053c585ad39f119306dde154509c10b8eebf54e258bcc3b",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a5ac8ad-d1fd-888f-7204-74ae1c91cc81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanishingIdeal_zeroLocus_eq_radical (I : Ideal (MvPolynomial σ k)) :
    vanishingIdeal (zeroLocus I) = I.radical := by
  rw [I.radical_eq_jacobson]
  refine le_antisymm (le_sInf ?_) fun p hp x hx => ?_
  · rintro J ⟨hJI, hJ⟩
    obtain ⟨x, hx⟩ := (isMaximal_iff_eq_vanishingIdeal_singleton J).1 hJ
    refine hx.symm ▸ vanishingIdeal_anti_mono fun y hy p hp => ?_
    rw [← mem_vanishingIdeal_singleton_iff, Set.mem_singleton_iff.1 hy, ← hx]
    exact hJI hp
  · rw [← mem_vanishingIdeal_singleton_iff x p]
    refine (mem_sInf.mp hp)
      ⟨le_trans (le_vanishingIdeal_zeroLocus I) (vanishingIdeal_anti_mono fun y hy => hy.symm ▸ hx),
        MvPolynomial.vanishingIdeal_singleton_isMaximal⟩

-- Porting note: marked this as high priority to short cut simplifier
@[simp (high)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301e933c464eb7361c16ce68bc6fe1083c09de85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bedaee399a9a35d125d80d7b78628d75183add3007f76f50e19883a5cec1ad3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
