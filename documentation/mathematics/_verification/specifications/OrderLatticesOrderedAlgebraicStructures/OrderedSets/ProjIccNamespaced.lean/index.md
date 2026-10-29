# Verification target: Proj Icc Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41d7f4e44b20745dfeb99f9d8c914dd2392d0335",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variant5049151c552e292e5ba869c2970cab0240f347d1694ae566c24085d06467d82f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41d7f4e44b20745dfeb99f9d8c914dd2392d0335`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variant5049151c552e292e5ba869c2970cab0240f347d1694ae566c24085d06467d82f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variant5049151c552e292e5ba869c2970cab0240f347d1694ae566c24085d06467d82f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnected` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici.md) | 46 | `declaration-track:89e5416b547d5df158584c1d263daf33aa1b82076edfd9c1232dcd7d12fa3c21` |
| 2 | `def` | [projIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic.md) | 49 | `declaration-track:ca694a482940bc69cb4deded16bc412b7efaf17748151b7b967e8b77bc97f3dc` |
| 3 | `def` | [projIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc.md) | 52 | `declaration-track:405f23d3b189fe46cfe7822942314e184a2a05b4ad21bd490bafe69c131d9b24` |
| 4 | `theorem` | [coe_projIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/coe-projici.md) | 58 | `result-track:d851dd4419e55428370a9ffa8debb74ce06c94b1d44c8cdb99dead46d52fb2e2` |
| 5 | `theorem` | [coe_projIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/coe-projiic.md) | 61 | `result-track:dc9ee2645079d8adbd6c624dae8ee8e9cc0901693e3785bc95f09d9285ddf4dc` |
| 6 | `theorem` | [coe_projIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/coe-projicc.md) | 64 | `result-track:3c3c39c3faf73b759871e0641ea773ebb8cae12e84b55208374eb961a3a447e0` |
| 7 | `theorem` | [projIci_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-of-le.md) | 66 | `result-track:aa5bfc3f29054e0cac6825b998e1d0a53e6184a581ca82cef93f0889c14865e8` |
| 8 | `theorem` | [projIic_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-of-le.md) | 68 | `result-track:c50f3c21e14745888a545d13eedb2c2c9f7afbb2047c9f66a5c787f7c58e4d83` |
| 9 | `theorem` | [projIcc_of_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-of-le-left.md) | 70 | `result-track:bf5784bfaa0a1546070d2a39871e4c8662a592cb262ce38d2587724349e16f18` |
| 10 | `theorem` | [projIcc_of_right_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-of-right-le.md) | 73 | `result-track:b3e6d5a512326467debf07be12cb059b515473b160ab7face5f947cf6c50dc3c` |
| 11 | `theorem` | [projIci_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-self.md) | 77 | `result-track:f36299beb3005522886881aaeaf32ee95acad4388e0612b57c97d0aed09df8c2` |
| 12 | `theorem` | [projIic_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-self.md) | 80 | `result-track:16dd3b076e5d8b2f9a9dff5d1d87028b88e65d38e97091eb196bee074c41cb5d` |
| 13 | `theorem` | [projIcc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-left.md) | 83 | `result-track:68137d07df63ea6495ba48170c2fc8922eb297cc4624070dc34b846d43963548` |
| 14 | `theorem` | [projIcc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-right.md) | 87 | `result-track:6055dd135e7423fa6b1be2b2d7baed9c189faf6fbb67b827e7b803c8ffbd45e9` |
| 15 | `theorem` | [projIci_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-eq-self.md) | 90 | `result-track:7811d43e7ea15622a7140bb4e324735bd3e54ae71fa584282d0fdd59c0de65dd` |
| 16 | `theorem` | [projIic_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-eq-self.md) | 92 | `result-track:3cc34a411c6ea7c014ed4c892b937741fb9c5e29ecb05f1dc483d7e84a3ce008` |
| 17 | `theorem` | [projIcc_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-eq-left.md) | 94 | `result-track:aa06312bde59b6f65eb6d4988bb04e634c3b27a81ceebb798cc6f9aa8e040886` |
| 18 | `theorem` | [projIcc_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-eq-right.md) | 97 | `result-track:5c31782486731a5c26eeb63d6d4b175c1b11bed96a6f91358270dbc0530242d9` |
| 19 | `theorem` | [projIci_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-of-mem.md) | 100 | `result-track:fd221ab42ec7d73a1dda5073afca612f49eca8bdb75e5c244593be98cd80a897` |
| 20 | `theorem` | [projIic_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-of-mem.md) | 102 | `result-track:5df4452e0b56f42bd1d20ad74e23d1f2a107708d593f3c416a488613e5101179` |
| 21 | `theorem` | [projIcc_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-of-mem.md) | 104 | `result-track:09ac5217ac93ee2ab78abd15dc67b2cd15a33e6b3236cde7a5c299469d0ceee6` |
| 22 | `theorem` | [projIci_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-coe.md) | 108 | `result-track:71bf038a0616261b5a06b340febe2f7d7bf1899d7341aefe70c31e7a4395a338` |
| 23 | `theorem` | [projIic_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-coe.md) | 111 | `result-track:969dccfa0954c31f460388f429b7868602e455959694ca501c004b5d3e7d42b3` |
| 24 | `theorem` | [projIcc_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-val.md) | 114 | `result-track:ad7985bd8379201536f30f21e803a368dda81206f3830f757bd4a3c3880303d5` |
| 25 | `theorem` | [projIci_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-surjon.md) | 118 | `result-track:d9361c46bb9eeb7f09a05d6016b46fc7913672020f6d3100eca222574777e9e8` |
| 26 | `theorem` | [projIic_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-surjon.md) | 120 | `result-track:8afc463d9e3b2325c17b619d40e9ccfa5005c58392b05379d5aba052099a1e1c` |
| 27 | `theorem` | [projIcc_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-surjon.md) | 122 | `result-track:09baf59e0d58fc60b5e59e9b07893acf63ba3012fb87a5482e85b1253653f37f` |
| 28 | `theorem` | [projIci_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projici-surjective.md) | 125 | `result-track:b9c5822380c9325897e21a4dc48421e75a5dff555eec3fe5e171e88fe3bab9fc` |
| 29 | `theorem` | [projIic_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projiic-surjective.md) | 127 | `result-track:dc84aec762fd7c585373c0316680300bff46b3539501e80403a3c5997deb98b5` |
| 30 | `theorem` | [projIcc_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/projicc-surjective.md) | 129 | `result-track:c316ae889a5917038a19ceebc6eb8a9975e229f723f153db8b5c044159ebd7e8` |
| 31 | `theorem` | [range_projIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/range-projici.md) | 132 | `result-track:1cab247ba6d4b6c553b29745928c91c1bb2ab79854e8febc18d48c48aaeca846` |
| 32 | `theorem` | [range_projIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/range-projiic.md) | 135 | `result-track:34213cb12730f149bc9ec50a966597a789e51cd252252d77047aab304c5cbd3f` |
| 33 | `theorem` | [range_projIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/range-projicc.md) | 138 | `result-track:fb913111504ca1f26562bb527e0ec8f15a86de2218e417690a17e15817c248cf` |
| 34 | `theorem` | [monotone_projIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-projici.md) | 141 | `result-track:ae2649f007642b40c4ad8db95b4bdf6692aa2ec735dfee4ce63ed4eb09c7896e` |
| 35 | `theorem` | [monotone_projIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-projiic.md) | 143 | `result-track:77adaa85b707b476aa9cd6feba8184d2a65b26771249fe219896e53586afdc46` |
| 36 | `theorem` | [monotone_projIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-projicc.md) | 145 | `result-track:af31eadf914d8b4ebfddf8b993a224e329c964742ac836eadd85523df659e517` |
| 37 | `theorem` | [strictMonoOn_projIci](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmonoon-projici.md) | 148 | `result-track:ccf72555bce5794fc3f0a195fda2923919dd082aedd05aec13d0decde6922bf4` |
| 38 | `theorem` | [strictMonoOn_projIic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmonoon-projiic.md) | 151 | `result-track:e8a12c09e840d7995ed0c7458eaeebae7a91aa19c7451b62371c6a547ca47bfd` |
| 39 | `theorem` | [strictMonoOn_projIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmonoon-projicc.md) | 154 | `result-track:f20010d9ac4e5eb801c88a3f440a900afb42e0d2f52e796dc9f6fb5aa9e1ab1e` |
| 40 | `def` | [IciExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend.md) | 158 | `declaration-track:d204b4c1c2b67632b3f4e40797dd73a0630b38e6876571824dd7eddbf5cfa3d1` |
| 41 | `def` | [IicExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend.md) | 162 | `declaration-track:d039812c8757c1f01a59cd136f1c66133077ec2013c1d1761636fcefb3d9c9c9` |
| 42 | `def` | [IccExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend.md) | 166 | `declaration-track:c09d10033863e7ed8682b390964cf0014d87975bc9cf2db58f33ddd52e86e014` |
| 43 | `theorem` | [IciExtend_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend-apply.md) | 169 | `result-track:ede567efe9b633046436e348726417b1fbd406faa6c51fbc80f42867c3132422` |
| 44 | `theorem` | [IicExtend_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend-apply.md) | 172 | `result-track:f7982b5f7fa8d3fd94a10f3e9d8cc59892197c3e3df463c685c6aa0470147839` |
| 45 | `theorem` | [IccExtend_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-apply.md) | 175 | `result-track:531638c7d0a0b5188fbe82aee7b63943d70afc0e8c7f222fc32c207296f22455` |
| 46 | `theorem` | [range_IciExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/range-iciextend.md) | 179 | `result-track:fdd56dfaa11a625bc4e0fdce85fbe206bdea72ac542b7331759c36f202d2d995` |
| 47 | `theorem` | [range_IicExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/range-iicextend.md) | 183 | `result-track:479bd2866acc9e058ed9733117b253d84cfc2d2031eee48737f445601e92745f` |
| 48 | `theorem` | [IccExtend_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-range.md) | 187 | `result-track:658f981b12c32ad895089228347655cfe8e1a94af9cfc2600968e51519c7958f` |
| 49 | `theorem` | [IciExtend_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend-of-le.md) | 190 | `result-track:0928b9a542dfa8f1bb3dd7c6abd0d648902d889031d8b2bd647d323a9fe52f34` |
| 50 | `theorem` | [IicExtend_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend-of-le.md) | 193 | `result-track:6bed54a631fdc27dcf8124e43a5c39f283bff9aaafc01a5300855100230e852b` |
| 51 | `theorem` | [IccExtend_of_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-of-le-left.md) | 196 | `result-track:d55e9c3a7c921f23082550224d41658acd27273777504f4c468c2d8c401dcbcb` |
| 52 | `theorem` | [IccExtend_of_right_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-of-right-le.md) | 200 | `result-track:2e458deb6cc6a692e38922065d06034734ef309a28399a762bd614571ea9eabf` |
| 53 | `theorem` | [IciExtend_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend-self.md) | 205 | `result-track:eceb2fcd5d94d20d9fe53040ab492027e488c94da91374db00b574660e638534` |
| 54 | `theorem` | [IicExtend_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend-self.md) | 209 | `result-track:81f0e8956617a3161b3d75d80b791c3d8ba322d52a5f312c7c16052ca8ce7c7f` |
| 55 | `theorem` | [IccExtend_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-left.md) | 213 | `result-track:26d61d58fc9a773ae2902f8f5c9cede05f7ac2f6c81fdc61de58099ec91713d8` |
| 56 | `theorem` | [IccExtend_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-right.md) | 217 | `result-track:529a738efcbe6dfcba6274ccbf46ff3369fa902e8ce2fb4f7f8550b8808cee65` |
| 57 | `theorem` | [IciExtend_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend-of-mem.md) | 220 | `result-track:3e601b5c2b21a127e590999c8e0085aa0f0bf843b705d3f9f6d3f2e090fad4a1` |
| 58 | `theorem` | [IicExtend_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend-of-mem.md) | 223 | `result-track:1d9d338ebfecd62a3335a94d6902737a82700ca03636a7466e64e3250c79a0dd` |
| 59 | `theorem` | [IccExtend_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-of-mem.md) | 226 | `result-track:de288557f6736af77868f7d6d44bb55e3992256a6c55ca9838c8e3ec7a99515f` |
| 60 | `theorem` | [IciExtend_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iciextend-coe.md) | 230 | `result-track:f0dbbb80920127ac7a4e26720ec4628c0a87e28a487ada57445a06df72281fcf` |
| 61 | `theorem` | [IicExtend_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iicextend-coe.md) | 234 | `result-track:488550f08fc6864778580cc415b335ff7ce6f6ef45ecdc45b7c9cbf5d5de5805` |
| 62 | `theorem` | [IccExtend_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-val.md) | 238 | `result-track:a81c4648297eaa0a79dadab1b7e5c037f66d8d2b14da50b64be9185f29fbd960` |
| 63 | `theorem` | [IccExtend_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/iccextend-eq-self.md) | 243 | `result-track:fcd19d8224ff696b439c309bd850349d81d703ff831917ff8bcb2aae790edcf2` |
| 64 | `theorem` | [Monotone.IciExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-iciextend.md) | 259 | `result-track:3e0a69fa100814e1fbc2b2862a6cc942fcd0bd45d19709e95a8a17b48fb6ba94` |
| 65 | `theorem` | [Monotone.IicExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-iicextend.md) | 262 | `result-track:ac13eb080d4fe04741f104e4810a2f2d9e9a9be5dcd969a3b42aa27d19a48a86` |
| 66 | `theorem` | [Monotone.IccExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/monotone-iccextend.md) | 265 | `result-track:20cd82128d3fe7ffc89271589a0e6e7746e1f0a769a95f0d7241805ade3d24c2` |
| 67 | `theorem` | [StrictMono.strictMonoOn_IciExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmono-strictmonoon-iciextend.md) | 268 | `result-track:e9485f227955a2bf55f48cceffc8dba323d37beaab4584f2745453632b6d619f` |
| 68 | `theorem` | [StrictMono.strictMonoOn_IicExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmono-strictmonoon-iicextend.md) | 272 | `result-track:46273ba83c13d17f35b49c24e41794cda6f6f3af575692cf7197c3932007a5f5` |
| 69 | `theorem` | [StrictMono.strictMonoOn_IccExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/strictmono-strictmonoon-iccextend.md) | 276 | `result-track:e51e7ce5affee1f290794303a8b700ee9eb3d41c7e5457e2903f904197f00e6c` |
| 70 | `theorem` | [Set.OrdConnected.IciExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/set-ordconnected-iciextend.md) | 280 | `result-track:e42ecae62509c6c1f91382a0fd87ec655eb9811a75dcfc69cb8c24008f9f4063` |
| 71 | `theorem` | [Set.OrdConnected.IicExtend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/set-ordconnected-iicextend.md) | 284 | `result-track:4d4dbff38637029e068cf1468c90844c409838d2f386b577995f06ef628e0178` |
| 72 | `theorem` | [Set.OrdConnected.restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProjIccNamespaced.lean/declarations/set-ordconnected-restrict.md) | 288 | `result-track:9e40a332d8d26b5c84d217d9e8383c092e28d938efe8fcfff44766fcfe15a316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ceb302dcdfddb5c19bd13aa8574f36afbe586f098058d8378c43db64aa55f5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variant5049151c552e292e5ba869c2970cab0240f347d1694ae566c24085d06467d82f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProjIcc/Variant5049151c552e292e5ba869c2970cab0240f347d1694ae566c24085d06467d82f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
