# Verification target: Deriv Mul Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b267ca9b23d890e9131c26060b4c917df7fa00",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivMulNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/DerivMulNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b267ca9b23d890e9131c26060b4c917df7fa00`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean.json)

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
| 1 | `theorem` | [hasDerivWithinAt_of_bilinear](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-of-bilinear.md) | 60 | `result-track:b9b75eb7a2558471614abae45f2cbe5df9a14b70000a0856a8f0a13dc57b556a` |
| 2 | `theorem` | [hasDerivAt_of_bilinear](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-of-bilinear.md) | 66 | `result-track:ce80f4b54a5060eeef9e0c98023297647fd6842b5095f976357a38e50cc8812c` |
| 3 | `theorem` | [hasStrictDerivAt_of_bilinear](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-of-bilinear.md) | 83 | `result-track:99eb941914f011d20da9ecbfd86651af066365cbeab12c61fbc8921f6305d3a3` |
| 4 | `theorem` | [derivWithin_of_bilinear](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-of-bilinear.md) | 88 | `result-track:39959f332b872f4eb0a9dcc162bbd9995dc1163a86d2273518506d0fa2e9b5ce` |
| 5 | `theorem` | [deriv_of_bilinear](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-of-bilinear.md) | 96 | `result-track:c4ade32aec7b7be30772589bd6bc1d122f7664cdd73bed090295173096a3180d` |
| 6 | `theorem` | [HasDerivWithinAt.smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-smul.md) | 112 | `result-track:b2d882d9417bed2880ca55d2404a2e815e84737fb0a0ea453cfb2b0ce1f9d392` |
| 7 | `theorem` | [HasDerivAt.smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-smul.md) | 117 | `result-track:cfbb1ec0e2f166403ca5dbf3bc558d72e7f99df2c5d82af389d384ca90ba187b` |
| 8 | `theorem` | [HasStrictDerivAt.smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-smul.md) | 123 | `result-track:9bc1c35a7df6ce845a2367700f219a084666e097d6f2f7696c4895d523760fe6` |
| 9 | `theorem` | [derivWithin_fun_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-fun-smul.md) | 127 | `result-track:ca24f497254afb7c154bb79b78bf2ca559614b24d85a213a312626a91704ab06` |
| 10 | `theorem` | [derivWithin_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-smul.md) | 134 | `result-track:39528b2d0fe6034148379c7732f31d47d890419b6ba9bc884565bc85f67cf3ac` |
| 11 | `theorem` | [deriv_fun_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-fun-smul.md) | 139 | `result-track:d39a9137f0212c8b62cdfbe18f4071792a171a94d1028ba33936cd98c10769a2` |
| 12 | `theorem` | [deriv_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-smul.md) | 143 | `result-track:81ec21711ca6dd9091a99c794c596006311ffab8780efaa21085f482e84df7c1` |
| 13 | `theorem` | [HasStrictDerivAt.smul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-smul-const.md) | 147 | `result-track:5c9ee87aabb7679aa3057ba0dd191a4b81365f9b4dc4ac58304b30933a31b700` |
| 14 | `theorem` | [HasDerivWithinAt.smul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-smul-const.md) | 152 | `result-track:8844d07d33bc46ab1646065d50770adc3a4eeceb2b1b589a03a3f534f205e0ea` |
| 15 | `theorem` | [HasDerivAt.smul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-smul-const.md) | 157 | `result-track:57998152c87aa0ca5c786e40325a7dc15006ce1d364b398cd754a23dadcd442c` |
| 16 | `theorem` | [derivWithin_smul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-smul-const.md) | 164 | `result-track:d957f06ed533455aab134ae8e5f659f0021306fe4117fa08725794ff0caebc64` |
| 17 | `theorem` | [deriv_smul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-smul-const.md) | 170 | `result-track:9ea65b042f2ca92a84d59be5f8205de919623ef750cbe9178b70fdff2d313662` |
| 18 | `theorem` | [HasStrictDerivAt.const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-const-smul.md) | 185 | `result-track:24c95a48b44200a901c7aaf2730533be20c417e509731aa7bfb5da242352dbff` |
| 19 | `theorem` | [HasDerivAtFilter.const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivatfilter-const-smul.md) | 190 | `result-track:d1ec27c3a6b72029d07cd032c498667208b24be4d18826e7565e3032530a0db8` |
| 20 | `theorem` | [HasDerivWithinAt.const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-const-smul.md) | 195 | `result-track:fb353b092faf5ab8c04a837c6da201b9cb401672412c4dd8abfab8be2dca1a07` |
| 21 | `theorem` | [HasDerivAt.const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-const-smul.md) | 200 | `result-track:c2ea4234919224ef8e82cdffd6ea78c3f72c8bf4f8462b8771420b52eb60ecf9` |
| 22 | `theorem` | [derivWithin_fun_const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-fun-const-smul.md) | 204 | `result-track:a24da0a54a86956e48c326f2d8c7edf3665f831ecf6e59f61c405a68ca25d7c0` |
| 23 | `theorem` | [derivWithin_const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-const-smul.md) | 210 | `result-track:99d61bc27978f4b5863bb9804004c6d610377577b391636fc3f89be6aa5fc5a2` |
| 24 | `lemma` | [derivWithin_fun_const_smul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-fun-const-smul-field.md) | 216 | `result-track:41c81e58b63f974e985941684def97b100913261b4e63f9edb49d79e1c160779` |
| 25 | `lemma` | [derivWithin_const_smul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-const-smul-field.md) | 224 | `result-track:104dae921f0c48174ea4ea5703f35bfa797a79fe3ef1caf460cee42e3ce57837` |
| 26 | `theorem` | [deriv_fun_const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-fun-const-smul.md) | 228 | `result-track:fd26b8a1d1c94851155ef9698fcdc4786680ee6423891e14818313f251118fb3` |
| 27 | `theorem` | [deriv_const_smul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-smul.md) | 232 | `result-track:35d18179a28a05e1532f8c82126aad72abc48100f5895815e5980b61db670b60` |
| 28 | `lemma` | [deriv_fun_const_smul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-fun-const-smul-field.md) | 238 | `result-track:d181153066e81e6f1d08921b00a0a25a94b498cbc3e6eb8ffa8a17c02f6fcf82` |
| 29 | `lemma` | [deriv_const_smul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-smul-field.md) | 244 | `result-track:c0627f4931a6e2b00148b9c2d6683cae7c98938872dfcc09a7d4f3579e375afc` |
| 30 | `theorem` | [HasDerivWithinAt.mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-mul.md) | 259 | `result-track:73ddd7bc3f3ddba780e398c4ee21af8aafcb1db4804054315c9b46b2a7a84cee` |
| 31 | `theorem` | [HasDerivAt.mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-mul.md) | 264 | `result-track:f0f567b778fd07b66b3f451228955d804edabb5e8b1ba04fb91f8a52ed08d886` |
| 32 | `theorem` | [HasStrictDerivAt.mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-mul.md) | 270 | `result-track:1976b61f17f5503ece55c2cfdcd915a27f429607a324abfdf93b44a4447c4cba` |
| 33 | `theorem` | [derivWithin_fun_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-fun-mul.md) | 274 | `result-track:a0a7bae5ad3c6914bb5c99001a2f3737358367707b41726a4a9395aa91ecf736` |
| 34 | `theorem` | [derivWithin_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-mul.md) | 281 | `result-track:c3a9cc65fbbaaf8d19b64bfae7210c1e1f0951eef724645d4821d50eaf3d4477` |
| 35 | `theorem` | [deriv_fun_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-fun-mul.md) | 287 | `result-track:4bf8b441bd1bcf40fae7f688d3a2d89d2f973b792ed0f4128ff7e15e0b88a6f0` |
| 36 | `theorem` | [deriv_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-mul.md) | 292 | `result-track:10e5cf088114bd0ef3964725f9d2f9bdcf4ca0bdbc013628593529b360e1ee4b` |
| 37 | `theorem` | [HasDerivWithinAt.mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-mul-const.md) | 296 | `result-track:4671d4c3d72a62e9cd81d60c084f6db99d71955b2439dd2609098cc593e7245e` |
| 38 | `theorem` | [HasDerivAt.mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-mul-const.md) | 301 | `result-track:3b8ac82235ecf290aa1bd4147e375f41159198ad9f7824e2664897ea3e46a87b` |
| 39 | `theorem` | [hasDerivAt_mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-mul-const-source-edition-2.md) | 306 | `result-track:4a99f72293e14a8258cd9278e1ef26db839e7f4d8206cc32985b819a8aa966da` |
| 40 | `theorem` | [HasStrictDerivAt.mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-mul-const.md) | 309 | `result-track:8263c4d50c409b9405646a047006f52e1069e1ac716d0c422b8885784f6bf300` |
| 41 | `theorem` | [derivWithin_mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-mul-const.md) | 314 | `result-track:eb4002c53bdbc8f1dddaee316306fff12fa9b5c483865a2f5296c8a352533d84` |
| 42 | `lemma` | [derivWithin_mul_const_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-mul-const-field.md) | 320 | `result-track:1318174e589f4a83b1d25cca9c2bc1d935210bd752aa79b7313124eef1b1be95` |
| 43 | `theorem` | [deriv_mul_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-mul-const.md) | 331 | `result-track:545a822814302a6362784ab49836aeb25fd9fd0e9a024ac3536394a100229b45` |
| 44 | `theorem` | [deriv_mul_const_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-mul-const-field.md) | 335 | `result-track:0b57afdff71d9d1350a78cdba2737c8d14136c753f2b9714b45c0f397b28aafa` |
| 45 | `theorem` | [deriv_mul_const_field'](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-mul-const-field-source-edition-2.md) | 345 | `result-track:bac62f8f4776e73f69d34f2598a8379218993b58d126bb9c0e507190dbe99d11` |
| 46 | `theorem` | [HasDerivWithinAt.const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-const-mul.md) | 348 | `result-track:c6c2513ff86f7a04940ae2484568f0094a55238b09108608b471d7dbed8f16e0` |
| 47 | `theorem` | [HasDerivAt.const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-const-mul.md) | 353 | `result-track:40a2ca00ff981d854c50a1752edc302afdc59c5b0d71a8704526058e5c587766` |
| 48 | `theorem` | [hasDerivAt_const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-const-mul-source-edition-2.md) | 358 | `result-track:7f9dd5d9d2949cebd93f2dbd4ee5cc0e11808cb422d59f2b761c4f3ea2a0339d` |
| 49 | `theorem` | [HasStrictDerivAt.const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-const-mul.md) | 361 | `result-track:2d5d3f80660c151d3fc25172d7ab0b077f18a2c1aaefc3f297e6dd78273c5e02` |
| 50 | `theorem` | [derivWithin_const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-const-mul.md) | 366 | `result-track:296f697164dc0c4748eef34fe2f0b491014568392418772b775c297d91207b49` |
| 51 | `lemma` | [derivWithin_const_mul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-const-mul-field.md) | 374 | `result-track:a70877128e50d131f8ef894733e645184b6f2cb2de2768eb4e74b52f3ea8e39e` |
| 52 | `theorem` | [deriv_const_mul](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-mul.md) | 378 | `result-track:1c35f4d0a13547fcb1c6124f731679b14116a7eaa18c22e80a1a268cf2a189c0` |
| 53 | `theorem` | [deriv_const_mul_field](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-mul-field-source-edition-2.md) | 384 | `result-track:f8b99b2a13fc46d7b457222f312568c9a5171c593fc2bc227fbe73485770ce0e` |
| 54 | `theorem` | [deriv_const_mul_field'](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-mul-field.md) | 388 | `result-track:a91a7b71a573e68db269bccd0e424b516ff38803ba1ea36bd5f2870eeb46e285` |
| 55 | `theorem` | [deriv_const_mul_id](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-mul-id-source-edition-2.md) | 391 | `result-track:ec92970f9c05ca530c2a6e02de781f67d56b0285c4bb071dcb96ffa3f17c87e5` |
| 56 | `theorem` | [deriv_const_mul_id'](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-const-mul-id.md) | 395 | `result-track:61e6a4649fe665de020cade28750b353765b0eba2094cc7f1f0b92eb35b8cfa1` |
| 57 | `theorem` | [HasDerivAt.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-fun-finsetprod.md) | 407 | `result-track:0cfa0db4ba0effc5be8fcf965e0e1a832875a867142c356abf3dfb5e6be62e8b` |
| 58 | `theorem` | [HasDerivAt.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-finsetprod.md) | 413 | `result-track:231efd55f798bdcb8622a6f9a92d0aa4e049b59c703d6db0e5c345c8b2785c6c` |
| 59 | `theorem` | [HasDerivWithinAt.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-fun-finsetprod.md) | 419 | `result-track:21b3fcb0cdf3a4a745eb64463a6f01c819d7671632363ad6971c782f983668dd` |
| 60 | `theorem` | [HasDerivWithinAt.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-finsetprod.md) | 426 | `result-track:2b7e20e943f7009eb0aecd10f4b4675662f8d23e0340036976a57d8519477361` |
| 61 | `theorem` | [HasStrictDerivAt.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-fun-finsetprod.md) | 433 | `result-track:1671a95b0cdb12922d678db23491efac951cd49d3551a3f52d92536eaf2839cc` |
| 62 | `theorem` | [HasStrictDerivAt.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-finsetprod.md) | 440 | `result-track:1517e25ac24bba028d785f911e793a05efe520493593e096e408ec4d429d9e36` |
| 63 | `theorem` | [deriv_fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-fun-finsetprod.md) | 447 | `result-track:c2f3f4637f9ab5f32097669efeb1c2e07f3f66c03ecb59ea60b3a6d06a2c48f5` |
| 64 | `theorem` | [deriv_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-finsetprod.md) | 453 | `result-track:090b0abc0c3e2cfb3bfe3a018397937d56e98b5dbb32f6c2a9aff31df761788f` |
| 65 | `theorem` | [derivWithin_fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-fun-finsetprod.md) | 459 | `result-track:9793c219487e722d6990c2d7ed3265e7a7625efe4b6ee47ca852b144eff27bbe` |
| 66 | `theorem` | [derivWithin_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-finsetprod.md) | 469 | `result-track:77e9daefb46c7d0d4ae7081f2da2026647ec2f558ca6ea57bacc409aef2e8724` |
| 67 | `theorem` | [DifferentiableAt.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableat-fun-finsetprod.md) | 482 | `result-track:cfadae2976ac8972cd75b4d0c55f88d4800247ef0bc6e41d3c7c04165c017221` |
| 68 | `theorem` | [DifferentiableAt.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableat-finsetprod.md) | 492 | `result-track:50887ad53d5313608d424a3c7920a1a7e755a32f4d96dabd5eee1c1f57991007` |
| 69 | `theorem` | [DifferentiableWithinAt.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiablewithinat-fun-finsetprod.md) | 500 | `result-track:2c58499b866cdf423b03fbd4e4669423e3fb2a78c0c761eb60b1e6dc1a4608a7` |
| 70 | `theorem` | [DifferentiableWithinAt.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiablewithinat-finsetprod.md) | 510 | `result-track:d73e30fd3b7ba981b8f256a9c03303021a5893a0f3b3f9280dc4b8f90a75ea89` |
| 71 | `theorem` | [DifferentiableOn.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableon-fun-finsetprod.md) | 518 | `result-track:fcd2b9e4aa899b74b23a7e9cf036743db6eedc89b8157cb93ef5d6dcfaf3d451` |
| 72 | `theorem` | [DifferentiableOn.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableon-finsetprod.md) | 526 | `result-track:d2570330719ac5cc834f10fe6e629a67a5c4531ff1cc029f65594ff0f2c823e7` |
| 73 | `theorem` | [Differentiable.fun_finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiable-fun-finsetprod.md) | 534 | `result-track:7c1eca7426879592d369068542055e520b0d0eb26929152f41c47bb1f1c51a26` |
| 74 | `theorem` | [Differentiable.finsetProd](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiable-finsetprod.md) | 542 | `result-track:dd4b503533bd40dbe3aa9060d36102e453793e2e747c726c0bf63820490bf0ef` |
| 75 | `theorem` | [HasDerivAt.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-div-const.md) | 554 | `result-track:039e5e3de3c35922b898937fdf47a939a36e0aa5fa400631d4c96e8f33b65352` |
| 76 | `theorem` | [HasDerivWithinAt.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-div-const.md) | 558 | `result-track:3966cff690942fbe436140f7b1e0ed7258ed7e17bbb74a391ea99f5b01d11dad` |
| 77 | `theorem` | [HasStrictDerivAt.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-div-const.md) | 562 | `result-track:871e124deb48faad004a62e8073a8fe98ea686dc5563b67f13c7c0d237b174a8` |
| 78 | `theorem` | [DifferentiableWithinAt.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiablewithinat-div-const.md) | 567 | `result-track:e5f17e44ad5247662d9e985ad3854fd64ca92c5bebdc858742accaaac473612b` |
| 79 | `theorem` | [DifferentiableAt.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableat-div-const.md) | 572 | `result-track:bc7543449188687422da4225d4da51f1fa77ae86c498a4898e42517acb607639` |
| 80 | `theorem` | [DifferentiableOn.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiableon-div-const.md) | 577 | `result-track:948d5962217a06693cb19617af7933db1c2866d4b67c604642f2b8a735d374ee` |
| 81 | `theorem` | [Differentiable.div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/differentiable-div-const.md) | 581 | `result-track:3f1a51a1da943a3fb47aa7490f36f621a4119754496279d0a9c57c3b86fc36b4` |
| 82 | `theorem` | [derivWithin_div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-div-const.md) | 584 | `result-track:c5bc6e35ab4fccb04bcb71e8e45abd728239519ff8baa5382db1e299d1e96714` |
| 83 | `theorem` | [deriv_div_const](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-div-const.md) | 589 | `result-track:f86318a04ebde0f1797440d3fa94908eb3c687381b1cba4fb3c59bcac7ba0aab` |
| 84 | `theorem` | [HasStrictDerivAt.clm_comp](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-clm-comp.md) | 604 | `result-track:ff42f2cfe2fd441a886424575d1e600f65fb9b99280a7f365302dfe13e8dea29` |
| 85 | `theorem` | [HasDerivWithinAt.clm_comp](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-clm-comp.md) | 608 | `result-track:e58032d4469e5d5298b8cdf51bdfa9d0718d2ba3d12c4859b58d77cd60b6a19a` |
| 86 | `theorem` | [HasDerivAt.clm_comp](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-clm-comp.md) | 613 | `result-track:cb7079c83c6946f6a2fc28ba3f4e5585bb85f812d6600f9a6ced03b4afef0d96` |
| 87 | `theorem` | [derivWithin_clm_comp](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-clm-comp.md) | 618 | `result-track:be546336760725f437fa5e730e5f328bf51f631c152292d159d671b2ff2607d1` |
| 88 | `theorem` | [deriv_clm_comp](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-clm-comp.md) | 626 | `result-track:92cf79fc4460ce6fb6b8fe63df2599ceeab3aa7fae05d57c88f3d46d0ddd12c9` |
| 89 | `theorem` | [HasStrictDerivAt.clm_apply](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasstrictderivat-clm-apply.md) | 630 | `result-track:09f48a523d453fb9badcbe15a34b52371249074581a5a179666a9f9e8875011d` |
| 90 | `theorem` | [HasDerivWithinAt.clm_apply](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivwithinat-clm-apply.md) | 634 | `result-track:e78bada7957bd354e51d91917001396aaa52d7c160e1869635ef2432d26a2220` |
| 91 | `theorem` | [HasDerivAt.clm_apply](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/hasderivat-clm-apply.md) | 639 | `result-track:2a310d1df171af468e8cb991f5d18dfde28276b0c70f3c7cdf16ea20172fc556` |
| 92 | `theorem` | [derivWithin_clm_apply](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/derivwithin-clm-apply.md) | 643 | `result-track:a45b267ed153ce98c6812ed33171effedbe6c71dbc1a0f1383de12854c2f1c47` |
| 93 | `theorem` | [deriv_clm_apply](../../../../RealFunctions/DerivMulNamespacedPublic.lean/declarations/deriv-clm-apply.md) | 650 | `result-track:1c22a29c8c200a391a681f522e541ee1b8b183467dd7ec275828d78b601e0cba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70fc8886f8e58c93fef0a84802e490266a9be54e029497b9020361f7d61ba794 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1a6dfd6b88022ebd44c987f2a8dc3f92bcc36af4873eb4c7b7302c4cb94eaf29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
