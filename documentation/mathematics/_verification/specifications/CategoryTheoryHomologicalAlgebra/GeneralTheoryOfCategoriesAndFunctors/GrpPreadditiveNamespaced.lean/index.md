# Verification target: Grp Preadditive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6f527bf20934361c116e003ea8a80afe833daf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6f527bf20934361c116e003ea8a80afe833daf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-3.md) | 31 | `declaration-track:1a8a4396836f7134861a46a344ca22c9ba696bba7000038b82828d71de875994` |
| 2 | `lemma` | [hom_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-add.md) | 34 | `result-track:960868e974b4486a95875dd2abeafdc0831c0d4b4452883ba1f95223d151f400` |
| 3 | `lemma` | [hom_add_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-add-apply.md) | 36 | `result-track:65c4bee24d103188f49646f4e5036a49077cda5dcfa7bbb02e9d914b4770f8ec` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-4.md) | 38 | `declaration-track:4209c137c52a16c96d18820afc047dcf95bf46bf47da130b1bf01a2a74a29ca9` |
| 5 | `lemma` | [hom_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-zero.md) | 41 | `result-track:dd64830bb83c410c0ca11b489b473bc2f3b23355f8dfc885e25b367fc4189c8a` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-7.md) | 43 | `declaration-track:9e49ded27fb90b8830fbaa863b3baacbca5976601a455e819e6fe09378c39737` |
| 7 | `lemma` | [hom_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-nsmul.md) | 46 | `result-track:7f77600af2f4870342f64d761a6e368f64636fbc9c21b3246388cc79dfaa6221` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-8.md) | 48 | `declaration-track:ff75c6afe5644469b8441b883c383e0979b77023f900e43acc42d80214ba9b04` |
| 9 | `lemma` | [hom_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-neg.md) | 51 | `result-track:598a0d451bfe717a674fec21b68c94642668a40b9b1d9bfda139d9b16c055507` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:01eb8fb6da68a16184d509640005bb91fd90635e4ed06179fddac06f580692b6` |
| 11 | `lemma` | [hom_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-sub.md) | 56 | `result-track:f008c0d96e5306847684fc1b7a3f7eecc7587bbfa43f35ed4ba3f786358edeeb` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-5.md) | 58 | `declaration-track:546657bfa2d34e28f9a572cc08681b0d4b7390386f72b10384304f83eb290004` |
| 13 | `lemma` | [hom_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/hom-zsmul.md) | 61 | `result-track:33ce2e8714145b3f02175d5edc9e0da6fa69fa5a5737c0ec6e4fa41c81c84eab` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:0d176bb5829b3cb7b72e0b892a333408f5c291808c6a2e6e8c4808705303e29b` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/instance-source-edition-6.md) | 67 | `declaration-track:5b323ba20da40b8f819fa3e42f783273afe118d76b55d60b3e113f9ba5f46c1d` |
| 16 | `def` | [homAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpPreadditiveNamespaced.lean/declarations/homaddequiv.md) | 71 | `declaration-track:ecb900bc64fc5bc8eebbc4cfe17421fe913327b3b0922794a2f66afee9802889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c87dcf0883c8c6edb434d17f212ce3ccc29030e791c5c620c6cb207ade43fba7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante36e99d79729c251b425a1fcbc2088d1cdce2840f767d0affbb9d24feefa71a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
