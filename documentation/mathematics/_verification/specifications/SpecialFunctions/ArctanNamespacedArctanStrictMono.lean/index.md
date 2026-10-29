# Verification target: Arctan Namespaced Arctan Strict Mono

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4f4219958226df948228050e830dd47a192579",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/index.md) · [Full source](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4f4219958226df948228050e830dd47a192579`.

Source path: `GRWTSK/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tan_add](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-add.md) | 38 | `result-track:1d2db643dad39de6f15fb979b461e25caacc5f565e68598268e0f410497ca9fc` |
| 2 | `theorem` | [tan_add'](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-add-source-edition-2.md) | 46 | `result-track:c5d73ac95198883628f01c70b989fc8063d5d2843ea43854a93f4f3e48d7acee` |
| 3 | `theorem` | [tan_two_mul](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-two-mul.md) | 51 | `result-track:2e96339aba6947133f2da1c1bc4bc3bd74a5e65c5ad48d50cd5f52ca9721f19c` |
| 4 | `theorem` | [tan_int_mul_pi_div_two](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-int-mul-pi-div-two.md) | 55 | `result-track:a8752bf7c85a2fe0f5fec273bdb8f4f57fa15bcee00aa28f6bac3064113f2b93` |
| 5 | `theorem` | [continuousOn_tan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/continuouson-tan.md) | 58 | `result-track:165dcf40577a9ba4377bf14850bf318f3e9d4a2e3d2e9eabfcee7fea27a8069a` |
| 6 | `theorem` | [continuous_tan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/continuous-tan.md) | 65 | `result-track:63c1a540a87dd69ddcdff0f7a41648cd2322024430d524d25ef49cdf5f91c891` |
| 7 | `theorem` | [continuousOn_tan_Ioo](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/continuouson-tan-ioo.md) | 68 | `result-track:ac7564e30b7b484184c2ec62f7a983bf00a15c52097512a776783d4aea8e3fcf` |
| 8 | `theorem` | [surjOn_tan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/surjon-tan.md) | 88 | `result-track:6770fcf0042a9d522a4628a5a1d72e6ceea28e0492426dd80971650c04d3cb54` |
| 9 | `theorem` | [tan_surjective](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-surjective.md) | 94 | `result-track:501aee8479bd737d5c795c2974283373500051fe8edc1f2b9113393a72e5df93` |
| 10 | `theorem` | [image_tan_Ioo](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/image-tan-ioo.md) | 96 | `result-track:aa33dd985d4cf93135050d86e5fdc53c573381b12cd1a31f55267bb45f12add4` |
| 11 | `def` | [tanOrderIso](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tanorderiso.md) | 100 | `declaration-track:db852672f9b5863cb295e2ab9111be5832f3fdba97830d74c36d618f7b795f40` |
| 12 | `def` | [arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan.md) | 107 | `declaration-track:41475c7218f1b9afc673ea910108f03b85fd349055bfb3c99877b8da1266cfb6` |
| 13 | `theorem` | [tan_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tan-arctan.md) | 111 | `result-track:ef4c3a0339db22f19fc8c8b9ac05dd88b0bde47d154f76b0faa599c857299ae9` |
| 14 | `theorem` | [arctan_mem_Ioo](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-mem-ioo.md) | 114 | `result-track:155175486cf227f20923a221099778058ede0b48a44535ad1e5d357663634e00` |
| 15 | `theorem` | [range_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/range-arctan.md) | 118 | `result-track:7f5fba1c6265338c56915d411d74ff48e2a567a4cbe80d94f89a6e95b490355a` |
| 16 | `theorem` | [arctan_tan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-tan.md) | 121 | `result-track:3299c143781f02b1e57f6f4ed8a4346ce5d806ce20a58e2ddd9bce7eb68e315d` |
| 17 | `theorem` | [cos_arctan_pos](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/cos-arctan-pos.md) | 124 | `result-track:8909caeddb4373bc983d0fdfb582f7fcbe26845fde8c113cb77485c99573e608` |
| 18 | `theorem` | [cos_sq_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/cos-sq-arctan.md) | 127 | `result-track:8481a1c93aa6d4489ab132e0b3004377c2e54852c7125f322e3662d82f64b100` |
| 19 | `theorem` | [sin_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/sin-arctan.md) | 130 | `result-track:42b3d2684493b08ae63007339cc6ab560f12a4a1394191c3ce718cf5b833a6bf` |
| 20 | `theorem` | [cos_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/cos-arctan.md) | 133 | `result-track:d9de74e5db07da509cd2ca5f2308c1ddddf3b9713177bfa4c63408d808153fc7` |
| 21 | `theorem` | [arctan_lt_pi_div_two](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-lt-pi-div-two.md) | 136 | `result-track:1681942547094ce144f1f7faf7cbac818c58d4047e04573c529558a71423848f` |
| 22 | `theorem` | [neg_pi_div_two_lt_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/neg-pi-div-two-lt-arctan.md) | 139 | `result-track:3b0b48f3ef26b9717b28091e5ed79d4f7ba270752135bd6812c419597f4fb188` |
| 23 | `theorem` | [arctan_eq_arcsin](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-eq-arcsin.md) | 142 | `result-track:b93aa32c30b6138f595e2cc83595238c7b6427c1963e43cc24c6ffa732dcde52` |
| 24 | `theorem` | [arcsin_eq_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arcsin-eq-arctan.md) | 145 | `result-track:a828532f522f61d8e32af449986e9283e936394084708be513565bb06bac34ac` |
| 25 | `theorem` | [arctan_zero](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-zero.md) | 151 | `result-track:ae2e4533b874b4510df10eb52e902a3ffe368a75302d70c124e2919a6196080f` |
| 26 | `theorem` | [arctan_strictMono](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-strictmono.md) | 154 | `result-track:fbdda5a368ef3ab6bc5ec54df0e4d0a9caaa5c2c97046902015d5c6b355b876a` |
| 27 | `lemma` | [arctan_lt_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-lt-arctan.md) | 157 | `result-track:cf7c8755929212af0958c4bb114f46960c3e0492091c9ba3fa147081aa051eb1` |
| 28 | `lemma` | [arctan_le_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-le-arctan.md) | 160 | `result-track:baecf29ec02490011787b96fe5540d41e26f5716be4bbe8a12bceef70a95812e` |
| 29 | `theorem` | [arctan_injective](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-injective.md) | 163 | `result-track:1ca88a21451e1edc7a01284bf747fd9d211e2585ded15ca8f5f5bbdf0d3e4975` |
| 30 | `theorem` | [arctan_eq_zero_iff](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-eq-zero-iff.md) | 166 | `result-track:2a31db96f27ac4f5d151b1a3bb1c648f7215310d5ae761f91f4373d443d7c8ac` |
| 31 | `theorem` | [tendsto_arctan_atTop](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tendsto-arctan-attop.md) | 169 | `result-track:7663173113156f96ced2f9dd0338f739ec4a150bbd607eadd494a76b7555b53e` |
| 32 | `theorem` | [tendsto_arctan_atBot](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tendsto-arctan-atbot.md) | 172 | `result-track:56382a6193ccf4e82281f87dbda67ce1ae1d86f87a53cfa57772c097591149d5` |
| 33 | `theorem` | [arctan_eq_of_tan_eq](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-eq-of-tan-eq.md) | 175 | `result-track:fbd780d14b17a0461a95e7e6f0f9599696d3db1e5f81858f9a1e708c252d23f4` |
| 34 | `theorem` | [arctan_one](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-one.md) | 180 | `result-track:53a6111e306db0518407084bc1900fd8316d95f423fdc391a508e27e0a158a1f` |
| 35 | `theorem` | [arctan_neg](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-neg.md) | 184 | `result-track:6f8b4b6e927b46fc8b813a79ad126313da5c6a0bcb5a335a4707dc28aba60b37` |
| 36 | `theorem` | [arctan_eq_arccos](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-eq-arccos.md) | 186 | `result-track:ed5cb94c4ae390e9adf8d16fdd177322a7b17d02b9570b4e17d36a8a32120caa` |
| 37 | `theorem` | [arccos_eq_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arccos-eq-arctan.md) | 194 | `result-track:c76e2e9c896127387b978f206da7ab1ea729f905452851e902d2c3706f43eef6` |
| 38 | `theorem` | [arctan_inv_of_pos](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-inv-of-pos.md) | 201 | `result-track:f7649ce3daa0683c61a7399048f95eba32cee00edb2d49207465112198b8fb7b` |
| 39 | `theorem` | [arctan_inv_of_neg](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-inv-of-neg.md) | 208 | `result-track:13b6c7f52cd6cd1ce4228469a320a87c7454b870879487f1985d058608439317` |
| 40 | `lemma` | [arctan_ne_mul_pi_div_two](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-ne-mul-pi-div-two.md) | 214 | `result-track:59912cda94e176edce1e16d4b076e92aeca10e5bb0cad59249531bb508be4d45` |
| 41 | `lemma` | [arctan_add_arctan_lt_pi_div_two](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-add-arctan-lt-pi-div-two.md) | 222 | `result-track:267bbb884424e3d9938d9d0859d37e2589d66383e0325997c42b1a06b367e6ab` |
| 42 | `theorem` | [arctan_add](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-add.md) | 230 | `result-track:7609531e590cea1563b6ce33b84a4bfb91e7bd31d966d94fc07d551bf9302e90` |
| 43 | `theorem` | [arctan_add_eq_add_pi](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-add-eq-add-pi.md) | 241 | `result-track:ad075a8a97962209e08f8ab7681161c2accfcbed03833e8be82c69a59414f261` |
| 44 | `theorem` | [arctan_add_eq_sub_pi](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-add-eq-sub-pi.md) | 253 | `result-track:3ef5164e35a10df1b2b898e9a8c956dd8b4cea5bcb88da36f88263cf9a8edd18` |
| 45 | `theorem` | [two_mul_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/two-mul-arctan.md) | 261 | `result-track:63b1d7aecec40c3cf3ad11f6205352d0d5fa144393fdd66dd4369e44f3d803b9` |
| 46 | `theorem` | [two_mul_arctan_add_pi](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/two-mul-arctan-add-pi.md) | 265 | `result-track:38dfa388e660bc0b0d5d5133f7c9a591a983493b38246c758a2ec82a6c9696a5` |
| 47 | `theorem` | [two_mul_arctan_sub_pi](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/two-mul-arctan-sub-pi.md) | 269 | `result-track:43d953f59af92a6ac319829a58a2ad671a88ed4bf12eb25a6dd0c36607f89e68` |
| 48 | `theorem` | [arctan_inv_2_add_arctan_inv_3](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/arctan-inv-2-add-arctan-inv-3.md) | 273 | `result-track:41cbdb62959bd41e4f97147d20e9312c4ef40cab7d15ac896df5ab1a67918c35` |
| 49 | `theorem` | [two_mul_arctan_inv_2_sub_arctan_inv_7](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/two-mul-arctan-inv-2-sub-arctan-inv-7.md) | 276 | `result-track:deb519b4549749bdd41dc1523f28e70e816ccae25669c21e360876a39e39949e` |
| 50 | `theorem` | [two_mul_arctan_inv_3_add_arctan_inv_7](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/two-mul-arctan-inv-3-add-arctan-inv-7.md) | 279 | `result-track:22e164663b3400faee8d58e071dcfbc43ee5f3a86bd1c13f64cfd2dc6969193e` |
| 51 | `theorem` | [four_mul_arctan_inv_5_sub_arctan_inv_239](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/four-mul-arctan-inv-5-sub-arctan-inv-239.md) | 283 | `result-track:42fccf17bfeb7cffb452d8d319bb4f33d02552f122e2d47947ec1c0204ff4b09` |
| 52 | `theorem` | [continuous_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/continuous-arctan.md) | 290 | `result-track:f222cf26916dfac921e768bc6977c300c09bc8571fc86579f424fcf50ed825de` |
| 53 | `theorem` | [continuousAt_arctan](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/continuousat-arctan.md) | 293 | `result-track:f6c3ca3a038f6ca25ee545d9635ce86293ed1c9979cf9f6563b614252df5f7bd` |
| 54 | `def` | [tanPartialHomeomorph](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/tanpartialhomeomorph.md) | 297 | `declaration-track:1bbf8b73fb55e02e0032f2b7eda8252ecf1020c268b0710825f22c6823a692cf` |
| 55 | `theorem` | [coe_tanPartialHomeomorph](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/coe-tanpartialhomeomorph.md) | 312 | `result-track:09c55c6eb2e6d60349ce1e5413dbfd11d3dda08accbeb1552cd93ac98b461655` |
| 56 | `theorem` | [coe_tanPartialHomeomorph_symm](../../../../SpecialFunctions/ArctanNamespacedArctanStrictMono.lean/declarations/coe-tanpartialhomeomorph-symm.md) | 316 | `result-track:a0fea4649f1c2af158d55948673290db59af73534ad08bf1f30f77c5bdc9ee0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fa83ea7a49ae957993ac6d61432e4b74c48787d08011652fcb9a1be2e3cd808 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Arctan/Variant0127729a95abcebf39dcd129414c7f6c74fc9b59cd588f93947960410decd461.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
