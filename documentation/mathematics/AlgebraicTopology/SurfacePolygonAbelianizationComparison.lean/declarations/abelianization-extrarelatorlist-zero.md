# abelianization_extraRelatorList_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05c273cc-8517-c63f-18f4-ea4c1cecdd26",
  "kind": "theorem",
  "lexical_name": "abelianization_extraRelatorList_zero",
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
  "slug": "abelianization-extrarelatorlist-zero",
  "source": {
    "blob": "bb5cbb6bc794788c31b40116e2810724ccc56619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 168,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1905f70398ac97652a2f3e16c9deef4c9d82fc237d2084b0cfa3f042517f3e70",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c273cc-8517-c63f-18f4-ea4c1cecdd26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abelianization_extraRelatorList_zero (k : ℕ) :
    (Abelianization.of ((extraRelatorList k).prod) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  calc
    (Abelianization.of ((extraRelatorList k).prod) :
      Abelianization (FreeGroup (GenusLetter k))) =
        ((extraRelatorList k).map
          (Abelianization.of :
            FreeGroup (GenusLetter k) →*
              Abelianization (FreeGroup (GenusLetter k)))).prod :=
      (List.prod_hom (extraRelatorList k)
        (Abelianization.of :
          FreeGroup (GenusLetter k) →*
            Abelianization (FreeGroup (GenusLetter k)))).symm
    _ = 1 := by
      apply List.prod_eq_one
      intro z hz
      obtain ⟨r, hr, rfl⟩ := List.mem_map.mp hz
      change r ∈ List.ofFn (extraHandleRelator k) at hr
      obtain ⟨j, rfl⟩ := List.mem_ofFn.mp hr
      exact abelianization_extraHandleRelator_zero k j

/-- The entire genus-g polygon relator maps to one under the actual
canonical FreeGroup abelianization. This proof consumes the complete
group commutator structure, NOT merely zero signed characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5cbb6bc794788c31b40116e2810724ccc56619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ca11adef68392147c28b4e71d9c432fbcbce3aa1b517913a2abc41e51eb2ddc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
