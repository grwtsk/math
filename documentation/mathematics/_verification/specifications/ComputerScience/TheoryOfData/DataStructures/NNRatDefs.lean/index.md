# Verification target: NNRat Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcee1417729a3d28a5e9d1e4082beec9138ca435",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcee1417729a3d28a5e9d1e4082beec9138ca435`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Rat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.instZeroLEOneClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/rat-instzeroleoneclass.md) | 53 | `declaration-track:ac9bb70c8f00645b902fca9e00f49a2c595ebf970b2478e7cd2d8ec1386c2c0d` |
| 2 | `instance` | [Rat.instPosMulMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/rat-instposmulmono.md) | 56 | `declaration-track:8929e14bef9611f3021164c88482d443c832ed0c88d08d794dc42ef3640e70a6` |
| 3 | `instance` | [instNontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/instnontrivial.md) | 70 | `declaration-track:7a8b60464a08fa2878fb95def63ca1b1dab920b748bb27c9a1e0e904e4fe2782` |
| 4 | `instance` | [instOrderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/instorderbot.md) | 71 | `declaration-track:202977366bfe079c063261608c372f9e76c261188927313539e6dfd15fdb9f8a` |
| 5 | `lemma` | [val_eq_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/val-eq-cast.md) | 75 | `result-track:098100ff574089f6be026b1e91324e0f7ce37deff6573dced46efe5e4ece6b8e` |
| 6 | `instance` | [instCharZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/instcharzero.md) | 77 | `declaration-track:fed63b0b7441480eaa1df880a53d0c9e6c2c182a51b58fd3020fed744772d7b6` |
| 7 | `instance` | [canLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/canlift.md) | 80 | `declaration-track:a1c7dab452ff9893c6f1166d2a2d73666d93c7c7f926d8ad952db825c398362e` |
| 8 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/ext.md) | 84 | `result-track:b460414c9459372f3e1fe36de06934beec5ab7a0c299036dd18ef1ab87e4c13c` |
| 9 | `theorem` | [coe_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-injective.md) | 87 | `result-track:c781868e08f03a7738dc040d790da994f9ad7c33e4fdfb60720796779e9244f7` |
| 10 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-inj.md) | 92 | `result-track:231c96114b841b132095a22d756cf8e8571f635fec762b29ddb83ba5cc0c2266` |
| 11 | `theorem` | [ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/ne-iff.md) | 95 | `result-track:ceea23513951e4ce0db0160e3a64f0b84f26c84c30b82705003e2739f84b6752` |
| 12 | `lemma` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-mk.md) | 99 | `result-track:6626c6f968934a1c0db55c6c001afc2791c9c7d8380f33cf46bf5d4cb5638fdb` |
| 13 | `lemma` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/forall.md) | 101 | `result-track:bb25a58c46a3fca4ef5b61d2d929f38edf6df56ec447ada69023780b68fd781d` |
| 14 | `lemma` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/exists.md) | 102 | `result-track:e463ce20302125bd6506fb95e865187f1b53010c715ab623a975451e3fa23a15` |
| 15 | `def` | [_root_.Rat.toNNRat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/root-rat-tonnrat.md) | 105 | `declaration-track:1da7646bc4b5dec9d755ec5c99335dcf4d89f57ed332057582b91fc7096c5ac6` |
| 16 | `theorem` | [_root_.Rat.coe_toNNRat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/root-rat-coe-tonnrat.md) | 108 | `result-track:338cc3d7011bae619efd72181f3a75181574872af7fc2576acbc286fa1a05ada` |
| 17 | `theorem` | [_root_.Rat.le_coe_toNNRat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/root-rat-le-coe-tonnrat.md) | 111 | `result-track:afa3faa34683c3d6a002c8fb36e503cba4412905ed454c3518f4ecc9a0c75d86` |
| 18 | `theorem` | [coe_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-nonneg.md) | 117 | `result-track:44d157f62fa56b482bb9c5d98df538190a01d7d749b2e4ede444bb6aea487f1c` |
| 19 | `lemma` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-zero.md) | 120 | `result-track:cd8f487797854a47f791e9e5479fc5b697293d895fdad8dd4c5aa755f4996df7` |
| 20 | `lemma` | [num_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-zero.md) | 121 | `result-track:ea12b64259841ada774c0fc6ec5b0eb320dc06f353af0dca5f20fc5806698b6b` |
| 21 | `lemma` | [den_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-zero.md) | 122 | `result-track:879400ac7061af369a5cb69ece22b92b09244d19cb4afdbead6aae3b9d4b4804` |
| 22 | `lemma` | [coe_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-one.md) | 124 | `result-track:b1e139396370eec2ec6566ab94c0497e78bb5e047e7b0154d0392480a78afdb0` |
| 23 | `lemma` | [num_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-one.md) | 125 | `result-track:d79471da7c7e0981e3f2c1f6e5f3e80b4fddd89f34583538412ddbbc7f0109fd` |
| 24 | `lemma` | [den_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-one.md) | 126 | `result-track:b487e11381fb983d56a11fa323fad15704afe506de1400371d4882941d9514df` |
| 25 | `theorem` | [coe_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-add.md) | 129 | `result-track:8b52ffa90fe4cafd6ea007b22380f58190ea020e9f5e57fb920536d90d8e15c4` |
| 26 | `theorem` | [coe_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-mul.md) | 133 | `result-track:cc344de9c56d815211167dd4d2f0fb8ff2669d587cc498b932bec476aebdeb7f` |
| 27 | `lemma` | [coe_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-pow.md) | 136 | `result-track:d070b5d325dac9b4c82e37d29c83711a0118ff2ed01ce6e0aed748c12d574492` |
| 28 | `lemma` | [num_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-pow.md) | 139 | `result-track:ec58d2229b9f200921b20f946853fb1a27e5f1b156f65b21ba0a1c08a630d923` |
| 29 | `lemma` | [den_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-pow.md) | 140 | `result-track:a16ea90636a408564b53730a6d92af285e661d8e6f865d4b06e92e58e59d34f9` |
| 30 | `theorem` | [coe_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-sub.md) | 143 | `result-track:dbf36cffc9935107388abf2e45b806798ebe106959e71867e10fb628cd7b7ca8` |
| 31 | `theorem` | [coe_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-eq-zero.md) | 148 | `result-track:c474da13b653ed1cc6943d3b876bb772f9302e11d23ddebc31afc8a30414361f` |
| 32 | `theorem` | [coe_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-ne-zero.md) | 150 | `result-track:6d5536dc9299a647b045d7d21973eb52b10b709953997878ee9f729200b97728` |
| 33 | `theorem` | [coe_le_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-le-coe.md) | 154 | `result-track:24c860ec020774dffba04437b6864fe30d377b5f7a4a6ee50e76d70ee85d7f65` |
| 34 | `theorem` | [coe_lt_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-lt-coe.md) | 158 | `result-track:8925485b4b126cdd3172879a8707a16bbb671d2b32b1b036b12cfc715357f6ac` |
| 35 | `theorem` | [coe_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-pos.md) | 162 | `result-track:3caaef4de114dd9da3c469883f4af96099ee029a9b4b80269811773a95c29110` |
| 36 | `theorem` | [coe_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-mono.md) | 165 | `result-track:02024f1edd1d83eaaaf3d43b2afd19084166b38c30401fa1bed755ca65176f3a` |
| 37 | `theorem` | [toNNRat_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-mono.md) | 168 | `result-track:082fa0656bec5b2ad3704965ba727d9ab3c7604d8efd57c89cb46f83a5f66c9f` |
| 38 | `theorem` | [toNNRat_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-coe.md) | 172 | `result-track:268ee86eadfa524ffb9a43babd440654d3eda59ffffd3569cb4e9408469c8a3d` |
| 39 | `theorem` | [toNNRat_coe_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-coe-nat.md) | 176 | `result-track:6aa4b195ce592442fc646dc7010216f50099bbc3a74419188f4c108fa270f025` |
| 40 | `def` | [gi](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/gi.md) | 180 | `declaration-track:d6a1350a04e74decbe9ed941ff62f83160bab6e6c1082708c29f3716e891a01b` |
| 41 | `def` | [coeHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coehom.md) | 184 | `declaration-track:916fada0847acc83c295b7f490d940e7992b28bc66f54e1a8fcb666c93dc2a1d` |
| 42 | `lemma` | [coe_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-natcast.md) | 191 | `result-track:5d38ae05b37aeba60f7e925dc7c62f9dd8357427ef8f05923c205c4c2ceabeee` |
| 43 | `theorem` | [mk_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/mk-natcast.md) | 194 | `result-track:fb3644e6f762ac95eafd4a4d6c0c8b2eced4428dfe048c628e96bec738820ee8` |
| 44 | `theorem` | [coe_coeHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-coehom.md) | 198 | `result-track:d2548a9b9024ae919f4ec640cf700f5d9139acf1bf4a1169aa81803eab45630d` |
| 45 | `theorem` | [nsmul_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nsmul-coe.md) | 202 | `result-track:a17f6af5d1cda35d0be32505fc8afd44a8e082140d57a6bdbd5284eec598ce72` |
| 46 | `theorem` | [bddAbove_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/bddabove-coe.md) | 205 | `result-track:e4aa1b5a9a476a95d315c882f7a7e26713b9a0ab5ec7fc1321aeded1a8f3290d` |
| 47 | `theorem` | [bddBelow_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/bddbelow-coe.md) | 211 | `result-track:af135be04bc66ddaca3776a6635219e8e9e1b993a88a45bb48d1684c83843a9a` |
| 48 | `theorem` | [coe_max](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-max.md) | 215 | `result-track:c04b763dbe58832e172e47359d2bf95f8d31313dbfe919be5a36f1f45cd95a25` |
| 49 | `theorem` | [coe_min](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-min.md) | 219 | `result-track:0e661574593829361ca22d6448babb26c28c69cc0bed5568732ff062ca1faa8b` |
| 50 | `theorem` | [sub_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/sub-def.md) | 222 | `result-track:0de48f7ee6cf7714054b2955e15f5f31d11847e69b2678563896e2d59f4f544d` |
| 51 | `theorem` | [abs_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/abs-coe.md) | 226 | `result-track:87791eec0c7c9d757c8816dbc4855ea3779369a957d6ec3abb0c59fcfb1ab12b` |
| 52 | `theorem` | [nonpos_iff_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nonpos-iff-eq-zero.md) | 231 | `result-track:bdecdaa200a92c213167021675d50b465c545c124e817b89f941dda1a3f546fd` |
| 53 | `theorem` | [toNNRat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-zero.md) | 243 | `result-track:f58bf82a80a932ad0891c9ab738441a0273e6ba97da91f060f5f11bc23151fe1` |
| 54 | `theorem` | [toNNRat_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-one.md) | 246 | `result-track:d21446517361998e4ea56950de1cd223823adb9531c4ed6cf87a196f22bb38d4` |
| 55 | `theorem` | [toNNRat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-pos.md) | 249 | `result-track:469b81c288c918bcb1eec8e8798dfba814c3feb669059541f4a2b6541bbc4cfe` |
| 56 | `theorem` | [toNNRat_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-eq-zero.md) | 252 | `result-track:7bf4b7e34d37ee3dda9ec447013be4c077cba461b2feba285712ceb22d2f83cd` |
| 57 | `theorem` | [toNNRat_le_toNNRat_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-le-tonnrat-iff.md) | 258 | `result-track:712f651e60dfd86b03aa2f96d4ac372ee7cbb926faa2ea3adafb003bfa882704` |
| 58 | `theorem` | [toNNRat_lt_toNNRat_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-lt-tonnrat-iff-source-edition-2.md) | 262 | `result-track:160628ead3685e8683d7ce14bfd64610fd54e64a179551aa97ae806863f08845` |
| 59 | `theorem` | [toNNRat_lt_toNNRat_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-lt-tonnrat-iff.md) | 265 | `result-track:003271b7ccf344c20e08e57ada4f09e526468575a358bff3f335b6916ee837c1` |
| 60 | `theorem` | [toNNRat_lt_toNNRat_iff_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-lt-tonnrat-iff-of-nonneg.md) | 268 | `result-track:89de6f56a42f998fdcf1883537ada1f0381fe390f9e4c26a79e3bbe56f594305` |
| 61 | `theorem` | [toNNRat_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-add.md) | 272 | `result-track:57f14df20c4200018376272932a4d140b56114da4f04d354b1c39f65f2caa957` |
| 62 | `theorem` | [toNNRat_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-add-le.md) | 275 | `result-track:b5ca8e3f32f5ebfa862d6894fa575ea921ec5aba5b5b334facfa715ad4e02f35` |
| 63 | `theorem` | [toNNRat_le_iff_le_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-le-iff-le-coe.md) | 278 | `result-track:47e9936ae2fdb28bb52983f81aa15330349955de4be058781e3f4eb38ec474f2` |
| 64 | `theorem` | [le_toNNRat_iff_coe_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/le-tonnrat-iff-coe-le-source-edition-2.md) | 281 | `result-track:5d97abb158ec7bcb68f28e96f684dcf675ba7adbb7d9b3a394704645a0c8e100` |
| 65 | `theorem` | [le_toNNRat_iff_coe_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/le-tonnrat-iff-coe-le.md) | 284 | `result-track:1b3d84e3dc91eab372b3295436297b664deb525c12f78581dd313c4c229a2507` |
| 66 | `theorem` | [toNNRat_lt_iff_lt_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-lt-iff-lt-coe.md) | 288 | `result-track:752c8ed376a3e744cc984bae950e0802e709a7659eb8f1095dbb24a104f8f9d3` |
| 67 | `theorem` | [lt_toNNRat_iff_coe_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/lt-tonnrat-iff-coe-lt.md) | 291 | `result-track:2800f70547963e3a33660f4da0a2b32e1ab0fcd6a867d8a2d615641c86560c80` |
| 68 | `theorem` | [toNNRat_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/tonnrat-mul.md) | 294 | `result-track:2d357336d148c305fc8aacd832a7988032868c3440ff027e6f0f21b90fafe436` |
| 69 | `def` | [Rat.nnabs](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/rat-nnabs.md) | 304 | `declaration-track:db1405c4ea40082342cb7f50cc0ef721abbe50b1cb8a5f0d6eeac3edd38815d8` |
| 70 | `theorem` | [Rat.coe_nnabs](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/rat-coe-nnabs.md) | 308 | `result-track:ecc78d56a3b58669a84bd9f4f10745475ae973311b12b13e02bf87ecf4b79503` |
| 71 | `lemma` | [num_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-coe.md) | 317 | `result-track:b41dc990ad7531b54d952e01c0f3065e82089f97dadb9d0c0a7ae48ba41edf3e` |
| 72 | `theorem` | [natAbs_num_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/natabs-num-coe.md) | 320 | `result-track:27072e746dc76665e9ba4798af66d5865da3837fa7a5abd3ecf99abf0c133065` |
| 73 | `lemma` | [den_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-coe.md) | 322 | `result-track:2182c57917f2289513608d4424c4267ffd9915e41d82d436ee18f5ff03134298` |
| 74 | `lemma` | [num_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-ne-zero.md) | 324 | `result-track:85a7c09e711e6fd7cd91d2873ef56b598471934950ee54c2f33a06859eaf3806` |
| 75 | `lemma` | [num_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-pos.md) | 325 | `result-track:56bc199beeb48c8c6a38848160cab9940acd3a430ebcc42c1f35f49993c04ecb` |
| 76 | `lemma` | [den_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-pos.md) | 327 | `result-track:4117bfe86dda46b0f1db4dd6f9e958d2e32b65c65f6127a88209da748860ac3c` |
| 77 | `lemma` | [den_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-ne-zero.md) | 328 | `result-track:31b855e59037a7cc4ea863bf28cda3505c368087750effd156dec64ea66c624c` |
| 78 | `lemma` | [coprime_num_den](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coprime-num-den.md) | 330 | `result-track:aac045b4dad44bde824270d97c5e6fe130a6d5b6788b98177c7c06f1f7ae0a02` |
| 79 | `lemma` | [num_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-natcast.md) | 333 | `result-track:ab3b9f263011b67beb61e200d953764a9bf2bec80e0e9ec3885014efa4624cea` |
| 80 | `lemma` | [den_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-natcast.md) | 334 | `result-track:c261f128061f7cb3a1a72bdf0da305179f913e045b45fe7a690f62e95a6bbcd7` |
| 81 | `lemma` | [num_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-ofnat.md) | 336 | `result-track:f90adf3903ae39c943c6e6a487246381e198c08fe60743d3ab254b6cb61bdf66` |
| 82 | `lemma` | [den_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-ofnat.md) | 338 | `result-track:f892b2d3a294abd226dbb81f503f2ac380460705ea98b70f7cfa0c835bf9c97f` |
| 83 | `theorem` | [ext_num_den](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/ext-num-den.md) | 340 | `result-track:b21dafbf324bbba2353b0e1d535fd09b070cd78715738a29ec0656e4a9f6f74c` |
| 84 | `theorem` | [ext_num_den_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/ext-num-den-iff.md) | 344 | `result-track:780e4ad79fdd03b5a32c3abdb215b70c544748dddb99151ff5dd0a7c18d89e41` |
| 85 | `def` | [divNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat.md) | 350 | `declaration-track:cff7d6b25181a44349b2f41194689e4d7885859064fcbb8faa9e2aeea5dff576` |
| 86 | `lemma` | [coe_divNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/coe-divnat.md) | 355 | `result-track:fd0a5b1108e71d430cc33cd2be50ec54f5a0d2581e3aaa09fff4de769db532c9` |
| 87 | `lemma` | [mk_divInt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/mk-divint.md) | 357 | `result-track:f854dedcdc96cc27984407ea9d1d5e0c2504d1cfb000ff8e4762c5f14fb2491d` |
| 88 | `lemma` | [divNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat-inj.md) | 360 | `result-track:e4d1d976b3ec538f5ea08e186ba370faac588ab6bbee5a13a19773662cec737b` |
| 89 | `lemma` | [divNat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat-zero.md) | 363 | `result-track:2d5ff226f4928f4cabd673351501153c9c46d9839594213644cf061417135e75` |
| 90 | `lemma` | [num_divNat_den](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/num-divnat-den.md) | 365 | `result-track:e19f71ac104ff9c0fdcee0f20e17e2bab46d29e2a97b7a15e0125f62d954ee71` |
| 91 | `lemma` | [natCast_eq_divNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/natcast-eq-divnat.md) | 368 | `result-track:8b1aa7b1acc83f6ac98693b0d5a04d3913f9921f4379df9c5e6b2ca1eff2733c` |
| 92 | `lemma` | [divNat_mul_divNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat-mul-divnat.md) | 370 | `result-track:69f93d7e8ebaad0b1fcd5b535df65043127b54f6720074d1bb4e032b68ff28b2` |
| 93 | `lemma` | [divNat_mul_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat-mul-left.md) | 374 | `result-track:2c76c2b165d9fe286e59d1bfa3040557577e5748284718f78753038e5b77766b` |
| 94 | `lemma` | [divNat_mul_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/divnat-mul-right.md) | 377 | `result-track:ecc75d63d06d16d1ff64cc54a15684965ebe7e66d4ce564a52ad58fbbef7f1c6` |
| 95 | `lemma` | [mul_den_eq_num](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/mul-den-eq-num.md) | 380 | `result-track:eef7b503af6349b8c616ac6bc7800fc05e0ea144fde084fe55f4abcf97f47250` |
| 96 | `lemma` | [den_mul_eq_num](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/den-mul-eq-num.md) | 386 | `result-track:23fe4144d02e317d31c57cf1ef4a618f2fdb294d288d2f1e6711001ed93be433` |
| 97 | `def` | [numDenCasesOn.](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/numdencaseson.md) | 391 | `declaration-track:6909cffc02c9eea06c247ab68184b87a08c0b8ae688de009099157192c0d60cd` |
| 98 | `lemma` | [add_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/add-def.md) | 394 | `result-track:3fbbd322d784400363bf863ed908f7a88f77e2619ec42b2461158adef1f69e0b` |
| 99 | `lemma` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/mul-def.md) | 397 | `result-track:9ee64a5c0090a227b07774d408b0d2e8282282cc3a3b25b627b115277438bd00` |
| 100 | `theorem` | [lt_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/lt-def.md) | 400 | `result-track:ae6cb3bd9abf213bb4ba01e68bc908fa92e91856d352b26bf016df0519e46e3d` |
| 101 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/le-def.md) | 403 | `result-track:4d6f8312eac11ae9a2daba3142b2ea6b07d36fe69b944edf138715066fe4bd0d` |
| 102 | `lemma` | [nnratCast_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nnratcast-eq.md) | 410 | `result-track:516e0595f43c81ac37311635edcb3d3c5b316d6bf8bfbe8b1f3d16102d2aa630` |
| 103 | `lemma` | [nnratCast_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nnratcast-le.md) | 411 | `result-track:2d858e63fe7a55d6926620d7d3bdd301ed542e0d9279407a8e2fd365b60025f6` |
| 104 | `lemma` | [nnratCast_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nnratcast-lt.md) | 412 | `result-track:2451d51f1307daa87b53ae83d139db85a3ffd6256e61607b1f1b8d946eb1a016` |
| 105 | `lemma` | [nnratCast_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/declarations/nnratcast-ne.md) | 413 | `result-track:7fe932b8501117d4e1ab103f50c084ecddb58a870fecbbc9cdcded9668c8429b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b48ef80ee3f6bfdca9ac9699151bd1b310b0536441a27f9f4f2df23b656b048 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
