# finalResidue_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30712ac1-1f43-d2c6-5757-b68ed670226c",
  "kind": "theorem",
  "lexical_name": "finalResidue_count",
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
  "slug": "finalresidue-count--ff181f2fd6f817b8868245e0",
  "source": {
    "blob": "f6992c325b1c922a0e3d1b1d57f66eee07736a33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IJEPAObjective/Variant9d92aafdc9fce239588e21541eb0591279c28a1d81745abc88eaf6c2c3371f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff181f2fd6f817b8868245e0bacd50aebe57a8c6d077020f11b44e5629636594",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IJEPAObjective/Variant9d92aafdc9fce239588e21541eb0591279c28a1d81745abc88eaf6c2c3371f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30712ac1-1f43-d2c6-5757-b68ed670226c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 7 := by
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IJEPAObjective/Variant9d92aafdc9fce239588e21541eb0591279c28a1d81745abc88eaf6c2c3371f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IJEPAObjective/Variant9d92aafdc9fce239588e21541eb0591279c28a1d81745abc88eaf6c2c3371f6b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6992c325b1c922a0e3d1b1d57f66eee07736a33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bc479f5d3fc314c10d89739e8738ef0f6b216c99d9a16ece5e97c086f7ea438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IJEPAObjective/Variant9d92aafdc9fce239588e21541eb0591279c28a1d81745abc88eaf6c2c3371f6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
