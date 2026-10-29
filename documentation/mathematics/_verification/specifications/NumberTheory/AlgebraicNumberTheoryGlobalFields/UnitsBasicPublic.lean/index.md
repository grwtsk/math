# Verification target: Units Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "788e9840fa0f0e7671ea27256f98b08c17c7576f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `788e9840fa0f0e7671ea27256f98b08c17c7576f`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean.json)

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
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/rat-ringofintegers-isunit-iff.md) | 46 | `result-track:54036fb0ed18bb816586ec4b07b400edf3c81c75533638567bfddb3d0227a881` |
| 2 | `theorem` | [NumberField.isUnit_iff_norm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/numberfield-isunit-iff-norm.md) | 59 | `result-track:a4975135321bc15fca9099f10c177704266a2492df3efba07c7c3fa5d69e99cf` |
| 3 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/instance-source-edition-5.md) | 70 | `declaration-track:fd10a5e7f2bca12c3ae25b30ff1ad96f57042535e80ce8e50246cc7ee9e5dc18` |
| 4 | `theorem` | [coe_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-injective.md) | 73 | `result-track:6c50c22d53c7c3a4f328e0142516b9498b9d9ea7cc3a4ac08f1636a27d86b965` |
| 5 | `theorem` | [coe_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-coe.md) | 78 | `result-track:571b7b05b7db0bfcefb0656b1a0adacdf0f9db145a8c88d126bbc90681236346` |
| 6 | `theorem` | [_root_.IsPrimitiveRoot.coe_coe_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/root-isprimitiveroot-coe-coe-iff.md) | 80 | `result-track:3c66e601934e65981ca79cec4e2581f8c02c91401b4603e5f63055e969df0c0c` |
| 7 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-mul.md) | 85 | `result-track:862fee5b0a5b806c33158f969420bca2bca9c04dd9e577e2eb3dade9ef4e09c2` |
| 8 | `theorem` | [coe_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-pow.md) | 87 | `result-track:8b7821ede5a00471ba37b1ed0ca46b515505079310010d3a6caedca7880c56e1` |
| 9 | `theorem` | [coe_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-zpow.md) | 90 | `result-track:99bf0f7e7ab96fd37c399d055e0eb51e28565651e3bb899971c99649a7ea9541` |
| 10 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-one.md) | 94 | `result-track:4a63dd1aaa6e25212b72f296bcab417bba9ad813e37f0b614bb9350f912e0651` |
| 11 | `theorem` | [coe_neg_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-neg-one.md) | 96 | `result-track:9eb3c64765d59e636c526000a3af36f060f978ee1b4cd0beeee5e661fc602b7a` |
| 12 | `theorem` | [coe_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/coe-ne-zero.md) | 98 | `result-track:8e98a002056a8a7dadc5efb93cd9c0a9c9c49efaab3e6a89630010f533365b4a` |
| 13 | `def` | [complexEmbedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/complexembedding.md) | 108 | `declaration-track:992e17a28286a243b685a51fb3bbeda10f4f3f4e667842028c48a099a1339139` |
| 14 | `theorem` | [complexEmbedding_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/complexembedding-apply.md) | 112 | `result-track:2f05d798c64c040d0321a405c602e3a8411168d632ac941209ae0287cb5cc731` |
| 15 | `theorem` | [complexEmbedding_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/complexembedding-injective.md) | 115 | `result-track:46945082b00b6c620bfb8d5837d2c9496509dadebffcbbf6bb4372ea087ead96` |
| 16 | `theorem` | [complexEmbedding_inj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/complexembedding-inj.md) | 120 | `result-track:998cba5d51b603036954a6be9b6a0a810866f372cd3c1e72afe7d5e496d8bbf4` |
| 17 | `theorem` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/norm.md) | 129 | `result-track:e406ae7d3a287e518549563835aa3f0e92dd096bb0cead1db343aab0551931c7` |
| 18 | `theorem` | [pos_at_place](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/pos-at-place.md) | 134 | `result-track:35e33f7c030f29b989f68a691c76631e77f8bcdab6a72531ec5346d0abae5218` |
| 19 | `theorem` | [sum_mult_mul_log](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/sum-mult-mul-log.md) | 138 | `result-track:69bfbcbfefdf00a6f6bdecdc803d704ade2b5e4379dd1a2d109a788e33de6c26` |
| 20 | `def` | [torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsion.md) | 146 | `declaration-track:98415c90db10c71e513ee0212d6ad0f425912c346f9fda62d24784b9ff4cc878` |
| 21 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/instance-source-edition-3.md) | 148 | `declaration-track:5d49f069da0f843645be6da50fb6a1f5b33edb60ab29a49a6cfe00b1d337cc8e` |
| 22 | `theorem` | [mem_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/mem-torsion.md) | 152 | `result-track:1e37a90419e86bb6628cc2a3f1c5aefd614c17c76b94627bd0e9b368381d71f0` |
| 23 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/instance.md) | 162 | `declaration-track:18d0f96fcd281233944fc6b1cb84b7d238abc01c51886d14b9ac2f18aeb758b5` |
| 24 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/instance-source-edition-2.md) | 172 | `declaration-track:4e99ea9c930607df085881284e643eda6a361085b6fb3db39652775357e558b6` |
| 25 | `def` | [torsionOrder](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsionorder.md) | 175 | `declaration-track:a196a1679d6ad0a5087c124ecdbdda930e058fd9ea2936eb9b06d61a41abc038` |
| 26 | `theorem` | [torsionOrder_pos](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsionorder-pos.md) | 177 | `result-track:f66509d808632a6ce4a46775dd1657af50912536125ae6ebd5015cbd9c12c6fe` |
| 27 | `theorem` | [torsionOrder_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsionorder-ne-zero.md) | 180 | `result-track:951e11a43156b45688a3da7ee1cdb477c851dbf5c8d0a5de2986be13d6d82208` |
| 28 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/instance-source-edition-4.md) | 183 | `declaration-track:dc001ed849b655e2002115641d561694b95e2bd237571c5f67800a70254004a4` |
| 29 | `theorem` | [pow_torsionOrder_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/pow-torsionorder-eq-one.md) | 187 | `result-track:9b41e8220f05f51fef985edaf7a3f8e6d45226f794ea31019b5936c7240963bd` |
| 30 | `theorem` | [rootsOfUnity_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/rootsofunity-eq-one.md) | 194 | `result-track:34c51c6370b224009e4ea97bedf1f3d27e680c3d13434d563c43e80d204fa0f5` |
| 31 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/rootsofunity-eq-torsion.md) | 208 | `result-track:4bb1fd49db9de1b6bf952364e16ce8a2fd697985110b1612b8bb17de7c89d4f0` |
| 32 | `theorem` | [map_complexEmbedding_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/map-complexembedding-torsion.md) | 220 | `result-track:34ada22b9934b878a1f688f7fe8f1041261ab035d5cd8f1d4ec6bd66af698415` |
| 33 | `theorem` | [even_torsionOrder](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/even-torsionorder.md) | 229 | `result-track:0196bdcfe96f1a21355698ec46ced15282e1ce97c0dcdfa3e082502abde66de5` |
| 34 | `theorem` | [torsion_eq_one_or_neg_one_of_odd_finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsion-eq-one-or-neg-one-of-odd-finrank.md) | 242 | `result-track:ee085fe8271b14ed3096868eb6770cfc2141a4538e313b84174bd9401eb8aa97` |
| 35 | `theorem` | [torsionOrder_eq_two_of_odd_finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicPublic.lean/declarations/torsionorder-eq-two-of-odd-finrank.md) | 254 | `result-track:629d1f569b7741c179823e7036c5a93f1957835f5f0d6619298254d1603889c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5c8a2eddad8ffc5653248e32e0b815d92689194ff5c12f7371f4d94f4316437 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
