# GrpCat.forget₂MonAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63babbce4ba9ea029a90260fb5f40f6dda8f476a10a8a3f0b14ffe2e2f655cb6",
  "kind": "def",
  "lexical_name": "GrpCat.forget₂MonAdj",
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
  "slug": "grpcat-forget-monadj--957a7df94c41c8f64d74d02f",
  "source": {
    "blob": "2e160aeea75dc0383eb332ea279df02765f72c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:957a7df94c41c8f64d74d02fd3f73eaa2cfc83cb9fac7061d8eb55c179f13c4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63babbce4ba9ea029a90260fb5f40f6dda8f476a10a8a3f0b14ffe2e2f655cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrpCat.forget₂MonAdj : forget₂ GrpCat MonCat ⊣ MonCat.units.{u} := Adjunction.mk' {
  homEquiv _ Y :=
    { toFun f := ofHom (MonoidHom.toHomUnits f.hom)
      invFun f := MonCat.ofHom ((Units.coeHom Y).comp f.hom) }
  unit :=
    { app X := ofHom (@toUnits X _)
      naturality _ _ _ := GrpCat.ext fun _ => Units.ext rfl }
  counit :=
    { app X := MonCat.ofHom (Units.coeHom X)
      naturality _ _ _ := MonCat.ext fun _ => rfl } }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e160aeea75dc0383eb332ea279df02765f72c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b2c1b4f3d18a573feb5791ab3826f78a70e1ab59766182b93b7658a557e775e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
