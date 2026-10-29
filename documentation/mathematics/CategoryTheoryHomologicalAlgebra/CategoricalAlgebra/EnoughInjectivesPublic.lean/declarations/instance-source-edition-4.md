# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:133f21506b565f287bea76ac09d8eda6f5453e3a9f66ebd7557c59f02f20b635",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance-source-edition-4",
  "source": {
    "blob": "5f22186bb1930e25951b6b323618ef628d94132d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 324,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f105fd2ac75113b49fa2e2c9ac67285ce6ea99dfd061f3b3a16c0f7da0aeb32",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/EnoughInjectivesPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:133f21506b565f287bea76ac09d8eda6f5453e3a9f66ebd7557c59f02f20b635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasSmallObjectArgument.{w} (generatingMonomorphisms G) := by
  obtain ⟨κ, hκ', hκ⟩ := HasCardinalLT.exists_regular_cardinal.{w} (Subobject G)
  have : Fact κ.IsRegular := ⟨hκ'⟩
  have : Nonempty κ.ord.ToType := by simpa using hκ'.ne_zero
  have := WellFoundedLT.toOrderBot κ.ord.ToType
  exact ⟨κ, inferInstance, inferInstance,
    { preservesColimit {A B X Y} i hi f hf := by
        let hf' : (monomorphisms C).TransfiniteCompositionOfShape κ.ord.ToType f :=
          { toTransfiniteCompositionOfShape := hf.toTransfiniteCompositionOfShape
            map_mem j hj := by
              have := (hf.attachCells j hj).pushouts_coproducts
              simp only [ofHoms_homFamily] at this
              refine (?_ : _ ≤ monomorphisms C) _ this
              simp only [pushouts_le_iff, coproducts_le_iff]
              exact generatingMonomorphisms_le_monomorphisms G }
        have (j j' : κ.ord.ToType) (φ : j ⟶ j') : Mono (hf'.F.map φ) := hf'.mem_map φ
        apply preservesColimit_coyoneda_obj_of_mono (Y := hf'.F) (κ := κ)
        obtain ⟨S⟩ := hi
        exact Subobject.hasCardinalLT_of_mono hκ S.arrow }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/EnoughInjectivesPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f22186bb1930e25951b6b323618ef628d94132d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f5839549eb4bf0833cad17cda12bf32fdd616d2d34f8772300c06330cca3158 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
