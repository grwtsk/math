# normalizer_engel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a0b9e79-3b1b-8c41-6633-829d42d28877",
  "kind": "lemma",
  "lexical_name": "normalizer_engel",
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
  "slug": "normalizer-engel",
  "source": {
    "blob": "8a8cd0524f5f2327467987d6cd6a37ba7ff40043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:001ff9cabba3e366903533c966a392ca24b276a161c7b0f4f3635a2832cd909c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/EngelSubalgebraNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a0b9e79-3b1b-8c41-6633-829d42d28877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normalizer_engel (x : L) : normalizer (engel R x) = engel R x := by
  apply le_antisymm _ (le_normalizer _)
  intro y hy
  rw [mem_normalizer_iff] at hy
  specialize hy x (self_mem_engel R x)
  rw [← lie_skew, neg_mem_iff (G := L), mem_engel_iff] at hy
  rcases hy with ⟨n, hn⟩
  rw [mem_engel_iff]
  use n + 1
  rw [pow_succ, Module.End.mul_apply]
  exact hn

variable {R}

open Filter in
/-- A Lie-subalgebra of an Artinian Lie algebra is self-normalizing
if it contains an Engel subalgebra.
See `LieSubalgebra.normalizer_engel` for a proof that Engel subalgebras are self-normalizing,
avoiding the Artinian condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/EngelSubalgebraNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8cd0524f5f2327467987d6cd6a37ba7ff40043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db6353b165897aa89c589bb5f738db25d60ecec5a9db5f3671d3240290009987 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
