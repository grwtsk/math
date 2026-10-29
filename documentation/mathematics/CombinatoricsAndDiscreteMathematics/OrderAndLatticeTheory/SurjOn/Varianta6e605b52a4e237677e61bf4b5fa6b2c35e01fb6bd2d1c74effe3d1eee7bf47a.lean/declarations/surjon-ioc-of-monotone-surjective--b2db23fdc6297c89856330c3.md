# surjOn_Ioc_of_monotone_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cd7834d-c3ba-1ab1-a40a-6c2056ee1e10",
  "kind": "theorem",
  "lexical_name": "surjOn_Ioc_of_monotone_surjective",
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
  "slug": "surjon-ioc-of-monotone-surjective--b2db23fdc6297c89856330c3",
  "source": {
    "blob": "7a28d2b056f54171acb6d09df0e978a8bf02f5a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Varianta6e605b52a4e237677e61bf4b5fa6b2c35e01fb6bd2d1c74effe3d1eee7bf47a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2db23fdc6297c89856330c36e47a97ba8b1124c714bf0f1815da5fc92c277c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Varianta6e605b52a4e237677e61bf4b5fa6b2c35e01fb6bd2d1c74effe3d1eee7bf47a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cd7834d-c3ba-1ab1-a40a-6c2056ee1e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjOn_Ioc_of_monotone_surjective (h_mono : Monotone f) (h_surj : Function.Surjective f)
    (a b : α) : SurjOn f (Ioc a b) (Ioc (f a) (f b)) := by
  simpa using surjOn_Ico_of_monotone_surjective h_mono.dual h_surj (toDual b) (toDual a)

-- to see that the hypothesis `a ≤ b` is necessary, consider a constant function
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Varianta6e605b52a4e237677e61bf4b5fa6b2c35e01fb6bd2d1c74effe3d1eee7bf47a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Varianta6e605b52a4e237677e61bf4b5fa6b2c35e01fb6bd2d1c74effe3d1eee7bf47a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a28d2b056f54171acb6d09df0e978a8bf02f5a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25c24d2f80599a7b6be829da4178d357d5336d5aa60781c2342108e00d1b7e21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SurjOn/Varianta6e605b52a4e237677e61bf4b5fa6b2c35e01fb6bd2d1c74effe3d1eee7bf47a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
