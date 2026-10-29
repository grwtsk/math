# Verification target: Descent Data Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "492163824a61b7e50e7acb6b3cd55dc55128a40f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `492163824a61b7e50e7acb6b3cd55dc55128a40f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/descentdata.md) | 59 | `declaration-track:db3af5e3bbad7f852248058f422da2650781f6e60f4e1f2a76e5b47b5b9e4643` |
| 2 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/iso.md) | 87 | `declaration-track:0eb03abcafd4296be36bdf2407b93d82ab1f540feb64fdcca7391987cfce42de` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/instance.md) | 94 | `declaration-track:b6e7167d4a63dfd2a1a6b31528408d832b448cc8df6fd2b1fd0629e3dc148ec7` |
| 4 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/hom.md) | 101 | `declaration-track:064cde753d12eb66986748cbd8a094f5dc1f7fb0cdd47b5aa8e69c7c9e498433` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:ca44e1d1a99f9c2c09b13b6192754c48b358a98421137f39ece7268a47e4e960` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/hom-ext.md) | 117 | `result-track:40cad0fa78ea5f13ef6b6bae3d813065b7c9df4a1c6d813fa12a846f5f1e080b` |
| 7 | `lemma` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/id-hom.md) | 122 | `result-track:78b4b58da35d2b70ef2dce6c4fe3eed2ea6a742f3f9bfd8ce012cfa612260fb6` |
| 8 | `lemma` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/comp-hom.md) | 125 | `result-track:4730680d609234e43ea2a5119b46137083292a250531177740d33c93f16176d9` |
| 9 | `def` | [ofObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/ofobj.md) | 133 | `declaration-track:8797730c9a17c357a63951d2b1e2164bff762e061651b9225ee18a6953698ddb` |
| 10 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isomk.md) | 147 | `declaration-track:c9c61e46b50fac0a4b75bc14a5f91b33808eb358b8ff5280fb70fbf0c5ecff06` |
| 11 | `def` | [toDescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/todescentdata.md) | 167 | `declaration-track:7d4d98938988a600bf814d8122751402981f24402f11d760e8b57f1ffecc0595` |
| 12 | `def` | [pullFunctorObjHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctorobjhom.md) | 179 | `declaration-track:bb55ff35839cb62ee33e08068b99f9570207c95420c10d52fecb21a2e5ad7507` |
| 13 | `lemma` | [pullFunctorObjHom_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctorobjhom-eq.md) | 191 | `result-track:620d144d16c13ae41163f1b910ca26c399f2ac53a7feb9b608cdd643eca45978` |
| 14 | `def` | [pullFunctorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctorobj.md) | 209 | `declaration-track:76fd43944fcf30afb72bbcb8e15642bce34d7b766e4bef75ae9b707f9854c14a` |
| 15 | `def` | [pullFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctor.md) | 243 | `declaration-track:bee8bacc9500c3f1d1d3e0aec8bc5e2737778dd815cdfd9eef2075cf62f2ef4c` |
| 16 | `def` | [toDescentDataCompPullFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/todescentdatacomppullfunctoriso.md) | 266 | `declaration-track:f80fecee4680e4feab308c0cc0a0e0066571b4feca92ff0359679acfee3633e3` |
| 17 | `def` | [pullFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctoriso.md) | 302 | `declaration-track:56b8990f0a35099c55ae586b72933b9f39d0ef628b1eeb98018e236318e8582a` |
| 18 | `def` | [pullFunctorIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctoridiso.md) | 326 | `declaration-track:2ef25f2a992aea9c49acc27ca432135d9fa6315a67ef197bf798f45233119992` |
| 19 | `def` | [pullFunctorCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctorcompiso.md) | 338 | `declaration-track:7a7727fe3510e75511761b829b7b7e0564617dd8f208d9f341cc526ab737b918` |
| 20 | `def` | [pullFunctorEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/pullfunctorequivalence.md) | 370 | `declaration-track:fa2f3eaa33ab78ac2a8f0440ee46a680c8f0c447914101e98190a4b3e8ed5f87` |
| 21 | `lemma` | [exists_equivalence_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/exists-equivalence-of-sieve-eq.md) | 398 | `result-track:663cab77ec65141aa1f557d77674c7e83983cce79752b7eea2e9ec5c20011227` |
| 22 | `lemma` | [nonempty_fullyFaithful_toDescentData_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/nonempty-fullyfaithful-todescentdata-iff-of-sieve-eq.md) | 417 | `result-track:29c8025a83c3a3e741708f8e7a3a6ce1356ec9bbd903bd6d80dcedcf22a56ceb` |
| 23 | `lemma` | [isEquivalence_toDescentData_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isequivalence-todescentdata-iff-of-sieve-eq.md) | 427 | `result-track:3006adf97a1944a9bb380f4e73918526ace4a6c95a5aed83e8af7dcfd7148667` |
| 24 | `def` | [subtypeCompatibleHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/subtypecompatiblehomequiv.md) | 441 | `declaration-track:0a5876dcdaa2a4edc42a53faa00fa7284d6091ca452e0ba6e27908c6fa867daa` |
| 25 | `lemma` | [subtypeCompatibleHomEquiv_toCompatible_presheafHomObjHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/subtypecompatiblehomequiv-tocompatible-presheafhomobjhomequiv.md) | 458 | `result-track:6822274fdf6ceb21ed5df610594ca2991944b8ce64b1f67774d8c75f89794696` |
| 26 | `structure` | [IsPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor.md) | 472 | `declaration-track:19a961bbb078d92ba21ace65a7792dd478bd56bf415b4a0ceca4295d58cf6edf` |
| 27 | `def` | [IsPrestackFor.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-fullyfaithful.md) | 479 | `declaration-track:3156d23fd1089256079c23221a1476e1c4da37ad4172e9374b2bfdec1c7dd408` |
| 28 | `lemma` | [isPrestackFor_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-iff-of-sieve-eq.md) | 483 | `result-track:d64bd9e333681f6272c15bd947e5c8cae5490ec657ad328ebae45f38eb7982e2` |
| 29 | `lemma` | [IsPrestackFor_generate_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-generate-iff.md) | 493 | `result-track:0ec5366c73feb21dc45477b48a7517233dd5f4b06fae5aa3b55067bc33c2563b` |
| 30 | `lemma` | [isPrestackFor_ofArrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-ofarrows-iff.md) | 497 | `result-track:25fc188723739ecf03bad4d2e9bda32a2cf37aa56a78ef2a5126942c4492eb14` |
| 31 | `structure` | [IsStackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor.md) | 507 | `declaration-track:bece454bfb0740657c4f1351b6ad210de7e984939ee2a6f4f965593455ed71f6` |
| 32 | `lemma` | [IsStackFor.isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor-isprestackfor.md) | 512 | `result-track:71397b52bc52e1b4cbe61efa9a3c49e8416e0e0521784edb4434ebc53696e190` |
| 33 | `lemma` | [IsStackFor.essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor-esssurj.md) | 519 | `result-track:e9a28c19cc670d6bbaaa9c524865c92c3f71dbf4228180d61ed9f567ac09b8eb` |
| 34 | `lemma` | [isStackFor_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor-iff-of-sieve-eq.md) | 524 | `result-track:6a4ec3e0c177d480d745868c8564a25a56dc00c07b7a9f496948f241b3057e45` |
| 35 | `lemma` | [IsStackFor_generate_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor-generate-iff.md) | 534 | `result-track:8d472af9c0ece412eed4093b35915fa9fd7c1ceec44e0cf949b13e9fd26def07` |
| 36 | `lemma` | [isStackFor_ofArrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isstackfor-ofarrows-iff.md) | 538 | `result-track:d60b5ca48edf375408c840c5bbe0627f6b79572eb5aee6e2ef129108018c7642` |
| 37 | `lemma` | [bijective_toDescentData_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/bijective-todescentdata-map-iff.md) | 546 | `result-track:fda68ea51e7a0bd6e48651b09e601937f6b95c87db31a91e53f4f573cf0018a3` |
| 38 | `lemma` | [isPrestackFor_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-iff-issheaffor.md) | 557 | `result-track:8115aa0b5273e796bb68f708a317c59b6f609be7c60853e84af33ce04d30d0c6` |
| 39 | `lemma` | [isPrestackFor_iff_isSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-iff-issheaffor-source-edition-2.md) | 573 | `result-track:97af38ad34ff33af32ff19a9fae993731d3da44dd33bc914273d58ed37c78988` |
| 40 | `lemma` | [IsPrestackFor.isSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-issheaffor.md) | 595 | `result-track:3cccf1fbc571ae1a5c848214a84be281697719641dab120558735088d3395352` |
| 41 | `def` | [fullyFaithfulToDescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/fullyfaithfultodescentdata.md) | 607 | `declaration-track:07cb1ee994c171af2ceff255b0ae53c7600a0d53337a32a514cd0ad3e8c0242f` |
| 42 | `lemma` | [isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-source-edition-3.md) | 617 | `result-track:e04fcea06be8c91f9e5a27d4c1c819139955aae8461d2d2e62ce70f19cd30e9b` |
| 43 | `lemma` | [isPrestackFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestackfor-source-edition-2.md) | 622 | `result-track:b989300292533262604244df0825fba0bdf7ada0898cf393897b1c7c6e873ed5` |
| 44 | `lemma` | [IsPrestack.of_isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataPublic.lean/declarations/isprestack-of-isprestackfor.md) | 627 | `result-track:fb25950e8c53d7a6e050452ef2f50bcff8867fc296251bdd24c4f943ae278158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=230484fd346df1dc6666216b247a1b01da479dc3f1a9366db1be1914067cac8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
