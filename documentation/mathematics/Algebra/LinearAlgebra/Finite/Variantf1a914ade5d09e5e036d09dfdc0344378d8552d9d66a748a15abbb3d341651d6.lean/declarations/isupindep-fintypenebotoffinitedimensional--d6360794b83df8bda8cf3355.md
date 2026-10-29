# iSupIndep.fintypeNeBotOfFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d947c3ea228f52dfb7f071453652f1bda91eea40b24868b8b005746ffb1f9081",
  "kind": "def",
  "lexical_name": "iSupIndep.fintypeNeBotOfFiniteDimensional",
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
  "slug": "isupindep-fintypenebotoffinitedimensional--d6360794b83df8bda8cf3355",
  "source": {
    "blob": "60267231ce4a7751d527f7a33eeea97a49e296bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 288,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6360794b83df8bda8cf3355d51307bfb81731267cef2bf4ac0dc948654685f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d947c3ea228f52dfb7f071453652f1bda91eea40b24868b8b005746ffb1f9081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iSupIndep.fintypeNeBotOfFiniteDimensional
    {p : ι → Submodule R M} (hp : iSupIndep p) :
    Fintype { i : ι // p i ≠ ⊥ } := by
  suffices #{ i // p i ≠ ⊥ } < (ℵ₀ : Cardinal.{w}) by
    rw [Cardinal.lt_aleph0_iff_fintype] at this
    exact this.some
  refine lt_of_le_of_lt hp.subtype_ne_bot_le_finrank_aux ?_
  simp [Cardinal.nat_lt_aleph0]

/-- If `p` is an independent family of submodules of a `R`-finite module `M`, then the
number of nontrivial subspaces in the family `p` is bounded above by the dimension of `M`.

Note that the `Fintype` hypothesis required here can be provided by
`iSupIndep.fintypeNeBotOfFiniteDimensional`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60267231ce4a7751d527f7a33eeea97a49e296bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4283890ad12fbc2d05f1091d504d8f9506d64941c384ad37ae6cca4278f7a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
