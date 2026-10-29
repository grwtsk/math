# Verification target: Subobject Basic Mk Surjective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba8921b859416f4679b85bf81c1b71ee50cbdd29",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba8921b859416f4679b85bf81c1b71ee50cbdd29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subobject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/subobject.md) | 96 | `declaration-track:209a78c8c28f7bd5129c438bc1de93179a6a4f5f788c6b0bd90912a8c7a7a017` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-3.md) | 99 | `declaration-track:5d8560bcfef564d1817238b3d0e86b8f4d44ec58661473f464d40d38a0aea7c3` |
| 3 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk.md) | 107 | `declaration-track:ea09bd2eb8a4ffb3bf333c660e97c0952cab23652f43c42bc3cb17e185d3dbb4` |
| 4 | `theorem` | [ind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ind.md) | 114 | `result-track:97d5facba29968fe265509a1868eae7b16f94461d14aeaefc840d924eacb02b2` |
| 5 | `theorem` | [ind₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ind-source-edition-2.md) | 120 | `result-track:9addcecbdc27bbe6a4227576d9fad068258801a7e8e6e4d6b5f688f7d5b49505` |
| 6 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lift.md) | 132 | `declaration-track:669dbcffabb32c70bdc8db42ecaf0e24e15c74b333633a9e21eb83b6def06c14` |
| 7 | `theorem` | [lift_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lift-mk.md) | 141 | `result-track:7cde9e15566b4e1cb06828a516de3ba61314bc38b3e4a49a4917be459acc92e5` |
| 8 | `def` | [equivMonoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/equivmonoover.md) | 148 | `declaration-track:c66a0743da7d8cb9d387d64b6811463c45d10c1f219c55b12ff8ce519c4c9c6e` |
| 9 | `def` | [representative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/representative.md) | 153 | `declaration-track:e81cca8f34d6d3bd7440527bec941c659b18315d5c0bd98235915a6e295aeb08` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:bc68849812d38b37790c41e7e3a53789c4d96fa001d09b900e239a4716672006` |
| 11 | `def` | [representativeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/representativeiso.md) | 163 | `declaration-track:3520e8660c33af251183dc03661b96c177970f2e98afc36d206b8c370a292af0` |
| 12 | `def` | [underlying](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/underlying.md) | 171 | `declaration-track:b5e37f74e9ec16fe4e6a41f7317774ca6528e306244d458fa8651763754620c2` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-8.md) | 174 | `declaration-track:c8bf8f3a5cc51e8c8ff4d70a45230be79e8e994ce891ff5c47149ccde58268d9` |
| 14 | `def` | [underlyingIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/underlyingiso.md) | 185 | `declaration-track:bc51a1228e18092e468c8b2a9cadd69a07b5a7b7585a6e0230e9ef14a85df53a` |
| 15 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/arrow.md) | 190 | `declaration-track:8d028d3a89fe1526d777473b65947083010d5dc54b423de96718703a2deed808` |
| 16 | `instance` | [arrow_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/arrow-mono.md) | 193 | `declaration-track:e9cca409cad593bc13c95db7e423314e0a84243d9e2d625be9ab5d2529443281` |
| 17 | `theorem` | [arrow_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/arrow-congr.md) | 197 | `result-track:94913c542ae68ff94adde6688e43388996404bf9bb31bdff6b324c0537bb984e` |
| 18 | `theorem` | [representative_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/representative-coe.md) | 203 | `result-track:5617e7a717e4ce9c942c2e02131a41000553e6dee3adfe43e31f04693608813a` |
| 19 | `theorem` | [representative_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/representative-arrow.md) | 207 | `result-track:714120977a502ea51ad2b9205cbc53cc617eb06d745850c2b799860f3b17004c` |
| 20 | `theorem` | [underlying_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/underlying-arrow.md) | 211 | `result-track:6620c2169e4f41c9d55a6e066b6e198332c0ed54545f182e9aed1267da9cab75` |
| 21 | `theorem` | [underlyingIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/underlyingiso-arrow.md) | 216 | `result-track:a6935789290d1652cbe71598a7341b4622f53f1bcf5e928e9991da18683f4212` |
| 22 | `theorem` | [underlyingIso_hom_comp_eq_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/underlyingiso-hom-comp-eq-mk.md) | 221 | `result-track:cb7929d60c86f24fa9f7e79d47a93e07bd6d9b1a10f7b7ee2315980c538fe598` |
| 23 | `theorem` | [eq_of_comp_arrow_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/eq-of-comp-arrow-eq.md) | 228 | `result-track:37552bc3a22b7a3dcdf3928518be20a27462ef04f5fc82f8e300f1ff88a235e7` |
| 24 | `theorem` | [mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-le-mk-of-comm.md) | 232 | `result-track:3a34c235ecf1a7d1dedde5e34c81bb34c3e61eb83ae79c778381fd1dde9638b5` |
| 25 | `theorem` | [mk_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-arrow.md) | 237 | `result-track:d83b9bf988917fe7d11efb6ca8393667afd3afdd7c1055705fe5cfb7f8ff29f3` |
| 26 | `theorem` | [le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/le-of-comm.md) | 242 | `result-track:d1b9412c08ec339bcb528954618d3f7876c945df90225d4b32280518fb5b6d7f` |
| 27 | `theorem` | [le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/le-mk-of-comm.md) | 246 | `result-track:f01b209ad6c25060846817c0158d4d458c362cd41d1c30ea142b6a9de5d10c11` |
| 28 | `theorem` | [mk_le_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-le-of-comm.md) | 250 | `result-track:4cef1cbdd87c181dfd91f3cac291847d721a2f205ac9ea6dffe2a6235af4d371` |
| 29 | `theorem` | [eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/eq-of-comm.md) | 257 | `result-track:091e292e15fb718418d99c63246df9d1bd73a8ca00247b8209d95bdfb8bed138` |
| 30 | `theorem` | [eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/eq-mk-of-comm.md) | 263 | `result-track:97657daddbb2d7f5a830d41816763c4e5a927a9b99d87cf1c1f00e80c4137173` |
| 31 | `theorem` | [mk_eq_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-eq-of-comm.md) | 269 | `result-track:04e59a480c6b137203923f1802dcf98121a5e9c5a49d9d0ac23eeb8f85315561` |
| 32 | `theorem` | [mk_eq_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-eq-mk-of-comm.md) | 275 | `result-track:846320f17d67f6cb38f17d27ce4c900b8c6a4ee3119ba11cd2d89d1197296f2b` |
| 33 | `lemma` | [mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-surjective.md) | 279 | `result-track:da41e6d6e99da9d3b32a8aa8a1c93ad4dfac72d555617bc4558779e84e1ed5c5` |
| 34 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle.md) | 287 | `declaration-track:1c972098ba0598ec1d2b38d6357b1528bb9509af2415b0cec1a41c94821bf25b` |
| 35 | `theorem` | [ofLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle-arrow.md) | 291 | `result-track:4584a59a4302b6dfcddcf01305ed4f31de2416c16a905c0a1c6cfbe7523d169f` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-6.md) | 294 | `declaration-track:a7781d5de9d377aa56d28a597e5051abc05d2609dec36b2dc2d5892ab54da767` |
| 37 | `theorem` | [ofLE_mk_le_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle-mk-le-mk-of-comm.md) | 301 | `result-track:3f9195bde740a55d877c86b60e0701625f586adea7cbcecc1b794d2c700f8b44` |
| 38 | `def` | [ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/oflemk.md) | 308 | `declaration-track:f5cf2ee4aa253f630e7bcfef89b99fcdf32d7377d05a9f0ec085acd44d219d2f` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-2.md) | 311 | `declaration-track:2597315bca46a9aae85bc0446de69f0779f01a07e098a2781bf5997d8d91e03d` |
| 40 | `theorem` | [ofLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/oflemk-comp.md) | 317 | `result-track:2fcb051e5a659222715617b15eb2bdf37b5d75d5641525adafc153ff69f52ead` |
| 41 | `def` | [ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmkle.md) | 321 | `declaration-track:790ffe7b4e687ab519c80c5179fb9494c0ee7a05a373ab59063387797df75b5e` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-4.md) | 324 | `declaration-track:8392f10292a7d3b62b3ff5531e4ecc2179ad446d95578f4d2359876fcb4f48bc` |
| 43 | `theorem` | [ofMkLE_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmkle-arrow.md) | 330 | `result-track:4b87e27fce03f1ed799eb538e5e8b60fa90ea2edce1272cdda3ea7306983f476` |
| 44 | `def` | [ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmklemk.md) | 334 | `declaration-track:f746551ca2cbc2c6cc2a24887b2755676a6200f7e305562d1cc10c90306d3319` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance-source-edition-5.md) | 338 | `declaration-track:9833759d9168986d7f2a1eef51cd78053c8f727d3f1eb0dd8dec2073ead1c297` |
| 46 | `theorem` | [ofMkLEMk_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmklemk-comp.md) | 344 | `result-track:a13d741921fb195c2b91dbdbfb5ae915fe80354f6e4673b8f99ce9e6ec6106c9` |
| 47 | `theorem` | [ofLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle-comp-ofle.md) | 348 | `result-track:957e1cddba6017482acdf957a86fbb661b8df6360f2b3217381099345e3b537f` |
| 48 | `theorem` | [ofLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle-comp-oflemk.md) | 354 | `result-track:a4f311465b0b6c9d5f49e199be6894601e1b31c07f07661c5966aa30a9eace7f` |
| 49 | `theorem` | [ofLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/oflemk-comp-ofmkle.md) | 360 | `result-track:48b075e4052b92e79fbe10475964ba0860b2262b7df17c8fa372afdfdc0f1423` |
| 50 | `theorem` | [ofLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/oflemk-comp-ofmklemk.md) | 366 | `result-track:bffc2576e5a0c8dee638e99e9b8db16e1f4aa3c925a9dfd3b9243d798bb81257` |
| 51 | `theorem` | [ofMkLE_comp_ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmkle-comp-ofle.md) | 374 | `result-track:7d01cc8cd85bf75ae792d3be949575ead3d8401dad3bb93496fc5a7392832727` |
| 52 | `theorem` | [ofMkLE_comp_ofLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmkle-comp-oflemk.md) | 381 | `result-track:189bab9f5906126fc549cca29a521af63132bc58f80361c90c68a61e7e5ff6c6` |
| 53 | `theorem` | [ofMkLEMk_comp_ofMkLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmklemk-comp-ofmkle.md) | 388 | `result-track:3a14a732cb8a85def0b89c61b3a3fd9d69be52ef2a29246e76ca4ee619cc8329` |
| 54 | `theorem` | [ofMkLEMk_comp_ofMkLEMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmklemk-comp-ofmklemk.md) | 396 | `result-track:459b06b384699f8bdb3a41297da04d60d9c893f4adc2082a5c3a6bbb85947319` |
| 55 | `theorem` | [ofLE_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofle-refl.md) | 404 | `result-track:867ae7609bf6ce376027fb3563d96d02948e525f31581dc0f2cb3ebc1c267aff` |
| 56 | `theorem` | [ofMkLEMk_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ofmklemk-refl.md) | 409 | `result-track:d55889210c30bfeb3c6ccc7ae8a9ad3a4c50494ef754d2920372582dc9d0fcd8` |
| 57 | `def` | [isoOfEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isoofeq.md) | 417 | `declaration-track:f1b01c227445a9f8a6faa5e90ab2f57de1c74e7cad98a13acd472d29bdc760c9` |
| 58 | `def` | [isoOfEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isoofeqmk.md) | 423 | `declaration-track:10f86b269b66b616c6360e47ade5555515f8bc3a9c1c5d858cad785c1f8211fa` |
| 59 | `def` | [isoOfMkEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isoofmkeq.md) | 429 | `declaration-track:fd03acdc30c9917aa606de03905afebbb6c6128a1e3977e57500b7a11824563a` |
| 60 | `def` | [isoOfMkEqMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isoofmkeqmk.md) | 435 | `declaration-track:358b50b97a4f6b1381a25dfbbb26bc75081d7b8ba21ae2a829cf4e9ab0408424` |
| 61 | `lemma` | [mk_lt_mk_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-lt-mk-of-comm.md) | 440 | `result-track:5addb2f0a241aa1359d1e532a61d3bacc851ecb5680546117e845180744da742` |
| 62 | `lemma` | [mk_lt_mk_iff_of_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mk-lt-mk-iff-of-comm.md) | 450 | `result-track:75ce14c4878ad85be55365833d57c0f79254fb3e9ae0f22146401b017618332e` |
| 63 | `lemma` | [subobjectMk_le_mk_of_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/subobjectmk-le-mk-of-hom.md) | 463 | `result-track:137260d3b7262ed247c58b9c023e174ddcf0e18a30607ca3fd4150a290157884` |
| 64 | `lemma` | [isIso_left_iff_subobjectMk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isiso-left-iff-subobjectmk-eq.md) | 467 | `result-track:9b744375f2b139d557940bb935cb4df415e47f97ad9c9fac3f775e27bd76645f` |
| 65 | `lemma` | [isIso_iff_subobjectMk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/isiso-iff-subobjectmk-eq.md) | 473 | `result-track:3fcc8560120330fb543052123bbb446fb1a0a229b86302d28b759f8ef43ec7f3` |
| 66 | `def` | [lower](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lower-source-edition-2.md) | 485 | `declaration-track:e728989d10a5709644a7953c6ad4a9b3a4ea3c417364a165ab6945f8654ac42d` |
| 67 | `theorem` | [lower_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lower-iso.md) | 491 | `result-track:fafdd3d20e9e04fc23166baa911b43f13144a27c43f2c8cd1542992ee44e58dd` |
| 68 | `def` | [lower₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lower.md) | 495 | `declaration-track:4f797f77b13380604c5eed52f1b871d26e4c73adcc46f1a0ca95bf49a1e6e810` |
| 69 | `theorem` | [lower_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lower-comm.md) | 499 | `result-track:5138f07147ba8599840bfdca12e0cd81707add6d8d690167e5f5080531c232fe` |
| 70 | `def` | [lowerAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/loweradjunction.md) | 505 | `declaration-track:79e6accfb2758752709a441c0b17ff25b70c09dd742fe226ea405f60ff7eb9e5` |
| 71 | `def` | [lowerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/lowerequivalence.md) | 512 | `declaration-track:5eb599926546598646d06453208a42fd54c66bad505999f19cb4d054d8dbd1be` |
| 72 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-source-edition-2.md) | 532 | `declaration-track:b556cfc2f0227d11d5ee0101514cbec335fa82229a718ce43f146975244b2bdd` |
| 73 | `theorem` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-id.md) | 535 | `result-track:e0b90fe45510691521a3f2aacd0e5d8c897f2a4a2089b8f386679a72eeda2503` |
| 74 | `theorem` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-comp.md) | 539 | `result-track:b000c124d22391ba493308f612a00d8b2661b1eb50fbf472227b5f7815fb98cb` |
| 75 | `theorem` | [pullback_obj_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-obj-mk.md) | 544 | `result-track:4e3f5ac8f46021a61730ee696aeecca37ebf7d4f3c7d7c39d586dcf8e53d4a77` |
| 76 | `theorem` | [pullback_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-obj.md) | 551 | `result-track:a8ed2cb34a5e4fa0e4ce4663433a636a70a6b4719ba41c62415341e368814cd3` |
| 77 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/instance.md) | 558 | `declaration-track:02580244a94a47bdfd1fd10eae67a574dfc946c3794210b9a76d1a0bb7e4fcfb` |
| 78 | `lemma` | [isPullback_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ispullback-aux.md) | 560 | `result-track:5fd29d27096cf7b84daca3c0031ed377dc09d0a3fd890d56576dd3d9cb3b0de6` |
| 79 | `def` | [pullbackπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback.md) | 584 | `declaration-track:4f34276f81e186aeb41b8eb0a1bc05f843e8e2668302ca37ba654f8f77a75dec` |
| 80 | `theorem` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/ispullback.md) | 589 | `result-track:2363c9116b1d76a128e4414b9188c5d440e82ac678cb2c00d4f02311a7fc97f5` |
| 81 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map.md) | 600 | `declaration-track:48f0127f965de79e1032428508f7fc6c0ddca02be16753ae9ad6fdfa2a763ec4` |
| 82 | `lemma` | [map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map-mk.md) | 603 | `result-track:4590414bfef1ad15075b9d01a635e18b7cb49b481b3ed58428684ca11e51b6e0` |
| 83 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map-id.md) | 607 | `result-track:65386e15c64f47f91ef2d210864ef5f26ba03b64e3a9a0adc802bdb0f9e1b7fd` |
| 84 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map-comp.md) | 611 | `result-track:ab0383a2ea7d1a4914864cec7cbbf77dcaad305d83455cfc936fa9c75c9eb130` |
| 85 | `lemma` | [map_obj_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map-obj-injective.md) | 616 | `result-track:51c83a8eb24985bdf2be8ecc380666afe4bc35bb5b63cffa13f4d3a15de11524` |
| 86 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mapiso.md) | 625 | `declaration-track:f705dca712f877d3698c72670e4d97b64c873e845916fc5891bf421b8ce99d69` |
| 87 | `def` | [mapIsoToOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mapisotoorderiso.md) | 633 | `declaration-track:8fb9f9c27cf1edf6079eb72c5e0b2afeb50a647655b39ac459f8abc169f56f29` |
| 88 | `theorem` | [mapIsoToOrderIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mapisotoorderiso-apply.md) | 651 | `result-track:448e1b5556b65d34bafecb62a37d729f17e991335b8d1bcd87afab12d0d59ae8` |
| 89 | `theorem` | [mapIsoToOrderIso_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mapisotoorderiso-symm-apply.md) | 656 | `result-track:afe40b2923d575e5d52362c839039eecda819b20d30e753b370da112e6793e65` |
| 90 | `def` | [mapPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/mappullbackadj.md) | 662 | `declaration-track:c2b347f59b7649859dcaf8c0000d012a2f09f4207674fd48ee2607451083e5d8` |
| 91 | `theorem` | [pullback_map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/pullback-map-self.md) | 666 | `result-track:47440868fdcdf953c3c6eabd1e044804ab44bfa04ddcb646578579cd51e0857a` |
| 92 | `theorem` | [map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/map-pullback.md) | 671 | `result-track:e884392cfb4dd4fb0b092cd633a55be141b53eef5b3deaa58e50c8550d1ea0d1` |
| 93 | `def` | [«exists»](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/exists.md) | 705 | `declaration-track:6ebdbd574ec8b2ef853c1debec42aac0352b9e6beef4e6ea8ee345b121de9f26` |
| 94 | `theorem` | [exists_iso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/exists-iso-map.md) | 710 | `result-track:570f9eccd6085654045da14fa42e68e9fde962bf0852381a5a55b881e69b732e` |
| 95 | `def` | [existsPullbackAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SubobjectBasicMkSurjective.lean/declarations/existspullbackadj.md) | 716 | `declaration-track:b6b5d2d37a8c049636b232e8a3679e116d1a2f334791efd393a1e4865c2cba90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e71c476370083864706ae3fb1b28f83b7502e70f64823d011a9c15fde5429cc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant32d9a9de4a889ff411bf6b13e486a5a95b23e61d3a48bc3bee41b6ebbcc60475.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
