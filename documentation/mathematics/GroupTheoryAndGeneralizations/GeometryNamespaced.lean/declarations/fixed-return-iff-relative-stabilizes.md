# fixed_return_iff_relative_stabilizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c090a98-6d5c-c08e-678a-374802e5c5e8",
  "kind": "theorem",
  "lexical_name": "fixed_return_iff_relative_stabilizes",
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
  "slug": "fixed-return-iff-relative-stabilizes",
  "source": {
    "blob": "e7bdc8d4b2a5056cd289ccb51b586e166c6daee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 61,
    "path": "GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:479af3213cb9afdc39f2f23d29b7768737697f6e5944bbe6b57a87c1658b27fd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/GeometryNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c090a98-6d5c-c08e-678a-374802e5c5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_return_iff_relative_stabilizes
    {G Point : Type*}
    [Group G]
    [MulAction G Point]
    (symmetry : Point → Point)
    (groupSymmetry : G ≃* G)
    (compatible :
      ∀ groupElement point,
        symmetry (groupElement • point) =
          groupSymmetry groupElement • symmetry point)
    (point : Point)
    (pointFixed : symmetry point = point)
    (phase : G) :
    symmetry (phase • point) = phase • point ↔
      Stabilizes (phase⁻¹ * groupSymmetry phase) point := by
  constructor
  · intro fixed
    have transported :
        groupSymmetry phase • point = phase • point := by
      calc
        groupSymmetry phase • point =
            groupSymmetry phase • symmetry point := by rw [pointFixed]
        _ = symmetry (phase • point) := by
          rw [compatible]
        _ = phase • point := fixed
    calc
      (phase⁻¹ * groupSymmetry phase) • point =
          phase⁻¹ • (groupSymmetry phase • point) := by
            rw [mul_smul]
      _ = phase⁻¹ • (phase • point) := by rw [transported]
      _ = point := by simp [smul_smul]
  · intro stabilizes
    have transported := congrArg (fun value => phase • value) stabilizes
    have phaseEqual :
        groupSymmetry phase • point = phase • point := by
      simpa [Stabilizes, smul_smul] using transported
    calc
      symmetry (phase • point) =
          groupSymmetry phase • symmetry point :=
        compatible phase point
      _ = groupSymmetry phase • point := by rw [pointFixed]
      _ = phase • point := phaseEqual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/GeometryNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7bdc8d4b2a5056cd289ccb51b586e166c6daee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fe9a56bed82cdfbc083bbffa1c7f38e52a11d6c3aabbb2e392696822c2fab43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
