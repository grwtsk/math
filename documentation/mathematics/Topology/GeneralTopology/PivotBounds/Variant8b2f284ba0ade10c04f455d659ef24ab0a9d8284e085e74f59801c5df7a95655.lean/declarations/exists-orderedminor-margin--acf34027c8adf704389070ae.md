# exists_orderedMinor_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7add95f4-e15d-0a72-9018-8e35df876c75",
  "kind": "theorem",
  "lexical_name": "exists_orderedMinor_margin",
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
  "slug": "exists-orderedminor-margin--acf34027c8adf704389070ae",
  "source": {
    "blob": "c2f895aa5e792a99ca5c2341354b18e8ebca87e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf34027c8adf704389070ae8967733931b7c4927391fe4cac5a8afd5447426f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7add95f4-e15d-0a72-9018-8e35df876c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderedMinor_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, (Real.sqrt (n.choose k : ℝ))⁻¹ ≤ |orderedMinor A I| := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_sq_margin A hA
  refine ⟨I, ?_⟩
  have hn : 0 ≤ (n.choose k : ℝ) := by positivity
  have hi : 0 ≤ (Real.sqrt (n.choose k : ℝ))⁻¹ := by positivity
  have hs : ((Real.sqrt (n.choose k : ℝ))⁻¹) ^ 2 = 1 / (n.choose k : ℝ) := by
    rw [inv_pow, Real.sq_sqrt hn, one_div]
  apply (sq_le_sq₀ hi (abs_nonneg _)).mp
  simpa only [hs, sq_abs] using hI

/-- A determinant margin is invariant under row changes with determinant of magnitude one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f895aa5e792a99ca5c2341354b18e8ebca87e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fe16457fdf857a0ddd087ca64a437f9a8ceed07fab81296a866f5264f4c0e1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
