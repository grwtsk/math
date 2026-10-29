# Verification target: Bicategory Adjunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeedbdb3c23b182db990112e7cc5d2aa613c4aa4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd74d2035c77ec594a00ed28c4e976c8ebdc894dce5e6c202e9b18650f69f6fab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeedbdb3c23b182db990112e7cc5d2aa613c4aa4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd74d2035c77ec594a00ed28c4e976c8ebdc894dce5e6c202e9b18650f69f6fab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd74d2035c77ec594a00ed28c4e976c8ebdc894dce5e6c202e9b18650f69f6fab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftZigzag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/leftzigzag.md) | 63 | `declaration-track:43e3d689e13f82b3548f8569df807d6280f4f085a71112a3c43f4a51431a53d3` |
| 2 | `def` | [rightZigzag](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/rightzigzag.md) | 75 | `declaration-track:1dcb114ec5ca3715567b8528c3c0081e22ac584bfeb903d4f9f0d907c451e6f8` |
| 3 | `structure` | [Adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/adjunction.md) | 79 | `declaration-track:192ca34f7dca92450b59b5165ad6b5fb8109ffda7db3fee67af88d79dccc5228` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/id-source-edition-2.md) | 98 | `declaration-track:f864e09fc784c39ab2c271add93878885d7e06226db8d684a22a5780eeeca8fc` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:f071bd7c2f641a7742e9c6b70e999f57b8cc355b051fc4e35d6bc9e4b56040b8` |
| 6 | `def` | [leftZigzagIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/leftzigzagiso.md) | 114 | `declaration-track:16de3696c91e18dad89a44dd2c0fa60cd89ab5cceb103d10f23ede239d6abdc6` |
| 7 | `def` | [rightZigzagIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/rightzigzagiso.md) | 118 | `declaration-track:8804fa521e3f55bdd3dd8f94fb2d5c90e29843a7a63f5bfc06f8b45f6faf34ce` |
| 8 | `theorem` | [leftZigzagIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/leftzigzagiso-hom.md) | 124 | `result-track:103300e51ca42bf0f436fcede3bf4c58891b5da8bcf8a6cb628777c654146671` |
| 9 | `theorem` | [rightZigzagIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/rightzigzagiso-hom.md) | 128 | `result-track:3283d09986d7b7a2f1cbf1785925a295edd0b87d427cae91a8045f5f38c2063f` |
| 10 | `theorem` | [leftZigzagIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/leftzigzagiso-inv.md) | 132 | `result-track:3e72eb7c922b198de0a2e863b249ff6879b7e02d42d903cac8428524db7a1ca8` |
| 11 | `theorem` | [rightZigzagIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/rightzigzagiso-inv.md) | 136 | `result-track:708b588ab795c696541e1a2ab42f82e8a4465383e537b7275f130ec570598ec2` |
| 12 | `theorem` | [leftZigzagIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/leftzigzagiso-symm.md) | 140 | `result-track:eabfc33278ef06eef3ff92432f9a7de719991f07809f141ebda412b68acbb607` |
| 13 | `theorem` | [rightZigzagIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/rightzigzagiso-symm.md) | 144 | `result-track:ea3108a363e3084c0472af93e443de831b545f5bf02ad7f367f82da34c71cb6d` |
| 14 | `def` | [adjointifyCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/adjointifycounit.md) | 148 | `declaration-track:0d963d137785c455191f005c16bdae8bd1a6f2dd4e431bf3a07d2d4890581d1c` |
| 15 | `theorem` | [adjointifyCounit_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/adjointifycounit-left-triangle.md) | 151 | `result-track:7af32a427e81d5c330e236ae6f80cce44fb2557daf6a9d91e5f79032353c0b3c` |
| 16 | `structure` | [Equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/equivalence.md) | 169 | `declaration-track:c8eae42d90151d5e91d980585c29a8d74f32c0ad361ca3b07cec866f65f99614` |
| 17 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/id.md) | 186 | `declaration-track:45f7309b085e61fb28fa0445d307e20d7c06ae1c47208b1545086d750a968782` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/instance.md) | 188 | `declaration-track:63d9c1d889cc10251c8e69d71242162771557f4b7362e40c18bba06d0ac0f315` |
| 19 | `def` | [mkOfAdjointifyCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunction.lean/declarations/mkofadjointifycounit.md) | 191 | `declaration-track:ed63a1fe01937252e72595621e38a7b30a8debbe4d6c1a4211854bb12edf7a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1bd4ad6b567300a05456bd983f5dc5c77a15370b889531470ac0e39b8b7d224 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd74d2035c77ec594a00ed28c4e976c8ebdc894dce5e6c202e9b18650f69f6fab.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd74d2035c77ec594a00ed28c4e976c8ebdc894dce5e6c202e9b18650f69f6fab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
