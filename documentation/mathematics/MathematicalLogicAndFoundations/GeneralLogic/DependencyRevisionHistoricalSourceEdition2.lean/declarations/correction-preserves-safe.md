# correction_preserves_safe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a4064a-4940-f882-a8a3-0cecf7d4f278",
  "kind": "theorem",
  "lexical_name": "correction_preserves_safe",
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
  "slug": "correction-preserves-safe",
  "source": {
    "blob": "4f21c84fcb80892a5ba4a1da7df0e89e78a73c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 216,
    "path": "GRWTSK/Logic/Certificates/DependencyRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26a1ce38ba56350b9cba22c77826ffffaaacc5db23f883b23abbafdfd0263a6f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a4064a-4940-f882-a8a3-0cecf7d4f278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_preserves_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (safe : RevisionSafe schema policy ledger) :
    RevisionSafe schema policy (ledger.correct schema policy current withdrawn) := by
  constructor
  · intro claim member
    rcases Finset.mem_union.mp member with pending | reopened
    · exact safe.pending_issued pending
    · exact safe.verified_issued (Finset.mem_inter.mp reopened).1
  · intro claim member
    exact safe.verified_issued (Finset.mem_sdiff.mp member).1
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · exact Finset.mem_union_left _ (Finset.mem_union_left _ pending)
    · by_cases affected : claim ∈ correctionAffected schema ledger.snapshot current withdrawn
      · exact Finset.mem_union_left _
          (Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨verified, affected⟩))
      · exact Finset.mem_union_right _ (Finset.mem_sdiff.mpr ⟨verified, affected⟩)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have retained := Finset.mem_sdiff.mp verified
    rcases Finset.mem_union.mp pending with oldPending | reopened
    · exact Finset.disjoint_left.mp safe.statuses_disjoint oldPending retained.1
    · exact retained.2 (Finset.mem_inter.mp reopened).2
  · intro claim verified prerequisite dependency
    have retained := Finset.mem_sdiff.mp verified
    refine Finset.mem_sdiff.mpr ⟨safe.verified_dependencies claim retained.1
      prerequisite dependency, ?_⟩
    intro affected
    exact retained.2 (affectedClosure_closed schema.dependencies
      (directChanged schema ledger.snapshot current ∪ withdrawn)
      claim prerequisite dependency affected)
  · intro claim verified
    have retained := Finset.mem_sdiff.mp verified
    rcases safe.verified_evidence claim retained.1 with
      ⟨record, archived, claimEq, readsEq, accepted⟩
    refine ⟨record, archived, claimEq, readsEq, ?_⟩
    have agreement : SnapshotAgreesOn record.certificate.reads ledger.snapshot current := by
      rw [readsEq]
      exact unchanged_reads_of_unaffected schema ledger.snapshot current withdrawn claim retained.2
    exact record.certificate.fresh_accepts (snapshot_agrees_trans accepted.1 agreement)
  · exact safe.receipts_historical
  · intro record member
    rcases List.mem_append.mp member with old | added
    · exact safe.corrections_exact record old
    · have same : record = {
          before := ledger.snapshot
          after := current
          withdrawn := withdrawn
          affected := correctionAffected schema ledger.snapshot current withdrawn } := by
        simpa only [List.mem_singleton] using added
      subst record
      rfl

/-- Surviving evidence proves the exact target at the current snapshot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Certificates/DependencyRevision.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f21c84fcb80892a5ba4a1da7df0e89e78a73c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cbc63a546e0a99aedaa0751396bb4f0fb8c761410650e130abc010d3533a791 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean","GRWTSK/Logic/Certificates/DependencyRevision.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
