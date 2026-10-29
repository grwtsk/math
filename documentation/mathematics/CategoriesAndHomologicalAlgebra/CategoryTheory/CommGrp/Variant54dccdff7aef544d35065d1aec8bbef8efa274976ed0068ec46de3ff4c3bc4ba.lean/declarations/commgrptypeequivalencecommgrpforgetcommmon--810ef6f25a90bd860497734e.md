# commGrpTypeEquivalenceCommGrpForgetCommMon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:548e6c2d4662ee146f72a3c21bac0a4edba9d4bfa22c4b52e9969152272a5593",
  "kind": "def",
  "lexical_name": "commGrpTypeEquivalenceCommGrpForgetCommMon",
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
  "slug": "commgrptypeequivalencecommgrpforgetcommmon--810ef6f25a90bd860497734e",
  "source": {
    "blob": "ff31a53f05a0c0803e4b7dd532219c6b1b773d75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:810ef6f25a90bd860497734e3b139ec16d2b8edbe65d2e2ea1dc8181d1dba789",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:548e6c2d4662ee146f72a3c21bac0a4edba9d4bfa22c4b52e9969152272a5593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commGrpTypeEquivalenceCommGrpForgetCommMon :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrp CommMonCat ≅
      CommGrp_.forget₂CommMon_ (Type u) ⋙ CommMonTypeEquivalenceCommMon.functor :=
  Iso.refl _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff31a53f05a0c0803e4b7dd532219c6b1b773d75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cc9135b48d573b3888c096151f8a52183143f5e290a8a786a246430d02943af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
