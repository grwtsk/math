# Verification target: Noncomm Prod Namespaced Noncomm Prod Induction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "833e40529ff0486c5673892e38995f97d2411d43",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `833e40529ff0486c5673892e38995f97d2411d43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommFoldr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfoldr.md) | 49 | `declaration-track:12cf5017dfb06d996b1044109039d96e82b55caa39ad8337599f4a06cfffb143` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfoldr-coe.md) | 58 | `result-track:b3a2c966fb3ca4bbd1d34615ea4528d8f5b1111b6ea33cb1ded1dc3ae8984315` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfoldr-empty.md) | 65 | `result-track:66bb2ffaf31d962c6a661568a821d97ebe4c8766188d3cc6642835ed0be1e16b` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfoldr-cons.md) | 68 | `result-track:c4226571c10ff583492e88e00b6832bb4b859dcb97fc5f7cca18c32f3fac0b58` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfoldr-eq-foldr.md) | 73 | `result-track:5b0a407716880044f65fa3929a89e896b20eaf441de9b17e7fba049be025ff30` |
| 6 | `def` | [noncommFold](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfold.md) | 84 | `declaration-track:caac2ec99275accb29b58f080c66c4f16e8b7b2dfb5294471a26098bc1b8c8d9` |
| 7 | `theorem` | [noncommFold_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfold-coe.md) | 89 | `result-track:9c21fb59c2e43a6aaba16b5dbd7337a8da978f585883fc938b38ceffcd62b6c6` |
| 8 | `theorem` | [noncommFold_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfold-empty.md) | 93 | `result-track:3e6c56eb317936382ff1a2e8dadb3002be259d565d7119af59d3959d1cb3453c` |
| 9 | `theorem` | [noncommFold_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfold-cons.md) | 96 | `result-track:38cf1613be42370c26928b03a0a41b13aa6e8328a727510d95b91aa51587876d` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommfold-eq-fold.md) | 101 | `result-track:31f23a4de2917d0e637959c8526ba531c160cf46614f9a1d586b008737c9449f` |
| 11 | `def` | [noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod.md) | 115 | `declaration-track:406e3b25f497d8b3f73afba0500d505c56ab76c2c054fd63f17626faf882b802` |
| 12 | `theorem` | [noncommProd_coe](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-coe.md) | 119 | `result-track:4aa6a093101edebbf1a1e98e04f85bf44722fd40c633f7c6226ce99d1de0886a` |
| 13 | `theorem` | [noncommProd_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-empty-source-edition-2.md) | 129 | `result-track:3b896c6b15c5b0c19db41eca0849c6436bb2c0779d4191abfbbf2ffbe020033e` |
| 14 | `theorem` | [noncommProd_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-cons-source-edition-4.md) | 133 | `result-track:d9ddcf595718613ffba2ac21fc8f6d16754fdd16772d67fa314ce210ae43dd0a` |
| 15 | `theorem` | [noncommProd_cons'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-cons.md) | 139 | `result-track:77e481efdcd86e951a292ef3d1425f8f23fd184e414fa961d6c66446d23b2415` |
| 16 | `theorem` | [noncommProd_add](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-add.md) | 155 | `result-track:16a410e1c6c3b6c09810921216f779eb3606c3487701b67fc3ac3fe64adeb856` |
| 17 | `lemma` | [noncommProd_induction](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-induction.md) | 164 | `result-track:7d59261dbb8444d23515ed116076975c9a7f9e68d7bcafbac89a41980b751aa8` |
| 18 | `theorem` | [map_noncommProd_aux](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/map-noncommprod-aux.md) | 174 | `result-track:2281ef868f3cc63bbcb47bc352919682eef7f0448b3ed7f92bb6ff42c8b4c86b` |
| 19 | `theorem` | [map_noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/map-noncommprod-source-edition-2.md) | 181 | `result-track:fae3c30c9eb3a1a35b6f0f18a7b7d06615cca2d12e9f9f777d41ea9db8958681` |
| 20 | `theorem` | [noncommProd_eq_pow_card](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-eq-pow-card.md) | 187 | `result-track:26f6c3f1bd31b5f5bddd2db1b52461abb80c4ad8a20ad718bf2568dd9acf4994` |
| 21 | `theorem` | [noncommProd_eq_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-eq-prod-source-edition-2.md) | 194 | `result-track:439e654123b479f3d33bbf0a690f06f408fc6ebb3c03032fee6e284c2b43633a` |
| 22 | `theorem` | [noncommProd_commute](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-commute-source-edition-2.md) | 200 | `result-track:6e72ac0af8d6a01055ed30611be53fd7c233841ade7b7299e27e6caceac647b4` |
| 23 | `theorem` | [mul_noncommProd_erase](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/mul-noncommprod-erase.md) | 206 | `result-track:90fdc9ac7235b35c6711b9c7fd76bc5c5af41fd2e08e6a80b5d033fd9ecaf3b7` |
| 24 | `theorem` | [noncommProd_erase_mul](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-erase-mul.md) | 217 | `result-track:bab7d01bf00841bccaca30647ac7940cbda2e9f6a07948ae0ceac861d313dc22` |
| 25 | `theorem` | [noncommProd_lemma](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-lemma.md) | 237 | `result-track:0c680e4dc484d3fab0147f2cfbf6eb1bd6816a9a7b9555bb9c77f6404d143999` |
| 26 | `def` | [noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-source-edition-2.md) | 249 | `declaration-track:e0bedef97f490b1f1c66b2262fc8f0a5596957ef94e6e97f63a0bfb150b3d677` |
| 27 | `lemma` | [noncommProd_induction](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-induction-source-edition-2.md) | 254 | `result-track:f081b1f8f51c55b13805554f78dc4e41d3e9d66d31be9a19fafcd686c24c7ccb` |
| 28 | `theorem` | [noncommProd_congr](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-congr.md) | 262 | `result-track:f61f24ddd548e43218be65accfad48125e0b7846099c8ae519ce9215f1a500d8` |
| 29 | `theorem` | [noncommProd_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-tofinset.md) | 273 | `result-track:749c3d562474713a40b3f5544607176282dcdfae41f8302f89c502351d170bfa` |
| 30 | `theorem` | [noncommProd_empty](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-empty.md) | 279 | `result-track:386e9a841c48a7b6e44783d4660ce094ad75a3a9c0c6710c4a7309bee35f23df` |
| 31 | `theorem` | [noncommProd_cons](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-cons-source-edition-2.md) | 283 | `result-track:972b18a1671d63da014bc4ef841605164918d955d7333a45f141f492beae35d0` |
| 32 | `theorem` | [noncommProd_cons'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-cons-source-edition-3.md) | 290 | `result-track:a8f47cba7073760a576a96a0aac9962a75adcca8ca473e7824c3c18ab86a39b5` |
| 33 | `theorem` | [noncommProd_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-insert-of-notmem-source-edition-2.md) | 297 | `result-track:d97d6c35d1c3c0a15bf14ff5b760010f39b655ea29da9ac057f9735face07368` |
| 34 | `theorem` | [noncommProd_insert_of_notMem'](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-insert-of-notmem.md) | 310 | `result-track:8a6ff9d928ec7ba4d8df9d86c806a5b298753b85e64d0217849f25fdb0538458` |
| 35 | `theorem` | [noncommProd_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-singleton.md) | 323 | `result-track:25c11601297175cd79afd0c9d6de7cecf647b2a623b291b8535ba2e02ebff779` |
| 36 | `theorem` | [map_noncommProd](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/map-noncommprod.md) | 333 | `result-track:78fa34e19e4ffb60562e85bbceb7b6c980e4d5bef8815cfcb1cf7a849020c526` |
| 37 | `theorem` | [noncommProd_eq_pow_card](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-eq-pow-card-source-edition-2.md) | 339 | `result-track:8fca38cbb741ff5cbb68c37a6b627f0a2a53e5d15a2902dbf9ba183318f34101` |
| 38 | `theorem` | [noncommProd_commute](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-commute.md) | 346 | `result-track:2e4bfe05989185c9acc8a113dc0cc608d9f00482ddb0569bf2b371d73af27132` |
| 39 | `theorem` | [mul_noncommProd_erase](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/mul-noncommprod-erase-source-edition-2.md) | 354 | `result-track:aceca1bef5f3ea7de8b799e6217fa9a61343870c006b90da4e093d8eedd9f66e` |
| 40 | `theorem` | [noncommProd_erase_mul](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-erase-mul-source-edition-2.md) | 361 | `result-track:f2a0f91f71b241916edd7826a5c5d38ab06301ba42c98cac525b5d560d4643b6` |
| 41 | `theorem` | [noncommProd_eq_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-eq-prod.md) | 369 | `result-track:39ea310f52e09075277709add27fbc702db03749ad4322df796e61dc22fc8489` |
| 42 | `theorem` | [noncommProd_union_of_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-union-of-disjoint.md) | 377 | `result-track:59b0ed94c027026a87ea9f12737bb7cbc278fb7d500de94abc04c51980d9504b` |
| 43 | `theorem` | [noncommProd_mul_distrib_aux](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-mul-distrib-aux.md) | 393 | `result-track:98142e56c454fd26c683f5fb89df47d2e07d74b1bca9dc6f84825c9a9010b097` |
| 44 | `theorem` | [noncommProd_mul_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-mul-distrib.md) | 407 | `result-track:a430c36c8d85b946e33a08bca5831e16442dfc36ee1559240b59e7cca2ef923a` |
| 45 | `theorem` | [noncommProd_mul_single](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/noncommprod-mul-single.md) | 423 | `result-track:ce7dc4fe40cecb3bb105a03baf76ee573817cead1d8ad782434d8c787b6c7c1d` |
| 46 | `theorem` | [Noncomm Prod Namespaced Noncomm Prod Induction](../../../../../Combinatorics/EnumerativeCombinatorics/NoncommProdNamespacedNoncommProdInduction.lean/declarations/pi-ext.md) | 447 | `result-track:769d8c3e757009943542c9f3d4a956365de4fb0df1fb9121fb9069c46070393a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eec7cce7f1279d599c20f9d9dd7e6f909d23aa285ce445745f88acb6a285be5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
