# CharP.neg_mul_eq_sub_one_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68056efb788dc6c3a8d549ed90d159739be1dc60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19487ad2-1d04-a81d-ee6c-e103f2074c89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e55ee81b-0f7c-f097-1262-379fab6db74c",
  "kind": "lemma",
  "lexical_name": "CharP.neg_mul_eq_sub_one_mul",
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
  "slug": "charp-neg-mul-eq-sub-one-mul--21ce8be6927992e15bd9b458",
  "source": {
    "blob": "68056efb788dc6c3a8d549ed90d159739be1dc60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21ce8be6927992e15bd9b458aaa7ddfe27ac9e830967fe9b3935f2f4d0beb3ce",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55ee81b-0f7c-f097-1262-379fab6db74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CharP.neg_mul_eq_sub_one_mul {α : Type _} [Ring α] (n : ℕ) (inst : CharP α n) (a b : α)
    (na : ℕ) (na' : α) (p : IsNat ((n - 1) * a : α) na) (pa : na = na') :
    -(a * b) = na' * b := by
  rw [← pa, ← p.out, ← neg_one_mul]
  simp

/-- Given an expression `-(a * b) : t` such that `t` is a ring of characteristic `n`,
and `a` is a numeral, simplify this to `((n - 1) * a) * b`. -/
@[nolint unusedHavesSuffices] -- the `=Q` is necessary for type checking
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68056efb788dc6c3a8d549ed90d159739be1dc60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12e72504c116c9644775f25a2d1bb1818494db6f9a3063d66ca6f5060a2eb590 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ReduceModChar/Variantd568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d568479523154898e1092168a2c569590d2a123b13edc3b68b8ece44a1032c2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
