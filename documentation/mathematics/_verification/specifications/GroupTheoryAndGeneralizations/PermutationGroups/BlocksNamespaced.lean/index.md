# Verification target: Blocks Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bca0d1f038cd60072528a4a505ef572dad1f7c78",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bca0d1f038cd60072528a4a505ef572dad1f7c78`.

Source path: `GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Pointwise.Stabilizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [orbit.eq_or_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/orbit-eq-or-disjoint.md) | 68 | `result-track:05b874da11997e982854ab62b060e26cf4ba34b5ec771ebc446d593ece7462e5` |
| 2 | `theorem` | [orbit.pairwiseDisjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/orbit-pairwisedisjoint.md) | 75 | `result-track:5e58fbfa3bf2d1ff11ba3ae99a6d9ddb78ab16e303534ddd9cf1a74463eb6522` |
| 3 | `theorem` | [IsPartition.of_orbits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/ispartition-of-orbits.md) | 83 | `result-track:4cb96f4a68c689fa6bbbb3a148752f54b4697ac32bb6b32d771a16ad182af943` |
| 4 | `def` | [IsFixedBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isfixedblock.md) | 100 | `declaration-track:c51e6b5c345ca3bc14922bc4ce2df00facc4abfc3f4f8b8205eb5db6ce3d051f` |
| 5 | `def` | [IsInvariantBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isinvariantblock.md) | 109 | `declaration-track:1ecd6805cdd29c60603a8b762d6940da0314bab49d1a92afc793cd2fb20ec471` |
| 6 | `def` | [IsTrivialBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock.md) | 120 | `declaration-track:6cf972b9dc1eaf0bd175684fa209793273852c91abf384dde87715f8e4a8b5cb` |
| 7 | `theorem` | [IsTrivialBlock.image](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock-image.md) | 129 | `result-track:b73bc97c082c5f765bf3643cd870c460cb9ca2fc5bb5cae7f29fef3090660466` |
| 8 | `theorem` | [IsTrivialBlock.preimage](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock-preimage.md) | 138 | `result-track:d6309170ff0ea4b64d960b38dd96db45542a93c29b464906679e163a723e7386` |
| 9 | `theorem` | [IsTrivialBlock.smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock-smul.md) | 150 | `result-track:40273effa978502c245fa333ec1a1a97a871aad0087f4a9122675e51e483d19a` |
| 10 | `theorem` | [IsTrivialBlock.smul_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock-smul-iff.md) | 161 | `result-track:1e057f2d9fe1ff8a771635ad15acad29d3f47fab15a772ecc51faf294100423c` |
| 11 | `def` | [IsBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock.md) | 175 | `declaration-track:9f365876fce02318a56e4bc905ddfc1d388f0f38f57cf497cc96b11673511a28` |
| 12 | `lemma` | [isBlock_iff_smul_eq_smul_of_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-smul-eq-smul-of-nonempty.md) | 180 | `result-track:05c3d945a364526c662404ad19e9b4a72e1017f5ad3e541d3ee5c9f33b0aa909` |
| 13 | `lemma` | [isBlock_iff_pairwiseDisjoint_range_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-pairwisedisjoint-range-smul.md) | 185 | `result-track:d1e7866f353c40ad0bde4fe8110cd99dea776c641561b81da739cfb094bd2b59` |
| 14 | `lemma` | [isBlock_iff_smul_eq_smul_or_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-smul-eq-smul-or-disjoint.md) | 189 | `result-track:7f7c7b1160bf918b1698dd0d907dbb9ee3bbe602004820b3e93cd7bc8fee5759` |
| 15 | `lemma` | [IsBlock.smul_eq_smul_of_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-smul-eq-smul-of-subset.md) | 194 | `result-track:2d69445f9b11105b493c249b880dba389983b9840ad27910b7ebc4e45f632c00` |
| 16 | `lemma` | [IsBlock.not_smul_set_ssubset_smul_set](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-not-smul-set-ssubset-smul-set.md) | 201 | `result-track:4239fdd5deb4571737df2eca176bff841a8005f462aedd10762ad87d0d2188a2` |
| 17 | `lemma` | [IsBlock.disjoint_smul_set_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-disjoint-smul-set-smul.md) | 205 | `result-track:7a6334e7011aa2a07d6a316c5485102bd7227bc244dc10e60363fa06463bca84` |
| 18 | `lemma` | [IsBlock.disjoint_smul_smul_set](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-disjoint-smul-smul-set.md) | 211 | `result-track:5784d371722a9c61267be9b7cc0c524f3f8026f6532eef9e925c48f8bc6c0adf` |
| 19 | `lemma` | [IsFixedBlock.isBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isfixedblock-isblock.md) | 223 | `result-track:d556e54482bcbfdbd1e51ad4c8f7170e90f34e827cd4811f4f005b633b8e4fbb` |
| 20 | `lemma` | [IsBlock.empty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-empty.md) | 227 | `result-track:2addc0221fecf3ec6d500999c8e822a596a7b0d6b3eb0595490d379846568bd5` |
| 21 | `lemma` | [IsBlock.singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-singleton.md) | 231 | `result-track:44792cdac1f73fcfb2cc4dd877790d8ffd2ef79e1622a9c4504e77c68c0ac34f` |
| 22 | `lemma` | [IsBlock.of_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-of-subsingleton.md) | 235 | `result-track:07fc83297111a013fa682eede14b5054338acb59a202b63e9880e044e256637d` |
| 23 | `lemma` | [IsFixedBlock.isInvariantBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isinvariantblock-source-line-240-occurrence-2.md) | 240 | `result-track:5c12fa157a94635f89ae085af625cf8e99ad53d4beaf8312c3e153f437b0dd8b` |
| 24 | `lemma` | [IsBlock.disjoint_smul_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-disjoint-smul-right.md) | 249 | `result-track:304b90060f2d42a6b9eca3fa8d425e3a68ec3608dbdaa38310f1e00188c1e70d` |
| 25 | `lemma` | [IsBlock.disjoint_smul_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-disjoint-smul-left.md) | 253 | `result-track:ef70956c781d0b075e17498a269e55162b42a67b47329f9863907cb4b48d07b0` |
| 26 | `lemma` | [isBlock_iff_disjoint_smul_of_ne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-disjoint-smul-of-ne.md) | 263 | `result-track:2912d9e86254176420abc8a6a08a800697a76678828766935f30d73e0aa65edb` |
| 27 | `lemma` | [isBlock_iff_smul_eq_of_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-smul-eq-of-nonempty.md) | 270 | `result-track:dbaae367294056ffbac3e9091cda685f897802bf4d788f73a67a9820ea6bab5f` |
| 28 | `lemma` | [isBlock_iff_smul_eq_or_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-smul-eq-or-disjoint.md) | 275 | `result-track:46c16a682e779390cff53ac1933b65a2176bfb32f57d32ced9c4f4ee49d85ee7` |
| 29 | `lemma` | [isBlock_iff_smul_eq_of_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iff-smul-eq-of-mem.md) | 280 | `result-track:90d853050e4ea72a938dfb83e41acdae2e3fac509981bda3bd2aa29d041ef76b` |
| 30 | `lemma` | [IsBlock.subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-subgroup-source-edition-2.md) | 293 | `result-track:30bb7c3c117c210f8f799a876a9f82aa96d593a3a61909c41e352edd87d9d919` |
| 31 | `lemma` | [isInvariantBlock_iff_isFixedBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isinvariantblock-iff-isfixedblock.md) | 297 | `result-track:ff44171a532dc37a42c209f74575b659e46f65a40b28c465d946c8ed7c4d2f26` |
| 32 | `lemma` | [IsInvariantBlock.isBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-source-line-306-occurrence-2.md) | 306 | `result-track:239b74bdcefac973bd4148c7a28821c1eae5308e7b7c3024f4b721d24184d375` |
| 33 | `lemma` | [IsFixedBlock.univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isfixedblock-univ.md) | 310 | `result-track:31244fbd96d75e92fcfd439772373748557fddedd404d394ef2afa97e3586a05` |
| 34 | `lemma` | [IsBlock.univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-univ.md) | 314 | `result-track:2fd1a9d01459507dbc76a93a4fdfcbb682f9d45795b0eb7be53c6b1380d45a78` |
| 35 | `lemma` | [IsBlock.inter](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-inter.md) | 318 | `result-track:66ba4fe288b6062ccda7a84130cef6b30070a24ddeda812dec2c8cd822f8c4e7` |
| 36 | `lemma` | [IsBlock.iInter](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-iinter.md) | 326 | `result-track:04f47107430f32620be0a69bbbb4f48da3213a0e1970d8cf658e83a0a7d7183d` |
| 37 | `lemma` | [IsTrivialBlock.isBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/istrivialblock-isblock.md) | 334 | `result-track:93f53e8269f7edaddc330d54b59682f00c8727ae1ce9baf7206fd213bcc718a2` |
| 38 | `lemma` | [IsFixedBlock.orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isfixedblock-orbit.md) | 341 | `result-track:eeac73f5d5f9bcd8879ea58b33e2752ac1178684f8daa7be0d1cd5f68789c7b6` |
| 39 | `lemma` | [IsBlock.orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-orbit.md) | 345 | `result-track:127fca0593a8a00729c5a192fcb9b51f270eaacbb01133c1c102631a1b8bb3ac` |
| 40 | `lemma` | [isBlock_top](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-top.md) | 348 | `result-track:3e0ae3fa593c002485e955370ae790123bfaf65d5851dbeb6c74bad74e2cf420` |
| 41 | `lemma` | [IsBlock.preimage](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-preimage.md) | 352 | `result-track:b92aba926dbfa40ea12ead10f0d3840c6f95f3b92e24753e1829627f569f7043` |
| 42 | `theorem` | [IsBlock.image](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-image.md) | 360 | `result-track:ff6c78d59eac8943e12e3b928a6274d4df74ec839d21ef462e1bd7328fb5e483` |
| 43 | `theorem` | [IsBlock.subtype_val_preimage](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-subtype-val-preimage.md) | 367 | `result-track:7e3f315c593280f7b08cfdae924b83866fbad6db65b242239991e405bdaf0861` |
| 44 | `theorem` | [isBlock_subtypeVal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-subtypeval.md) | 372 | `result-track:3ed38b97dbf570967144b30cd7e44530a1068513ed5db9272c828bb04b0b9760` |
| 45 | `theorem` | [Blocks Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/of-addsubgroup-of-conjugate.md) | 378 | `result-track:011a4654ca0939d81d8261e81ac1cf35f3c250f2da1081746ba6d89294a33604` |
| 46 | `theorem` | [IsBlock.of_subgroup_of_conjugate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-of-subgroup-of-conjugate.md) | 396 | `result-track:e89118d1b8fc27aef911c152beca944b93207864175b8348862523f38f011e08` |
| 47 | `theorem` | [Blocks Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/translate.md) | 412 | `result-track:68fdb44eafa3cd19c1ce5d1689df3d4184e8e412eed384f3f3a7d0729ee288fd` |
| 48 | `theorem` | [IsBlock.translate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-translate.md) | 424 | `result-track:a936b258e797e21757ebba0a97ac14a9d51a38fdb154ee87219948f01acb69aa` |
| 49 | `def` | [IsBlockSystem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblocksystem.md) | 437 | `declaration-track:655a33bae2328752fd157d4e783c640f41b7012f13ea95acd0a01c6e3378ea5a` |
| 50 | `theorem` | [IsBlock.isBlockSystem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-isblocksystem.md) | 441 | `result-track:53f5395cf79224cefca80d418c0086160b56e1a1a0ea92a3c96984b7563aaa25` |
| 51 | `lemma` | [smul_orbit_eq_orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/smul-orbit-eq-orbit-smul.md) | 462 | `result-track:137464ee3c05add900482af449b964cf7f32f91ea01d1837e4fa09e7b1f41891` |
| 52 | `theorem` | [IsBlock.orbit_of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-orbit-of-normal.md) | 479 | `result-track:617b8231fa6b543e9b0a4311f40219cb322eb3240e26e5cd8ec11803d85a27fe` |
| 53 | `theorem` | [IsBlockSystem.of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblocksystem-of-normal.md) | 488 | `result-track:e309a3507b07477d85b411ffb65c71a5bdba0899a3d244a18672fc30ffb4332a` |
| 54 | `lemma` | [isBlock_subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-subgroup-source-edition-3.md) | 509 | `result-track:71df08a7b38283f619d7b77d0a79843bb4905a80d1f2a2f65eff97ebf58b9487` |
| 55 | `lemma` | [isBlock_subgroup'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-subgroup.md) | 526 | `result-track:2178ef710963e986dbd8584bd113a870957e24677bc5b36578f0fcb5e7093334` |
| 56 | `theorem` | [IsBlock.of_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-of-orbit.md) | 549 | `result-track:d48b58b9265f062a1d8370330d65f7bdd29be68cd6344b682945870bf16b7446` |
| 57 | `theorem` | [IsBlock.stabilizer_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-stabilizer-le.md) | 562 | `result-track:824a0d7bb8b55d0b8d86e24b3297e19c99d9bcfd26a5e68107c2663a087e7846` |
| 58 | `theorem` | [IsBlock.orbit_stabilizer_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/isblock-orbit-stabilizer-eq.md) | 568 | `result-track:bca3d49e8c6eb969dab9b7a1c0d659ac66104bfbb587d91fd779a584ad2ba6bb` |
| 59 | `theorem` | [stabilizer_orbit_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/stabilizer-orbit-eq.md) | 585 | `result-track:e3723aabf35af0e20b5712c49afb99e37523e5d07d9c6ca4ff09e4645eecc09b` |
| 60 | `def` | [block_stabilizerOrderIso](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/block-stabilizerorderiso.md) | 604 | `declaration-track:0bf634f1d40c11b216331ecf96a430094e54ae6eb5718e65cc5e58bb4b2b26d0` |
| 61 | `abbrev` | [BlockMem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/blockmem.md) | 629 | `declaration-track:c53b2c4f5ced66316011edf0d87380aaa9246026c914ad6cfc625bba4cdeac78` |
| 62 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/instance.md) | 636 | `declaration-track:b4582577a2ead16cab456ea22736b49594e37d0b87ced3e3a685658024e563c5` |
| 63 | `theorem` | [coe_top](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/coe-top.md) | 648 | `result-track:eac07052ae3781214cc86f8ae931c84b46576f71544da03fb4e0528a6f865683` |
| 64 | `theorem` | [coe_bot](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/coe-bot.md) | 653 | `result-track:83611207c2f251f1730e792728d270bf2542bd0765cebcccf4f23c4cc02f1ea9` |
| 65 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/instance-source-edition-2.md) | 658 | `declaration-track:c5b35ac69f12d7a1d351bf676b35ccb715e1f0a688a023b981efd0607328ae7d` |
| 66 | `theorem` | [ncard_block_eq_relindex](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/ncard-block-eq-relindex.md) | 680 | `result-track:59a5b81621fa5ba9c9690fa6efaa547294c404f8094e73574bc572b9697b0fa2` |
| 67 | `theorem` | [ncard_block_mul_ncard_orbit_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/ncard-block-mul-ncard-orbit-eq.md) | 691 | `result-track:740efa69bd00b96285a152fb6e5196965d6adf41cce6dcdbd6ef0819377b2e7b` |
| 68 | `theorem` | [ncard_dvd_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/ncard-dvd-card.md) | 699 | `result-track:2c928ca6842060d8d3394910a6f3a4d72b59c396cc71f7d919e6e699563439d7` |
| 69 | `theorem` | [eq_univ_of_card_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/eq-univ-of-card-lt.md) | 705 | `result-track:f69580574f51aa9f94d8d01072534ab7e103e166a0a45ccfb67ff70fa1e7c48d` |
| 70 | `theorem` | [subsingleton_of_card_lt](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/subsingleton-of-card-lt.md) | 721 | `result-track:ee57b2cf0103f45764e0d073e797781f55f0785e8ad6d1c7b56d6c18735a952e` |
| 71 | `theorem` | [of_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/BlocksNamespaced.lean/declarations/of-subset.md) | 746 | `result-track:916b11888f7f3fd7783fa4b28851b046867f0a301711ea02daca3ef7d9e1abde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a19bb06523de5728296dc650cf8fc3d49fef8085fa69cbf91b1dd6ad76a34a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
