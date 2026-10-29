# ofHasDayConvolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f98a619ea535148573c86cf9ab0d381fdec1eb11bf3093cd3dbf5e83c92a5c2e",
  "kind": "def",
  "lexical_name": "ofHasDayConvolutions",
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
  "slug": "ofhasdayconvolutions",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1340,
    "line": 1262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c1bc21791d7f67068e23e1073b2a04d454ba34cd36aad88c8739cf777e3540",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/DayConvolutionNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f98a619ea535148573c86cf9ab0d381fdec1eb11bf3093cd3dbf5e83c92a5c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1262–1340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofHasDayConvolutions
    {D : Type u₃} [Category.{v₃} D]
    (ι : D ⥤ C ⥤ V)
    (ffι : ι.FullyFaithful)
    [hasDayConvolution : ∀ (d d' : D),
      (tensor C).HasPointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d')]
    (essImageDayConvolution : ∀ (d d' : D),
      ι.essImage <| (tensor C).pointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d'))
    [hasDayConvolutionUnit :
      (Functor.fromPUnit.{0} <| 𝟙_ C).HasPointwiseLeftKanExtension
        (Functor.fromPUnit.{0} <| 𝟙_ V)]
    (essImageDayConvolutionUnit :
      ι.essImage <|
        (Functor.fromPUnit.{0} <| 𝟙_ C).pointwiseLeftKanExtension
          (Functor.fromPUnit.{0} <| 𝟙_ V)) :
    InducedLawfulDayConvolutionMonoidalCategoryStructCore C V D where
  ι := ι
  fullyFaithulι := ffι
  tensorObj := fun d d' ↦ essImageDayConvolution d d' |>.witness
  convolutions' := fun d d' ↦
    { convolution := (tensor C).pointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d')
      unit := (tensor C).pointwiseLeftKanExtensionUnit (ι.obj d ⊠ ι.obj d')
      isPointwiseLeftKanExtensionUnit :=
        (tensor C).pointwiseLeftKanExtensionIsPointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d') }
  tensorObjIsoConvolution := fun d d' => Functor.essImage.getIso _
  tensorUnit := essImageDayConvolutionUnit.witness
  tensorUnitConvolutionUnit :=
    { can :=
        ((Functor.fromPUnit.{0} <| 𝟙_ C).pointwiseLeftKanExtensionUnit
            (Functor.fromPUnit.{0} <| 𝟙_ V)).app (.mk PUnit.unit) ≫
          (essImageDayConvolutionUnit.getIso.inv.app (𝟙_ C))
      isPointwiseLeftKanExtensionCan :=
        Functor.LeftExtension.isPointwiseLeftKanExtensionEquivOfIso
        (StructuredArrow.isoMk
          (essImageDayConvolutionUnit.getIso).symm)
        (Functor.pointwiseLeftKanExtensionIsPointwiseLeftKanExtension
          (Functor.fromPUnit.{0} <| 𝟙_ C)
          (Functor.fromPUnit.{0} <| 𝟙_ V)) }

end InducedLawfulDayConvolutionMonoidalCategoryStructCore

section

variable {C V}
    {D : Type u₃} [Category.{v₃} D]
    (ι : D ⥤ C ⥤ V)
    (ffι : ι.FullyFaithful)
    [hasDayConvolution : ∀ (d d' : D),
      (tensor C).HasPointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d')]
    (essImageDayConvolution : ∀ (d d' : D),
      ι.essImage <| (tensor C).pointwiseLeftKanExtension (ι.obj d ⊠ ι.obj d'))
    [hasDayConvolutionUnit :
      (Functor.fromPUnit.{0} <| 𝟙_ C).HasPointwiseLeftKanExtension
        (Functor.fromPUnit.{0} <| 𝟙_ V)]
    (essImageDayConvolutionUnit :
      ι.essImage <|
        (Functor.fromPUnit.{0} <| 𝟙_ C).pointwiseLeftKanExtension
          (Functor.fromPUnit.{0} <| 𝟙_ V))
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorRight v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((𝟭 C).prod <| Functor.fromPUnit.{0} <| 𝟙_ C) d)
        (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((tensor C).prod (𝟭 C)) d) (tensorRight v)]

/-- Under suitable assumptions on existence of relevant Kan extensions and preservation
of relevant colimits by the tensor product of `V`, we can define a `MonoidalCategory D`
from the data of a fully faithful functor `ι : D ⥤ C ⥤ V` whose essential image
contains a Day convolution unit and is stable under binary Day convolutions. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/DayConvolutionNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L1262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=750e312b0cc6deef368c5ecd557c17cbc4886fe7f03797538e5ad548fa6638b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
