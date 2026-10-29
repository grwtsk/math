# not_commutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3122d70d863a32297f11865c24e6501b935567af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9c80292-f8c8-77a4-fe41-d02d62425b50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bbfd882-b992-3f39-c098-3214707ec418",
  "kind": "lemma",
  "lexical_name": "not_commutative",
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
  "slug": "not-commutative",
  "source": {
    "blob": "3122d70d863a32297f11865c24e6501b935567af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8abf672ee60e2eb72c66d0117e73c38374f7977fbf56e1e4974924f7ef4a9c7d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/DihedralInvR.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbfd882-b992-3f39-c098-3214707ec418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_commutative : ∀ {n : ℕ}, n ≠ 1 → n ≠ 2 →
    ¬Std.Commutative fun (x y : DihedralGroup n) => x * y
  | 0, _, _ => fun ⟨h'⟩ ↦ by simpa using h' (r 1) (sr 0)
  | n + 3, _, _ => by
    rintro ⟨h'⟩
    specialize h' (r 1) (sr 0)
    rw [r_mul_sr, zero_sub, sr_mul_r, zero_add, sr.injEq, neg_eq_iff_add_eq_zero,
      one_add_one_eq_two, ← ZMod.val_eq_zero, ZMod.val_two_eq_two_mod] at h'
    simpa using Nat.le_of_dvd Nat.zero_lt_two <| Nat.dvd_of_mod_eq_zero h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/DihedralInvR.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3122d70d863a32297f11865c24e6501b935567af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bb6ecdc7c879fc9cdebb3243e5e4c2b33d252ce3f2fcd5adf3285ad55f2a25f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/04/04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
