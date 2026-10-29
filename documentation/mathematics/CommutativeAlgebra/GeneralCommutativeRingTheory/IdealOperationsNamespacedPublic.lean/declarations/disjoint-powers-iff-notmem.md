# disjoint_powers_iff_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3590842-1eef-5cfb-94b0-a0698d201ab2",
  "kind": "theorem",
  "lexical_name": "disjoint_powers_iff_notMem",
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
  "slug": "disjoint-powers-iff-notmem",
  "source": {
    "blob": "029b70b0cfa6f8db77caa7e1f285af4ede9276d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 874,
    "path": "GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce0b682d631c18f71ff749b32646d07715a8e5667b13d5b8c43172f60077e623",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOperationsNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3590842-1eef-5cfb-94b0-a0698d201ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_powers_iff_notMem (y : R) (hI : I.IsRadical) :
    Disjoint (Submonoid.powers y : Set R) ↑I ↔ y ∉ I := by
  refine ⟨fun h => Set.disjoint_left.1 h (Submonoid.mem_powers _),
      fun h => disjoint_iff.mpr (eq_bot_iff.mpr ?_)⟩
  rintro x ⟨⟨n, rfl⟩, hx'⟩
  exact h (hI <| mem_radical_of_pow_mem <| le_radical hx')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOperationsNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029b70b0cfa6f8db77caa7e1f285af4ede9276d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fe8358e88b671672454f3a9e5d165c622dd1e08e46cbf6af2e961f354fe90d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
