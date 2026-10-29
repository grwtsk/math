# tensor_right_unitality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d56b0d-2f4f-cc02-d0ff-b574b94c3c1c",
  "kind": "theorem",
  "lexical_name": "tensor_right_unitality",
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
  "slug": "tensor-right-unitality",
  "source": {
    "blob": "4a0631752dafe480058d7a354143f5c5d9de8f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 623,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac1b56ed6f56f881284f53b1b672cca9a4b9e2d5ac65332c3ce587f23988edd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d56b0d-2f4f-cc02-d0ff-b574b94c3c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_right_unitality (X₁ X₂ : C) :
    (ρ_ (X₁ ⊗ X₂)).hom =
      ((X₁ ⊗ X₂) ◁ (λ_ (𝟙_ C)).inv) ≫
        tensorμ X₁ X₂ (𝟙_ C) (𝟙_ C) ≫ ((ρ_ X₁).hom ⊗ (ρ_ X₂).hom) := by
  dsimp only [tensorμ]
  have :
    ((X₁ ⊗ X₂) ◁ (λ_ (𝟙_ C)).inv) ≫
        (α_ X₁ X₂ (𝟙_ C ⊗ 𝟙_ C)).hom ≫ (X₁ ◁ (α_ X₂ (𝟙_ C) (𝟙_ C)).inv) =
      (α_ X₁ X₂ (𝟙_ C)).hom ≫ (X₁ ◁ (ρ_ X₂).inv ▷ 𝟙_ C) := by
    monoidal
  slice_rhs 1 3 => rw [this]
  clear this
  slice_rhs 2 3 => rw [← MonoidalCategory.whiskerLeft_comp, ← comp_whiskerRight,
    rightUnitor_inv_braiding]
  simp [tensorHom_id, id_tensorHom, tensorHom_def]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BraidedBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0631752dafe480058d7a354143f5c5d9de8f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97bb7423f935a0455a23333995c55e0396be6ec430b191a342c3b32e608de2a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
