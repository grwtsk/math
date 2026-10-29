# actual_left_strip_high_time_source_atoms_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f9ad99-696b-acbb-fdee-a5acea2e3adb",
  "kind": "theorem",
  "lexical_name": "actual_left_strip_high_time_source_atoms_zero",
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
  "slug": "actual-left-strip-high-time-source-atoms-zero",
  "source": {
    "blob": "d2c3dccc7dd90a391990229a7ebd708747257d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 521,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bcff44815cc38999c2646bbf78b5af78799393f846d7b50b8ae5038039c0eb2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceRestrictedLowTimeWorkNamespacedEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f9ad99-696b-acbb-fdee-a5acea2e3adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_left_strip_high_time_source_atoms_zero {A : ℝ} (hA : 1 ≤ A)
    {v t : ℝ} (hv : v ∈ actualWorkLeftStrip A)
    (ht : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ t) :
    normalizedTest explicitSecondDerivative A (v - t) = 0 ∧
    deriv (normalizedTest explicitSecondDerivative A) (v - t) = 0 := by
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  exact source_sectors_zero_after_spatial_edge (by linarith : 0 < A) hv.1.2 ht

/-- On this spatial strip the actual full density equals its independently defined low row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceRestrictedLowTimeWorkNamespacedEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c3dccc7dd90a391990229a7ebd708747257d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c512065e320512ab1eca63865a019217712d402eb49089bfd270dded494c1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
