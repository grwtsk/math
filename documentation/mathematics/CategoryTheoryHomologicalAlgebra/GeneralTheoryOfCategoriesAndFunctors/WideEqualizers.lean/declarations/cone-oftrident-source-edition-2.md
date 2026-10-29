# Cone.ofTrident

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:529114e576eef1add4aceb5d1bebb009dfc9daac0545d92a2f0bb03ce125cade",
  "kind": "def",
  "lexical_name": "Cone.ofTrident",
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
  "slug": "cone-oftrident-source-edition-2",
  "source": {
    "blob": "96ce63dcdfed356fb82ea8b33575faf723386427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 388,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67135e849c3db055b23ed82327a0f51b531ecc6e34a074bd86d8f21f7660d2c8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:529114e576eef1add4aceb5d1bebb009dfc9daac0545d92a2f0bb03ce125cade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cone.ofTrident {F : WalkingParallelFamily J ⥤ C} (t : Trident fun j => F.map (line j)) :
    Cone F where
  pt := t.pt
  π :=
    { app := fun X => t.π.app X ≫ eqToHom (by cases X <;> aesop_cat)
      naturality := fun j j' g => by cases g <;> aesop_cat }

/-- This is a helper construction that can be useful when verifying that a category has all
    coequalizers. Given `F : WalkingParallelFamily ⥤ C`, which is really the same as
    `parallelFamily (fun j ↦ F.map (line j))`, and a cotrident on `fun j ↦ F.map (line j)` we get a
    cocone on `F`.

    If you're thinking about using this, have a look at
    `hasWideCoequalizers_of_hasColimit_parallelFamily`, which you may find to be an easier way
    of achieving your goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WideEqualizers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ce63dcdfed356fb82ea8b33575faf723386427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c004f997e20c3204d32bb29fdeb1d40200a4cacabff4822c9522c518463a48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
