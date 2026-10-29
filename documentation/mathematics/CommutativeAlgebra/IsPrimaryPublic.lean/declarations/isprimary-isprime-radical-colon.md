# IsPrimary.isPrime_radical_colon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddb0173fd381eef41f672758ba997a5522ea18c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:425be2cc-212c-946e-438c-11c2793f5976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f0fd758-75a7-05b4-6878-b6fa8dda4b92",
  "kind": "theorem",
  "lexical_name": "IsPrimary.isPrime_radical_colon",
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
  "slug": "isprimary-isprime-radical-colon",
  "source": {
    "blob": "ddb0173fd381eef41f672758ba997a5522ea18c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b0b59946bc6f5afa3c838e9261c5ff7bb16cb9a7a1ab8be1461221cd6919c2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IsPrimaryPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0fd758-75a7-05b4-6878-b6fa8dda4b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimary.isPrime_radical_colon (hI : S.IsPrimary) : (S.colon .univ).radical.IsPrime := by
  refine isPrime_iff.mpr <| hI.imp (by simp) fun h x y ⟨n, hn⟩ ↦ ?_
  simp_rw [← mem_colon_iff_le, ← mem_radical_iff] at h
  refine or_iff_not_imp_left.mpr fun hx ↦ ⟨n, ?_⟩
  simp only [mul_pow, mem_colon, Set.mem_univ, true_imp_iff, mul_smul] at hn ⊢
  exact fun p ↦ (h (hn p)).resolve_right (mt mem_radical_of_pow_mem hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IsPrimaryPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddb0173fd381eef41f672758ba997a5522ea18c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2584fac3f4974680a9b6c74c3bbdaa72591aa4ec0d6f75974412e53bfd910385 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantbbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbbb24b9758a45612b29d57cc5bf9e1150cc5e2078cba1a9a9da0b437c492c2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
