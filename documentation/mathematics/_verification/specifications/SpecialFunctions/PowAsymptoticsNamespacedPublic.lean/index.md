# Verification target: Pow Asymptotics Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ebb951ce4e34caaa0d4e7fda1c27ffd2a2fa17a",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variante3f0cd9a409a5fd3cee43aacd54caa4d775ba0c8bceaa6e4db45d7e78f615fc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ebb951ce4e34caaa0d4e7fda1c27ffd2a2fa17a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variante3f0cd9a409a5fd3cee43aacd54caa4d775ba0c8bceaa6e4db45d7e78f615fc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variante3f0cd9a409a5fd3cee43aacd54caa4d775ba0c8bceaa6e4db45d7e78f615fc2.lean.json)

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
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-attop.md) | 46 | `result-track:1101de8affc0e99ec239444f6b45a517d249612ccd3f75d0aec19711dac7c311` |
| 2 | `theorem` | [tendsto_rpow_neg_nhdsGT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-neg-nhdsgt-zero.md) | 52 | `result-track:8bf5844ae7106bc05bb21b9c08d4829b086be3ec3d1ecfbeb4bad32f7220810b` |
| 3 | `theorem` | [tendsto_rpow_neg_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-neg-attop.md) | 58 | `result-track:49033e049899268e970cce2a8901c5e2f76efe072cba087178f2278a5e0aea22` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-attop-of-base-lt-one.md) | 63 | `result-track:79cbfdc67f289eda28c7074d0c27e2d9e73a882277a62b203060e589ab5e3165` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-atbot-of-base-lt-one.md) | 88 | `result-track:3049610aca42d953b136aa57f5a0deaf2aa4da2a107b663d093c20ade075fa19` |
| 6 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-attop-of-base-gt-one.md) | 94 | `result-track:f2a4fd913ed272d963f7391d459e40fe4932159020b350c60eed5020f8c64a2f` |
| 7 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-atbot-of-base-gt-one.md) | 100 | `result-track:f8ab50ae0692721500d99adde8731c51bc008bc01d020e30a5bc9263157c26c3` |
| 8 | `theorem` | [tendsto_rpow_div_mul_add](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-div-mul-add.md) | 108 | `result-track:0c4303737b9facbe3d904a33fc9b18f9c3602345da2944c6fe3bc144cc674511` |
| 9 | `theorem` | [tendsto_rpow_div](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-div.md) | 125 | `result-track:7f0978bd85e63f347d9f12fe329c2601c2793d526052b5ce9aac1f92e5cfdf16` |
| 10 | `theorem` | [tendsto_rpow_neg_div](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-neg-div.md) | 130 | `result-track:92882b9cc01a97174df8790c7ecc295bd27d26bb337b4d955c29612d7c010a42` |
| 11 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-exp-div-rpow-attop.md) | 135 | `result-track:2452c2296e30b6958d265c022dd7040a174b6eee4dcc99ea90f3a0cb4142ec4b` |
| 12 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-exp-mul-div-rpow-attop.md) | 143 | `result-track:2e7c9855d00a4584d8b87e6008378edb559f3d936ae36c92957058124226b2e8` |
| 13 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero.md) | 151 | `result-track:47a40998b3582e8c26f66c9b489fddc8972128b030303497ad682185a266d03a` |
| 14 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/nnreal-tendsto-rpow-attop.md) | 156 | `result-track:5bbed0a154565146b135ecf56f43b0fb1d9396a89d4f35a69f552c993a3a0589` |
| 15 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/ennreal-tendsto-rpow-at-top.md) | 165 | `result-track:d8cb8ae2d9cdb0b53594e83442364c630801519b4b9862cdf0eb47ba871a4984` |
| 16 | `theorem` | [isTheta_exp_arg_mul_im](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/istheta-exp-arg-mul-im.md) | 195 | `result-track:ed6f6117504aced4f9aaae704b12b3e66982be2083d06c2fbccbcce4f8e00ff3` |
| 17 | `theorem` | [isBigO_cpow_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-cpow-rpow.md) | 204 | `result-track:531b41d4b2b6a9171f3d4a2688d8e5275e3e615d871cd9e9df7dbb46e0c70e0c` |
| 18 | `theorem` | [isTheta_cpow_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/istheta-cpow-rpow.md) | 215 | `result-track:3016a5cd2939209a0dd97c2e18898430131c0c1900c6a69eb478a298bc633c19` |
| 19 | `theorem` | [isTheta_cpow_const_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/istheta-cpow-const-rpow.md) | 227 | `result-track:c750eb5006c90f9fb3eaff35f04a64d6dca26b43ad4ad2a502e89fa4fb4cba78` |
| 20 | `theorem` | [IsBigOWith.rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigowith-rpow.md) | 242 | `result-track:fe70ec4e4d4f14a4e146ae54a6cf976e1dc59f36bef99fa10e7c9e92a55e3db9` |
| 21 | `theorem` | [IsBigO.rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-rpow.md) | 251 | `result-track:1681ef8df64a62c3de896d9dcd4e749f7c441283475951c4c1c908128e52f9cf` |
| 22 | `theorem` | [IsTheta.rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/istheta-rpow.md) | 256 | `result-track:02007998e5832a40eec2a89796efd285f5e7b474b80bbedc2e451518a4f51f89` |
| 23 | `theorem` | [IsLittleO.rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-rpow.md) | 265 | `result-track:bbc5d1d438481f7611df18a4816cc59f81403e9f2fc4efdf28e983bed2fa4c9f` |
| 24 | `lemma` | [IsBigO.sqrt](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-sqrt.md) | 271 | `result-track:2e7062c9b47b22ab4d3a11a3d8fc004f3f9ddcb3bf0d16392d58e116c633afda` |
| 25 | `lemma` | [IsLittleO.sqrt](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-sqrt.md) | 275 | `result-track:acb8ee70835b906789a21ef590e060309bfd038de21b6697a1b941d503557dc2` |
| 26 | `lemma` | [IsTheta.sqrt](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/istheta-sqrt.md) | 279 | `result-track:d50ea8444e9f6ea7c23174e3c54e7f8d19b08c79b307deb2e1c67de3c072265c` |
| 27 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow.md) | 283 | `result-track:ea12390154bd7e6a90ea4a163463e6ce296f1e81ed9bfd4140fd6f0fe9bfc5c6` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-mul-attop-rpow-of-isbigo-rpow.md) | 293 | `result-track:f4e19e840c91f9f35836d38dd3f161edb1907eb080e59f6a0a0de2491db596e7` |
| 29 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow.md) | 303 | `result-track:57522c9e3f36d50e5a2cfe69adc610409b1924fb90dcebeed16fe2cf00c7d549` |
| 30 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le_of_imp](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-rpow-rpow-nhdsge-zero-of-le-of-imp.md) | 315 | `result-track:718665b07749e3c2a3a50ba4662ca0a54c16dbf51ff219e13eddba57ae1c6b67` |
| 31 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-rpow-rpow-nhdsge-zero-of-le.md) | 322 | `result-track:51d0b6f157f514f5d62dac9045802c32d2368e00cbb1380871e3a109832ed4e0` |
| 32 | `theorem` | [IsBigO.id_rpow_of_le_one](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/isbigo-id-rpow-of-le-one.md) | 327 | `result-track:ac6472235e70015e38cd8376c20bb967450c4e3c6f59589f7e47d9949fa8b01d` |
| 33 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-rpow-exp-pos-mul-attop.md) | 336 | `result-track:b8a7cf6278284fa3eefc8601e69d56148429ce6366783f881226e3c7d20a5466` |
| 34 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-zpow-exp-pos-mul-attop.md) | 343 | `result-track:3783818b1579e6ff605573c4e4d89348c5011f02a3a37a81842f1d1bf0d49883` |
| 35 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-pow-exp-pos-mul-attop.md) | 348 | `result-track:5e511774a82a388839fa6b0aab118f24e746b999df78e378432587eee6ae531f` |
| 36 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-rpow-exp-attop.md) | 353 | `result-track:9a943736bc94f6d5d789f20900be89f524f8d00052dce3afa422f454afad58f1` |
| 37 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-exp-neg-mul-rpow-attop.md) | 357 | `result-track:ea91bef4f8d1c0aa2d5456abefa53fe040fbdd7cc6e574b19879a3c403e637f1` |
| 38 | `theorem` | [isLittleO_exp_mul_rpow_of_lt](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-exp-mul-rpow-of-lt.md) | 367 | `result-track:91a4126725e40ff99a2bdb13bba09d71b25ba9670b8b7171f6c78f854f9666be` |
| 39 | `theorem` | [isLittleO_log_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-log-rpow-attop.md) | 374 | `result-track:69a88d7022bb66bbc04f84c9ce378c3764770fe349c68faba8b3c77831af6f83` |
| 40 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-log-rpow-rpow-attop.md) | 381 | `result-track:5da907cc9703f550f2ee11e81c0b1a8e57fb5d112e24157894ec6e4496c7c2c4` |
| 41 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero.md) | 399 | `result-track:811c9fd182a9b5ee55557d9251e64e64212305366d573a75a80aea241118d1e6` |
| 42 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/islittleo-log-rpow-nhdsgt-zero.md) | 407 | `result-track:62a5bc9d508950cd013adbc9cb75ddd96932033623b6fbcc8298451fc9cc8e3f` |
| 43 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-log-div-rpow-nhdsgt-zero.md) | 413 | `result-track:35b54c03b3f48acb139a86c084526c2abeeced9c5a9f312620326036b4d860a1` |
| 44 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-log-mul-rpow-nhdsgt-zero.md) | 417 | `result-track:771cb88936669bf74a99937b1b994bb951f97259a749e385f2d2aa4c8010dc33` |
| 45 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](../../../../SpecialFunctions/PowAsymptoticsNamespacedPublic.lean/declarations/tendsto-log-mul-self-nhdslt-zero.md) | 422 | `result-track:4337826c1f0841d26e8fc7291ada0a3d47d762bc3b58a8ff35c066e0c5bb5a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65a38dbde87df2cbddfb4d8da6b364fedeca4604eb942bf595df92eaca4f469a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variante3f0cd9a409a5fd3cee43aacd54caa4d775ba0c8bceaa6e4db45d7e78f615fc2.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Asymptotics/Variante3f0cd9a409a5fd3cee43aacd54caa4d775ba0c8bceaa6e4db45d7e78f615fc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
