# toSubarray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f36a72b7acf4306cc661c8ea99835cb6aeb2e86bd47c30231217cce69c244cf1",
  "kind": "def",
  "lexical_name": "toSubarray",
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
  "slug": "tosubarray",
  "source": {
    "blob": "e1abdd80d8c6f391d73d2add8c58261e53fa0496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:934e97fcf4feba863b3de012d699316a44ec7575fae66849d37b4f42aad3411b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SubarrayPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f36a72b7acf4306cc661c8ea99835cb6aeb2e86bd47c30231217cce69c244cf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSubarray (as : Array α) (start : Nat := 0) (stop : Nat := as.size) : Subarray α :=
  if h₂ : stop ≤ as.size then
    if h₁ : start ≤ stop then
      ⟨{ array := as, start := start, stop := stop,
         start_le_stop := h₁, stop_le_array_size := h₂ }⟩
    else
      ⟨{ array := as, start := stop, stop := stop,
         start_le_stop := Nat.le_refl _, stop_le_array_size := h₂ }⟩
  else
    if h₁ : start ≤ as.size then
      ⟨{ array := as,
         start := start,
         stop := as.size,
         start_le_stop := h₁,
         stop_le_array_size := Nat.le_refl _ }⟩
    else
      ⟨{ array := as,
         start := as.size,
         stop := as.size,
         start_le_stop := Nat.le_refl _,
         stop_le_array_size := Nat.le_refl _ }⟩

/-- A subarray with the provided bounds.-/
syntax:max term noWs "[" withoutPosition(term ":" term) "]" : term
/-- A subarray with the provided lower bound that extends to the rest of the array. -/
syntax:max term noWs "[" withoutPosition(term ":") "]" : term
/-- A subarray with the provided upper bound, starting at the index 0. -/
syntax:max term noWs "[" withoutPosition(":" term) "]" : term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SubarrayPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1abdd80d8c6f391d73d2add8c58261e53fa0496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=192eede75747b364f398e12c8c7df9e442188f62e95d2e923794ce1f1d1d7ba7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
