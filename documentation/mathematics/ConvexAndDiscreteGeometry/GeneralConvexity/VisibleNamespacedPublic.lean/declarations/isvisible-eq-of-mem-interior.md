# IsVisible.eq_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cacb748a-8752-184f-7a58-48b51d848967",
  "kind": "lemma",
  "lexical_name": "IsVisible.eq_of_mem_interior",
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
  "slug": "isvisible-eq-of-mem-interior",
  "source": {
    "blob": "4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7500df2dc67c168ccd9b5fb22853c18f1d2c7fc6487c59064ef134d1aa72a7ba",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/VisibleNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cacb748a-8752-184f-7a58-48b51d848967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsVisible.eq_of_mem_interior (hsxy : IsVisible 𝕜 s x y) (hy : y ∈ interior s) :
    x = y := by
  by_contra! hxy
  suffices h : ∀ᶠ (_δ : 𝕜) in 𝓝[>] 0, False by obtain ⟨_, ⟨⟩⟩ := h.exists
  have hmem : ∀ᶠ (δ : 𝕜) in 𝓝[>] 0, lineMap y x δ ∈ s :=
    lineMap_continuous.continuousWithinAt.eventually_mem
      (by simpa using mem_interior_iff_mem_nhds.1 hy)
  filter_upwards [hmem, Ioo_mem_nhdsGT zero_lt_one] with δ hmem hsbt using hsxy.symm hmem (by aesop)

/-- One cannot see any point of an open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/VisibleNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01c9bda947227692cffd7126fa172cfa8e74c5feba302a2bfb5570aee1b2b1bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
