# Verification target: Subpresheaf Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7d0dbdbd12087ca3937f0be2a4ba2f84e53ec2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcae4e0e41a98a8d51b74f51bd1167aed207c27f2470daa1887a37b00d979431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7d0dbdbd12087ca3937f0be2a4ba2f84e53ec2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcae4e0e41a98a8d51b74f51bd1167aed207c27f2470daa1887a37b00d979431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcae4e0e41a98a8d51b74f51bd1167aed207c27f2470daa1887a37b00d979431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subpresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/subpresheaf.md) | 34 | `declaration-track:bee2e075d75c4190cec3a22a907a1c393d871a31ce037d5b1b9d1e0d40f6a8f5` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:53481012eb2c79a7d20885d4105e78dea2a777ae1592cde7e9cf460f4be18b49` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-7.md) | 49 | `declaration-track:fdc3b7fbe7f83943adb5ef8c129e21f9a7a18665ab36a5d70bfe9b930f71dfe2` |
| 4 | `lemma` | [le_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/le-def.md) | 95 | `result-track:f737d041cfd7d2d2b237c76c16fb850e83ce9a5d587787471454e3f2174a1bf4` |
| 5 | `lemma` | [top_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/top-obj.md) | 99 | `result-track:acf15b5e2ca24e851e5f2baf2dbbed8d1a0708fee94bfede66a13fe6a3377f6d` |
| 6 | `lemma` | [bot_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/bot-obj.md) | 100 | `result-track:da25a59725d0309f9f832065af11ed87e184227cc3736385294d0fae75c021b1` |
| 7 | `lemma` | [sSup_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/ssup-obj.md) | 104 | `result-track:2fae13b1fb3b16a1d43dd1092ce07d08965675aa818430dc1705bfce24379b6a` |
| 8 | `lemma` | [sInf_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/sinf-obj.md) | 107 | `result-track:e5280430a2b52b34ebc5a87f61495cd366524f0b6e967e517684da589501e17f` |
| 9 | `lemma` | [iSup_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/isup-obj.md) | 111 | `result-track:597379475b79659cff293fdec9ea8595bc5da8ae12e4582884ad339a3fce3ac0` |
| 10 | `lemma` | [iInf_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/iinf-obj.md) | 116 | `result-track:2b21eddd92b7ceb775388906388cd89ae82c9acd6fc7fe7500788ada4bee70d5` |
| 11 | `lemma` | [max_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/max-obj.md) | 121 | `result-track:c8111a530c554bd87c852db83aac9f317514a7687b413ca936dd0076c221d2af` |
| 12 | `lemma` | [min_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/min-obj.md) | 125 | `result-track:d059958857fa91f61f75c617418e0de4699e2ccc31dfc9bfa79aa4418bcf7f97` |
| 13 | `lemma` | [max_min](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/max-min.md) | 128 | `result-track:690c59d716281e6805c59fc03ea44c08208ad14977e71f48adb78377ee45bf16` |
| 14 | `lemma` | [iSup_min](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/isup-min.md) | 132 | `result-track:b981a2283a8433b783a30234314ba531c70aa5927e1c7833d07ac88b831af271` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance.md) | 136 | `declaration-track:3f15a34fbd420b021bdb2dba5b3bfe55fca4dd2c150b289805d1a5b6f17709b9` |
| 16 | `def` | [toPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/topresheaf.md) | 141 | `declaration-track:02f7a2f94461b677a9f08a606a45d4854d118fe59ad5423c580f60e8e36fb161` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-6.md) | 153 | `declaration-track:cf556910b9ff4f489858b4d4e5aa3fa793fc3665d3786d7983473bb3ddcd6599` |
| 18 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/anonymous.md) | 158 | `declaration-track:c5b12fed602b9ce0b664e22188815cd85d7410e6a4223981b08fdb560c292cbb` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-4.md) | 160 | `declaration-track:6d0d84c2cbc0e87510f461eb3dcac53d51ca015bbcb83d1aabf886d7484a4fb0` |
| 20 | `def` | [homOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/homofle.md) | 167 | `declaration-track:2ba8f7e9db27a76fc60a3ab45a6958ac8ccc55b2748a0a5d7b5d8b897a5a732f` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-3.md) | 170 | `declaration-track:5ea2bf8b36b7ec99d3726e9fd00471d012ef2eee16a0a53b5b48cd08692c75d7` |
| 22 | `theorem` | [homOfLe_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/homofle-source-edition-2.md) | 178 | `result-track:d380fa05b06857686746e2591e78bcb247d64c1132079f30ba8bb2e5bfd45fac` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/instance-source-edition-5.md) | 183 | `declaration-track:bf37f4eb19d3432b922427e0bb1cbee84b053f83f5732f82629398b9515ec97e` |
| 24 | `theorem` | [eq_top_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/eq-top-iff-isiso.md) | 190 | `result-track:d97d191d3d2d455422ab00dd842a359c9d782ea69a8f7d8b8ae77fce0bb46997` |
| 25 | `theorem` | [nat_trans_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubpresheafBasic.lean/declarations/nat-trans-naturality.md) | 200 | `result-track:5c321e97ce5bc5456c7df12ebca86e324c871b3068b5fb30436c39f27d759e81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=959ead9fe8b679a33360d7bd37d770498fcf857bad301db5e5eab4bc2d46b665 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcae4e0e41a98a8d51b74f51bd1167aed207c27f2470daa1887a37b00d979431.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdcae4e0e41a98a8d51b74f51bd1167aed207c27f2470daa1887a37b00d979431.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
