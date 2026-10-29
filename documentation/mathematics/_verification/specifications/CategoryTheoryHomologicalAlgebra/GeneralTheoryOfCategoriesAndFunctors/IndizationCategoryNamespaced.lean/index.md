# Verification target: Indization Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0985222e3dd600bff126261770fddcbf791781e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0985222e3dd600bff126261770fddcbf791781e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FullSubcategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.Equalizers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.LocallySmall` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.Products` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Presheaf` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind.md) | 74 | `declaration-track:9a6b48c4a45363b12e6f5379c18b87faa1fdf33f211a05a7477d5846c7225cf0` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-19.md) | 77 | `declaration-track:d2e866783c1036b520bf8d447b00809a398ecd489649cf1ef88e47e6e1a41350` |
| 3 | `def` | [Ind.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-equivalence.md) | 84 | `declaration-track:7b78fb5d14b20891fffb0a0a34187ec716b3e2c5d284401da2b6b3872aeca3fc` |
| 4 | `def` | [Ind.inclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-inclusion.md) | 90 | `declaration-track:45b6b8cbea090d42c04e55815f5f8250e87033bbe66ddd3d3479ddc1bcb096c8` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-11.md) | 93 | `declaration-track:84347631c9efcbe5fda67c8ae3fe8552b01af132d9c4dbd5bc66fac139628e4a` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-21.md) | 96 | `declaration-track:dc9a11314b87ca96dabe9f123291042b2d861b75c6f8bbb9972d6d0021752295` |
| 7 | `def` | [Ind.inclusion.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-inclusion-fullyfaithful.md) | 100 | `declaration-track:f223e52ebdc2f66215194947457ac00d7ec2c11bc03b79dde9bf5574683edf39` |
| 8 | `def` | [Ind.yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-yoneda.md) | 104 | `declaration-track:fc9d4d18382b6a1ebfa510a3073e998de2e56bbd202c2bd2e1212ca1066a56c3` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-9.md) | 107 | `declaration-track:7f853fd790ec9964adf739b1b63ec7ce0b530f84538b5f923146c21cb6802356` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-10.md) | 111 | `declaration-track:8272f74bac91ef23c6355d2dbb4699d818121a1392f01e0cd606c4f985bece72` |
| 11 | `def` | [Ind.yoneda.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-yoneda-fullyfaithful.md) | 116 | `declaration-track:ee35185117832a5b95e9fd6326f9f1f0833722e4b660ca328138ccb003081f2f` |
| 12 | `def` | [Ind.yonedaCompInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-yonedacompinclusion.md) | 120 | `declaration-track:3b843e606cf7d3e0d04505c3e8e01c112e50145a98a043ad8c96b7b73cefc616` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-8.md) | 124 | `declaration-track:6dbc2df2b089d353c681ed1d1e60bd2e7f25dd63af2b6705f3bf09ce3412fd71` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-16.md) | 132 | `declaration-track:9cdbfa497a5477340e0ab657a2d7338d43959ff3cc1b68e694b265475e1de588` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-14.md) | 136 | `declaration-track:920288ef8879e3855b2d94405651816fdc3c3260663f1e3b29d5d1fcc57cef3d` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-24.md) | 144 | `declaration-track:fba4228f71eef27ab5422c0eb70571da85718de2aa7e7af30a76b1f469ff792f` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-12.md) | 148 | `declaration-track:8d56461e098c22bed926caa1d0687ae413d6d0f077a87999619bc97716932962` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-7.md) | 158 | `declaration-track:5b99c6517f2ae96c32dbfd9e9abb89fd7302e4118fa4b6a8c26091b0b1c89835` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-13.md) | 162 | `declaration-track:8dba10c4e663b0380abd606a97f943aa530f75aae17bc4bc7a028b654cf1a749` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-6.md) | 167 | `declaration-track:5a64072d46c68274087b9a8431cd9251e634d6e555ac8bc56967bb9575f65c41` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-5.md) | 170 | `declaration-track:2d6a987a085aa56aad225c95389ef164c9382b355b7fa16406448ce520b21fda` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-3.md) | 173 | `declaration-track:1bff913a800a224637721d62ae772d94217abf618cc4617def95e9fe34474943` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-18.md) | 176 | `declaration-track:af7fcb441983ac11fed129933f6f1f5e3ac7feec2c8de72af4d04f2ce0eb5223` |
| 24 | `theorem` | [Ind.isIndObject_inclusion_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-isindobject-inclusion-obj.md) | 181 | `result-track:dc581d09630b9070629e58a434a50c9cacbd17297bf638be455c8d7387227560` |
| 25 | `def` | [Ind.presentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-presentation.md) | 185 | `declaration-track:2e3c40b4be974dcde04338d2c6cbce2cdb1757188bcaa0fa02e514397993d949` |
| 26 | `def` | [Ind.colimitPresentationCompYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-colimitpresentationcompyoneda.md) | 189 | `declaration-track:22b1302507e16a7409a66b407ba93e771651273697f44f27bbd7e05579a5cf11` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-15.md) | 199 | `declaration-track:9b4fb9be04d699c38363857712644dc9bc36f4f7f8139a5ad846439f2718ab61` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-22.md) | 207 | `declaration-track:f840278b19722753f4eda0fb87fc09b2271fe77ba6ae44a2250732db6aca1f98` |
| 29 | `def` | [Ind.lim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-lim.md) | 212 | `declaration-track:f3735c1c9087d61af6edc715f4669f973aeb00388057238628a2e9f263bed18d` |
| 30 | `def` | [Ind.limCompInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-limcompinclusion.md) | 217 | `declaration-track:ea7cef972cc73a4ca8cf164d2c507942995284edf5f2176a73c0e7714f7ca807` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-2.md) | 231 | `declaration-track:142ad8e6c9539280eb149c80998b5bb7bcf62158d4cba40f9e13cb99c3481dd6` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-20.md) | 238 | `declaration-track:d842b0827e2b65399180971df2579f6dd5cee9350ac48c31b98420dd4ce38dab` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-4.md) | 243 | `declaration-track:1e042e64097d617e840c1bcc959c02273bece899359273533e5f04e8d9e1774a` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-17.md) | 262 | `declaration-track:a6128a08ac76586b16bdad4dc6e048ff1d0ececae4b1695cecacf7c0e1aac9ab` |
| 35 | `def` | [IndParallelPairPresentation.parallelPairIsoParallelPairCompIndYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/indparallelpairpresentation-parallelpairisoparallelpaircompindyoneda.md) | 269 | `declaration-track:7e7cb6697d560c0bf1f6cdac28fced0baa0ba089e34b782c6cd5192bae333ccd` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance-source-edition-23.md) | 278 | `declaration-track:fa6bd44041e9f751bf393eae325850b8c10206a82c2716a3b297a5e9d82446d5` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/instance.md) | 286 | `declaration-track:0a8e083bb24f18e98b2dfd4bfb6ceb0c71327fe3d29c4271b551ae80ebd8b82b` |
| 38 | `theorem` | [Ind.exists_nonempty_arrow_mk_iso_ind_lim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-exists-nonempty-arrow-mk-iso-ind-lim.md) | 291 | `result-track:4dcb8391619741f470d0e1431d2a671b9f35bf19b3c007c105717507cc290423` |
| 39 | `def` | [Ind.leftExactFunctorEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/declarations/ind-leftexactfunctorequivalence.md) | 308 | `declaration-track:9c49f3b2787072a610af281a55ea1a6fedb378b60b73938b8ed3b0bd0e103dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ca4e8dc72a9ae1a0779bedf3f7c9b28dc6cf8fefff5d0874648557f3cd807f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
