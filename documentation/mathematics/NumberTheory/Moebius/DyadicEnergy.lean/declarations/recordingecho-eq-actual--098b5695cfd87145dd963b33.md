# recordingEcho_eq_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991d55f3-998b-b3f1-b063-f9fc189e76f0",
  "kind": "theorem",
  "lexical_name": "recordingEcho_eq_actual",
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
  "slug": "recordingecho-eq-actual--098b5695cfd87145dd963b33",
  "source": {
    "blob": "9bd9ace9794e4369974f39c242ad2ab9b04d368f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098b5695cfd87145dd963b3395ca9c00340002fb7d4daadc38ce60df820ed076",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991d55f3-998b-b3f1-b063-f9fc189e76f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recordingEcho_eq_actual {T u : ℝ} (hu : u ≤ 2*T) :
    recordingEcho T u =
      ∑ p ∈ recordingPrimeBlock T, (sqrt p)⁻¹ * causalShift (log p) wholePickup u := by
  unfold recordingEcho primeBlockEcho
  apply Finset.sum_congr rfl
  intro p hp
  congr 1
  unfold causalShift
  split_ifs with h
  · symm
    exact pickup_eq_prime_note_cascade (by linarith)
      (by linarith [recordingPrimeBlock_delay hp])
  · rfl

/-- Exact large-prime echo subtraction on the doubled recording window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/Moebius/DyadicEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd9ace9794e4369974f39c242ad2ab9b04d368f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9306c8594f2e63153698b26d3eb6c73fff761b5edb794f17b6ebc633fe8ec654 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
