# Verification target: Convex Basic Namespaced Convex Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba916e3cff660920e51dd42b1afacb020d30e246",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba916e3cff660920e51dd42b1afacb020d30e246`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Star` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex.md) | 59 | `declaration-track:119ef31cce5a895050447bab8bb1cdfb32cf4e2d88103fad555c4f1813832148` |
| 2 | `theorem` | [Convex.starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-starconvex.md) | 65 | `result-track:d6989007284a7bf50a1332ea970f9b155691d9a0b8d6eb668813fad73853dc31` |
| 3 | `theorem` | [convex_iff_segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-segment-subset.md) | 69 | `result-track:4f4e586412f2cba1fb1f9981bc84172d6cf1e562597077133eec89cbc9ff1101` |
| 4 | `theorem` | [Convex.segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-segment-subset.md) | 73 | `result-track:ef68e806c5301f89807cf9de27a61d4ce4f51745815a8b3d4903ee0f3db9fa80` |
| 5 | `theorem` | [Convex.openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-opensegment-subset.md) | 78 | `result-track:58f2c96c87eba74290e3667e39ec3fe45d7028c830b96c023b588e8dc277eeeb` |
| 6 | `theorem` | [convex_iff_pointwise_add_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-pointwise-add-subset.md) | 84 | `result-track:b0e6ab2a18aa656b0f243fce1bc1166f2e1fb10e2c6bf9bd7f6fbb81935013e5` |
| 7 | `theorem` | [convex_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-empty.md) | 96 | `result-track:138448cd9cc758e13582edad3cc62c86853c62ebf33420d5e73bd67db26cd993` |
| 8 | `theorem` | [convex_univ](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-univ.md) | 99 | `result-track:6b3ff0080749d2f8c0568b344f9aeb6aadc65b9c4831782a06a5f097cbb88636` |
| 9 | `theorem` | [Convex.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-inter.md) | 102 | `result-track:414e159dfa3780610fe51d6d1573671c51f37cfb7db68a89c52a60b3349e5ab5` |
| 10 | `theorem` | [convex_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-sinter.md) | 106 | `result-track:5dc993f27de4f32dd63cd90b8504cfc3fb89c30cd9b071f342a0932723631b94` |
| 11 | `theorem` | [convex_iInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iinter-source-edition-2.md) | 110 | `result-track:fe5a09ec71b5d5652456ef18674249c1b72a932c5c64ccc738d92a748f8a3769` |
| 12 | `theorem` | [convex_iInter₂](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iinter.md) | 115 | `result-track:34718088288d72c51c6962bd0dc5dd1b6047049e09a35c8aa2de6448387bbe61` |
| 13 | `theorem` | [Convex.prod](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-prod.md) | 120 | `result-track:d8c5749f28208204e0976a5bb45e0750e9711e860e695cfbd254584e8e634d07` |
| 14 | `theorem` | [convex_pi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-pi.md) | 124 | `result-track:da5b43f48034a7dd0087a7d405a7b161d5e49b5ede86b31c26278c450a31e1e1` |
| 15 | `theorem` | [Directed.convex_iUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/directed-convex-iunion.md) | 129 | `result-track:ae50d08ae5a6b2d94616fcc6378d87e2c655ebc8cd84c2d675dc078154fa9a97` |
| 16 | `theorem` | [DirectedOn.convex_sUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/directedon-convex-sunion.md) | 139 | `result-track:16e1dc155c4ac1fa256c9b358949728f99fd90c5fd61caaaebc6065fb041fe3d` |
| 17 | `theorem` | [convex_iff_openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-opensegment-subset.md) | 151 | `result-track:4851675c94020074e43230009e2824371221e6cb874881b6f76051e1a29cb668` |
| 18 | `theorem` | [convex_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-forall-pos.md) | 156 | `result-track:41c72b424f0ec36ba98341e281da94fa456eb5fdd330e45108b52b0ebd5f5637` |
| 19 | `theorem` | [convex_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-pairwise-pos.md) | 162 | `result-track:2bac3f9409a9ba19472aa7bcf50ddaeb62564aecc318882583043ab4369eaf65` |
| 20 | `theorem` | [Convex.starConvex_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-starconvex-iff.md) | 171 | `result-track:127967dc98f418f8e9ebca83f9277d653374911444d9acf96b5905d9c98723cf` |
| 21 | `theorem` | [Set.Subsingleton.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/set-subsingleton-convex.md) | 175 | `result-track:c52653423416c49eb0b1bfe8240693a53053a391226afb5e8c97bdea2d057a37` |
| 22 | `theorem` | [convex_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-singleton.md) | 179 | `result-track:e1a9665ab89a67f00303c787d2ee311fb023a518483352b8bc7ffe663eadebc2` |
| 23 | `theorem` | [convex_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-zero.md) | 183 | `result-track:830001e9351ff1f156782e1e1560ad32e64925346e78f4da39dcb3e3cb7d91b1` |
| 24 | `theorem` | [convex_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-segment.md) | 187 | `result-track:360c6be7d7c997f25e0c710cf95e61cb4f1dbde116060ef1c45ebcbded7a307b` |
| 25 | `theorem` | [Convex.linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-linear-image.md) | 197 | `result-track:bd3d87c02bafa40063ee2683b6e3866c3fc202c78200e66994fe405e2ab14510` |
| 26 | `theorem` | [Convex.is_linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-is-linear-image.md) | 204 | `result-track:bfcbeb08441282f5334b9a23524f5a2b2d7cdf3aef3619475e235feca9e4346c` |
| 27 | `theorem` | [Convex.linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-linear-preimage.md) | 209 | `result-track:275c77fb85fa75f804eda07e9e95a2a1c7d134dbc7deed8754ef087d617b0977` |
| 28 | `theorem` | [Convex.is_linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-is-linear-preimage.md) | 216 | `result-track:e6508187616345e306c15f1d2ee25d49bcdb42c83d4e2e616ce7a3f1af22a424` |
| 29 | `theorem` | [Convex.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-add.md) | 221 | `result-track:7a2b58a66650e7dbd93fa799a6f3b29ec893d54dba2f448679b99305e6a820fd` |
| 30 | `def` | [convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convexaddsubmonoid.md) | 229 | `declaration-track:04a23c61f4d920380531b4ac67b7f638bf225842883ab24dbeca56eebad8ba79` |
| 31 | `theorem` | [coe_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/coe-convexaddsubmonoid.md) | 236 | `result-track:5fe495022d9bba38cdbf7953c5869ffa8b1e79b822847516c3ce362df87c4db8` |
| 32 | `theorem` | [mem_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/mem-convexaddsubmonoid.md) | 243 | `result-track:498383e85ddcfd560b7261908d2148b1d24a762a322de6632787c93244afa465` |
| 33 | `theorem` | [convex_list_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-list-sum.md) | 247 | `result-track:a2704a87b6fbfb253ab084c896fb924406ca35c3153dd714f8cdc0ce2d105d6b` |
| 34 | `theorem` | [convex_multiset_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-multiset-sum.md) | 251 | `result-track:cc8d3af2e3ec882b02bfa15c852f5b561d2d21d8d8010f6d8192c39ec26cb710` |
| 35 | `theorem` | [convex_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-sum.md) | 255 | `result-track:faf00e2db952645466c5170b282f602c84ea98e4d1c8cf43b294fb31b416290e` |
| 36 | `theorem` | [Convex.vadd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-vadd.md) | 260 | `result-track:64b6843a00816ec52d5e1267bfec06c7685f12a6d7bf645bb57555b4026be643` |
| 37 | `theorem` | [Convex.translate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-translate.md) | 265 | `result-track:e45564d9219d2111db3cb9f2d71044cc56c3441395aa7a23582620cdecdecbcd` |
| 38 | `theorem` | [Convex.translate_preimage_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-translate-preimage-right.md) | 270 | `result-track:d27d989f9c66fb5ad05e30f75d9cc94a3fd1d080708c17625d0617eebfb59025` |
| 39 | `theorem` | [Convex.translate_preimage_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-translate-preimage-left.md) | 278 | `result-track:6aa9af291839fcab4bcabcb77b69ec5a4853e4328082de567894e2a627513a0f` |
| 40 | `theorem` | [convex_Iic](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iic.md) | 287 | `result-track:97435f67651bfd249cd87cf8d9ca4e0fed510cca0dfc2f634c53980cf975bc56` |
| 41 | `theorem` | [convex_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-ici.md) | 294 | `result-track:0965bfb19694aef0c29bad5922173254fd6b5eb44a5dbd942e8f0b3c59740b78` |
| 42 | `theorem` | [convex_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-icc.md) | 298 | `result-track:79c7d165a7bead254d040e9b5abf683030fa54c719798333dd89b05fafcb8b41` |
| 43 | `theorem` | [convex_halfspace_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-halfspace-le.md) | 302 | `result-track:ff227dd4f6cf4826094c9140bd459f4945a77ef12b0acaddda4ae80a01de54ad` |
| 44 | `theorem` | [convex_halfspace_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-halfspace-ge.md) | 306 | `result-track:797da47592516b597cb6414d60fb86d8554822a50c35c84c26d83f32b56bb54f` |
| 45 | `theorem` | [convex_hyperplane](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-hyperplane.md) | 310 | `result-track:dccc2b168ed69ec363f0442993dac17e3ae7bd9d3924af146628f2eb2cc01c55` |
| 46 | `theorem` | [convex_Iio](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iio.md) | 321 | `result-track:e2e01ac100cd00aa7029813751f44655fa754dffd35b9151dd50c116281db851` |
| 47 | `theorem` | [convex_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-ioi.md) | 333 | `result-track:c3ae7c83a90df7e68697081ae2d40d246cf274527525c1c2d9afe8a43902befd` |
| 48 | `theorem` | [convex_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-ioo.md) | 337 | `result-track:e3efc8ad119ac8bd93a5bb7ff1774666291434044db464ee0642c7a966f340fa` |
| 49 | `theorem` | [convex_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-ico.md) | 341 | `result-track:34eb787ba3a3488b7fb616d0d4af58a5990a678a812c2318eeafb6fc8a591b7f` |
| 50 | `theorem` | [convex_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-ioc.md) | 345 | `result-track:8f63499b1c24d562004094a06ad98a3bda42dcd19b40644a51a11e71c28b9bb5` |
| 51 | `theorem` | [convex_halfspace_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-halfspace-lt.md) | 349 | `result-track:e20592fe1f26e52d73bf76dd53c9310918ea8c6af9977ceee0f003dc5743a69c` |
| 52 | `theorem` | [convex_halfspace_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-halfspace-gt.md) | 353 | `result-track:1d839f9fe927d6185e99f29705164d9437654fa82160af0b9ede95e2b5f6fc19` |
| 53 | `theorem` | [convex_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-uicc.md) | 363 | `result-track:115c2722bb2b2d7894e188babb7d69f9646613a3a8bf72ac544248883247e2d0` |
| 54 | `theorem` | [MonotoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotoneon-convex-le.md) | 378 | `result-track:808223b477de2f6f9abce7b548bad702fed5782ec85576516b7bea83a66bee4d` |
| 55 | `theorem` | [MonotoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotoneon-convex-lt.md) | 385 | `result-track:40460ccd45e65ebbe7e30385363bbad34e067f3a14e8a00721c7fb121d3d9e52` |
| 56 | `theorem` | [MonotoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotoneon-convex-ge.md) | 393 | `result-track:20d55242595af2e3a457633257532beacdf2b80526c5c4a582db13c19fd10c9f` |
| 57 | `theorem` | [MonotoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotoneon-convex-gt.md) | 398 | `result-track:8432bb01ca225484af59d0327a639e860f11c47254135abea23a75b9981e1368` |
| 58 | `theorem` | [AntitoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitoneon-convex-le.md) | 403 | `result-track:b0aa2bc50cc5588f15b8c6223a6221fefee406d4852d7672f159367ccf31c18a` |
| 59 | `theorem` | [AntitoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitoneon-convex-lt.md) | 408 | `result-track:f6fcaf900d26c3cdd2b6553ae55906c325a30cf64e33c87bda28b92925cbe4b4` |
| 60 | `theorem` | [AntitoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitoneon-convex-ge.md) | 413 | `result-track:748fd0c720be2ada377cb32f7fdc7485fdf756f6b0e77823d662c3962b9278e0` |
| 61 | `theorem` | [AntitoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitoneon-convex-gt.md) | 418 | `result-track:138848bb4052690892849291851b41f6f2f1f2040bc45c6309c5a7d2db4c5c0d` |
| 62 | `theorem` | [Monotone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotone-convex-le.md) | 423 | `result-track:c8758c9448e8dfcbb5f50af17db058d1b34d3c7fc156334057e58a57e779b3bc` |
| 63 | `theorem` | [Monotone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotone-convex-lt.md) | 427 | `result-track:ff30b85aaaf18326a75df203cf4bfc1edca509342e60bb58611c5fc3d78d89e4` |
| 64 | `theorem` | [Monotone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotone-convex-ge.md) | 431 | `result-track:68431c639453ab417343b021cbcc8ba47b4e75a4cb3c180aa7a13c7bc3971bc4` |
| 65 | `theorem` | [Monotone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/monotone-convex-gt.md) | 435 | `result-track:6953df3418b312134151248fab1690c3ed08cfeccb479661849cdc9fcdd032f4` |
| 66 | `theorem` | [Antitone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitone-convex-le.md) | 439 | `result-track:c2dd1fd23c537e2af241356349931e9599aadbe9281afb759315dc98ca79413c` |
| 67 | `theorem` | [Antitone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitone-convex-lt.md) | 443 | `result-track:c4aafc4d9a854948b8ec26f93cf0b5c75cb2c3381259bcc8f350c833c2561c3d` |
| 68 | `theorem` | [Antitone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitone-convex-ge.md) | 447 | `result-track:b766e57de833384ffdcf5b80edaf2be5cb8817fdd7ffbdfd9cef2320896d3ef2` |
| 69 | `theorem` | [Antitone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/antitone-convex-gt.md) | 451 | `result-track:e42435607e37549b76acbe4dad8f91f0a4294a663273e981e50945de523604ba` |
| 70 | `theorem` | [Convex.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-smul.md) | 467 | `result-track:478d951a3ffcb0c0597fe775eb1112579ba25a84333fe0e061511e5ec4ec5767` |
| 71 | `theorem` | [Convex.smul_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-smul-preimage.md) | 471 | `result-track:c9a29625fc8aca17b676c7968c29f11c02dceef17e3a8808609cc1deab62a32e` |
| 72 | `theorem` | [Convex.affinity](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-affinity.md) | 475 | `result-track:0413f950063041907881cb390af2f9c301108691257471e4545519ef292f387d` |
| 73 | `theorem` | [convex_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-opensegment.md) | 487 | `result-track:826a05c83aa7551f7a5d84946cbf14082b571ccbe3baea9ce4eceacb671c99a0` |
| 74 | `theorem` | [Convex.add_smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-add-smul-mem.md) | 505 | `result-track:2f4b97836d5bdf05336d429251ce01509839d65d1f0904d460bfa8d8cc3cb591` |
| 75 | `theorem` | [Convex.smul_mem_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-smul-mem-of-zero-mem.md) | 513 | `result-track:f10062f9a5b1714642622b7db306f625d744a4c49e8b02f09c001c06a1b106b3` |
| 76 | `theorem` | [Convex.mapsTo_lineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-mapsto-linemap.md) | 518 | `result-track:c610c83c60e209ebd35847f81c6c8b723e9976c1d8226f05b089269b3cfb01c9` |
| 77 | `theorem` | [Convex.lineMap_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-linemap-mem.md) | 522 | `result-track:7606baa0b4de4f3de5e75df5b7d4fe5895024ec34ec4c007141c1067a062d4c2` |
| 78 | `theorem` | [Convex.add_smul_sub_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-add-smul-sub-mem.md) | 526 | `result-track:6eb295149d343b7d4cbac5e490b812f097503ed11f79a599f76d758026f5e1d4` |
| 79 | `theorem` | [AffineSubspace.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/affinesubspace-convex.md) | 533 | `result-track:d57f9f1df09d6cb684e7ac052fd0ef65113cc394e224e780200d2112ab25516c` |
| 80 | `theorem` | [Convex.affine_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-affine-preimage.md) | 540 | `result-track:5755a73a9616710c142a0539a652d2bec851681ac6ca2cf318a46406aaf8f894` |
| 81 | `theorem` | [Convex.affine_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-affine-image.md) | 545 | `result-track:ae87adcf1fb6b0dc4ffabc54ed88b38151947accf97d2ca294e677e68454d7d4` |
| 82 | `theorem` | [Convex.neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-neg.md) | 550 | `result-track:d9900d4b434c063f881eebe5db7e2720328e550af3c7815249cd7dfa5b545f29` |
| 83 | `theorem` | [Convex.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-sub.md) | 554 | `result-track:3d956312a79f530e2ff8acda58202a65eda552c85f34e1d0c70896d76054b379` |
| 84 | `theorem` | [convex_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-div.md) | 572 | `result-track:3d20808c0173ae00c61b91b05bdc01226ddf00d0240323f0f5cd6c9d9bfe44a7` |
| 85 | `theorem` | [Convex.mem_smul_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-mem-smul-of-zero-mem.md) | 578 | `result-track:af4d8cb7ea7ef8ea2b88a78a19baba34e5a6f8d2cdc0de28704b403cb371e16b` |
| 86 | `theorem` | [Convex.exists_mem_add_smul_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-exists-mem-add-smul-eq.md) | 584 | `result-track:b69e5f37d1834969059f05eefe00a7cde4719ca1d027cea8e799548994d029b6` |
| 87 | `theorem` | [Convex.add_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-add-smul.md) | 593 | `result-track:a0998f2156f58fbd417e15e7f6cc7a9c9b36651dc2045661eac32f98795d40ce` |
| 88 | `theorem` | [Set.OrdConnected.convex_of_chain](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/set-ordconnected-convex-of-chain.md) | 611 | `result-track:4b0d85e88306821dcfc4e27ac8a2b7fd992f33b8efdfd6c92c05a9ff6396dc02` |
| 89 | `theorem` | [Set.OrdConnected.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/set-ordconnected-convex.md) | 620 | `result-track:1d81146e9fb82cca42382b6d96917d0c55bd8f5fcc2781e54490feb3d6d4fd08` |
| 90 | `theorem` | [convex_iff_ordConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-iff-ordconnected.md) | 625 | `result-track:e89c6c89f73c5527c92a4827b3a0951a30ed48f41be2a7518f431ccccfe35ecd` |
| 91 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-source-edition-2.md) | 641 | `result-track:c7af05afa7d8adf0e4d9a63d077cadb725f51454a7ae04a6cc8b97d9376ad85c` |
| 92 | `theorem` | [starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/starconvex.md) | 646 | `result-track:f78a2adfbfacb8403246cca1c083e94265310810f4bf525e04631196d023ea1d` |
| 93 | `def` | [stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/stdsimplex.md) | 661 | `declaration-track:b16a16f6d975e85a5c73660d9e8ba61d2102998470e21cf511756303dd35bdb9` |
| 94 | `theorem` | [stdSimplex_eq_inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/stdsimplex-eq-inter.md) | 665 | `result-track:9b0a965d4198f992d61d7dbdd1772002352df9a684fb1b025f7a90cccb7c7cb4` |
| 95 | `theorem` | [convex_stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/convex-stdsimplex.md) | 670 | `result-track:53fd9844017faef8ff2a363382d79890366e9a92d3700317000a8ff38e2d172b` |
| 96 | `theorem` | [ite_eq_mem_stdSimplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicNamespacedConvexSingleton.lean/declarations/ite-eq-mem-stdsimplex.md) | 682 | `result-track:b6f7443d67fdac030a34f6ddbf727508e5abd7edb4d98222e6a655a99539fe58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f72953eca059a4c491d8f62218ced6a6e39a4ff195e44a8c32d62ed7704cbfe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variantd2d3b1b41e3680a01bc658f52509adea6be11bb5a2feff1ee7b1f819add9fbc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
