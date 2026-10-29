# Verification target: Free

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29ad2b03899617812d30bfcbcc9f2eb83524d85c",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29ad2b03899617812d30bfcbcc9f2eb83524d85c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeAddMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddmagma.md) | 48 | `declaration-track:5c12601ac531048ee6a1606957eaea63af7fce014883df4606b924596843f94a` |
| 2 | `inductive` | [FreeMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma.md) | 72 | `declaration-track:d6c7894c735e57d0ea5858c28707a31b0b7800821ca3a459650ed4a34649c503` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-6.md) | 83 | `declaration-track:44feb5fa9247458ff5e589d57e9f151faf1128e1d72713b4427c34c7dfd4c1c4` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-12.md) | 86 | `declaration-track:d74e3892247eb7da0b5b048a27e40eb22eeb5cd3aece4e15816a7e1818aaff6d` |
| 5 | `theorem` | [mul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-eq.md) | 89 | `result-track:3518accad2d5e934c8565d0dfbd7c18953d8578b77fa44da37732b4421b6783c` |
| 6 | `def` | [recOnMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/reconmul-source-edition-2.md) | 94 | `declaration-track:46f97468bdc78460863677101367713b90c6835fe7e88ee8a032611d305c2f56` |
| 7 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/hom-ext.md) | 99 | `result-track:06e8d881e8134ce89e26c5ba14f0ea3b85e323a84c764e6ac513a4483cd3eb0a` |
| 8 | `def` | [FreeMagma.liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma-liftaux.md) | 105 | `declaration-track:dee4786f67936190dd5064e1a8e66e20b548421869e9fc29f7fac704df5c358d` |
| 9 | `def` | [FreeAddMagma.liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddmagma-liftaux.md) | 111 | `declaration-track:f7c10e8355f601336bda90f4fff16fd327b800a0f900886bd443a645074aa9eb` |
| 10 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-source-edition-3.md) | 126 | `declaration-track:f6287eda5df4993f1acd108b8bddcdd3ab47c9ea284286d9a33e17fb3e8d084b` |
| 11 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-of-source-edition-2.md) | 135 | `result-track:8b05fc1f0447a97aacc061416dbfb8fe70ae8078df1ddf7635a96b4b057f9206` |
| 12 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of-source-edition-4.md) | 138 | `result-track:692c57777d5bde2b68df7cdf736dba77500a256d08e84ad31f5d1d230976afb0` |
| 13 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of.md) | 141 | `result-track:018a2aa24ba6985746693130ccb5fadf84471b3d2c4650d5984ec58d74581ff4` |
| 14 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map.md) | 153 | `declaration-track:0b41bd74bd46d3b5b2df898ecba86caa843e475af147c2f857c831b0f91eb7c1` |
| 15 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-of-source-edition-3.md) | 156 | `result-track:eac9f6b61e6b2d040e6d814d06bfe8bc946480231a36fdd0fb7bf8318739f651` |
| 16 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-5.md) | 165 | `declaration-track:3ce8bfd71eec0fd1ae005bd57ce0c410305f4016317984cf0a61abe5c76a4ac5` |
| 17 | `def` | [recOnPure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/reconpure-source-edition-2.md) | 171 | `declaration-track:f084f4771cf4dd595d0cc4267b6450a1f14f5eff9ecb2227927cd69f039c38ab` |
| 18 | `theorem` | [map_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-pure-source-edition-2.md) | 176 | `result-track:5e389798bd93257246429f48d05476e8ba2a4842c6c2e538c5ebdba74f48267b` |
| 19 | `theorem` | [map_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-mul.md) | 179 | `result-track:2a7c141b2b80f42f0f5fa234d12cd2311738c52f8f81e1388c130d7cda7b2fd0` |
| 20 | `theorem` | [pure_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/pure-bind.md) | 182 | `result-track:c5a81cd7d8604c092590c64ed36f9f8543c7296ff7be0ef8734d917bdf274a97` |
| 21 | `theorem` | [mul_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-bind.md) | 185 | `result-track:28fedba215b1f0b416a5fda03a050cca1629638e0aa30a2fbaa12dbbd1f980f3` |
| 22 | `theorem` | [pure_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/pure-seq-source-edition-2.md) | 189 | `result-track:adde10033f35fd4a61bd7943b5e7cbd35a438ca2f69e83139bd625ac0b40a440` |
| 23 | `theorem` | [mul_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-seq-source-edition-2.md) | 192 | `result-track:c51001aeba5620d11415eec2b2f72463292b26cb7216eefaa8d4d188f4b83db3` |
| 24 | `instance` | [instLawfulMonad](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instlawfulmonad-source-edition-2.md) | 196 | `declaration-track:db241585a03c0c1921c205c6055b5f2190a5840a496ab693f9a0c91fbd82ea75` |
| 25 | `def` | [FreeMagma.traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma-traverse.md) | 208 | `declaration-track:2d7da31121fe60416c0de2c4f2181736b45590739a367317410423c741bcd143` |
| 26 | `def` | [FreeAddMagma.traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddmagma-traverse.md) | 214 | `declaration-track:2d8372ebbeeec9505da1634d0937e74ad2515f782caebb8800c5d227f83bae79` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-14.md) | 230 | `declaration-track:e26ba8fecc86773253ce970d241925f174a830ac4d8564f172743e89fee77613` |
| 28 | `theorem` | [traverse_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-pure.md) | 235 | `result-track:03e64cbd5ae82d679906c3fea3cd9d177dc847480ddce2c16b9977de2aec6abf` |
| 29 | `theorem` | [traverse_pure'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-pure-source-edition-2.md) | 238 | `result-track:25c0fb412073abb50e5a338962ced41ac6a037ff37619ed7810112f9e24220f8` |
| 30 | `theorem` | [traverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-mul-source-edition-4.md) | 241 | `result-track:e7d4ca4e4a5b087e957c4736f38a57ba741351c9f21566581014dfc90349c32a` |
| 31 | `theorem` | [traverse_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-mul-source-edition-3.md) | 245 | `result-track:c56c2cc028c13d61f3aef7a44fee4523a7e60af3f05d6ee1d667055fa65b4156` |
| 32 | `theorem` | [traverse_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-eq.md) | 250 | `result-track:1bb00ed99e05bdd152259024a86a01c377093e33fc93cf893c9dcab75294c15e` |
| 33 | `theorem` | [mul_map_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-map-seq.md) | 253 | `result-track:4d9afa9a6f96f0af64492a2bc56dcad364276cafca40be9ed65f1f1da0bf9d52` |
| 34 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-10.md) | 257 | `declaration-track:ae6b3a0e05514aaaffee689b898dbaa34f68f5c58c81436420df11a7a3026b27` |
| 35 | `def` | [FreeMagma.repr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma-repr.md) | 282 | `declaration-track:f6f7bebfe60f675d7d9e1117aafe1dae0cbd5ae16dc4533064edeef577a47ae9` |
| 36 | `def` | [FreeAddMagma.repr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddmagma-repr.md) | 287 | `declaration-track:d114b3d113ae5e0a5e15b75c557fbebde1af03386e3778ec6ee7b4ef9f1e6a54` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance.md) | 294 | `declaration-track:112cb6cd690aaf0c2d2bcc2d2ec22ba90c71a0ca97a318277f5683d1ff4cd538` |
| 38 | `def` | [FreeMagma.length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma-length.md) | 297 | `declaration-track:4b90a60e1d3376449f73e273827652b34af1b831d85e33b6bee945d427b65cd4` |
| 39 | `def` | [FreeAddMagma.length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddmagma-length.md) | 302 | `declaration-track:2f12dcbe86fb67913caddca0475843908824860a91865fc01b531981c79812c3` |
| 40 | `lemma` | [FreeMagma.length_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagma-length-pos.md) | 310 | `result-track:73acb7620a26fbbb45625fbc231cee1037a0e99ec0623830e94eac4ea83a15ff` |
| 41 | `inductive` | [AddMagma.AssocRel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/addmagma-assocrel.md) | 316 | `declaration-track:15d3fafb5c12f0498edac184b576222079fd365c77a6ef4e783c713a0bc3b6db` |
| 42 | `inductive` | [Magma.AssocRel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/magma-assocrel.md) | 322 | `declaration-track:96b1bbd070c27f1dbb63c5fd93b85236d5381dba05af135ff7a47141dadd43da` |
| 43 | `def` | [AssocQuotient](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/assocquotient.md) | 330 | `declaration-track:395e5303ef0c1706693e8eea700dfd6b7baaf501af01b3b92cad1f2abbc859e1` |
| 44 | `theorem` | [quot_mk_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/quot-mk-assoc.md) | 338 | `result-track:fdee52db4632bfdebfec3f6a011aa56e93675ee0a8d77ee35a55f8a8eac7f94c` |
| 45 | `theorem` | [quot_mk_assoc_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/quot-mk-assoc-left.md) | 342 | `result-track:cb88055883457ec683b9e4c0bc23bfc19c7d96da56a91d90a9309dc772759747` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-11.md) | 347 | `declaration-track:ba31e0888abafd8b9f6ee5da32cc0fb78f5d5904b9ad41d304bb6aba3bf88298` |
| 47 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/of.md) | 362 | `declaration-track:177dab12371e86b3a7cf3bce34d6ca223dbb9c7271f3c4aafb5664ade017c7a7` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-8.md) | 365 | `declaration-track:6cdcf3a7f2b38bfdd4661cb7763c385af0d637fc91249167d575410606d49b85` |
| 49 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/induction-on.md) | 368 | `result-track:d8224fc0513dbb5084e834e9e65347764dd474d1854d81338c4b15a63bca5688` |
| 50 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/hom-ext-source-edition-2.md) | 376 | `result-track:532f928c8f2a15f57e6e4f870e02fa1de71b7e662b5713fe31852fa29a364f8a` |
| 51 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-source-edition-2.md) | 383 | `declaration-track:bf322a1acf06865f29e604cb79e22e4e1f3ec925516f94f9ce94a4e9ff8c898a` |
| 52 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-of.md) | 393 | `result-track:3936104ca358441298c7518ae489e64dc03638136e16f8e79c06c5ca32b934f5` |
| 53 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of-source-edition-5.md) | 396 | `result-track:c7279f46d052a51643e00577eeeef0c1d99b851e0ecf487c7c3ac30ad8281f52` |
| 54 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of-source-edition-2.md) | 399 | `result-track:3f0c3e0ee22acc8f79dbd9060018488361f5353914e9d47379a586f63a4a2632` |
| 55 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-source-edition-3.md) | 409 | `declaration-track:780fbf5e48a0b26d86b4c615175d16b521d986846e1afb5355e8861c555c9449` |
| 56 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-of.md) | 412 | `result-track:1caaf60c0f4726a6881ce30f82fa296245218141510704e6324ca13a15c7f177` |
| 57 | `structure` | [FreeAddSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freeaddsemigroup.md) | 435 | `declaration-track:345a49d62aa2241d0561a9d7955cd1715ef0f55c35fc871bde7c07b91d1b5de4` |
| 58 | `structure` | [FreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freesemigroup.md) | 459 | `declaration-track:7cac20c61cb36487086860a1c033da2cd4821d1a66dd74a968da842aa1c69897` |
| 59 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-13.md) | 471 | `declaration-track:e154d9873f7fd084950adc5b0e62332c5b207b9e876defb00367fbc2712dc1f7` |
| 60 | `theorem` | [head_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/head-mul.md) | 476 | `result-track:59a70659e7d95b442afe985a3b7689f161cc86dd13be0ff384adb4c203b4d499` |
| 61 | `theorem` | [tail_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tail-mul.md) | 479 | `result-track:bfbb7f6563e70cadc5c159b34d6f68d0850dffe15a9117bbb8c14753ebd6fa9c` |
| 62 | `theorem` | [mk_mul_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mk-mul-mk.md) | 482 | `result-track:04f440852098b2fae893618c174e353344bddab0df616ea497ec61ef1f9b32fd` |
| 63 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/of-source-edition-2.md) | 486 | `declaration-track:e445bb410f95c73956b1a6ebc2a2b3c6fcce55ccab145dffb6bb75004508b4c4` |
| 64 | `def` | [length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/length.md) | 490 | `declaration-track:afe03358019aee84820932d7c8ea80f3c97cb90cf3014dabb4051bdac766dcb4` |
| 65 | `theorem` | [length_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/length-mul.md) | 493 | `result-track:289111db77f8d8279d387383d523a42171bc04b4aeff11536c40471732cc42f6` |
| 66 | `theorem` | [length_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/length-of.md) | 497 | `result-track:de3cc8e18cb2dcab4722deb856181754ec75f17b6fed2b3517a4d9f4e79d4a78` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-7.md) | 500 | `declaration-track:527d2307225ea23096877b2bcdb4a2a3cc7b12773a377ee47e79821f5f73969a` |
| 68 | `def` | [recOnMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/reconmul.md) | 505 | `declaration-track:30ef08d6b36efa275b76ba3804462a582794f75f589673170509ec5eb358041c` |
| 69 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/hom-ext-source-edition-3.md) | 511 | `result-track:55630a80a4aa3250763ba8ff41af3f0ec2e81270c71b2e60174ba5f394895a19` |
| 70 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift.md) | 523 | `declaration-track:946fa6bf26f85b489b060dcc03293d149f54fe58325a6ce141327cbd70b1e948` |
| 71 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-of-source-edition-3.md) | 534 | `result-track:a8be317b0f15a229ea009e396ae90ceacd8f60e4153a1f22c2ad404bc5e813d3` |
| 72 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of-source-edition-6.md) | 537 | `result-track:f28dfc5975954d5ca6b670b4a24c88d5bc84f778bc108d8605cedb417443a964` |
| 73 | `theorem` | [lift_comp_of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-comp-of-source-edition-3.md) | 540 | `result-track:59eb8074eaa985bbc6e5e527d1c1f170b4761a6be8717800d56b996c8f81246f` |
| 74 | `theorem` | [lift_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/lift-of-mul.md) | 543 | `result-track:55f621081c914c1d3d224306193c9e4d021e9cd768b990eb7f936d61a6df501d` |
| 75 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-source-edition-2.md) | 553 | `declaration-track:698e00f2cc2e0c7431b46d95a71de57b0dbc7d9ff71f094b927dd29194b3508f` |
| 76 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-of-source-edition-2.md) | 557 | `result-track:59faa165d991f66a0f23da39fc6e720071ccb58d9f7ca191264e25f4dcef57f3` |
| 77 | `theorem` | [length_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/length-map.md) | 560 | `result-track:9a84d1f5df160d14bc32d6a4fb8a7e63a1f608dd7059ff397f1448e10bee620a` |
| 78 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-2.md) | 570 | `declaration-track:1315c8fbba4102f3922e01b7f98db89fefff7ed84b4c949772ecea2e67d8dfdd` |
| 79 | `def` | [recOnPure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/reconpure.md) | 576 | `declaration-track:29b0d72541dce7877f11976a8234b6cb49a94592349f93218073aa8cdb0206fa` |
| 80 | `theorem` | [map_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-pure.md) | 581 | `result-track:5c58dbeba3687178b303fa1a1bac9480371eb59851af6cc9081467898cf15ebf` |
| 81 | `theorem` | [map_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/map-mul-source-edition-2.md) | 584 | `result-track:317ee634cc5ae51d4b6b5763bd3a9d65b4d18f50cd9eb38d77c7233bad97d964` |
| 82 | `theorem` | [pure_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/pure-bind-source-edition-2.md) | 588 | `result-track:c74376327fc78c995b1e771651f5f9ec6ec8f69e592570edfbd965294e4440d2` |
| 83 | `theorem` | [mul_bind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-bind-source-edition-2.md) | 591 | `result-track:5610563e3ec73df7e06a879ceb3aa72b7429c1c002340e712f333a2736230379` |
| 84 | `theorem` | [pure_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/pure-seq.md) | 595 | `result-track:1cd8df92b883e3476013d8c763dee54e19e790cbcb19eb89c7737d554107ea5b` |
| 85 | `theorem` | [mul_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-seq.md) | 598 | `result-track:777cc23d638f14439bdb1ea13661777ef8adc9f74fac79ccc3c24bec672bd365` |
| 86 | `instance` | [instLawfulMonad](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instlawfulmonad.md) | 602 | `declaration-track:a0db94382d6f2669a56d5050b3bbb41f8464f992e9478a7c5cfbdc08ee43ab4f` |
| 87 | `def` | [traverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse.md) | 610 | `declaration-track:2425421723403efca28523be9579cd3ae017069457e39f1dcb529df653469dcc` |
| 88 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-9.md) | 615 | `declaration-track:873ca205c7d3f39b64a481c6c096d4eb6ee70ef474545658ba4517b1976de819` |
| 89 | `theorem` | [traverse_pure](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-pure-source-edition-3.md) | 620 | `result-track:a89b1ba18a55fa9bb83a3404a716872dcce301b212393e73cc3a1dd916d6a6bb` |
| 90 | `theorem` | [traverse_pure'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-pure-source-edition-4.md) | 623 | `result-track:bf5fd43b8875a0488788330fe89414526519d2f34ddb9fa26604ed72732b5769` |
| 91 | `theorem` | [traverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-mul.md) | 630 | `result-track:7b4811d69f90d5a07035be9e32f52b55c6bb15a3f538bfe1cfbbfb27b30bd74d` |
| 92 | `theorem` | [traverse_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-mul-source-edition-2.md) | 642 | `result-track:aa15c09327ca8a5f277f024def7cc9bc5d30f627f67f13e1ed832cbd9bf1546b` |
| 93 | `theorem` | [traverse_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/traverse-eq-source-edition-2.md) | 650 | `result-track:926887c8f7af1708e08ad8235fada9aa1d254df836ed9056a048325cfe640b46` |
| 94 | `theorem` | [mul_map_seq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/mul-map-seq-source-edition-2.md) | 653 | `result-track:6ee90ffac8ee67a75e6109209f1bbb5f110d336e0b1d0c066c4c83f217614cff` |
| 95 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-4.md) | 657 | `declaration-track:27989c293e537710a0bff8541c05865322294498ae434e2f7109610f03f8d68f` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/instance-source-edition-3.md) | 677 | `declaration-track:1e1388d87192b821df8f5ba64832b267eb03d9bf9d9459590d4984dc67b5caf4` |
| 97 | `def` | [toFreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tofreesemigroup.md) | 688 | `declaration-track:b36cf5e11c21c223753224ae57bbc58beccf46a10206c828a5a46e25c9ae744f` |
| 98 | `theorem` | [toFreeSemigroup_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tofreesemigroup-of.md) | 691 | `result-track:d0af9d8f857b6b9dd436685c7f12eb6e0187fe2fb39460ad18b4f89b0b80d4b6` |
| 99 | `theorem` | [toFreeSemigroup_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tofreesemigroup-comp-of.md) | 694 | `result-track:c198f989fa55aa7a5a865e871431ef4b88a864915fffb8d77e8c2fc434c7aa4b` |
| 100 | `theorem` | [toFreeSemigroup_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tofreesemigroup-comp-map.md) | 697 | `result-track:6e101f970bd8bf225c9063e51a9a90fd083bae472dde7b63e4094a37f76c0a1f` |
| 101 | `theorem` | [toFreeSemigroup_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/tofreesemigroup-map.md) | 701 | `result-track:1cfd907afeb52e56a6411a90977a42365adaae0f636dabb1fb6c8114f7b099ad` |
| 102 | `theorem` | [length_toFreeSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/length-tofreesemigroup.md) | 706 | `result-track:d7847da4d186aa760df72de9e5c6b925cd2d19bf1d3f003c96f211261b9e5e6f` |
| 103 | `def` | [FreeMagmaAssocQuotientEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Free.lean/declarations/freemagmaassocquotientequiv.md) | 715 | `declaration-track:ebab1c384a5ab653e148917ea9c3d4942221958705de192b9b8536da83beeae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80eb2c31200a82d7e7b66d3e36e559c5c3f494a76596a55900ee4926c0a07c06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
