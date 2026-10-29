# setOfPred_subset_eq_empty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd1e1e7f-2d3d-899f-574c-8452938162e5",
  "kind": "theorem",
  "lexical_name": "setOfPred_subset_eq_empty_iff",
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
  "slug": "setofpred-subset-eq-empty-iff",
  "source": {
    "blob": "8f3a15be648ca60a4bf387c7efe79315f513c047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c76284e6289cbcdb289de8e71aecf03dbb7625b971aa10d6ffe26718a995940",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1e1e7f-2d3d-899f-574c-8452938162e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOfPred_subset_eq_empty_iff (S : L[[α]].Theory) :
    { p : T.CompleteType α | S ⊆ ↑p } = ∅ ↔
      ¬((L.lhomWithConstants α).onTheory T ∪ S).IsSatisfiable := by
  rw [iff_not_comm, ← not_nonempty_iff_eq_empty, Classical.not_not, Set.Nonempty]
  refine
    ⟨fun h =>
      ⟨⟨L[[α]].completeTheory h.some, (subset_union_left (t := S)).trans completeTheory.subset,
          completeTheory.isMaximal L[[α]] h.some⟩,
        (((L.lhomWithConstants α).onTheory T).subset_union_right).trans completeTheory.subset⟩,
      ?_⟩
  rintro ⟨p, hp⟩
  exact p.isMaximal.1.mono (union_subset p.subset hp)

@[deprecated (since := "2026-07-09")]
alias setOf_subset_eq_empty_iff := setOfPred_subset_eq_empty_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/TypesNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3a15be648ca60a4bf387c7efe79315f513c047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc9f0b88891dd75fd0618fe858cd874911e9202fe79952bdda3a0ed65107e77a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant381c7f9d013178cc83f2b127c118ed07a76358718a15161f6218076c60f72f07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
