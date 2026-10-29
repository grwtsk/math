# Verification target: Order Locally Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae1a8ffefd868ee71f35fb7c8bf904344e32aecc",
  "lexical_observation_count": 165,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae1a8ffefd868ee71f35fb7c8bf904344e32aecc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.UnorderedInterval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Image` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder-source-edition-2.md) | 117 | `declaration-track:c9803e94c34d709a08c0e2989ed1d683d4c8cc54e7f209446e947e5196fab1c4` |
| 2 | `class` | [LocallyFiniteOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteordertop-source-edition-2.md) | 138 | `declaration-track:a0b87f93f71b3274253501f93ded98df0eb195a56d6312c5d75b93d6f4327986` |
| 3 | `class` | [LocallyFiniteOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorderbot.md) | 151 | `declaration-track:550ac86ad9fe253a2f06d10ad27e59aae9516e56d8fa9c5b9d24f58aabccd94f` |
| 4 | `def` | [LocallyFiniteOrder.ofIcc'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder-oficc.md) | 165 | `declaration-track:4496dfb157cdda066d57c3b23b1ef94459dc07096aaa8076e8b6a0ba9da15232` |
| 5 | `def` | [LocallyFiniteOrder.ofIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder-oficc-source-edition-2.md) | 183 | `declaration-track:8a09cbb99151271928aa57af52f965a0cdc37a11e67934ed80581aac4c390898` |
| 6 | `def` | [LocallyFiniteOrderTop.ofIci'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteordertop-ofici.md) | 201 | `declaration-track:4916f5af4f8dda061040675ba3a4eba45850239488688271741f92052d049af1` |
| 7 | `def` | [LocallyFiniteOrderTop.ofIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteordertop-ofici-source-edition-2.md) | 213 | `declaration-track:85fd2c0c90672052ed89fde96d6ca0b6e77d92f8e0920e8f1c82c747927d2559` |
| 8 | `def` | [LocallyFiniteOrderBot.ofIic'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorderbot-ofiic.md) | 225 | `declaration-track:03958ca972aff801984178b19ed35d12a35c6ce9a5af4ce8195d6799ece59912` |
| 9 | `def` | [LocallyFiniteOrderTop.ofIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteordertop-ofiic.md) | 237 | `declaration-track:0a43497211a0ac126ed4702b9d43722be3ef95004dba702cfca6dd35da228f8b` |
| 10 | `def` | [IsEmpty.toLocallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/isempty-tolocallyfiniteorder.md) | 253 | `declaration-track:0c34656e249ac0ac546b708736ef46ecddbfff38b926f618f68169fb986ac7e5` |
| 11 | `def` | [IsEmpty.toLocallyFiniteOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/isempty-tolocallyfiniteordertop.md) | 269 | `declaration-track:5e21c58ab7f879dfce3ff870089662f3a69147fc103123d05ee988df41bafb73` |
| 12 | `def` | [IsEmpty.toLocallyFiniteOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/isempty-tolocallyfiniteorderbot.md) | 282 | `declaration-track:96da8f25485a66b4c1647f1532c18df21986800934e62eb01a91af17e21bbaf3` |
| 13 | `def` | [Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc.md) | 305 | `declaration-track:52faef938a52be2c44ea61d4888db3aaec189c81ed1766e8a308ca3420166c50` |
| 14 | `def` | [Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-source-edition-2.md) | 311 | `declaration-track:7c5980b6e61bc85bfc81ca58dd873af91fb2904630db8ad348b1fa14751ef077` |
| 15 | `def` | [Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc.md) | 317 | `declaration-track:cee1a3d16807fac0e23de30ffd70842795bde3a38c13d0af3b92248b85705391` |
| 16 | `def` | [Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo.md) | 323 | `declaration-track:08ea4a020b22204347ffdd87f6f2e50e851dfb702608ef884924116c15ad7401` |
| 17 | `theorem` | [mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-icc.md) | 328 | `result-track:a4249f4158df70e9d7061321724eb0304606049b032044f6e236fe044d4c73f0` |
| 18 | `theorem` | [mem_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ico.md) | 333 | `result-track:ba18308f5c03700bfef47be4b58a92541543606586dbc22628e2681aa6b6305d` |
| 19 | `theorem` | [mem_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioc.md) | 338 | `result-track:879f07d0002ee41e8a5879b0bb2736aee343fd5b1a0339d1e55e4fbedbcebd52` |
| 20 | `theorem` | [mem_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioo.md) | 343 | `result-track:08794f6f61307f66fdc7e1553f2e5f6cce1c587f03aa090ed28c8a927363c921` |
| 21 | `theorem` | [coe_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-icc.md) | 348 | `result-track:eadf093390e49097d05441580b54e8301b6ede7c24d3e257425e1e1aaa44e73a` |
| 22 | `theorem` | [coe_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-ico.md) | 353 | `result-track:f64b7825ce4f74f7d23d96822232dd49144fca8a855823453aa8e32890a137e9` |
| 23 | `theorem` | [coe_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-ioc.md) | 358 | `result-track:190ffc2c2ae1ad8bc53af98aa35f4869d19261fcf3b92da665a2a978866fe1cf` |
| 24 | `theorem` | [coe_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-ioo.md) | 363 | `result-track:f9385005c234405802ac72407c7b3687d2cd8a71a0fa0b9d31129e1f64764acf` |
| 25 | `def` | [Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ici-source-edition-2.md) | 374 | `declaration-track:c84ce41e8fc8213cfe6fcfd23be8c9e2b2a9281521f9d44c9589a4fcbd336fd4` |
| 26 | `def` | [Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioi-source-edition-2.md) | 379 | `declaration-track:34fa890784af811d16a83457e3d399f901f712dbcd6613c47e546162ce37b11c` |
| 27 | `theorem` | [mem_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ici.md) | 384 | `result-track:7d770c8545ec65d6d21576fcb2636035e536c1ad6534e18733f833e7c5fe9d15` |
| 28 | `theorem` | [mem_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioi.md) | 389 | `result-track:014a4737dbf56abb24f2d0190acdecfa5a04df388cc9b1d05b5cdeb549134d22` |
| 29 | `theorem` | [coe_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-ici.md) | 394 | `result-track:abe0e802bf60a62921047f2f1f499a06c39ad6536152feaad3eca085053fee47` |
| 30 | `theorem` | [coe_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-ioi.md) | 399 | `result-track:5d606ab28721b5484e214b8e6d0de1d2e771765f0d170b9ce63d67c3f569f594` |
| 31 | `def` | [Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iic-source-edition-2.md) | 410 | `declaration-track:e981efca940b93474cd677d652c51dfc2c69ae57a2f6aeb90f253901feee1828` |
| 32 | `def` | [Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iio-source-edition-2.md) | 415 | `declaration-track:202ea37891f80132cee1b466eb320435cf7ead79e500eca2e7b94ab85241f135` |
| 33 | `theorem` | [mem_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-iic.md) | 420 | `result-track:9b2e0be0d4fdf602fa72575bb1e1af8f344a9e03727dfde83785e6ccb728c4a3` |
| 34 | `theorem` | [mem_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-iio.md) | 425 | `result-track:a186707e60b70ba3820e454f3cdceb15c0dfd3f0b481959e3a3dbfd1a415b5ce` |
| 35 | `theorem` | [coe_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-iic.md) | 430 | `result-track:0262081a1c4433f9dc6dd8bc673e46ad7b4db6844787c3dac923b211890056a4` |
| 36 | `theorem` | [coe_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-iio.md) | 435 | `result-track:051c214e9275d4cc34ec526a48f236d23000c9169353e4fc28214b6d7d45da68` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-17.md) | 446 | `declaration-track:b73418d0fbe6bcb964b3ca0d54e04fdb598db6877716872072937c3614b7d706` |
| 38 | `theorem` | [Ici_eq_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ici-eq-icc.md) | 454 | `result-track:d84ff61302ca8b9bdc946c5d72d2293cb4ddeb79d894771dca5f68f832ac66cd` |
| 39 | `theorem` | [Ioi_eq_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioi-eq-ioc.md) | 458 | `result-track:b77589e766e8af33b71bbfdbbd51e8d3a08db526deb8cc26c0a2c9fc6fafeb9b` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-3.md) | 469 | `declaration-track:0b87c3415112ef53f8b56e254adc48aa3c4c7315ffa810bec323390195bedb81` |
| 41 | `theorem` | [Iic_eq_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iic-eq-icc.md) | 477 | `result-track:8a16350f48cca479a20d300708889cc2aca522fe11a37e53a44585c2acfede07` |
| 42 | `theorem` | [Iio_eq_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iio-eq-ico.md) | 481 | `result-track:26af58ced4c9447a01676d3291e421b5b3aee4ca9a7c2341eb810e91461865f1` |
| 43 | `def` | [uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/uicc.md) | 496 | `declaration-track:927199d0bc0dca533a58f6dfa1a7e7e131d03f9d266e6bb652fc8871f8e6939c` |
| 44 | `theorem` | [mem_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-uicc.md) | 504 | `result-track:bfaff4fdc189de77042930b46a69931ffd58f7a964b5fb77e93c3fedf6f67480` |
| 45 | `theorem` | [coe_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/coe-uicc.md) | 509 | `result-track:04ef3f895b25cad1fa2da65620374707aa1c62a52b899b19760192a52b5b7b97` |
| 46 | `def` | [Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-source-edition-2.md) | 530 | `declaration-track:8bce2efa0d9bf2308111c7700cd5a1185e9a02f75580f3d6106cfc71547c0744` |
| 47 | `def` | [Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico.md) | 536 | `declaration-track:240aa338a8470d612423e313d3a0aa9afa752e7e9216cbebe42c5c48359cb1a7` |
| 48 | `def` | [Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-source-edition-2.md) | 542 | `declaration-track:ed9ce2b14d37fd4088cda35fd2acf04a7ac45852afd05d9fde296faf911fafd5` |
| 49 | `def` | [Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-source-edition-2.md) | 548 | `declaration-track:d13c84c31c131ec55fc658a5739ae03251c3e7763081a75f1d5e773ddb658cb1` |
| 50 | `theorem` | [mem_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-icc-source-edition-2.md) | 553 | `result-track:d85bcb15d2bb0dc4b63fdf33f466efa5bea80c8652c3e5a7df53637c67cce5fd` |
| 51 | `theorem` | [mem_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ico-source-edition-2.md) | 558 | `result-track:ecd95a181b643aac4cb0e0d47c06c6d76ea4a20efdb1d4926661cce919aed778` |
| 52 | `theorem` | [mem_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioc-source-edition-2.md) | 563 | `result-track:c0774d4c04c21c6ce1be65c70e5e12a90b74171134052fc40bf8cfcc634b1e44` |
| 53 | `theorem` | [mem_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioo-source-edition-2.md) | 568 | `result-track:2e5b29a80838c0cc451e7eaf7afcaa011c0306c81ec87993ea64045e8abbf808` |
| 54 | `def` | [Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ici.md) | 579 | `declaration-track:02f5052ca86fde3472fdbe6be644f7e040109e67b39453868f1fbe19fdd35566` |
| 55 | `def` | [Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioi.md) | 584 | `declaration-track:09f25bdf1dedb103fb479267743f4aa48161547bab528f353763ef8d997b9c3d` |
| 56 | `theorem` | [mem_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ici-source-edition-2.md) | 589 | `result-track:97ea8fa433f3e20876e0ade60cb96c9a121279854cf7260feecdaf2f2ce9d2a4` |
| 57 | `theorem` | [mem_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-ioi-source-edition-2.md) | 593 | `result-track:d54d0a92937b13ecd94f0f28bc4f2ad8970b48456a1f6b3b8de63bf398bb1caf` |
| 58 | `def` | [Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iic.md) | 603 | `declaration-track:795689448c248b2cedb270e2bea07ed373295c93586eb9e3602ae8ac74b4bf00` |
| 59 | `def` | [Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iio.md) | 608 | `declaration-track:1a0fbfe7a8a0b234805acd7c954b74c4360f347a726f88606a8afd882d88f492` |
| 60 | `theorem` | [mem_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-iic-source-edition-2.md) | 613 | `result-track:cecd1ed80d074bbfe700f63f92e0cb529b6e84e2cff8242d48c338e21d2b1696` |
| 61 | `theorem` | [mem_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/mem-iio-source-edition-2.md) | 617 | `result-track:a96be7d745d88cd64766ff67bfda7f899bb57701c9c4dd292824a68dd601bc37` |
| 62 | `instance` | [fintypeIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeicc.md) | 633 | `declaration-track:949eaa2c95b5a3c928c274f2a2d4f4686e90c73bbf07ab11c82df8a00f93995c` |
| 63 | `instance` | [fintypeIco](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeico.md) | 636 | `declaration-track:90cf8ebcd3fc6f53f00c73c6b786976c4d15055688cd8a08f8e27b617fb306c3` |
| 64 | `instance` | [fintypeIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeioc.md) | 639 | `declaration-track:8932937f5be2e057ea150a46f34cfdccf29c44155287444ceec361654b94ff0b` |
| 65 | `instance` | [fintypeIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeioo.md) | 642 | `declaration-track:315e49363feb7daec258a169dec3ca3d7b36c4f3baba65b353f212461e150c7f` |
| 66 | `theorem` | [finite_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-icc.md) | 645 | `result-track:49a8f9ef4defa148658ad8d06fa826d43f7ca5b277e946ec8bfab17a30036abf` |
| 67 | `theorem` | [finite_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-ico.md) | 649 | `result-track:1fe3f6b8d9b65fc02ac6c20de4b90dd983a46e5dd186a80d0d722184916e1dd7` |
| 68 | `theorem` | [finite_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-ioc.md) | 653 | `result-track:69f8d52e2ebba0fe38fa59d5907712b5d0586834179276acf0d253c3da602068` |
| 69 | `theorem` | [finite_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-ioo.md) | 657 | `result-track:cb5de823b83843e51876f75ba2070437642fe231774ed434bec0bceea474cc0f` |
| 70 | `instance` | [fintypeIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeici.md) | 667 | `declaration-track:91888b8d09ef3cbce4bfa560341b80da6138a336eff21b80424e2fbc7c3462ab` |
| 71 | `instance` | [fintypeIoi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeioi.md) | 670 | `declaration-track:b0ddc50d66b307ee217a1ad07da6f7a29bf70c85e9ba0edfcea3a005a6f54faa` |
| 72 | `theorem` | [finite_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-ici.md) | 673 | `result-track:83d136d8dab2074fa4772cdac3f55b3597bb9baa935f737b4b2dd643e4568e82` |
| 73 | `theorem` | [finite_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-ioi.md) | 677 | `result-track:21e350b212404c7b13d3b006a3687e587a1fcbfa957acaa25dd193aca6b7ad8d` |
| 74 | `instance` | [fintypeIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeiic.md) | 687 | `declaration-track:92982663754e13fab939c0c475dcece558ef05dad6600956e79de1fe2c78709b` |
| 75 | `instance` | [fintypeIio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeiio.md) | 690 | `declaration-track:33136b741b0fffba12471db93fd6c2910185b4fcabd2ce1bcbb7542d7da2fd26` |
| 76 | `theorem` | [finite_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-iic.md) | 693 | `result-track:d1b41b167cdf762b4930433e591d6b5070b88cad85f4dcd1f5048dbceffd6a39` |
| 77 | `theorem` | [finite_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-iio.md) | 697 | `result-track:96a39d755d7e770d4f743a6bfb4f6affa7a74a74209519274f5958fe9678b243` |
| 78 | `instance` | [fintypeUIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintypeuicc.md) | 706 | `declaration-track:f3515afb9448b570cd447466ba22ce057d92e067777a98764aa7a4ad97def68f` |
| 79 | `theorem` | [finite_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/finite-interval.md) | 711 | `result-track:f61eb4dd8eb4e739b92836fe205db72c1f49803bae09ce58233a0916676f6530` |
| 80 | `def` | [LocallyFiniteOrder.ofFiniteIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder-offiniteicc.md) | 728 | `declaration-track:162bb1d6f62022acfb2000d26abc6695ba0635981e5f61018add596ce9d9cc6b` |
| 81 | `def` | [Fintype.toLocallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/fintype-tolocallyfiniteorder.md) | 740 | `declaration-track:bd91cbe12e06a6d65b5a8f835a2dc728d8c7957da566fda59060eb5615681849` |
| 82 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-8.md) | 752 | `declaration-track:32077f50ba693e2e20fba60e41e486c19edcf13660614412f183809e4c53567a` |
| 83 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-2.md) | 772 | `declaration-track:0ae43101bba43c54c41538b353fc09145da07b319a04fe1dababefed6fe35e8f` |
| 84 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-15.md) | 784 | `declaration-track:9acf7fdf3eaa6dace8ed7f2cd5319428aacb10163bc8a02665416a0a8afabdd9` |
| 85 | `def` | [OrderEmbedding.locallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/orderembedding-locallyfiniteorder.md) | 798 | `declaration-track:2affb779236d4f60056cfd2b9c82a823daa154d6fb469052e86e8fdeda2ee7fd` |
| 86 | `instance` | [OrderDual.locallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/orderdual-locallyfiniteorder.md) | 823 | `declaration-track:d67b43485af71fe46a5c5a5b8224db70328cbd3c686065fdd9c91f28dab8d1da` |
| 87 | `theorem` | [Icc_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-todual.md) | 833 | `result-track:dcfca196e47e5d7b4fe6bec2b62c7b708fd6c90805c1b7e0862fc3994191b446` |
| 88 | `theorem` | [Ico_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-todual.md) | 840 | `result-track:0dee5f99a8202251ae0aca8b4499e316380c3f6b69c43f313b3068de1b42d733` |
| 89 | `theorem` | [Ioc_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-todual.md) | 847 | `result-track:e81445715a5b50fb2fda0a88191ae07b16b1275b5a86507ed66a1813a8f6e915` |
| 90 | `theorem` | [Ioo_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-todual.md) | 854 | `result-track:ad6a3cec1b06cac2660415de92b7795884ffa04393d8a8ebbf58db8d8e6405da` |
| 91 | `theorem` | [Icc_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-ofdual.md) | 861 | `result-track:3f165d5df03967d34e7630d08a47d1ac01ca95fb2af86899e1c255b5d0e4dfeb` |
| 92 | `theorem` | [Ico_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-ofdual.md) | 868 | `result-track:0bf92de1901224cbe4e33581edfd6a96e9a7a3c4ed5d476baabd12cb40d5264c` |
| 93 | `theorem` | [Ioc_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-ofdual.md) | 875 | `result-track:f38e392ae51ae89d7f6d8f884b97a4af6ac01277cea054410e8f75c3a397b997` |
| 94 | `theorem` | [Ioo_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-ofdual.md) | 882 | `result-track:4802ed5859ae9a65331df4a4e3d307a720dd7ff771dcfa62e800ad7e6f143bb9` |
| 95 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-19.md) | 901 | `declaration-track:c5b2ee470ce779f95a0c84db0191a7efdd3aee412d2c357c1bd542014954af8a` |
| 96 | `theorem` | [Iic_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iic-todual.md) | 907 | `result-track:f94cdcfc47b5b1fd26742765f4154be07bb92f8dcbba7ebe6da9ebb523fa0c92` |
| 97 | `theorem` | [Iio_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iio-todual.md) | 911 | `result-track:35ec1067b97eb79ddb695b28cdfe4167f95634a5ccabde734d3fabc81c33c578` |
| 98 | `theorem` | [Ici_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ici-ofdual.md) | 915 | `result-track:b56dd83ff50a74f3ef435fa8b1276e5159de673022d902160873bef63ecf45e2` |
| 99 | `theorem` | [Ioi_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioi-ofdual.md) | 919 | `result-track:def681b61fecf79eb969439c5011ffc19fbd102e64f40f71177f5bb847d47195` |
| 100 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-10.md) | 935 | `declaration-track:5f883dfc801d90d0b682073671ae5695e8f5d78bd0998975dc5ce659e6104374` |
| 101 | `theorem` | [Ici_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ici-todual.md) | 941 | `result-track:007575c4ed17518caa7d4b13c05590275b03a6e501c7255358ef869c624b8541` |
| 102 | `theorem` | [Ioi_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioi-todual.md) | 945 | `result-track:b745fd7010f62958e7e16d4840043ba2585bd9373865764f9a5c0b6e23ffdc64` |
| 103 | `theorem` | [Iic_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iic-ofdual.md) | 949 | `result-track:779964f95bb92f048a1391282f79900450539ae01fa57625fe655eef6168990e` |
| 104 | `theorem` | [Iio_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/iio-ofdual.md) | 953 | `result-track:0dc36b89d6fdfc0be5561cf26545d50452314c4edf050a1b4440298561c34f8f` |
| 105 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance.md) | 961 | `declaration-track:07301feb5145766433fd6764cd9e78aa6ad1051222e94b1c6ef5eb18fabc2d42` |
| 106 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-9.md) | 967 | `declaration-track:3df1f7c2de64b71a384c7e310908897e76a8e353124cd6b14d024fe2c078561a` |
| 107 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-4.md) | 973 | `declaration-track:12c5c86d8e95f4a8c057ec2f3d5b57a456a55e356a8afef9c0628d14d3170eb9` |
| 108 | `theorem` | [Icc_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-eq.md) | 979 | `result-track:81a8dafbc2cb944a82a543a9ffb3fb111c7d448e8b52f97ed944b1714471da17` |
| 109 | `theorem` | [Icc_mk_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-mk-mk.md) | 986 | `result-track:c2066f292177e01797ab403687061fe427f5549635244b0fe0d7cec79c9eba67` |
| 110 | `theorem` | [card_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/card-icc.md) | 992 | `result-track:4fd35698e0ba7ebd22890ab8497ea7de48989ffcd7934b0b3f81bb4ce0919148` |
| 111 | `theorem` | [uIcc_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/uicc-eq.md) | 1006 | `result-track:b1f54e3238cff291855433b26641341b967211aad016df13a2f1e65f17efb3b9` |
| 112 | `theorem` | [uIcc_mk_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/uicc-mk-mk.md) | 1013 | `result-track:8d7ec66aa2be55871834e05b4b04cde26d8712c82c7e039634bd573b6dadd77c` |
| 113 | `theorem` | [card_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/card-uicc.md) | 1019 | `result-track:cf40032607bad1a0041065c4ccc17ada373736f87f682bc67ffcc0f0f9885299` |
| 114 | `lemma` | [aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/aux.md) | 1043 | `result-track:e1c4bf5cd3d595052f6998f1508521d35dbbd2430750f83a8b38d18110f0cb07` |
| 115 | `instance` | [locallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder.md) | 1052 | `declaration-track:3a9cc091243f025c94ebbc85aaab314c171d008d74dfff4b4246eadcd71e73f1` |
| 116 | `theorem` | [Icc_coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-coe-top.md) | 1118 | `result-track:1aff6e17862f1c97c8c4ecc12c019125510b89c99eb3fc9faebc272b0f3f7c5c` |
| 117 | `theorem` | [Icc_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-coe-coe.md) | 1122 | `result-track:420668c07c63232fdb5c5b8ccb45cd5bd46b95a14aaa4cae3d837978dbc2ef02` |
| 118 | `theorem` | [Ico_coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-coe-top.md) | 1126 | `result-track:64326e2e7f6e47430dc12bd821a1ec479c2ae8f70dd5809223b2262ec4482886` |
| 119 | `theorem` | [Ico_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-coe-coe.md) | 1130 | `result-track:6d80178b92197bae5966f12f49d045b1fbb14b90f962fb8e070ea6382f34b89b` |
| 120 | `theorem` | [Ioc_coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-coe-top.md) | 1134 | `result-track:a13ba76c47afe5af39b19329c43c0b54da3ef6306949ae084da08eb1d6ac345b` |
| 121 | `theorem` | [Ioc_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-coe-coe-source-edition-2.md) | 1138 | `result-track:aa11a0c52fe6a2f11bb56119e786c04586dbf9e32b20a133a78319c9263b8a93` |
| 122 | `theorem` | [Ioo_coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-coe-top.md) | 1142 | `result-track:07bfb9947f569c1c28d7ec9f363524f47a88e3017eb467ccca250a1daf7a88ff` |
| 123 | `theorem` | [Ioo_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-coe-coe-source-edition-2.md) | 1146 | `result-track:7d3b4e22ad13a5e807bed02e462faba2006c29fdb24d038342aed3f01d3926c0` |
| 124 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-5.md) | 1156 | `declaration-track:142be56ec18b9debb6896c66b8167a5b1bc8401df7d0c2a9100fe37bf8da9a0c` |
| 125 | `theorem` | [Icc_bot_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-bot-coe.md) | 1161 | `result-track:79fdb5c2924f790b2d730b1ee3c28e2a372445c122fa6c1f60a03e90fcfa85d7` |
| 126 | `theorem` | [Icc_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/icc-coe-coe-source-edition-2.md) | 1165 | `result-track:f0fa42db6b07cb5c56a54e859661dbf5f203fe447972d7acb70888cc4071b57c` |
| 127 | `theorem` | [Ico_bot_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-bot-coe.md) | 1169 | `result-track:1863b73c77f714f4210948dfb5d9f5611d2b925b9079cef0c64987658c5ce685` |
| 128 | `theorem` | [Ico_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ico-coe-coe-source-edition-2.md) | 1173 | `result-track:b69af8f3dcbf78c3257a0ab5eccd1977d45c07467cc0c43507ea30225a6c0f09` |
| 129 | `theorem` | [Ioc_bot_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-bot-coe.md) | 1177 | `result-track:cc518c4a5a21a328beb2e7f626471cc2cb9923bdfaad1853a77562e5ee39a9fc` |
| 130 | `theorem` | [Ioc_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioc-coe-coe.md) | 1181 | `result-track:6eef22244b4dae60bb5b9188187f920624d83691379aafaf5f8140d040cd25bd` |
| 131 | `theorem` | [Ioo_bot_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-bot-coe.md) | 1185 | `result-track:97bb0809ae4c661fee4efe3b52e78d63c457db62f9657a83f75923d88c6968f7` |
| 132 | `theorem` | [Ioo_coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/ioo-coe-coe.md) | 1189 | `result-track:175e3da72ba42d18f6f7408225d58c7e9e9d5f1101f685bde24a46df1e6d7474` |
| 133 | `def` | [locallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorder-source-edition-3.md) | 1205 | `declaration-track:f86cb2821f84b3b0ba9926e20b98e0725811b5a8135e6f5f02088a6b65a055b7` |
| 134 | `def` | [locallyFiniteOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteordertop.md) | 1219 | `declaration-track:014bacb858016b74767e2d8c113cb8f52caed492f365a3587e33b1c584493327` |
| 135 | `def` | [locallyFiniteOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/locallyfiniteorderbot-source-edition-2.md) | 1229 | `declaration-track:6b4f072c8f4aa5b2916e62b6e198f2bf7e51523aeb48ad211dd9b50dc7eab861` |
| 136 | `instance` | [Subtype.instLocallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-instlocallyfiniteorder.md) | 1243 | `declaration-track:e7cd99615e6adde6db84a0362caf7cf6eccf6024a89c2396b3b5055766cfb6ed` |
| 137 | `instance` | [Subtype.instLocallyFiniteOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-instlocallyfiniteordertop.md) | 1256 | `declaration-track:cb840a721a0c5918cecd9108fcdf7c3e71a76a00c695c90f34352a7f42941dea` |
| 138 | `instance` | [Subtype.instLocallyFiniteOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-instlocallyfiniteorderbot.md) | 1263 | `declaration-track:e16200790decfc2a1765ae43bcc56498b64dd5cba2abd1632f62815687f56913` |
| 139 | `theorem` | [subtype_Icc_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-icc-eq.md) | 1276 | `result-track:cdf909eaf83c636f90a01d8d9131d8af008e1e45c4b589da79883e83209d92c6` |
| 140 | `theorem` | [subtype_Ico_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-ico-eq.md) | 1280 | `result-track:e7cc47807b6e2c74ecf19ca0cd656f5f5a68bee0898a775707102833d5a04d86` |
| 141 | `theorem` | [subtype_Ioc_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-ioc-eq.md) | 1284 | `result-track:9842dd19b0ccaa74693934422e0d7891963437d9ebd3e521129a3f8d0993282b` |
| 142 | `theorem` | [subtype_Ioo_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-ioo-eq.md) | 1288 | `result-track:aa4a33f6cdeb9b4feff270da4693159edc3ade1d049e84d488c8c4fa228f4bdd` |
| 143 | `theorem` | [map_subtype_embedding_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-icc.md) | 1294 | `result-track:439423df1ad210ba8cb2c5cb0a2da26e3526a89ce2e5183bcaa991f6a05850d4` |
| 144 | `theorem` | [map_subtype_embedding_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-ico.md) | 1301 | `result-track:c8fee225b3e10a6c5d1c1c6041f0dd97090b655fe512879786209ac0cddf0d18` |
| 145 | `theorem` | [map_subtype_embedding_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-ioc.md) | 1308 | `result-track:8b737fe001e92d568285b65b800db8b4992cbabaec4c32ab71f2afa84bf44bf6` |
| 146 | `theorem` | [map_subtype_embedding_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-ioo.md) | 1315 | `result-track:98e3c1a1f21c0b0c99f66b4eee036dc117a43f70f2ad519b27a630e6357e4334` |
| 147 | `theorem` | [subtype_Ici_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-ici-eq.md) | 1328 | `result-track:cb33ddcaa1081536a2aef96871fac1acfa303729b73bff58f6c5469478bf5800` |
| 148 | `theorem` | [subtype_Ioi_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-ioi-eq.md) | 1332 | `result-track:42e1ac341944f55f6547a895923e5e045c5308f1a138111bbd832a67572a3fd2` |
| 149 | `theorem` | [map_subtype_embedding_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-ici.md) | 1338 | `result-track:8d751062d7d4a696dcf1974f49f062b17a21541c18073321e6e50a0a370a9605` |
| 150 | `theorem` | [map_subtype_embedding_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-ioi.md) | 1343 | `result-track:45e77b3c160fc6ea262acf1f49ce5e092f7f0c1960fd3e0dfe077ba76f53066f` |
| 151 | `theorem` | [subtype_Iic_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-iic-eq.md) | 1354 | `result-track:f5f87045bc3189a03049a61592e73288a85ec69451ad958a89ec4b0def95d172` |
| 152 | `theorem` | [subtype_Iio_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/subtype-iio-eq.md) | 1358 | `result-track:a5cd044785943d082079ce31af7621810698758af317a704c076ae8faee3b65a` |
| 153 | `theorem` | [map_subtype_embedding_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-iic.md) | 1364 | `result-track:b79dcd77ac51df92bc8c43963efc7721ed854b17d016949d9641803ec1c4947d` |
| 154 | `theorem` | [map_subtype_embedding_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/map-subtype-embedding-iio.md) | 1369 | `result-track:6506489d52b41cc169a9f84fd6077213cc581fa1803b982da9cceedcbc81d625` |
| 155 | `theorem` | [Set.finite_iff_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/set-finite-iff-bddabove.md) | 1382 | `result-track:aa3df7cf5790352f3fece340acb616a1d481f84e29faac518ffabee0f4e57222` |
| 156 | `theorem` | [Set.finite_iff_bddBelow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/set-finite-iff-bddbelow.md) | 1387 | `result-track:5e5a319cf6df8bf3991d23d0c65bd647f900f77ebbc77af1a0c6dee0a81353a2` |
| 157 | `theorem` | [Set.finite_iff_bddBelow_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/set-finite-iff-bddbelow-bddabove.md) | 1391 | `result-track:a63dc7e53b5f8be5c6c6d3a58e14329f18c462da449312abdbd94adc06fac24e` |
| 158 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-14.md) | 1404 | `declaration-track:98f5144e236992f6bbfdd6e492940cbb50d6db49e3282f02a4fe50fd9972d1bf` |
| 159 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-13.md) | 1415 | `declaration-track:8cfe08c199a8cf512192417f2b5f1f6f66ab13ed3baed4bbb349208beb876772` |
| 160 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-7.md) | 1426 | `declaration-track:2fa0cf414cc40111bcf90d6e423c2488dcfa541193ad7c1da90a807b5121708b` |
| 161 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-16.md) | 1437 | `declaration-track:9fa54911428b6416d7e097b6f3e5278f578762189e6e161c7dd78afaa1bfe881` |
| 162 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-6.md) | 1448 | `declaration-track:21be28ccbd56d0fa2f24e2db36dc451dd23ee939ea44cbc6fa8aeb1f57495547` |
| 163 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-11.md) | 1455 | `declaration-track:6d62498f562215e0300acb631d1a80c0f83bca83b29efa06c7536a050c75fc67` |
| 164 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-12.md) | 1462 | `declaration-track:6f4591ccca0e47de87d6093a7ee53449e258dd50c88b2837ac8e2d42fc76da87` |
| 165 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLocallyFinite.lean/declarations/instance-source-edition-18.md) | 1469 | `declaration-track:ba9ff7322b6204943b978e262cdc15829f8fe648b260760d412644f2656720fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26ce832b40d0231ff91279683cca980cede5c4aaa4350e021bd794a4bc6724f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
