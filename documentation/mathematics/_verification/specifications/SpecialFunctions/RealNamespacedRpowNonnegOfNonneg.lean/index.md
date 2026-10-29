# Verification target: Real Namespaced Rpow Nonneg Of Nonneg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e04d4237764c32cf42ff2599d709e7ea11b014b2",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/index.md) · [Full source](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e04d4237764c32cf42ff2599d709e7ea11b014b2`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow.md) | 42 | `declaration-track:9acb96ff97dd4437cb7b570377289ee270b483d1505e5d83fc159d5380f502d5` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/instance.md) | 46 | `declaration-track:2f19d47857e081415317f15e87d9fb294386e20c300f6b5fa599bede11725424` |
| 3 | `theorem` | [rpow_eq_pow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-eq-pow.md) | 49 | `result-track:63db6e806cff31fff71acaa0deb2b3fae259c28f3bfae9f6e5ce1f3209cf2dea` |
| 4 | `theorem` | [rpow_def](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-def.md) | 52 | `result-track:fa9a26deb659dfc73b999bfa832c45a63819fdf3e7544da9aaa463c45835e3fb` |
| 5 | `theorem` | [rpow_def_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-def-of-nonneg.md) | 55 | `result-track:795a0eaf5f0aa3cd18d7d822d8b9f77324e5a64898c259c19803ff2d04a7b0e0` |
| 6 | `theorem` | [rpow_def_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-def-of-pos.md) | 62 | `result-track:bed1c752af18ee2939e65a495f97c8e80c921f62a86da3c3b4362c2ec9f83cac` |
| 7 | `theorem` | [exp_mul](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/exp-mul.md) | 66 | `result-track:e03d93f48b008053c87fcaa86f971ad2fbb7f94db211bd2bef367f8cbc48ceef` |
| 8 | `theorem` | [exp_one_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/exp-one-rpow.md) | 70 | `result-track:75f530bf4bd6fe24abeffb69a0de551fbe89b3521cbdb524c409a04e0061196b` |
| 9 | `theorem` | [rpow_eq_zero_iff_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-eq-zero-iff-of-nonneg.md) | 73 | `result-track:4cf6707c0446776b25950916790538623422b244546d009a3dd6c23dd615cd11` |
| 10 | `theorem` | [rpow_def_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-def-of-neg.md) | 80 | `result-track:b7f47fad8575b8344cafd080bc72816cefcd8c27f1a655136d65ff089a48d767` |
| 11 | `theorem` | [rpow_def_of_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-def-of-nonpos.md) | 95 | `result-track:f5f36859169ce18e0f160b2c58bf3bbbf0d84f44d0f35d9a3b49074d74af7fbf` |
| 12 | `theorem` | [rpow_pos_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-pos-of-pos.md) | 100 | `result-track:c5ad963fddec577a873ad50fdce607d3100712928910826599bd2bfd961f5afd` |
| 13 | `theorem` | [rpow_zero](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-zero.md) | 105 | `result-track:7623f4e76c423236fbccf266f97979a7783879d8eb2b89f9ac144e0575b99c82` |
| 14 | `theorem` | [rpow_zero_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-zero-pos.md) | 108 | `result-track:e739de3f79103204ae0ce633341ff2b3969607458fbee9bc8642b80e57c4e6cc` |
| 15 | `theorem` | [zero_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/zero-rpow.md) | 111 | `result-track:030e3f3589f5fae39b3c712fd4fecbdbb9a44a166e4b1e677b34fb6a5be26422` |
| 16 | `theorem` | [zero_rpow_eq_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/zero-rpow-eq-iff.md) | 114 | `result-track:2061c7726344229a65b3c0666d2fdea7d1d8840ffcc15890057e243660a8bb1e` |
| 17 | `theorem` | [eq_zero_rpow_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/eq-zero-rpow-iff.md) | 129 | `result-track:5819ceb23a53b28feb9a47080632ccd6047f966cd49580e990a16e7307d4ef2c` |
| 18 | `theorem` | [rpow_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-one.md) | 134 | `result-track:d2d7199e186896f3acc56d1d00ea0ecfd042bd3869a5a0ccfe474564ee233954` |
| 19 | `theorem` | [one_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-rpow.md) | 138 | `result-track:33f92936a033d3df1efe93322fc6737c9b4765357eb867bd739cfd9ff6f7bad2` |
| 20 | `theorem` | [zero_rpow_le_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/zero-rpow-le-one.md) | 141 | `result-track:3c1c7cc43243582e7847a7e6eab482f9875fe8d945bde91d1b6ae37bcbdadfab` |
| 21 | `theorem` | [zero_rpow_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/zero-rpow-nonneg.md) | 145 | `result-track:da89e6f13b2a9f42fdba67f618792528b464be7df04deef3cc0877423d9b1fa1` |
| 22 | `theorem` | [rpow_nonneg_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-nonneg-of-nonneg.md) | 149 | `result-track:eb1dfb16e257171869070e7415739f706da3bd7246429d23d1a061800ad0268b` |
| 23 | `theorem` | [abs_rpow_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-rpow-of-nonneg.md) | 154 | `result-track:05b1f72c5c1cd6fcd685327e14036fa955b67d99e76281b0f8c3263b729d949f` |
| 24 | `theorem` | [abs_rpow_le_abs_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-rpow-le-abs-rpow.md) | 159 | `result-track:ae7173245cccf5710e2357b962338c6fc8bc40b3dfcbcfd5821d26b08b7788ee` |
| 25 | `theorem` | [abs_rpow_le_exp_log_mul](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-rpow-le-exp-log-mul.md) | 167 | `result-track:b14948e40479dac01b7ab8ca31ae0ba4d7cb728559c5abaae814f8b5d33a8236` |
| 26 | `theorem` | [norm_rpow_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/norm-rpow-of-nonneg.md) | 174 | `result-track:7bf2f8669ce32c1581ff961e904ed838197db062849fc0e8823f77e3df99b4b6` |
| 27 | `theorem` | [rpow_add](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add-source-edition-2.md) | 181 | `result-track:e32ef731cd52d61f28f1c8101aeb2eee812ef4675b7b54b9b6da0f5a1b6d7ae3` |
| 28 | `theorem` | [rpow_add'](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add.md) | 185 | `result-track:22ff30fb6ab06317a62a8aefb3e79ba91e81815a08278ab3068001e38a922b04` |
| 29 | `theorem` | [rpow_add_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add-of-nonneg.md) | 193 | `result-track:85e6e63afeb732ce111d85c659514228dc59a9307ab173062cd3cbb94affcc48` |
| 30 | `theorem` | [le_rpow_add](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/le-rpow-add.md) | 203 | `result-track:ce20b2a4c587a61c4f2856ddf04ebbb5425157bb897b3380273331d8a43d2201` |
| 31 | `theorem` | [rpow_sum_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sum-of-pos.md) | 216 | `result-track:8afc9605a9ee01436f99ad41979bc8d77fa692d9c32317f782060a5ceade02cc` |
| 32 | `theorem` | [rpow_sum_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sum-of-nonneg.md) | 221 | `result-track:55b51fbf15e1153d38684922748b366ed58d69b4af9c208f407437c2f5d1ab21` |
| 33 | `theorem` | [rpow_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-neg.md) | 229 | `result-track:a186509cb4a40b6c2be4d6d4190e55064a374c01858f7d131774cbe2c90f7843` |
| 34 | `theorem` | [rpow_sub](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sub.md) | 233 | `result-track:1bf40b0afcebbc27e823d54728fc8ccf2c3a4243fdc3e06d94160dfa753864ee` |
| 35 | `theorem` | [rpow_sub'](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sub-source-edition-2.md) | 237 | `result-track:4320364517079497d9f0ea5ba9e822182cd6e0e6c3af4b6e78b2db6b7b5ccd36` |
| 36 | `theorem` | [ofReal_cpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/ofreal-cpow.md) | 251 | `result-track:dd52bdf23da7be76714100c2caaea69d855f8cafe6a219d6449c9ceb2a7f153a` |
| 37 | `theorem` | [ofReal_cpow_of_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/ofreal-cpow-of-nonpos.md) | 256 | `result-track:28d601d5e988fd8920d072b7cc7f7adefcbbe1c383d07b658671b999ee75f5be` |
| 38 | `theorem` | [abs_cpow_of_ne_zero](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-of-ne-zero.md) | 266 | `result-track:809b84d00819183cd3c72b07d741ea3d5a6fa11644bc2bf4634a04ab009f7e6e` |
| 39 | `theorem` | [abs_cpow_of_imp](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-of-imp.md) | 272 | `result-track:50ecb2dec781baaf87c6fb61a3a7a310d7e7319841c5c95ef4053a377ccadd54` |
| 40 | `theorem` | [abs_cpow_le](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-le.md) | 281 | `result-track:0c008f7bbee11a44ec991ace1ee652f44b11dfc0dcc77036b60f7ff90225461a` |
| 41 | `theorem` | [abs_cpow_real](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-real.md) | 289 | `result-track:2c7fba6c352845d86635ec2cf6996774cbb3b2d8a3ff54efdc72a94ebea4dc61` |
| 42 | `theorem` | [abs_cpow_inv_nat](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-inv-nat.md) | 295 | `result-track:e173a523619fae01e7dad13fb7152719bc5f767fc2eddc0d1466ac4d8f4164b6` |
| 43 | `theorem` | [abs_cpow_eq_rpow_re_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-eq-rpow-re-of-pos.md) | 299 | `result-track:6f351c612beb530df8b07a0f494168cc17229c6423a135bf9da0665450420d7f` |
| 44 | `theorem` | [abs_cpow_eq_rpow_re_of_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-cpow-eq-rpow-re-of-nonneg.md) | 304 | `result-track:aa912c5cfad8eec07e5808ad4f4897f895d41f899ea81b41055d96dbb8e684fb` |
| 45 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/macro-rules.md) | 321 | `declaration-track:03368d4534c4f0253428395ee9ef5708d4436e1aa82a9554edf6e9ef6271f2c4` |
| 46 | `theorem` | [rpow_mul](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-mul.md) | 325 | `result-track:98450851f5a2fca7ddf3abc87131823c4f89a95754bb37317bf32704ae9fa018` |
| 47 | `theorem` | [rpow_add_int](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add-int.md) | 332 | `result-track:29a33761213761c7154b848be0d732943ff2bbb969504074f7fd0a2a87936854` |
| 48 | `theorem` | [rpow_add_nat](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add-nat.md) | 338 | `result-track:0243b5c66e92bb47f0b521ab6e35240b19d05c7ce78817e73e33518b8b6f9957` |
| 49 | `theorem` | [rpow_sub_int](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sub-int.md) | 342 | `result-track:c571c2350e26fc608eca6e3ef6c1c3294fd3779724237dda3283aa11f5f75b13` |
| 50 | `theorem` | [rpow_sub_nat](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sub-nat.md) | 346 | `result-track:8448b5a2368fe52d4843e9dd7f52024cd8eac77eac7296f64ed4846464212fda` |
| 51 | `theorem` | [rpow_add_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-add-one.md) | 350 | `result-track:a432aff7d939bf38e9fbef34c0bb96b728706d5f5cb3babd0ef486d7ed640fb9` |
| 52 | `theorem` | [rpow_sub_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-sub-one.md) | 354 | `result-track:9336f25457f01da930191a3e90f04dd7576913f876847c7aef729874d4e630cd` |
| 53 | `theorem` | [rpow_int_cast](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-int-cast.md) | 359 | `result-track:1bd50bed548ff47bfe4afb0fce7bb417d86719445ddb37ca0774c0b1c5e39044` |
| 54 | `theorem` | [rpow_nat_cast](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-nat-cast.md) | 365 | `result-track:674b2e6f1159fa677b4e25eb2b1271cd654b7289ddaf0b1ca48275d4a43da55d` |
| 55 | `theorem` | [rpow_two](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-two.md) | 370 | `result-track:b42531516566e38635b91b6331219ed0747a2ee3d6326a659f64f4443c0c2fc9` |
| 56 | `theorem` | [rpow_neg_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-neg-one.md) | 375 | `result-track:15821ac4d0452c42bff4e7e4647e04938ea7517878d620d24593ce04a5ef4373` |
| 57 | `theorem` | [mul_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/mul-rpow.md) | 380 | `result-track:84d07cdb838033764b2a1295b4da8a53d99516e32c7dda6540a3620614f4c440` |
| 58 | `theorem` | [inv_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/inv-rpow.md) | 401 | `result-track:1dddafe50e1bc154724d94ad85dc3723c61a1e30ac2c4d4fde4ba8e39fba0a87` |
| 59 | `theorem` | [div_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/div-rpow.md) | 405 | `result-track:f17c2b1a4206382415cdd4e0526f9677bc33741d1202972fb01a0a0c1fd73780` |
| 60 | `theorem` | [log_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/log-rpow.md) | 409 | `result-track:d9625acc0c55ddcbe02f0f571446b96eea7bf345f5c6e2cef0d7d5b1980a164c` |
| 61 | `theorem` | [mul_log_eq_log_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/mul-log-eq-log-iff.md) | 414 | `result-track:920f7076164fab51b61b7130609ee4b54d407bd74a5a2fe3aebf66c1d663dfe3` |
| 62 | `theorem` | [rpow_lt_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow.md) | 428 | `result-track:f03026c50e4a3b7d5c96c5c5984381fe3e97cb7baa3d1850a72fd3ccbf1eb20e` |
| 63 | `theorem` | [strictMonoOn_rpow_Ici_of_exponent_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/strictmonoon-rpow-ici-of-exponent-pos.md) | 436 | `result-track:14fc72c69308947c219457ad792fce9ee11dcf16d84d06c715076f42d55ee525` |
| 64 | `theorem` | [rpow_le_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow.md) | 441 | `result-track:3202f7d41f731d08b979d20b6ee89d50c2b7833e610cbf61ba4bd8b0c1746dcc` |
| 65 | `theorem` | [monotoneOn_rpow_Ici_of_exponent_nonneg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/monotoneon-rpow-ici-of-exponent-nonneg.md) | 447 | `result-track:afb65ed8c207391f1a30d8b062cdd8a42945785cb796c36466d53dd8e4950923` |
| 66 | `theorem` | [rpow_lt_rpow_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-iff.md) | 451 | `result-track:ab755c552b8625dda20ba3870a6fb8a2dcf1af850d3f3f569845f8bbf86fcaa4` |
| 67 | `theorem` | [rpow_le_rpow_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-iff.md) | 455 | `result-track:b200c18d45e5242672c5a5961ab92bb4220e7099070dd46329fb0d1782446458` |
| 68 | `theorem` | [le_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/le-rpow-inv-iff-of-neg.md) | 459 | `result-track:c6723bdeca390ff7be55147309e86e4e304a919858a19110f2e2dcfd3d8841d9` |
| 69 | `theorem` | [lt_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/lt-rpow-inv-iff-of-neg.md) | 470 | `result-track:022798d1db2a6759f6e5692e0b4f850cfce1441d322cad813f4ea8a257dbc76d` |
| 70 | `theorem` | [rpow_inv_lt_iff_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-inv-lt-iff-of-neg.md) | 481 | `result-track:2375ee685f24ddb7cf805282ca7ff2c4d2d51aaa03fcc3ec0894eeb34b45b098` |
| 71 | `theorem` | [rpow_inv_le_iff_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-inv-le-iff-of-neg.md) | 487 | `result-track:73153b8451b3b692caec3a543a2be68b3af67119268aa024103c061c3496e63e` |
| 72 | `theorem` | [rpow_lt_rpow_of_exponent_lt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-lt.md) | 493 | `result-track:d86c32a5b3fccce35f66b80d3c7c6cc5afb897a6a0c3195bfa165b3a60fdec8d` |
| 73 | `theorem` | [rpow_le_rpow_of_exponent_le](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-le.md) | 499 | `result-track:65e2b93df57c86e4de2a372f433ef27c4595eab18869d830275e8c61792c38af` |
| 74 | `theorem` | [rpow_lt_rpow_of_exponent_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-neg.md) | 504 | `result-track:2b672158ee906ee50dae03bc04f77fac1e853223e65bc8922d3c1a0210062e52` |
| 75 | `theorem` | [strictAntiOn_rpow_Ioi_of_exponent_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/strictantion-rpow-ioi-of-exponent-neg.md) | 511 | `result-track:f8742ec64f18dac41ba35601782f8b922b792d3011ba97f2be36f02b5a33f44a` |
| 76 | `theorem` | [rpow_le_rpow_of_exponent_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-nonpos.md) | 515 | `result-track:9157de40e5e2cc5c83874089556a768c1b6baec890cea8e21773a0b3012f4299` |
| 77 | `theorem` | [antitoneOn_rpow_Ioi_of_exponent_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/antitoneon-rpow-ioi-of-exponent-nonpos.md) | 526 | `result-track:c15b397bf8a4ee0cbb3e94762a9771e3f3cac16e9e720bfa45f759de88fe75db` |
| 78 | `theorem` | [rpow_le_rpow_left_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-left-iff.md) | 531 | `result-track:4868e21f4d7016354f858ab751406ef52fb0910166506bbb015af79380fb27d2` |
| 79 | `theorem` | [rpow_lt_rpow_left_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-left-iff.md) | 538 | `result-track:068f6347f6601d09f031198a46716acc915e0ab6eaff5f7ddd3f721b91c3989f` |
| 80 | `theorem` | [rpow_lt_rpow_of_exponent_gt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-gt.md) | 542 | `result-track:59755b3848bf122908e00b601dc5e6df241fefa4bbbf3b07acf8334198fd8091` |
| 81 | `theorem` | [rpow_le_rpow_of_exponent_ge](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-ge.md) | 547 | `result-track:0ea97dcc1286f56042005dc7ae18fb1a26fe6797f76380cbf48cd5ce477d628e` |
| 82 | `theorem` | [rpow_le_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-left-iff-of-base-lt-one.md) | 553 | `result-track:4e9af99a4d19ae3b5c8f6b0c6816988b3d1afb37b0ba501e8e486122cbdccd82` |
| 83 | `theorem` | [rpow_lt_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-left-iff-of-base-lt-one.md) | 560 | `result-track:519b74be0061936b4877ff7538505098cdd3259ce86bf7c95800f78338bfc26b` |
| 84 | `theorem` | [rpow_lt_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-one.md) | 564 | `result-track:4bee499a8614e0bd6816df506cc78ea9ae0b5adda5f65c23721bdca92f4c0adb` |
| 85 | `theorem` | [rpow_le_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-one.md) | 569 | `result-track:430f92d5842e0c4b0c8d8d354d70c2eeb3fd9f255e8c98a3fa2abd1888b5a466` |
| 86 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-of-one-lt-of-neg.md) | 574 | `result-track:7101de97f7b3979f6d5f344ce2b8a06cbdd4a8e5ea41b0d04a9ace99df4e06c8` |
| 87 | `theorem` | [rpow_le_one_of_one_le_of_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-one-of-one-le-of-nonpos.md) | 579 | `result-track:a9a63c906f8ae2122a4525a44bceb6b4d8e6048b3da4e3b0f6c9fcb073656771` |
| 88 | `theorem` | [one_lt_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-lt-rpow.md) | 584 | `result-track:d10cf4fbf4f01c5084634e5987a97ee381f65f92f5423749edaa4b9b8a590b93` |
| 89 | `theorem` | [one_le_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-le-rpow.md) | 589 | `result-track:478d289594774b3a704c24d56f1ee8a53c01e01d2253f08f6e6212439982d1e0` |
| 90 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-of-pos-of-lt-one-of-neg.md) | 594 | `result-track:0654ecdd755a60aa91ace5c7693bebdf33147892d9ea88bfdf97aaf1c78c8818` |
| 91 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_nonpos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-le-rpow-of-pos-of-le-one-of-nonpos.md) | 600 | `result-track:e62912545eb2777ad3111fec9daefc13be6c7033a15c8342960f56b18b14286e` |
| 92 | `theorem` | [rpow_lt_one_iff_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-iff-of-pos.md) | 606 | `result-track:f3183398b732540ee60a38c0c8297c7dee436ef57ca8531377df0d78b1b8bc51` |
| 93 | `theorem` | [rpow_lt_one_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-iff.md) | 610 | `result-track:b964c2d103e446baddd03f68da706ccb7664f872a83b992a90f10054373b2145` |
| 94 | `theorem` | [one_lt_rpow_iff_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-iff-of-pos.md) | 617 | `result-track:2a9ce384f9965eb4fd1382f18763eea37bcc3d9c5e6db90573a89c73a688d4dc` |
| 95 | `theorem` | [one_lt_rpow_iff](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-iff.md) | 621 | `result-track:2fec5881a9aa67ae44c607917c44094c970e5e49b867ea4b7d4244867bf42cd2` |
| 96 | `theorem` | [rpow_le_rpow_of_exponent_ge'](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-ge-source-edition-2.md) | 627 | `result-track:7a79ec08a160265c714954213b1a89c6025d0c44e26b22195d16b8be7cf7fa5f` |
| 97 | `theorem` | [rpow_left_injOn](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-left-injon.md) | 636 | `result-track:ca7a872493e3b8754e4ff7c0099a46a402dd853f49ff4418a77ed8945421adc8` |
| 98 | `theorem` | [le_rpow_iff_log_le](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/le-rpow-iff-log-le.md) | 641 | `result-track:b2f2d01c189c693ac39c151d0e3eddaa25110e1453d40574c5031a134029263e` |
| 99 | `theorem` | [le_rpow_of_log_le](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/le-rpow-of-log-le.md) | 645 | `result-track:921ab84df35035d769220dc04f3c7a9490b69ee373104e523f355b130c4879c1` |
| 100 | `theorem` | [lt_rpow_iff_log_lt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/lt-rpow-iff-log-lt.md) | 652 | `result-track:41698c85dfd6e68451ee360a1e4f92322db466d2168220c6994158eca08a76d2` |
| 101 | `theorem` | [lt_rpow_of_log_lt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/lt-rpow-of-log-lt.md) | 656 | `result-track:fa33e23a009e69263976e9b86b65ae8c07f5940bd10c6e1e110005b869a94319` |
| 102 | `theorem` | [rpow_le_one_iff_of_pos](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-le-one-iff-of-pos.md) | 663 | `result-track:6e728d88af2524454fe0e08339dea10ac0f3a78529d38a2bf49d95f1e2e3ce17` |
| 103 | `theorem` | [abs_log_mul_self_rpow_lt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/abs-log-mul-self-rpow-lt.md) | 668 | `result-track:f4bc26d3b01bbe967a13a6289945158c1e3127c051320716adcc7c9c896fdf5e` |
| 104 | `theorem` | [pow_nat_rpow_nat_inv](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/pow-nat-rpow-nat-inv.md) | 675 | `result-track:a7b6edcf8549ecd14af02947e1396225bdcffcf16d3954a540b75220d4ae5b77` |
| 105 | `theorem` | [rpow_nat_inv_pow_nat](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-nat-inv-pow-nat.md) | 681 | `result-track:61deaf47144877f3f667f725ba1fc195215e4becfbe108e20931062e4f762576` |
| 106 | `lemma` | [strictMono_rpow_of_base_gt_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/strictmono-rpow-of-base-gt-one.md) | 687 | `result-track:8a6f848803397b715697370e306824c01de6f8480eda98fa7eb849b2bacbe620` |
| 107 | `lemma` | [monotone_rpow_of_base_ge_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/monotone-rpow-of-base-ge-one.md) | 693 | `result-track:d8a5e648b4eafa19ce5ee84560400cfcb32dbb942a203dc4453ec886454e0f35` |
| 108 | `lemma` | [strictAnti_rpow_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/strictanti-rpow-of-base-lt-one.md) | 699 | `result-track:7879661420d197dc83756e95cbcbbb9619804bc8d9420158df5a4b470cefd0ae` |
| 109 | `lemma` | [antitone_rpow_of_base_le_one](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/antitone-rpow-of-base-le-one.md) | 706 | `result-track:61936883fc414ba9bf7fb70e2723cb596c6a1e6196142fa2a7c9c2b026e0efd1` |
| 110 | `theorem` | [sqrt_eq_rpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/sqrt-eq-rpow.md) | 725 | `result-track:cb151fd690987146ea0f0ca861ba9337bd131894aa8a3c96ee3bedfa830f3cbd` |
| 111 | `theorem` | [rpow_div_two_eq_sqrt](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/rpow-div-two-eq-sqrt.md) | 735 | `result-track:847a4228c7fb2bf25b087e5a76775c63fa3e0a47f5b89268a515cfe884e687d2` |
| 112 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/macro-rules-source-edition-2.md) | 745 | `declaration-track:6c29096a0c307d49a81f2777289381bd9f0790208ff8c8ccfb1842fd57347a70` |
| 113 | `theorem` | [exists_rat_pow_btwn_rat_aux](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn-rat-aux.md) | 747 | `result-track:d19b4e05535d2ab9c6491702fa2e7fa4411b1af133c413d09888ff4779b4c13e` |
| 114 | `theorem` | [exists_rat_pow_btwn_rat](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn-rat.md) | 762 | `result-track:65894ead59d2c94b43ca34eeeff838e9c626390045a36fbca9320a00df309407` |
| 115 | `theorem` | [exists_rat_pow_btwn](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn.md) | 768 | `result-track:16055933623a380914ab1231208a082adab39543e3fa10e505236f102a6cf958` |
| 116 | `def` | [evalRpowZero](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/evalrpowzero.md) | 843 | `declaration-track:2055ee313ab4efeca9d6c4ae235d81a561a38fd0036673089d19ded9c6715de6` |
| 117 | `def` | [evalRpow](../../../../SpecialFunctions/RealNamespacedRpowNonnegOfNonneg.lean/declarations/evalrpow.md) | 852 | `declaration-track:19746b2e29c8a54132b73445e07837972d37593d5fe6fbbaad72a580ae9dda58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b8f050da12c98999e25c7fdc52ed3595f6137f09743c477b1cad6d979f7378d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
