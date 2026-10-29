# restrictScalarsRange_apply_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c8fe2c8-d516-0024-5116-1131de320e64",
  "kind": "lemma",
  "lexical_name": "restrictScalarsRange_apply_eq_zero_iff",
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
  "slug": "restrictscalarsrange-apply-eq-zero-iff-source-edition-2",
  "source": {
    "blob": "7da8a42fd53e07b074f55ce637e52127a1aa11dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 594,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef279389d389d6de2d25a8a5186e8c14e41bb780e75dfb9d34d565c9938b3dc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c8fe2c8-d516-0024-5116-1131de320e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalarsRange_apply_eq_zero_iff (m : M') :
    restrictScalarsRange i k hk f hf m = 0 ↔ f (i m) = 0 := by
  rw [← hk.eq_iff, restrictScalarsRange_apply, map_zero]

end restrictScalarsRange

section restrictScalarsRange₂

variable {R S M N P M' N' P' : Type*}
  [CommSemiring R] [CommSemiring S] [SMul S R]
  [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N] [AddCommMonoid P] [Module R P]
  [Module S M] [Module S N] [Module S P]
  [IsScalarTower S R M] [IsScalarTower S R N] [IsScalarTower S R P]
  [AddCommMonoid M'] [Module S M'] [AddCommMonoid N'] [Module S N'] [AddCommMonoid P'] [Module S P']
  [SMulCommClass R S P]

variable (i : M' →ₗ[S] M) (j : N' →ₗ[S] N) (k : P' →ₗ[S] P) (hk : Injective k)
  (B : M →ₗ[R] N →ₗ[R] P) (hB : ∀ m n, B (i m) (j n) ∈ LinearMap.range k)

/-- Restrict the scalars, domains, and range of a bilinear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7da8a42fd53e07b074f55ce637e52127a1aa11dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c327f054e42405897344131f0ae045bb5e5699a75e9d13e19a335e6c4c5fa80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant7c6a368d727a9673d6f498ab5ff50e60636ae8e1486493a8a396345a638226ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
