# Verification target: Add Sub Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3d18adf9de62fdc3c0158f6ce3a56c15ac380dc",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AddSub/Variant90b59c19d1b47eaa8b5434f24e6716671120f013f1c9a09abb6d4979f5a797aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3d18adf9de62fdc3c0158f6ce3a56c15ac380dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AddSub/Variant90b59c19d1b47eaa8b5434f24e6716671120f013f1c9a09abb6d4979f5a797aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AddSub/Variant90b59c19d1b47eaa8b5434f24e6716671120f013f1c9a09abb6d4979f5a797aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Count` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Count` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add.md) | 54 | `declaration-track:69e989c3efbabc0a1266ea1db2f26bf25cae82a5f011ff2cbc319a840eaff57b` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:c7c118f78c806bde331b3e4b7f3983944efb834f8f40b1fde5cc38ff24848cb1` |
| 3 | `theorem` | [coe_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/coe-add.md) | 62 | `result-track:be43c07f4f63e19c7c3893a3c8267d78197406990853852fb5b6911907036833` |
| 4 | `theorem` | [singleton_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/singleton-add.md) | 66 | `result-track:78a5e89a61ef9486bddddec4a783687d4041bc8c6a421fecc4cbc6a8481772df` |
| 5 | `lemma` | [add_le_add_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-le-add-iff-left.md) | 69 | `result-track:bc5be2b57d5c1f9864a9eb55d5793b6491e4b8c870325b82b65cda20599f60d5` |
| 6 | `lemma` | [add_le_add_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-le-add-iff-right.md) | 72 | `result-track:b5d4ea1e82df7318911e82dce1c12f27b4c325347d0d413282cdb4b2245ead9e` |
| 7 | `lemma` | [add_comm](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-comm.md) | 78 | `result-track:8da774432edfc050d6e7a544a75256ac03a039ab8a08d6febeb8bbd2a3794e05` |
| 8 | `lemma` | [add_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-assoc.md) | 81 | `result-track:d2e3087f2641119ed5113aea1205f6f10529c4d2475c87cf3ce5947d9389e2ed` |
| 9 | `lemma` | [zero_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/zero-add.md) | 85 | `result-track:29cd05d43d48aab28a864d0858e33b2e50e711d9549b416e4ba933914ad9f4b6` |
| 10 | `lemma` | [add_zero](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-zero.md) | 88 | `result-track:0c149073b2fac809da47f12cd8c3df3a4f2b2b84502625635cba07ad746fe291` |
| 11 | `lemma` | [le_add_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-add-right.md) | 91 | `result-track:d384bf82b75a485f24e38b67320a39b2a1152f397635209788c018521d276191` |
| 12 | `lemma` | [le_add_left](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-add-left.md) | 94 | `result-track:6345b2dcb20cff0d954d924b6ad76e864fd3a2984fd79921f8cec1ad9887be26` |
| 13 | `lemma` | [subset_add_left](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/subset-add-left.md) | 97 | `result-track:1f1d0c86bd4d741f7d3a8194a1d3b34a1a2c17f97ca75ccc39686caea73cd68e` |
| 14 | `lemma` | [subset_add_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/subset-add-right.md) | 99 | `result-track:2c017f42da7d49df17bb4cfa2dce3e5e9fb53943db24866e3945edb609316934` |
| 15 | `theorem` | [le_iff_exists_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-iff-exists-add.md) | 101 | `result-track:dd8b418c4aa1f666f15371678489729703ba93afa86fd9ce74f30745cb525d79` |
| 16 | `theorem` | [cons_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/cons-add.md) | 109 | `result-track:c40d8f441a0368ad0c48d3d18e227769d106653142d84ae81f521b346bad1d35` |
| 17 | `theorem` | [add_cons](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-cons.md) | 113 | `result-track:dc084ebd6ec361489d4c6429e0e532ba12f18fc3ad19544a5d920f7b5a2b359c` |
| 18 | `theorem` | [mem_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/mem-add.md) | 117 | `result-track:8f7a3c862ff31791b16cc9e72823e3d9fc59667f12e8dd614e4165575f1d3363` |
| 19 | `theorem` | [countP_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/countp-add.md) | 123 | `result-track:b847b607fa6cb9282dc0e7078c595e60f52f6b9054ec413f97e8007e7bce21ce` |
| 20 | `theorem` | [count_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/count-add.md) | 128 | `result-track:dae582ab7eee6a74ffadc8dcd7bec976eded3066af3aaef4a78c2faee3888afb` |
| 21 | `lemma` | [add_left_inj](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-left-inj.md) | 131 | `result-track:d7fd7b0e4eb581df8c315e19283eec101574b8df1e794ef9b94f080514b272f8` |
| 22 | `lemma` | [add_right_inj](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-right-inj.md) | 133 | `result-track:abd3f305d3a79b8f4d0c85213958920584cac2f5485bcdc7463e99cdfe77b295` |
| 23 | `theorem` | [card_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-add.md) | 136 | `result-track:dd2bf59b0d9a59c79003968d1980930e50fb6600a55e959fe83ff4d0f1fa2752` |
| 24 | `def` | [erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase.md) | 148 | `declaration-track:1186f869ae99b3ed60364c0e75444cd2809ded5e482b2157117ced3e517f7adb` |
| 25 | `theorem` | [coe_erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/coe-erase.md) | 152 | `result-track:a408085421f22f773422e5c4e9ca2fb8303c50b57a180994f9ad1e6ab0b8d738` |
| 26 | `theorem` | [erase_zero](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-zero.md) | 156 | `result-track:6111cb7b130ffb81eb2f8437b778db775345e26a7df36adb5a54ad141f74da35` |
| 27 | `theorem` | [erase_cons_head](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-cons-head.md) | 160 | `result-track:b500d643014492ae61e8abab6bd4ff84c2ee9235deadd18415f5c1f4b809529c` |
| 28 | `theorem` | [erase_cons_tail](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-cons-tail.md) | 164 | `result-track:1033a26852c6c1b02e8c8e041d0ad7267bcbad4f8f47e3b0f4131e5011488db7` |
| 29 | `theorem` | [erase_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-singleton.md) | 169 | `result-track:32f51813d2aaffa2a47c7381b0721e448bc91418d6011bf534c1d48db83caa16` |
| 30 | `theorem` | [erase_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-of-notmem.md) | 173 | `result-track:3a55551ed794fb37a574448499630806210a081a0676983a8db93d9fdeef72c9` |
| 31 | `theorem` | [cons_erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/cons-erase.md) | 179 | `result-track:86ff5db01b6ddc9899eede077dd1e63cea3af98354cfd6da6e8c71fa9e5c41fd` |
| 32 | `theorem` | [erase_cons_tail_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-cons-tail-of-mem.md) | 182 | `result-track:04a52e76a6f640c13382cb4638fbc1b11ebbdeb32c91a1c6a213bf6145b1dfe1` |
| 33 | `theorem` | [le_cons_erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-cons-erase.md) | 188 | `result-track:666c04648b7ccd52f9a0e8c7226260336a304eaa43eae538f3d1ed27a0939726` |
| 34 | `theorem` | [add_singleton_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-singleton-eq-iff.md) | 192 | `result-track:263d43eaaa6b424ad42dadaecb397b6f25e69f96667e81af7541ff70a53664ef` |
| 35 | `theorem` | [erase_add_left_pos](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-add-left-pos.md) | 200 | `result-track:0e418077af291569aba6212f2a22f34372b21f1ea25c591e244e81d3deff9a7d` |
| 36 | `theorem` | [erase_add_right_pos](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-add-right-pos.md) | 203 | `result-track:c57b6fc0e8ca260582230da8a938ee7c22c141db34e1e5a22eaac1702731c873` |
| 37 | `theorem` | [erase_add_right_neg](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-add-right-neg.md) | 206 | `result-track:0ef6bc9b9ac6c5d062330624e4af2586805ba27969a9ba6ba82d773f641e5405` |
| 38 | `theorem` | [erase_add_left_neg](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-add-left-neg.md) | 210 | `result-track:47baa968282bf9a30017642f84721d162b211ac921684943e0c2a0ac76f79a56` |
| 39 | `theorem` | [erase_le](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-le.md) | 213 | `result-track:32f9feb0a8e9fe5b5aee13a94c8b6be418f12fb40540f45f6b92f5c74905c0a5` |
| 40 | `theorem` | [erase_lt](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-lt.md) | 217 | `result-track:32abaf03042c2b08a5ca8b0dd5c7a171c8547487523131b72cfb7fe1a3edd074` |
| 41 | `theorem` | [erase_subset](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-subset.md) | 221 | `result-track:54a03dc4c325210124ad96845e55f4e59b73523b5a6abd065a04f7e6b62b2387` |
| 42 | `theorem` | [mem_erase_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/mem-erase-of-ne.md) | 224 | `result-track:75cc56eed2d49286db173544ad14c5bf9812104748ed9a205a35e9d3ca233302` |
| 43 | `theorem` | [mem_of_mem_erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/mem-of-mem-erase.md) | 227 | `result-track:461170b85e9080cef57ef9107f5d6105c7a830c71e14751674227d5836ebc03f` |
| 44 | `theorem` | [erase_comm](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-comm.md) | 230 | `result-track:64a57753599e5100c58bb4af7a1766f156f3a20a7d476e4a677aad9defb2c5dc` |
| 45 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/instance-source-edition-2.md) | 233 | `declaration-track:74942ac3ff17cb74f2da4f77d9f610fe34b9ee27021e7b15485be49424ae0848` |
| 46 | `theorem` | [erase_le_erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-le-erase.md) | 236 | `result-track:8c96beb3d0682a0c9be07aa6093f161545cdcc8003c878fa65da4b84f28044b0` |
| 47 | `theorem` | [erase_le_iff_le_cons](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/erase-le-iff-le-cons.md) | 239 | `result-track:0392453b1f926d820bcac5796aa1e58f6238a2dd436283205c558434123e5320` |
| 48 | `theorem` | [card_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-erase-of-mem.md) | 245 | `result-track:121bac4b402a8b3bdb37561a256e389e1cc9203db8f167dc99d4d3656d32d0c6` |
| 49 | `theorem` | [card_erase_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-erase-add-one.md) | 249 | `result-track:62c527999fc757c824d3a170419261e57bd6ff81ca6f2b1f95d26f2eb88cca60` |
| 50 | `theorem` | [card_erase_lt_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-erase-lt-of-mem.md) | 252 | `result-track:02889babfac62a9fa45950534a165de202743f2ee2e4237f8f1a45756fdae84d` |
| 51 | `theorem` | [card_erase_le](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-erase-le.md) | 255 | `result-track:63c9236db37ac995b95d3d9890f5b4277e8be13db16554c577539317e20366e0` |
| 52 | `theorem` | [card_erase_eq_ite](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-erase-eq-ite.md) | 258 | `result-track:6c89399babc8a0dbd36c0ebbd014bba966279c03b682ee02353689b3136c8866` |
| 53 | `theorem` | [count_erase_self](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/count-erase-self.md) | 265 | `result-track:df19f1bcf91507adf0433120af8e44cedba060e8c36083572f8034617cf2ef3b` |
| 54 | `theorem` | [count_erase_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/count-erase-of-ne.md) | 270 | `result-track:8bec97a7d34812184e6ec74ed4a80c18fe55baf746051ec4b13472a3f58de151` |
| 55 | `def` | [sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub.md) | 284 | `declaration-track:7538740fc92dace2c8790e8651c0e8b023202384873d926f29f8dca45658739b` |
| 56 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/instance.md) | 288 | `declaration-track:37dc9b1127bbc24eecf16873463a8cbaa21b4739515ca45e1a985c150818cabc` |
| 57 | `lemma` | [coe_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/coe-sub.md) | 291 | `result-track:50ebb1aa06a621eb85b4c2c0b632f8cd0c0dd9209bc932c9c938ba1a1ccb089a` |
| 58 | `lemma` | [sub_zero](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-zero.md) | 297 | `result-track:27ae5665e60769fba0dc72ca2091d4741c04a9243e514a93a75112232ecbd35a` |
| 59 | `lemma` | [sub_cons](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-cons.md) | 301 | `result-track:431c0a794ad79fee1d4fae6291c63cd9f0ae13bb1923d224a7fcdd2fae10098d` |
| 60 | `lemma` | [zero_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/zero-sub.md) | 304 | `result-track:77d9b2e582233a5181caec6566ae3056c19a38c4fb26ec72ab64c8d6ae306943` |
| 61 | `lemma` | [countP_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/countp-sub.md) | 308 | `result-track:4004684da395a6d0d982c3c35ad9b76d80d8ad8feac4b89c41251d61f5ab7470` |
| 62 | `lemma` | [count_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/count-sub.md) | 313 | `result-track:d784537712659ebb7d42f989e14179ddd07aecdffede7aa36891a14317c0f3a7` |
| 63 | `lemma` | [sub_le_iff_le_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-le-iff-le-add.md) | 318 | `result-track:26dfacd5ec1871f82451fd0e2ead7d9ba10d3902a3433510ecada7c3652f216f` |
| 64 | `lemma` | [sub_le_iff_le_add'](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-le-iff-le-add-source-edition-2.md) | 324 | `result-track:c6dba0dd8d182a48fb752c32bbc108fd96a70f5f1e17789daae5cb1a18aeceb1` |
| 65 | `theorem` | [sub_le_self](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-le-self.md) | 327 | `result-track:9f430c63b0058a9b15ba68783f976417dc2c303555b6af4d4131dcdb86ca5a1b` |
| 66 | `lemma` | [add_sub_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-sub-assoc.md) | 331 | `result-track:d1ef9bb926a4c13afbce9a7f70f20e76958ddaa04554d97b56ebce35b3739362` |
| 67 | `lemma` | [add_sub_cancel](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-sub-cancel.md) | 334 | `result-track:cfca8235d3213c811b70dcedd697b6b92d3663aef0e5704680f3d343088d3784` |
| 68 | `lemma` | [sub_add_cancel](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-add-cancel.md) | 337 | `result-track:a0338602ca156b7e4049e5fd8c5c2c86dcfd1fa4224c4014ef0ce995a893c1a7` |
| 69 | `lemma` | [sub_add_eq_sub_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-add-eq-sub-sub.md) | 340 | `result-track:fcd170cc0af3bea7d43678f8a2a79dc3e4be7f19a38a210df104aff930c9b02f` |
| 70 | `lemma` | [le_sub_add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-sub-add.md) | 342 | `result-track:e2e2b7b43b5e39983daec4f810b168bf7e9f3f1eeeddaee95846e926ec2f24f1` |
| 71 | `lemma` | [le_add_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/le-add-sub.md) | 343 | `result-track:47d334a51b2b28d98ad921d9da152740afba98b1d1cbe55232fef59ec8273ce2` |
| 72 | `lemma` | [sub_le_sub_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-le-sub-right.md) | 345 | `result-track:1a7e8a77ea91df73837ff51e79a462fd077082fb426e2b3dfea33eb5c3172bd5` |
| 73 | `lemma` | [add_sub_cancel_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/add-sub-cancel-right.md) | 348 | `result-track:19655c6e69f5718ac0025125181b3eb1df0b423090eeca8d2e51d4c877465174` |
| 74 | `lemma` | [eq_sub_of_add_eq](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/eq-sub-of-add-eq.md) | 350 | `result-track:b21dc9d471e1f6057a76db456f5d68e6bb11d194f4956b86df0f8758915080aa` |
| 75 | `lemma` | [cons_sub_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/cons-sub-of-le.md) | 353 | `result-track:6be6720d81c26bdf784ca7d313072721329025a02b7d51b96db5dfc0aac55083` |
| 76 | `lemma` | [card_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/card-sub.md) | 357 | `result-track:2353785cbe9c8c27de37a15929ec87c2d09dfedcfe108391b2961fa9cd279473` |
| 77 | `theorem` | [sub_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/sub-singleton.md) | 360 | `result-track:f1df0028ffd709abaf14f95b84137ccd1dd48efc165fe9981a4d1da49137fd40` |
| 78 | `theorem` | [mem_sub](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/mem-sub.md) | 365 | `result-track:862e6da6ef4dcc8ea59bc18d647f6800c2b02722d786c29a8159370de9ed4581` |
| 79 | `theorem` | [Rel.add](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/rel-add.md) | 378 | `result-track:b2e535d5da74fc91f08d87e86240ede8adec182a1680bd0ca54ab0bb2fca77b1` |
| 80 | `theorem` | [rel_add_left](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/rel-add-left.md) | 383 | `result-track:f6c6dfb919faa8de15f0a619cb69484d206b6dbdf13bc5d16038814e8af73d5a` |
| 81 | `theorem` | [rel_add_right](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/rel-add-right.md) | 397 | `result-track:8973858667194d204ffb7482ab0e8811cfce69c78c2b646da24534c8ac23b070` |
| 82 | `theorem` | [nodup_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/nodup-singleton.md) | 406 | `result-track:3b5fce054cd0704d8688d0971d6e175fd7f569c1c126e830a008e3b402c67772` |
| 83 | `theorem` | [not_nodup_pair](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/not-nodup-pair.md) | 409 | `result-track:0de5350e76ea05ef4ae3229614abef2f06d45e5fd74eadf4a0aef82305d4b55c` |
| 84 | `theorem` | [Nodup.erase](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/nodup-erase.md) | 412 | `result-track:2c27ed7a4e72081262cffd84de1c4b7f9fea95a79f136375cc307fbc20768810` |
| 85 | `theorem` | [mem_sub_of_nodup](../../../../../Combinatorics/EnumerativeCombinatorics/AddSubNamespaced.lean/declarations/mem-sub-of-nodup.md) | 415 | `result-track:30d373091a8df54ab50d6ba1eded88b636fc1a6c8e91f9448bb3336098b191b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d572f19d43961dab8e9f771c3d5a8a28ae12bc71760e1af05ca97e460f836f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AddSub/Variant90b59c19d1b47eaa8b5434f24e6716671120f013f1c9a09abb6d4979f5a797aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AddSub/Variant90b59c19d1b47eaa8b5434f24e6716671120f013f1c9a09abb6d4979f5a797aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
