# Verification target: Calculus Vector Field Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2552e1d8be91b5a59d4844051626c460ac83cb7",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2552e1d8be91b5a59d4844051626c460ac83cb7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean.json)

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
| 1 | `def` | [lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket.md) | 67 | `declaration-track:d4c9b2cf7c83b225a1c05b4727d74bd97da34c6b3286ccd00dc3fa590a371d07` |
| 2 | `def` | [lieBracketWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin.md) | 73 | `declaration-track:e718522c5d5356fc07a63f4d31f5be8d7f63be142dcf64c933d5481dd647ff32` |
| 3 | `lemma` | [lieBracket_eq](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-eq.md) | 76 | `result-track:21a87191d2c5b0ddbdca3eed3fc6d1030a81b8648b8266bbf4ffd3ce18f95e94` |
| 4 | `lemma` | [lieBracketWithin_eq](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-eq.md) | 79 | `result-track:b8ed495e4fbc86a96a1d1b3604c87cd41985e31ef5caee5388824e45bb2ce4c8` |
| 5 | `theorem` | [lieBracketWithin_univ](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-univ.md) | 84 | `result-track:82b49556fdf8e80ee088d1004cdb838e78e594916c4f4d962e1af09c83079805` |
| 6 | `lemma` | [lieBracketWithin_eq_zero_of_eq_zero](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-eq-zero-of-eq-zero.md) | 88 | `result-track:0905040f48c126fcfced30cdfbfc9871c6b10e79911377e11d3a6a0b169e1a8b` |
| 7 | `lemma` | [lieBracket_eq_zero_of_eq_zero](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-eq-zero-of-eq-zero.md) | 92 | `result-track:699a7cd27204bff44507eaf263ca0434af76ea8ae5dd82f49e48074e9344f4ac` |
| 8 | `lemma` | [lieBracketWithin_swap](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-swap.md) | 96 | `result-track:fcddd84d4ecc8752e871048c69546305d150887d41eca5ba99ea353699e6000e` |
| 9 | `lemma` | [lieBracket_swap](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-swap.md) | 99 | `result-track:0968e03fd87c1cb4770aca81c9777846323482dcfe3043233872ec2357bec120` |
| 10 | `lemma` | [lieBracketWithin_self](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-self.md) | 102 | `result-track:b1f0f72289e4a82dd184fa08bd393fdd7e8020836acebd7969eb72614df7b361` |
| 11 | `lemma` | [lieBracket_self](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-self.md) | 105 | `result-track:5a9050cf9f192121383fa5798a4673988bfedd14e5ff2be817a1df49528b5aa7` |
| 12 | `lemma` | [lieBracketWithin_const_smul_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-const-smul-left.md) | 108 | `result-track:8fc0d3d3f21ee16d64118f08683e1efb23beab83ffdf08a186aa1b729575a4fb` |
| 13 | `lemma` | [lieBracket_const_smul_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-const-smul-left.md) | 114 | `result-track:96bc95f156c110d2a7363144b36e5e3082c8b30c07ca14556477f7595ac0152a` |
| 14 | `lemma` | [lieBracketWithin_const_smul_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-const-smul-right.md) | 119 | `result-track:c3cf9627a8c847ea31e8c1fe5596cf2e52ac0661e84c80b855cd17821b72f119` |
| 15 | `lemma` | [lieBracket_const_smul_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-const-smul-right.md) | 125 | `result-track:39386deb1c02270d65a7c24d4a77f8d60d77a69e32e64dc23dcd43cb34d62a98` |
| 16 | `lemma` | [lieBracketWithin_smul_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-smul-right.md) | 134 | `result-track:abb2ec23a6ba60a818b82966b0788914a8825e44f3c3cd23bb5f7186d94fc1db` |
| 17 | `lemma` | [lieBracket_smul_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-smul-right.md) | 145 | `result-track:39f889ebffd4f7495d4dfabbf7f6e4a55e95c3e0c710e733bd1fb0c0548b1043` |
| 18 | `lemma` | [lieBracketWithin_smul_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-smul-left.md) | 156 | `result-track:cbdc971d375ed5a776782002a99c91b343605b37bf15d6ddc4495fff8ddba052` |
| 19 | `lemma` | [lieBracket_smul_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-smul-left.md) | 168 | `result-track:56bcf3b18637e8ca1f91e182abc1cbb5180ef7d373f143aa44dc4ef89020cad0` |
| 20 | `lemma` | [lieBracketWithin_add_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-add-left.md) | 175 | `result-track:7935b8d88d40c78f1aa081cc16fc834352c134b2a27a320e445b86000162ffd0` |
| 21 | `lemma` | [lieBracket_add_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-add-left.md) | 183 | `result-track:623f732e7097d27cca4f51e32653afea22b936f579d078888e14313262e71d56` |
| 22 | `lemma` | [lieBracketWithin_zero_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-zero-left.md) | 193 | `result-track:b43fd6ede7356702a2f1cbe89d62690e4132e765600dce3efc78d840aa85d4ad` |
| 23 | `lemma` | [lieBracketWithin_zero_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-zero-right.md) | 198 | `result-track:4ae0f7ee604649985f9c8f802582e878cb9665cc273839a57c1b50bfecb54689` |
| 24 | `lemma` | [lieBracket_zero_left](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-zero-left.md) | 203 | `result-track:8b5cff897cffdad4a35928294cb47d6dcd4444f943f8733bdb6f058c232f124c` |
| 25 | `lemma` | [lieBracket_zero_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-zero-right.md) | 208 | `result-track:39d83e0f2b0cee6c83de0fb9899cd4c08089a8daf4281b192320308ed4cab3f3` |
| 26 | `lemma` | [lieBracketWithin_add_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-add-right.md) | 210 | `result-track:af0c6d0fd1363611165574844da8f18e9a393d2d2d47611b4890b444d969eebb` |
| 27 | `lemma` | [lieBracket_add_right](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracket-add-right.md) | 218 | `result-track:e9391bf54ad5dded4fdf679755bfc894b8d11bbc4a71f40802b0060ec2d99a6c` |
| 28 | `lemma` | [fderivWithin_apply_lieBracket_of_isSymmSndFDerivWithinAt](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderivwithin-apply-liebracket-of-issymmsndfderivwithinat.md) | 227 | `result-track:3da7ae88a8272d1b0b88ed46b6a5665fcc6d8f6770523ffe554ce892fb8dee8a` |
| 29 | `lemma` | [fderiv_apply_lieBracket_of_isSymmSndFDerivAt](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderiv-apply-liebracket-of-issymmsndfderivat.md) | 242 | `result-track:de81ed597243ff372031a27f3b3d38a21fa31fcc7cd02b2ed90cf8edd85b1633` |
| 30 | `lemma` | [fderivWithin_apply_lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderivwithin-apply-liebracket.md) | 255 | `result-track:3d53b696f39d84643da3ba9dc3f7859489523ef27a2fd1342eb186a3af461377` |
| 31 | `lemma` | [fderiv_apply_lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderiv-apply-liebracket.md) | 267 | `result-track:3dec120cdccf1f4581da6dfbd657c4b4bffe4e1927e70b7ad6d29888c4f5e4c3` |
| 32 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-4.md) | 276 | `result-track:16f17c3bcd792c18ab1ee75fb14276484cf4b0d65a912b2d15e68b7e85da2a84` |
| 33 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-15.md) | 286 | `result-track:ebc6a34646fc527906716cc809a8da1208a5904462c5bcad2c3fcfa8b549c2ab` |
| 34 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-8.md) | 293 | `result-track:356049d4e0210113822ca5f3fb08efa8a685194261fab5dab84fd437d36c2040` |
| 35 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian.md) | 298 | `result-track:0cf9eddab3005706a5399d47b4ca6a2b2b6378484608125da9c79a5f6bf29fd2` |
| 36 | `theorem` | [lieBracketWithin_of_mem_nhdsWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-of-mem-nhdswithin.md) | 303 | `result-track:168e5649a993d9984b7629cad0c7093ba20bd0b3b350f884dc92feb22cadcb5b` |
| 37 | `theorem` | [lieBracketWithin_subset](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-subset.md) | 309 | `result-track:07cdd38c49184df563b41b1df5be4e7c68fd2c0cf3c6e8a720fc504a06276f9a` |
| 38 | `theorem` | [lieBracketWithin_inter](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-inter.md) | 314 | `result-track:04f6e20395ee0626a8fff1f3c4c8efa44bc346fea940d0f5da7a5ce4d1de99c2` |
| 39 | `theorem` | [lieBracketWithin_of_mem_nhds](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-of-mem-nhds.md) | 318 | `result-track:40737826e63f61387990034bc8e4f4a5114f616c8ecec9329973fb4dbe80c847` |
| 40 | `theorem` | [lieBracketWithin_of_isOpen](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-of-isopen.md) | 322 | `result-track:378bb67f7bcd812f5b83ea99317840f61eaa4842f0d6cb030aef6086e7f748b0` |
| 41 | `theorem` | [lieBracketWithin_eq_lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-eq-liebracket.md) | 326 | `result-track:c0c131c4d7d3d6ea71d4c9284d0134d2b244118124fd283b79f241fe2be3e2aa` |
| 42 | `theorem` | [lieBracketWithin_congr_set'](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-congr-set-source-edition-2.md) | 333 | `result-track:bcf66855cad446ab6c758daa8430299be2f5c1710080f1ae2ef30c3d96d44fa9` |
| 43 | `theorem` | [lieBracketWithin_congr_set](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-congr-set.md) | 337 | `result-track:023aeabe39450edc67df528c7c71b6338269ef9081489dcefdb7b55b78e736ef` |
| 44 | `theorem` | [lieBracketWithin_eventually_congr_set'](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-eventually-congr-set-source-edition-2.md) | 343 | `result-track:35b2c0023bf30ea9a8d4068d25a86aa3da7ee7a1b1509e07c30c0564d7246d34` |
| 45 | `theorem` | [lieBracketWithin_eventually_congr_set](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-eventually-congr-set.md) | 347 | `result-track:2247eec0326a47803f9cc4bb988d64755855ec8db0d2ad5caf2979dfd96436ad` |
| 46 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-7.md) | 351 | `result-track:275ce62db9d964bfad60d4d73cd1808437da61d0adc62ff491735b171896c861` |
| 47 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-2.md) | 359 | `result-track:10e4515c40f3889210529402f1935da0e3994411934a97d04ebab653d6769a9b` |
| 48 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-13.md) | 364 | `result-track:a8e30b398d272650b30f0b25ea4ea6ceeffc0bfd56ca3a509421ae240e14ea4a` |
| 49 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-12.md) | 373 | `result-track:784d2c9518610ee97da5901fb0ba8c25e007cceb28f533975075340dfd999f8c` |
| 50 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-9.md) | 380 | `result-track:5740b72308e45fe0a15a3d676080584b673da106ff7ac4d2345efaeaa9d0f16f` |
| 51 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-10.md) | 385 | `result-track:5cdf1c89667f492a788d08b1f512eb55036bb8c841e3424d5fe34246da25cc0c` |
| 52 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-3.md) | 391 | `result-track:12d7d693f6732ac82307c5a4b6aa7fdb7d5a1a709df13e299446287d0f06a72f` |
| 53 | `theorem` | [lieBracketWithin_congr](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-congr.md) | 397 | `result-track:6526832f6bb0e9bfffd858d6bca67eb77663e071801aefd5e8e9a80f2bad04b0` |
| 54 | `theorem` | [lieBracketWithin_congr'](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/liebracketwithin-congr-source-edition-2.md) | 405 | `result-track:7525af6bea768e9ca429cbab2087f0857541b52ae2b3db11dacabd762568388f` |
| 55 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-5.md) | 409 | `result-track:18824124966131e23dbb9e25ca191525b693a216d36c589a643491e04574e291` |
| 56 | `theorem` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-14.md) | 414 | `result-track:d651f0846c3f1c1d1b36fd539dfe6301add3f047e10c2f61d90e28e9620711fb` |
| 57 | `lemma` | [leibniz_identity_lieBracketWithin_of_isSymmSndFDerivWithinAt](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/leibniz-identity-liebracketwithin-of-issymmsndfderivwithinat.md) | 421 | `result-track:3928d30922931ba4f4377f57f5d56956684e6d0eb6eeb1749b7ac22e3c6a9f1d` |
| 58 | `lemma` | [leibniz_identity_lieBracketWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/leibniz-identity-liebracketwithin.md) | 451 | `result-track:dba6cc28efc7e91251c569b74a306fe487f9f61ca0aca3f7bf1c99df8c7ab023` |
| 59 | `lemma` | [leibniz_identity_lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/leibniz-identity-liebracket.md) | 468 | `result-track:68081d014f08f44c2c0b833b2d419b36bcfbc0f4b22846822c82df66726c3e15` |
| 60 | `def` | [pullback](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullback.md) | 484 | `declaration-track:acea7e03b1d5e96bb8d5bf837aacae9ff87d13e193ab4389d3819f28581d998f` |
| 61 | `def` | [pullbackWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin.md) | 491 | `declaration-track:2124f3c33800dc5aa61d0e50c7b9c9956bf4075e58c72d436d3b1c07b3a1b8a0` |
| 62 | `lemma` | [pullbackWithin_eq](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-eq.md) | 494 | `result-track:284333e9386e53c69058941ea4d3d126aeff6e3127ea4f10c9a811857b4885ef` |
| 63 | `lemma` | [pullback_eq_of_fderiv_eq](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullback-eq-of-fderiv-eq.md) | 497 | `result-track:831fe3781d5c58b374bbcbb1c392bb4ac8457076b4d2436ddce93d713430515d` |
| 64 | `lemma` | [pullback_eq_of_not_isInvertible](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullback-eq-of-not-isinvertible.md) | 502 | `result-track:e68c5d3a5dd0da5408d4fedc01d05dae7cfc4ef7ca68e6c71a0386e18882657f` |
| 65 | `lemma` | [pullbackWithin_eq_of_not_isInvertible](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-eq-of-not-isinvertible.md) | 507 | `result-track:6334ef735ecc16dd5630a14a19d556e0250dd6b7e2c22a39b5a9f62e1ddc8373` |
| 66 | `lemma` | [pullbackWithin_eq_of_fderivWithin_eq](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-eq-of-fderivwithin-eq.md) | 512 | `result-track:430b3614100d74b7c280daf8fcbdbc522f0cce320ae26a079eff1293df2e0eb9` |
| 67 | `lemma` | [pullbackWithin_univ](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-univ.md) | 517 | `result-track:bf20b4775699f799bb481126a803f95b41e494027c7a14333fb20df3382a1dc4` |
| 68 | `lemma` | [fderiv_pullback](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderiv-pullback.md) | 524 | `result-track:432a0766320a9aaec222d6684a05b10c455087b1d6432ef453e291e8587255c1` |
| 69 | `lemma` | [fderivWithin_pullbackWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/fderivwithin-pullbackwithin.md) | 529 | `result-track:28460bab8eb994c6145a8065f22a2ae3a29aa4ad0cb2baa5770e81103964eafd` |
| 70 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-11.md) | 542 | `result-track:62e499773c665a2a8d595123d39270b133989c3fee53d0d95acf0ae7ff421858` |
| 71 | `lemma` | [DifferentiableWithinAt.pullbackWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/differentiablewithinat-pullbackwithin.md) | 590 | `result-track:a782d68e1f86ccba8bda984135d9fb006e50ca28c3de1777cc9303a2e98b2295` |
| 72 | `lemma` | [Calculus Vector Field Namespaced Public](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-liebracket-varian-source-edition-6.md) | 610 | `result-track:24a59398c0ff8dc2bc5ba69c03eb7098eca2d114375b190f62858e7b040aa70d` |
| 73 | `lemma` | [pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat.md) | 623 | `result-track:91619258b45eda5127f0d7381be117fbb081b46ff58659d43a9ee41dff889617` |
| 74 | `lemma` | [pullbackWithin_lieBracketWithin_of_isSymmSndFDerivWithinAt_of_eventuallyEqSet](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-liebracketwithin-of-issymmsndfderivwithinat-of-eventually.md) | 659 | `result-track:7a2532743bff851fab7844666071113b2973fb0ce9fc6805c2f88afec8a3cec7` |
| 75 | `lemma` | [pullback_lieBracket_of_isSymmSndFDerivAt](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullback-liebracket-of-issymmsndfderivat.md) | 692 | `result-track:08510dd71cc12009ebf3b5efad4ba3d3b45e2039837d4cfa37f55e3082bc3b01` |
| 76 | `lemma` | [pullbackWithin_lieBracketWithin](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullbackwithin-liebracketwithin.md) | 704 | `result-track:3f639ac5776aa8ab94c7fee69ae7b06e07d8f929101025f7b4297809e265ae25` |
| 77 | `lemma` | [pullback_lieBracket](../../../../RealFunctions/CalculusVectorFieldNamespacedPublic.lean/declarations/pullback-liebracket.md) | 716 | `result-track:cac950115bf5441a07fc9cc552f9dfe44e08e4c157d7aabd6480e33110ac73d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c011a524dae3b0fb7eb06396332d77df6d1a2e9d1d4657a78f7206ac048ec074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
