# Verification target: Base Namespaced Floor Logb Nat Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ee5470937fbb52c07b61ef294bdd7721d55b5ec",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/index.md) · [Full source](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ee5470937fbb52c07b61ef294bdd7721d55b5ec`.

Source path: `GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb.md) | 48 | `declaration-track:2f830e4156d255eb9be2b2c0e339e36e08be25a6fc9a729ceca935840d2aae8b` |
| 2 | `theorem` | [log_div_log](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/log-div-log.md) | 52 | `result-track:60cc9b904225c0fd0083e3a00926c02c28ddee0579fdada555af342c52ed6b97` |
| 3 | `theorem` | [logb_zero](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-zero.md) | 57 | `result-track:7cf6839f4bbf77060a089c8814f90f2f1b4656a3acf9f7a6ed412ad930b689c6` |
| 4 | `theorem` | [logb_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-one.md) | 61 | `result-track:b6f52de84f19b29433db8d8d404259c7853696cc553f27b1e5304eced0b8fe7a` |
| 5 | `theorem` | [logb_abs](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-abs.md) | 65 | `result-track:3202fd6cb562ecd5d3312fbef74806844b623c3b94d2a4998950269687d325ca` |
| 6 | `theorem` | [logb_neg_eq_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-neg-eq-logb.md) | 69 | `result-track:c9b8ce7c7b8e63168035b33979361d6f95ad57014e85171a4753117f22d3e0e9` |
| 7 | `theorem` | [logb_mul](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-mul.md) | 73 | `result-track:a943a3d8d87fa236a7458b0559ed5917279827268a5b00e0ad0062311fd771de` |
| 8 | `theorem` | [logb_div](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-div.md) | 77 | `result-track:67ce78afd2128c22083700c9461460ef4e558f0521be35c1acbbbb851b03afd5` |
| 9 | `theorem` | [logb_inv](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-inv.md) | 82 | `result-track:7b8a794bc9890588e4e91356fb70ecae81e9ccc1b95d4bead0b190b6e50f6a22` |
| 10 | `theorem` | [inv_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/inv-logb.md) | 85 | `result-track:29cf5fb4fedb26a14a960653785fc038172e05395698afaad55c59c0e2b4b77e` |
| 11 | `theorem` | [inv_logb_mul_base](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/inv-logb-mul-base.md) | 88 | `result-track:ca9bd6cf995260fb031b511a6d91de7b2170911cd17c5f9c870992b0dcb2735e` |
| 12 | `theorem` | [inv_logb_div_base](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/inv-logb-div-base.md) | 93 | `result-track:a657ec138ab2c88c288370858822d89019a92c062fd7f1ce1799d096d198a800` |
| 13 | `theorem` | [logb_mul_base](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-mul-base.md) | 98 | `result-track:be6c88d673a3fd76c4cde437ff55eda4d94d0874ac081fa366cee515e08f8682` |
| 14 | `theorem` | [logb_div_base](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-div-base.md) | 102 | `result-track:aee31c83b91d6e64e356122edfb0f03bb9b49a03760bf04b049f14b267d4005d` |
| 15 | `theorem` | [mul_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/mul-logb.md) | 106 | `result-track:9e13cb9e548f81678aded0d0cc0f1eecb884823204bf7cf3768d7a9116263167` |
| 16 | `theorem` | [div_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/div-logb.md) | 112 | `result-track:f2e76e950b5583aa8a2737331e3aad7747ec5c5ac7dc1406fd666b2e0a0e3ac0` |
| 17 | `theorem` | [log_b_ne_zero](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/log-b-ne-zero.md) | 121 | `result-track:3ccce0466866121a619c2302085a41eb269757bd0dcf7c8fd251cfb0f30be9d3` |
| 18 | `theorem` | [logb_rpow](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-rpow.md) | 127 | `result-track:c588c071d46ad5cd0cfcf34441526f5a2385adee970ecf83c31a036fb47c48ec` |
| 19 | `theorem` | [rpow_logb_eq_abs](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/rpow-logb-eq-abs.md) | 132 | `result-track:77a1c7de82707dca2e67f44ef288c540f32d9ba4af328f4a554179805f4ed94a` |
| 20 | `theorem` | [rpow_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/rpow-logb.md) | 142 | `result-track:23b476afc3da90a04dd7740d42716248ad5b5f56a46b54781292e317c6bdbbc2` |
| 21 | `theorem` | [rpow_logb_of_neg](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/rpow-logb-of-neg.md) | 147 | `result-track:41ef57e41fdb55d6f0fe71461b970b130491ac53a1a1c5d1a83fcfd72df6a25e` |
| 22 | `theorem` | [surjOn_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/surjon-logb.md) | 152 | `result-track:233908aa926fb416ce83d775fcb4432a84c78e1e370798a1d378926caf336ce7` |
| 23 | `theorem` | [logb_surjective](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-surjective.md) | 156 | `result-track:27e01f8a384f1fc1b81d320b302541ec6a6735204b488c2b904628979f1dfeaa` |
| 24 | `theorem` | [range_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/range-logb.md) | 160 | `result-track:3267ca4793e9e28f4e281a844c1e0ad9a0cc0fda2ed22303f920425bceabb46c` |
| 25 | `theorem` | [surjOn_logb'](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/surjon-logb-source-edition-2.md) | 164 | `result-track:9e65289f9b6ddd86735d3d48fde7202aa42cd42635fab4735182a542f42d6b5e` |
| 26 | `theorem` | [b_pos](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/b-pos.md) | 179 | `result-track:ccc1e55b79aee7093c88b9546ab67342c41aab9d884cd77457ffa4bd0dcb94f3` |
| 27 | `theorem` | [b_ne_one'](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/b-ne-one-source-edition-2.md) | 182 | `result-track:eef54b23b30ad8414c013a03203d73feb90240b134ad1dced46199a2d0563696` |
| 28 | `theorem` | [logb_le_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-le-logb.md) | 185 | `result-track:45a6ad3aa5e75516804ae283503be1b2853164926bfbc46bf6ece0a1020d782b` |
| 29 | `theorem` | [logb_lt_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-logb.md) | 189 | `result-track:dce733586e42f729200a46e6a56bedb40b47cd4268ba395a7afddf40b84411a2` |
| 30 | `theorem` | [logb_lt_logb_iff](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-logb-iff.md) | 195 | `result-track:bb9a5be6381021680430cf1574a1747c405ca0cce15f885ce2fd86e6c972fdcd` |
| 31 | `theorem` | [logb_le_iff_le_rpow](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-le-iff-le-rpow.md) | 200 | `result-track:52f1ed4aee6e7c348fbaf4d679e3ce9897fd5d62332c81332cbc060509304ab7` |
| 32 | `theorem` | [logb_lt_iff_lt_rpow](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-iff-lt-rpow.md) | 204 | `result-track:0f983a9fc108bc3bd37b7b5bda9ce96b0c4299ed5667be00cfb940d71b424eaa` |
| 33 | `theorem` | [le_logb_iff_rpow_le](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/le-logb-iff-rpow-le.md) | 208 | `result-track:972335e45ffafd0826049e855a188ebc8dc6b90d5de69a9a497673f9b66bedb1` |
| 34 | `theorem` | [lt_logb_iff_rpow_lt](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/lt-logb-iff-rpow-lt.md) | 212 | `result-track:41e181c83beccb9efc606c711fcbd6a41fdd33650d54fbbe16f6e2fcbc17a062` |
| 35 | `theorem` | [logb_pos_iff](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-pos-iff.md) | 216 | `result-track:8473935ca4cc29edbe5bde1c84b1821cb6cf728fcdd99a014442f470324ae0b7` |
| 36 | `theorem` | [logb_pos](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-pos.md) | 221 | `result-track:57a1aa0dabfe5abd62405b755f1d4e1cdd918e55ce5c18d5fa7f118263b114fb` |
| 37 | `theorem` | [logb_neg_iff](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-neg-iff.md) | 226 | `result-track:f099a501f04cdc7410d0efd9aab57bd15d1952893231f44fb06bf03b03b9aea9` |
| 38 | `theorem` | [logb_neg](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-neg.md) | 231 | `result-track:27358db4f6e0c91a8580109df7a08804330730820bf0d57d0a905d16a146bdd2` |
| 39 | `theorem` | [logb_nonneg_iff](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonneg-iff.md) | 235 | `result-track:381d7c7d62fb631bb980cd8c9608158a2667aca751f578db83968daa8f42461a` |
| 40 | `theorem` | [logb_nonneg](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonneg.md) | 239 | `result-track:0079e1b3541bc3775fc1a9ef042c411e75ef9f3961302e0798966170a2257410` |
| 41 | `theorem` | [logb_nonpos_iff](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonpos-iff-source-edition-2.md) | 243 | `result-track:ea47b39d482aa56b9e8ea6591cc702d7171d62a42cf96402725b5af8d215b82f` |
| 42 | `theorem` | [logb_nonpos_iff'](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonpos-iff.md) | 247 | `result-track:e2974cd42bde3fcdc40d74a93f42b39bb2e87a6922240c23b3cc1efb1f74b46a` |
| 43 | `theorem` | [logb_nonpos](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonpos.md) | 253 | `result-track:a4510b7d9695dcaac4f91449aa675691b6416726a07c0957a322de2eac88158f` |
| 44 | `theorem` | [strictMonoOn_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/strictmonoon-logb.md) | 257 | `result-track:42835248cc9f97926899d9d330bb7b64e8adae1b9df1f07a9ecb4862c7d692b1` |
| 45 | `theorem` | [strictAntiOn_logb](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/strictantion-logb.md) | 261 | `result-track:25b383cbdcfbaeb6e5a235a9d7258f158e7aba75494bd752bda143d06e894e2d` |
| 46 | `theorem` | [logb_injOn_pos](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-injon-pos.md) | 268 | `result-track:68fe27f2929098fbd6367d1ad5ccbd3d5329aeb375168245995bea25abd25f4c` |
| 47 | `theorem` | [eq_one_of_pos_of_logb_eq_zero](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/eq-one-of-pos-of-logb-eq-zero.md) | 272 | `result-track:83e42dc5e672ce250315fc2c1bd61751dc6a38030206add8d2bea1657e1e9412` |
| 48 | `theorem` | [logb_ne_zero_of_pos_of_ne_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-ne-zero-of-pos-of-ne-one.md) | 276 | `result-track:96ab858350bac0593b3f664a8f47e734a7c967d9d357a35c314a9684cd894f9c` |
| 49 | `theorem` | [tendsto_logb_atTop](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/tendsto-logb-attop.md) | 280 | `result-track:3a810bfe56f01807839e33390bd75dce39d546d5f5850129cd1383b8afaf45d9` |
| 50 | `theorem` | [b_ne_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/b-ne-one.md) | 290 | `result-track:ba848f59521e933f2f67f6e732442290aafb0e63ef63bd74e64af0001dd905a9` |
| 51 | `theorem` | [logb_le_logb_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-le-logb-of-base-lt-one.md) | 293 | `result-track:0763a53441e3ba15e2f74c0d316105124ae32d72519e480f6f37ef73eba52529` |
| 52 | `theorem` | [logb_lt_logb_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-logb-of-base-lt-one.md) | 297 | `result-track:ab2647325e3c172fa81fb28ac7781e1f3ac6affe6743af2ed1c798dbf5f1a362` |
| 53 | `theorem` | [logb_lt_logb_iff_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-logb-iff-of-base-lt-one.md) | 303 | `result-track:68ae58de04a6acc8e86f3b01b0457641a18f01b405044748060ea448052bdcbd` |
| 54 | `theorem` | [logb_le_iff_le_rpow_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-le-iff-le-rpow-of-base-lt-one.md) | 309 | `result-track:01427bb5b617b84074e544b58fb2d711e2e40c8a8a46f9dcd775388a92f12454` |
| 55 | `theorem` | [logb_lt_iff_lt_rpow_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-lt-iff-lt-rpow-of-base-lt-one.md) | 313 | `result-track:385641f61c5f7e53b80b3746e4a889ab374a40a90445ef98ff221de3006b01be` |
| 56 | `theorem` | [le_logb_iff_rpow_le_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/le-logb-iff-rpow-le-of-base-lt-one.md) | 317 | `result-track:0458f00e3b8fb25334a8590c0cde832ff795d9d5121f21128110763bde55f693` |
| 57 | `theorem` | [lt_logb_iff_rpow_lt_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/lt-logb-iff-rpow-lt-of-base-lt-one.md) | 321 | `result-track:aedc61fef3d73571401f1a7160ca4317effdccb119d9e7126b92714cbb4e8be9` |
| 58 | `theorem` | [logb_pos_iff_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-pos-iff-of-base-lt-one.md) | 325 | `result-track:180b30999a391137a3aae6c0f8b012fd2c853360ad34bfb643b50a1068ba60e8` |
| 59 | `theorem` | [logb_pos_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-pos-of-base-lt-one.md) | 329 | `result-track:cd9e319fc1bdcb63e33c3f3a893e2bb9000573947ec62230a6ff659c1d124a3e` |
| 60 | `theorem` | [logb_neg_iff_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-neg-iff-of-base-lt-one.md) | 334 | `result-track:809257dcd1d4b1226cbda22f8636d22f20843b350230d7bb07d71275195dadec` |
| 61 | `theorem` | [logb_neg_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-neg-of-base-lt-one.md) | 338 | `result-track:ba5148e1d73e44332d320797ac41e84e92d30974095ee09a879c1e9e2b8c3c48` |
| 62 | `theorem` | [logb_nonneg_iff_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonneg-iff-of-base-lt-one.md) | 342 | `result-track:819cb164aa717a7f315a769748f7f039688b1a41729bf011ed8a1cc8bdfba24c` |
| 63 | `theorem` | [logb_nonneg_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonneg-of-base-lt-one.md) | 346 | `result-track:4be9bdbfd5df7fe1bec0c1497b76266e029c2baef8c60707988b77a8244c754b` |
| 64 | `theorem` | [logb_nonpos_iff_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-nonpos-iff-of-base-lt-one.md) | 351 | `result-track:b7e400417b8318d685c286d35cb1a342c1b2595e2fb4ccb512bbf00b3328448d` |
| 65 | `theorem` | [strictAntiOn_logb_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/strictantion-logb-of-base-lt-one.md) | 355 | `result-track:326e348a5fe2b3b502dfb1a2d563a9fdd84c5341fe89664aed7d62bccce5fb5f` |
| 66 | `theorem` | [strictMonoOn_logb_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/strictmonoon-logb-of-base-lt-one.md) | 359 | `result-track:a0624fab60a58151680c9ff1a186ce517f8d5ff7562e8f2724e8cae4938cfa22` |
| 67 | `theorem` | [logb_injOn_pos_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-injon-pos-of-base-lt-one.md) | 366 | `result-track:39c7931b84e43aa50a2bb2305b81d524cb8ddad26807589a293b4c0c6dd11291` |
| 68 | `theorem` | [eq_one_of_pos_of_logb_eq_zero_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/eq-one-of-pos-of-logb-eq-zero-of-base-lt-one.md) | 370 | `result-track:621e63dc474945e97403b6286f2284c5192afe13d7751a7575fde1c1b6c35497` |
| 69 | `theorem` | [logb_ne_zero_of_pos_of_ne_one_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-ne-zero-of-pos-of-ne-one-of-base-lt-one.md) | 375 | `result-track:af95dbbdb9e807720d7525d8a0c5233aff0a026f258a66f105cf1fa10af5411c` |
| 70 | `theorem` | [tendsto_logb_atTop_of_base_lt_one](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/tendsto-logb-attop-of-base-lt-one.md) | 379 | `result-track:2a6fc453cdcbf3b6d0eb37054d6e39fd869fd795e2d0d8fa52554a7d2a7ccdc2` |
| 71 | `theorem` | [floor_logb_nat_cast](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/floor-logb-nat-cast.md) | 393 | `result-track:1091c8ce64600693f20c4d57be8627cd0df83d9ff3e7bb5cc045c7f0b34f1b71` |
| 72 | `theorem` | [ceil_logb_nat_cast](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/ceil-logb-nat-cast.md) | 406 | `result-track:971c7b6d772c3637b8f8397a64c5cbe4020504953acee6b8670a151c93829587` |
| 73 | `theorem` | [logb_eq_zero](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-eq-zero.md) | 420 | `result-track:cbf47e11580948cfc5aff7590a2e9deda1d0ea777199e6eadfeea6a46f947fb8` |
| 74 | `theorem` | [logb_prod](../../../../SpecialFunctions/BaseNamespacedFloorLogbNatCast.lean/declarations/logb-prod.md) | 428 | `result-track:289c6c4351a20ac0b87a1281756aff36292ad13041e6c189c70c87b429d1d8b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f6b800b689a2394ec8fce1bb25ffe19fee4649194478e7554282cdd06755168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
