# Verification target: Nonempty Fin Lin Ord Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ddd0719d92d242a9b76b1f789754c832af4278",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variantb4ff2e97a0c22f7fa652a47ba716a7ea1472b0d5f5c0379ffedde8c62db448fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ddd0719d92d242a9b76b1f789754c832af4278`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variantb4ff2e97a0c22f7fa652a47ba716a7ea1472b0d5f5c0379ffedde8c62db448fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variantb4ff2e97a0c22f7fa652a47ba716a7ea1472b0d5f5c0379ffedde8c62db448fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LinOrd` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonemptyFinLinOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/nonemptyfinlinord.md) | 37 | `declaration-track:74439034261c45863857ce64332e6a7aeff672ed1e634b5eeb9f318cf91a9df2` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-5.md) | 45 | `declaration-track:cdaa2c4e68c7164e36087b366de4b9e3a5fdcfd3409ad6f117f32726e658306a` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:61278e6052bbd72b8ff4bc068d498a8129b950e17b2ace4a64d7521002245314` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance.md) | 50 | `declaration-track:382b5ba94afab3248896b7bc42f1dc89bbaf81636e4935fc7b25e33222f1a83f` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:4a24131a9728e07983b8dac49aef09f8e8f69b6fdf9e29c1870e618e4bf9aa55` |
| 6 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/of.md) | 57 | `declaration-track:479ca6a131e885c85a3cce9d93b5ae34d02c2882c9e03e73f7001f162deae6e3` |
| 7 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/coe-of.md) | 60 | `result-track:74186fea73e5d5ba3ca0237894015a22462a23e4bb4127401c4e3fe9b802e4f5` |
| 8 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/ofhom.md) | 64 | `declaration-track:19d1b1a458f1eb81e955a2e5801b0790efa693ad8f26d186c883e13ea079b963` |
| 9 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hom-id.md) | 70 | `result-track:d435a0e0c443ebdc8306198ad903bf4c4aca51a060e9a6ad733e0aa34fbbd838` |
| 10 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/id-apply.md) | 73 | `result-track:2f4a58e0639968e2114bb4c2df0d04c1e117ccea1f621a491d98c654ae9f11f2` |
| 11 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hom-comp.md) | 77 | `result-track:664cad96714b1d1cfe4e4551f63f256623458c458b86222cc266893b033aa634` |
| 12 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/comp-apply.md) | 81 | `result-track:71976da99178b0f7ce24ac6f50f73eb10cf777db1e751177381b57b880796dc2` |
| 13 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hom-ext.md) | 85 | `result-track:97fabeb4e955304d8c505f68d5f2469be93e0eb040e06f061f6020cc31ffae33` |
| 14 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hom-ofhom.md) | 89 | `result-track:e176722346f616bc6d5bd649109c99831a678f050a31b81b9cbc2129805772e6` |
| 15 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/ofhom-hom.md) | 94 | `result-track:6979cbc9720762f86f860688b5600a159c6230cc6e93f194e851b6c4b73ae0fa` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-6.md) | 97 | `declaration-track:e94d70d3f53ab6d1577e45749c07f9b708d16e7343af0268990751e76468dbb1` |
| 17 | `instance` | [hasForgetToLinOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hasforgettolinord.md) | 100 | `declaration-track:892c23d971f0b4cecdd3bc14c97ec428b082363419eddadf92913b92013f3060` |
| 18 | `instance` | [hasForgetToFinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/hasforgettofinpartord.md) | 103 | `declaration-track:aa6a78b70a4b215025025185c3b6fcbcdb344aed441a2a73c3ad381160010bc8` |
| 19 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/iso-mk.md) | 110 | `declaration-track:d25e82151cc8db4682862e008f5166024de078ec8dab55e03bbfa47e63234c0e` |
| 20 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/dual.md) | 116 | `declaration-track:d64c349051e230c3c5d47f47d472731f81b8edc875eb10532c5198769bcaacc9` |
| 21 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/dualequiv.md) | 122 | `declaration-track:331493431888c4b0b47fec37c20bb2c25aed881450b31cd13083b5a9bff8d908` |
| 22 | `theorem` | [mono_iff_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/mono-iff-injective.md) | 128 | `result-track:989135c9801009fe1d10361d680f5120b7473a94f9c1e57abc5f8919e1ed6c00` |
| 23 | `theorem` | [epi_iff_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/epi-iff-surjective.md) | 143 | `result-track:791a268d93ea981d90b75aed7b732375b46a5ee34d88a519c928dd9eb7ee233e` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-3.md) | 183 | `declaration-track:52f841779b50416dba94985cd9d83faa714820e1431804216e25fe134683f8f3` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/instance-source-edition-7.md) | 207 | `declaration-track:ef7fa69140a335fbb2b874dcae9174719edc4e58b5c82dec348052ad050eb867` |
| 26 | `theorem` | [nonemptyFinLinOrd_dual_comp_forget_to_linOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/nonemptyfinlinord-dual-comp-forget-to-linord.md) | 222 | `result-track:16fbb6bcace1aa5646a9a80f1d915171ec239fad7acf216dc2d39241dc74dec6` |
| 27 | `def` | [nonemptyFinLinOrdDualCompForgetToFinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/nonemptyfinlinorddualcompforgettofinpartord.md) | 228 | `declaration-track:539c583ed27f0be6d8adc60cfca77e7f30fca1768686a4276e7dc961d11a35be` |
| 28 | `def` | [Fin.hom_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/NonemptyFinLinOrdNamespaced.lean/declarations/fin-hom-succ.md) | 235 | `declaration-track:1e60de07315d4ddbeb59d024e97654f296360a0160086b6b7b0ce27584219679` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b5cb17139b0c775d0622e0056e91c4845e13b0489a471ccf7f63d8846e89d8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variantb4ff2e97a0c22f7fa652a47ba716a7ea1472b0d5f5c0379ffedde8c62db448fc.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NonemptyFinLinOrd/Variantb4ff2e97a0c22f7fa652a47ba716a7ea1472b0d5f5c0379ffedde8c62db448fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
