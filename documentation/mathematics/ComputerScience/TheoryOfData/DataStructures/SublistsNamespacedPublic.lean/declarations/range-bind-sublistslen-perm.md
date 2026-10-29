# range_bind_sublistsLen_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:161cb442-7c2e-e21f-3802-53972eeb50ed",
  "kind": "theorem",
  "lexical_name": "range_bind_sublistsLen_perm",
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
  "slug": "range-bind-sublistslen-perm",
  "source": {
    "blob": "3e38df6f7ec472190d2b604587db98e5057e6a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 425,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant71bf15f1f940183e7c725c0908fc09acb0210c85fac94752e47a71c24a0e9cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7794fa23a3f1111eb71db1146ee88f077ace4a3dbb627173db6af9d6bb155b4d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:161cb442-7c2e-e21f-3802-53972eeb50ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_bind_sublistsLen_perm (l : List α) :
    ((List.range (l.length + 1)).flatMap fun n => sublistsLen n l) ~ sublists' l := by
  induction l with
  | nil => simp [range_succ]
  | cons h tl l_ih =>
    simp_rw [range_succ_eq_map, length, flatMap_cons, flatMap_map, sublistsLen_succ_cons,
      sublists'_cons, List.sublistsLen_zero, List.singleton_append]
    refine ((flatMap_append_perm (range (tl.length + 1)) _ _).symm.cons _).trans ?_
    simp_rw [← List.map_flatMap, ← cons_append]
    rw [← List.singleton_append, ← List.sublistsLen_zero tl]
    refine Perm.append ?_ (l_ih.map _)
    rw [List.range_succ, flatMap_append, flatMap_singleton,
      sublistsLen_of_length_lt (Nat.lt_succ_self _), append_nil,
      ← List.flatMap_map Nat.succ fun n => sublistsLen n tl,
      ← flatMap_cons (f := fun n => sublistsLen n tl), ← range_succ_eq_map]
    exact l_ih

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant71bf15f1f940183e7c725c0908fc09acb0210c85fac94752e47a71c24a0e9cd9.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e38df6f7ec472190d2b604587db98e5057e6a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b654d515430e7ea2b2ca41159e210035de826ca3e2216512906a8a31f6741dbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant71bf15f1f940183e7c725c0908fc09acb0210c85fac94752e47a71c24a0e9cd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
