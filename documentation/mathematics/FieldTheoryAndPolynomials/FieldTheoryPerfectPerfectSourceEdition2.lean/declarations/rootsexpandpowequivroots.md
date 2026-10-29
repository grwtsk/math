# rootsExpandPowEquivRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e26b6cb4bd1cfa0b03663aa296634befd0cb550974d53a6762019a7499113e5",
  "kind": "def",
  "lexical_name": "rootsExpandPowEquivRoots",
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
  "slug": "rootsexpandpowequivroots",
  "source": {
    "blob": "4dc90a653ce0741e990c65d94306bc3bdda16066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 371,
    "path": "GRWTSK/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc54b6fa22f3ef6e90f9ad41dd9eb5ad35e57c8702d51b289c13c99133a12201",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FieldTheoryAndPolynomials/FieldTheoryPerfectPerfectSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e26b6cb4bd1cfa0b03663aa296634befd0cb550974d53a6762019a7499113e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rootsExpandPowEquivRoots (n : ℕ) :
    (expand R (p ^ n) f).roots.toFinset ≃ f.roots.toFinset :=
  ((iterateFrobeniusEquiv R p n).image _).trans <|
    .setCongr <| show _ '' (setOf (· ∈ _)) = setOf (· ∈ _) by
    classical simp_rw [← roots_expand_image_iterateFrobenius (p := p) (f := f) (n := n),
      Finset.mem_val, Finset.setOf_mem, Finset.coe_image, RingEquiv.toEquiv_eq_coe,
      EquivLike.coe_coe, iterateFrobeniusEquiv_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/FieldTheoryPerfectPerfectSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc90a653ce0741e990c65d94306bc3bdda16066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7807a1d2d7c8223526ec8408c29c1a2b0ff2db28b3290e461e27bfbbad0b5384 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Perfect/Variantf8aae51c810a0e5ff852850ffb1665e81012a812f5dfe0359f0ce9318f1eca88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
