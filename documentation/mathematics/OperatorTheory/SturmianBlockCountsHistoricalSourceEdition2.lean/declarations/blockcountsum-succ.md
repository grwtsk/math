# blockCountSum_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64d401e2-10f7-1556-e555-ca3593f9bcd6",
  "kind": "theorem",
  "lexical_name": "blockCountSum_succ",
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
  "slug": "blockcountsum-succ",
  "source": {
    "blob": "0a4fbf9dc143de22ee202dbaa7940a35e2823d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Spectral/SturmianBlockCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb53cb4793ca65dc6c7340d7689b1ee5f12efd1d3b6e2fa8be260c1db1d9ae82",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OperatorTheory/SturmianBlockCountsHistoricalSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d401e2-10f7-1556-e555-ca3593f9bcd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockCountSum_succ (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum (q+1) L α V ξ origin E =
      (sturmianCount L α V ξ origin E : ℝ) +
        blockCountSum q L α V ξ (origin + (L : ℤ)) E := by
  unfold blockCountSum
  rw [Finset.sum_range_succ']
  simp only [zero_mul, Nat.cast_zero, add_zero]
  rw [add_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  have hj : origin + (((j+1)*L : ℕ) : ℤ) =
      origin + (L : ℤ) + ((j*L : ℕ) : ℤ) := by push_cast; ring
  rw [hj]

/-- Repeated use of the actual rank-two cut, with the final remainder retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OperatorTheory/SturmianBlockCountsHistoricalSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/SturmianBlockCounts.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4fbf9dc143de22ee202dbaa7940a35e2823d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa544460b485f99ea080a943d230eeb66fc27f5b3201149b3f0ea4a33d4ddfd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean","GRWTSK/Spectral/SturmianBlockCounts.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
