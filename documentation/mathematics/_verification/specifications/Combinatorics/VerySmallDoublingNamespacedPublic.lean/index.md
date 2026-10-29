# Verification target: Very Small Doubling Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_stabilizer_of_no_doubling_aux](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/smul-stabilizer-of-no-doubling-aux.md) | 58 | `result-track:c442e59665cb6db323ac310f12aac97b43f612f0edec91924eb46acea8b169d7` |
| 2 | `lemma` | [smul_stabilizer_of_no_doubling](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/smul-stabilizer-of-no-doubling.md) | 84 | `result-track:3f630f5ddfd946e7d8ff2bfba2e850c751b1440523e7a52ef23949728d06b8cd` |
| 3 | `lemma` | [op_smul_stabilizer_of_no_doubling](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/op-smul-stabilizer-of-no-doubling.md) | 89 | `result-track:ba0c7fc8b8b4ab0cfbff8951a421f30047e887b229bf56ea228edefa482695d3` |
| 4 | `lemma` | [big_intersection](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/big-intersection.md) | 94 | `result-track:46753f14d19391850a7c620ade43c88d29d28fdb02d597c1fec89b8147612aa9` |
| 5 | `lemma` | [le_card_smul_inter_smul](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/le-card-smul-inter-smul.md) | 103 | `result-track:a4c3db686f1169cbebc8a7d0b23874e85221b593ab99af8490025c6e10dceafd` |
| 6 | `lemma` | [lt_card_smul_inter_smul](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/lt-card-smul-inter-smul.md) | 107 | `result-track:e04e1fe2d6234b72ac79b976356051876fecae792837b2a1e6966c9cf52daa93` |
| 7 | `lemma` | [le_card_mul_inv_eq](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/le-card-mul-inv-eq.md) | 111 | `result-track:519a537d02f58027b9a41b4c4a2002c97d7538a4afee92d09a28ffcc93566f5c` |
| 8 | `lemma` | [lt_card_mul_inv_eq](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/lt-card-mul-inv-eq.md) | 118 | `result-track:6efdabebf081ab3c4a101e3a5eab61302809ab40a118e25a92d42ef8bd301b30` |
| 9 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two_aux](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two-aux.md) | 125 | `result-track:1c0a73a7237fb0fcf3743888fbfcf577954f66b65050e17c99ed2248fc29fba4` |
| 10 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two.md) | 147 | `result-track:2e96ec963412e5c77260c325d78aa7f52d7b0ca939e0511aba90e4ab9180ecb0` |
| 11 | `lemma` | [weaken_doubling](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/weaken-doubling.md) | 152 | `result-track:6a94515312d3b779359394589a1fff659d94533ef125962f472e7e035f15fe37` |
| 12 | `lemma` | [nonempty_of_doubling](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/nonempty-of-doubling.md) | 156 | `result-track:b707a2db0434c936671d294c2bcb936d619f545f5f65626faa5aef623f92b036` |
| 13 | `def` | [invMulSubgroup](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/invmulsubgroup.md) | 163 | `declaration-track:12f4af707d702eff84ac95c629a54ca32b1ac4fa968572031d8e0a657a5df914` |
| 14 | `lemma` | [invMulSubgroup_eq_inv_mul](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/invmulsubgroup-eq-inv-mul.md) | 205 | `result-track:588620c9dec089a98ed774667e7fbfcdf62416e93e3df2ceaf8b9ce7dc3c0053` |
| 15 | `lemma` | [invMulSubgroup_eq_mul_inv](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/invmulsubgroup-eq-mul-inv.md) | 207 | `result-track:5ad274ce708708abf5b26bf423a2d7ded9a24e8e685f835408ad4d679294c8dc` |
| 16 | `instance` | [(anonymous)](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/instance.md) | 212 | `declaration-track:dd7d5217c3293e5ef30dbee51e4d8f30b9eee41f12c121eabdf9cdff0d57d7f5` |
| 17 | `lemma` | [weak_invMulSubgroup_bound](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/weak-invmulsubgroup-bound.md) | 217 | `result-track:9eb2cf1983bd2247953476c0d7333abc83077a7103d53741bc3db77300ad02d7` |
| 18 | `lemma` | [A_subset_aH](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/a-subset-ah.md) | 237 | `result-track:229cc8a41a2a632a90c8fe3bc743f0751a1937d97311078b0bf4a68c072edbfd` |
| 19 | `lemma` | [subgroup_strong_bound_left](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/subgroup-strong-bound-left.md) | 241 | `result-track:e42692e9f29b56efb0390161b3f233783c92d93b1ed68dc0adb3286e35d3ffe4` |
| 20 | `lemma` | [subgroup_strong_bound_right](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/subgroup-strong-bound-right.md) | 252 | `result-track:c15a13071b4968e6bdf7ff10f718f7aeaf6427b52f9ef6879fa982c4a3e43646` |
| 21 | `lemma` | [smul_inv_mul_opSMul_eq_mul_of_doubling_lt_three_halves](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/smul-inv-mul-opsmul-eq-mul-of-doubling-lt-three-halves.md) | 293 | `result-track:18221a6b0baa574f8dae2fd25862bb95394b0c8eec052966d7326d145e4e5188` |
| 22 | `lemma` | [card_inv_mul_of_doubling_lt_three_halves](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/card-inv-mul-of-doubling-lt-three-halves.md) | 297 | `result-track:84186b4490a171f11690a23ef8b98b6921f896e46c15b2dc45a1c2da86fad06d` |
| 23 | `lemma` | [smul_inv_mul_eq_inv_mul_opSMul](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/smul-inv-mul-eq-inv-mul-opsmul.md) | 302 | `result-track:b0b4aee238c811a1349b3e68319743fc3aa74e11bdfbbd30a44468ead02ae822` |
| 24 | `theorem` | [doubling_lt_three_halves](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/doubling-lt-three-halves.md) | 332 | `result-track:b201df60f12e0e07a87a97566901a91af694ca10c2c503f223246b83339020a7` |
| 25 | `lemma` | [op_smul_eq_iff_mem](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/op-smul-eq-iff-mem.md) | 348 | `result-track:561eab8f7a23a119b6369bccf18d2909c9a31f839fe292cf2e136850b5cfeb03` |
| 26 | `lemma` | [op_smul_eq_op_smul_iff_mem](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/op-smul-eq-op-smul-iff-mem.md) | 358 | `result-track:bbc77b28b35c3d8c90cc32e6ccd503eef7d748739b21c3f79a2ca75c4a76b2f1` |
| 27 | `lemma` | [exists_subset_mul_eq_mul_injOn](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/exists-subset-mul-eq-mul-injon.md) | 364 | `result-track:5197987079caf302a264951da38730146cc1d892fe5e60a20c2e12afd2874309` |
| 28 | `lemma` | [card_mul_eq_mul_card_of_injOn_opSMul](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/card-mul-eq-mul-card-of-injon-opsmul.md) | 372 | `result-track:4d8ac99aa024d760944c2afb4dac8d34c188d58de7b5c32e2e589a9dcb9ba4f1` |
| 29 | `theorem` | [doubling_lt_golden_ratio](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/doubling-lt-golden-ratio.md) | 386 | `result-track:2c019b870394bc4e06cbcacc1c96eaf72b74b5b6504a2e4a9e2bbcd516cb792f` |
| 30 | `def` | [expansion](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion.md) | 518 | `declaration-track:2ccd46b9aa0c8e0a86af3607b85a36d8f57cca0ed675b477408867afb469daff` |
| 31 | `lemma` | [expansion_empty](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-empty.md) | 520 | `result-track:db1559a6ecc70d00f8904e382f28b01b9c86b553fec46faa62fbefa1477fb5bc` |
| 32 | `lemma` | [mul_card_le_expansion](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/mul-card-le-expansion.md) | 523 | `result-track:aa8325cc25b572bc00959237ac5295ca562127f2cc28d3c4ffaf9b38a0395700` |
| 33 | `lemma` | [expansion_nonneg](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-nonneg.md) | 526 | `result-track:551e2eda3a7fec8a074e70dbc44beb7136e3eafcc3bc301a68212a4c6e6136b9` |
| 34 | `lemma` | [expansion_pos](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-pos.md) | 529 | `result-track:bf6a4b643f001c03ab25b96ef8f4d5c59a6dad428974a5a2a17db00cf07ac6b6` |
| 35 | `lemma` | [expansion_pos_iff](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-pos-iff.md) | 534 | `result-track:18c8b2199103c6d3453ce9e842211b6545b7c99849f29627448c9b7757fb09ae` |
| 36 | `lemma` | [expansion_smul_finset](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-smul-finset.md) | 539 | `result-track:f60444160aed9e2a95b3bc80b65dfaa92aca2afda83c87ffbaf988cced470bbc` |
| 37 | `lemma` | [expansion_submodularity](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/expansion-submodularity.md) | 542 | `result-track:6bfb80ed16d3610a95ce866ea8aa7c87e3a8bf26aff7b78c6971f48d20bbff5d` |
| 38 | `lemma` | [bddBelow_expansion](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/bddbelow-expansion.md) | 552 | `result-track:4b74ae5c78752b5cface439990f79bf895828b526b62a16f5b8ebef412d3e3be` |
| 39 | `def` | [connectivity](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/connectivity.md) | 559 | `declaration-track:de011481c9fecceb2bc1cc849b607cfe2700ca0fa854c150672852c0ca752e3f` |
| 40 | `lemma` | [le_connectivity_iff](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/le-connectivity-iff.md) | 562 | `result-track:e69b834635a2cdebef02a183bdd5d7c0c297990cfe50aab5d14ab87cfddae5c4` |
| 41 | `lemma` | [connectivity_lt_iff](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/connectivity-lt-iff.md) | 567 | `result-track:6ef2fd77a740e29654791b31de46535e21fdfdc77bd426fc90227c028861ed5c` |
| 42 | `lemma` | [connectivity_le_expansion](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/connectivity-le-expansion.md) | 572 | `result-track:e4dcd532156d8755a7ea2c30a7d1cfd83de8ce50244f425b998f90f12a4c873b` |
| 43 | `lemma` | [connectivity_nonneg](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/connectivity-nonneg.md) | 575 | `result-track:7bf616fa154a108d542d7678fb48ec4d16232075a88a631ed020d65595f2415b` |
| 44 | `def` | [IsFragment](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isfragment.md) | 581 | `declaration-track:e1cf68f181f6c516bd7f7dc87a53dc6eaeb2ca05516c5416df211620c86bbff1` |
| 45 | `def` | [IsAtom](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom.md) | 585 | `declaration-track:a613e6901a82ddee3a4a45c3278026d27c4aee69512b31915914b0adf31155d8` |
| 46 | `lemma` | [IsAtom.isFragment](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom-isfragment.md) | 587 | `result-track:cc5878edc4866904927b5bd14f47a9b12cc9e0e62f460e5232072c16ea04d6bc` |
| 47 | `lemma` | [isFragment_smul_finset](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isfragment-smul-finset.md) | 589 | `result-track:4cb45de069a1b260ed0d4f9504a61d90b863a2fc51d5ec2e4fecfa91e09162b6` |
| 48 | `lemma` | [isAtom_smul_finset](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom-smul-finset-source-edition-2.md) | 592 | `result-track:d6c64c9efb45e4787c0cd475a75a1eaf68ab2de1192b694e5c73c60899e9d4f9` |
| 49 | `lemma` | [IsFragment.smul_finset](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isfragment-smul-finset-source-edition-2.md) | 595 | `result-track:bf92a775f5d6890288410aaa7a8caa232a1a985185eaf080a8bc7ffd56ac0cb8` |
| 50 | `lemma` | [IsAtom.smul_finset](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom-smul-finset.md) | 598 | `result-track:22fdb992323a9d70d1ba1ddb07f08bab84271c84288f2e638d18397e5570aaab` |
| 51 | `lemma` | [IsFragment.inter](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isfragment-inter.md) | 601 | `result-track:f6fc1f69970ff0ef99464864795a460c10154b429e483889793b4e39ae00ac56` |
| 52 | `lemma` | [IsAtom.eq_of_inter_nonempty](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom-eq-of-inter-nonempty.md) | 609 | `result-track:f26b8562ba97d4beb1ade016013db28dcfe37a9988b6e33d1e30d05678f5a7b4` |
| 53 | `lemma` | [exists_nonempty_isFragment](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/exists-nonempty-isfragment.md) | 621 | `result-track:4bbf072394715b213854596b88226e3a2c214aec3093861153adbb4544685982` |
| 54 | `lemma` | [exists_isFragment](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/exists-isfragment.md) | 670 | `result-track:1979c617a86d797546eaeecd16d76524bf6d2117e91ae0c2439b9b0d4f0e1676` |
| 55 | `lemma` | [exists_isAtom](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/exists-isatom.md) | 673 | `result-track:b5a85e774e91aaae1feaff42239a72060cf939de08444f6e49652b2f31c9788f` |
| 56 | `lemma` | [connectivity_pos](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/connectivity-pos.md) | 676 | `result-track:6c3bddff09652705ad6ecdf520e8cab52b06bad5cf5e80bd90176fd3dda5bbb4` |
| 57 | `lemma` | [not_isFragment_empty](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/not-isfragment-empty.md) | 680 | `result-track:11c81c4c7acbb5cad4aff40456c8cc67563b5139bf2299bda724b2659ccdf54f` |
| 58 | `lemma` | [IsFragment.nonempty](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isfragment-nonempty.md) | 683 | `result-track:5931e4090ecfcd071088bd1a2efc2317e8c2ca2384839428bca62052b21d49df` |
| 59 | `lemma` | [IsAtom.nonempty](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/isatom-nonempty.md) | 688 | `result-track:dd8063e02b2a82e717c9b8e3a8b9d7a3f5ab154b32fd85e7e1ad16073247e515` |
| 60 | `lemma` | [exists_subgroup_isAtom](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/exists-subgroup-isatom.md) | 693 | `result-track:cfd536d536b0e83d7850f756d1064aca34db42ff38c955fdf1293f56eb8e003a` |
| 61 | `theorem` | [card_mul_finset_lt_two](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/card-mul-finset-lt-two.md) | 731 | `result-track:e97334f0725354eafce29a7d0885cb765f2a5a40df8e58220f258b2e0587c494` |
| 62 | `theorem` | [doubling_lt_two](../../../../Combinatorics/VerySmallDoublingNamespacedPublic.lean/declarations/doubling-lt-two.md) | 798 | `result-track:bc0559e48d570919c218e3ae52242e20f3c4bd2b340c17176cc8545461b190d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c9d1a25df20a87f13bb2daf8aefa86ec2f1b0b4efd515002291ef1530be7d2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
