# Verification target: Characteristic Function Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean.json)

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
| 1 | `def` | [innerProbChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/innerprobchar.md) | 75 | `declaration-track:42263d82a7a79212f26f90ad8fb01e6a0ae5a77f03930ef068f193615f294c92` |
| 2 | `lemma` | [innerProbChar_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/innerprobchar-apply.md) | 78 | `result-track:a47a2c35088c5ed5d47dd3cb821d023045203736800e11f84c65cf4f1024fca8` |
| 3 | `lemma` | [innerProbChar_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/innerprobchar-zero.md) | 82 | `result-track:afb8929526f3a5c3c03b0524f6d2d618914ea8a6dbe812ec1932689ec9250294` |
| 4 | `def` | [probCharDual](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/probchardual.md) | 86 | `declaration-track:99561b6d6d97a85dc5ec4eb628a66d71109520330554880373543b273d14e793` |
| 5 | `lemma` | [probCharDual_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/probchardual-apply.md) | 91 | `result-track:74fc7050a038b2427fc66e9a102b55bcf90993774eb77e4f5d1c0da7229fc0c9` |
| 6 | `lemma` | [probCharDual_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/probchardual-zero.md) | 95 | `result-track:7a063b894ddb6f1eb37b33da4387f838c648bf04c8be01938820ffb4973341d1` |
| 7 | `theorem` | [ext_of_integral_char_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/ext-of-integral-char-eq.md) | 111 | `result-track:f100bdd8cb1a224a7eefc64353e39928b23c1e8ae42381932af13b8409cefea9` |
| 8 | `def` | [charFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun.md) | 138 | `declaration-track:b34c64b600185d43286ec68962bad9dc36c54bc05b5023900cc80a001350738d` |
| 9 | `lemma` | [charFun_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-apply.md) | 140 | `result-track:0b2cfc84c66953a76285a7fea223081596c0f8ba43365589f9d0ca9f8401de37` |
| 10 | `lemma` | [charFun_apply_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-apply-real.md) | 142 | `result-track:f8c04ba412b50745c2d1fa934a176bffb46b9fe9b11a8cad24d9f77285919d1d` |
| 11 | `lemma` | [charFun_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-zero.md) | 148 | `result-track:904d0fb3438b7a3919320a631903f2ff1df98d22e892fb2560c5bc602fae8cec` |
| 12 | `lemma` | [charFun_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-zero-measure.md) | 152 | `result-track:610a77cf1ea51230f1c3677c25ba6788257db896ae97424cb8b39000ba4b9bd0` |
| 13 | `lemma` | [charFun_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-neg.md) | 155 | `result-track:52f2aa7a97b526e8f39d33b5d5b542323fa38e5d0a2a57f50c372117dcef5d27` |
| 14 | `lemma` | [charFun_eq_integral_innerProbChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-integral-innerprobchar.md) | 159 | `result-track:0da8190953374209bf6639984dffe23fae39a24d0481010381b41e39067490d5` |
| 15 | `lemma` | [charFun_eq_integral_probChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-integral-probchar.md) | 162 | `result-track:1d0d9c133bdd295e66291fbfbd142d3c4f34a66940c22693e0209d199a3f0c3b` |
| 16 | `lemma` | [charFun_eq_fourierIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-fourierintegral-source-edition-2.md) | 166 | `result-track:4e960508f224e137f86c591adec1208d26d1045f923a03609cbb94ad5f66e060` |
| 17 | `lemma` | [charFun_eq_fourierIntegral'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-fourierintegral.md) | 171 | `result-track:256c9e5dd2023e41155806e8c8770adf4f181c4edb1bb8040ca4895f417cdf4d` |
| 18 | `lemma` | [norm_charFun_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/norm-charfun-le.md) | 181 | `result-track:7a3b6898855a5a77f3502fdfa47e0c4a9bead447601fcd907a3b789a3643e915` |
| 19 | `lemma` | [norm_charFun_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/norm-charfun-le-one.md) | 185 | `result-track:555bef36c7883396be08f575caae70d8bc346735b87e909c31c704e788817b23` |
| 20 | `lemma` | [norm_one_sub_charFun_le_two](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/norm-one-sub-charfun-le-two.md) | 188 | `result-track:c8f3a4bbb2d7658e9c35e6ca3b91a223e3db4ba0fadc2ad83312a87fa2009200` |
| 21 | `lemma` | [stronglyMeasurable_charFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/stronglymeasurable-charfun.md) | 195 | `result-track:52c58b47b74356e89bbd20db1b473b038802eb48b6c1f60c2d15977205489187` |
| 22 | `lemma` | [measurable_charFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/measurable-charfun.md) | 200 | `result-track:d50a61fd83674586e692907ea1435b11ddab618e148a1f62f501fd85c87beef4` |
| 23 | `lemma` | [intervalIntegrable_charFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/intervalintegrable-charfun.md) | 204 | `result-track:ed752801f09a0d107b511c7fa304bfc7d1aaba4451623ffed49d7ad1792cc422` |
| 24 | `lemma` | [charFun_map_eq_charFun_map_inner_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-eq-charfun-map-inner-one.md) | 209 | `result-track:9c20cf592ac438619d451172bb4e2eec4e480864a4f35ee0342cac3c57bfaae7` |
| 25 | `lemma` | [charFun_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-smul.md) | 216 | `result-track:953f40649749643b02947665e369b2b1e0f390ecc8593d23dd5ce26195530960` |
| 26 | `lemma` | [charFun_map_smul_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-smul-comp.md) | 222 | `result-track:ebbbb0b7f4b0bf1c49dfa500116f6fd98d3bac1fd2627409a3954b2f0c1db38a` |
| 27 | `lemma` | [charFun_map_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-mul.md) | 229 | `result-track:bcc805c49665067f31a413244642bad3af5659fb357e42ade7b5b668c48358da` |
| 28 | `lemma` | [charFun_map_mul_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-mul-comp.md) | 232 | `result-track:4a6615b3ecf19dfecb5df08adbb367ee72669dacceefe8fe203a856fa3050872` |
| 29 | `lemma` | [charFun_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-dirac.md) | 241 | `result-track:f2f4a15a36545411298eec58bd46f60132c365166759d9f1c6e1cacc84e145cb` |
| 30 | `lemma` | [charFun_map_add_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-add-const.md) | 245 | `result-track:c26f54aeea94e65260cbfa8092a0e79b9f397ee292da0ccde84e5d37d225b274` |
| 31 | `lemma` | [charFun_map_const_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-const-add.md) | 256 | `result-track:b1ed70552f05f2eb27814c658004d4348a122726c55323e4a406522dedaf7bab` |
| 32 | `theorem` | [Measure.ext_of_charFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/measure-ext-of-charfun.md) | 265 | `result-track:99b2824b4ba5b9d978e3389afcda9483e8af5fcb6d3f4643b9477a4ef01a0d40` |
| 33 | `lemma` | [charFun_conv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-conv.md) | 276 | `result-track:b30327e376580b7aa2bfc396b4de03fb6fe9b11731e05871ba730846a85ab232` |
| 34 | `lemma` | [charFun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-prod.md) | 290 | `result-track:19991774a2b8d6adce0279aaa1beb98ec04e631df98dfba606ceb4950032a21a` |
| 35 | `lemma` | [charFun_eq_prod_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-prod-iff.md) | 305 | `result-track:8fb8271afcc1cd4f04d818b417fbb841370876461476a213a56d8528bee35743` |
| 36 | `lemma` | [charFun_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-pi.md) | 321 | `result-track:31ac42167041dd949191f813cb75838aad305ac0517967bb30c545772544bccc` |
| 37 | `lemma` | [charFun_eq_pi_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-pi-iff.md) | 333 | `result-track:3885d520dd689bc87b7c6a4ad58de06e5f57465260b2ab1b27ec6532286ad015` |
| 38 | `def` | [charFunDual](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual.md) | 353 | `declaration-track:4be7f2c5eb9033f7a452c9ed77353585257d52e216bb3ab96b0c3960fd6bc030` |
| 39 | `lemma` | [charFunDual_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-apply.md) | 355 | `result-track:40e70ba5caf42d689b108cc9599117e80a69c43db68d4bd50bbc76a0c5350dc1` |
| 40 | `lemma` | [charFunDual_eq_charFun_map_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-eq-charfun-map-one.md) | 357 | `result-track:ae59d8c9cc6c484672f0c420dd00823bfc460e179e93aa6422bbfe8a430e053e` |
| 41 | `lemma` | [charFun_map_eq_charFunDual_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-map-eq-charfundual-smul.md) | 367 | `result-track:0aafaf6020e9ad0572aab806a17b4fbfd29ac41d25423fc96f0085d12927e9a1` |
| 42 | `lemma` | [charFun_eq_charFunDual_toDualMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-eq-charfundual-todualmap.md) | 378 | `result-track:91d90fd6091f7da2871afe4bf95e11ae5cdb174bf4a6842d3f70735724274b67` |
| 43 | `lemma` | [charFun_toDual_symm_eq_charFunDual](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfun-todual-symm-eq-charfundual.md) | 384 | `result-track:d76f9596a270f0844121f6e75fc139e76329d911612bc25e5627abd2070b3d98` |
| 44 | `lemma` | [charFunDual_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-map.md) | 390 | `result-track:eeede0691b467a208d7e3b2a58213f62bffb34be3967589d545031224916be8f` |
| 45 | `lemma` | [charFunDual_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-dirac.md) | 396 | `result-track:4adc5f44f0aa1926353cdd17771a14e24372ca3c341d647db985d2d6d6f96bbb` |
| 46 | `lemma` | [charFunDual_map_add_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-map-add-const.md) | 400 | `result-track:76b168b6b0d9670ac6a609df436c2fa1cc409211eb4357d4d435dd28d9d08b18` |
| 47 | `lemma` | [charFunDual_map_const_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-map-const-add.md) | 410 | `result-track:2c865bf6f30b24ed5458335b778f50ee045bf26e65f1e1edb9d1bf3d6ac1227c` |
| 48 | `lemma` | [charFunDual_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-prod-source-edition-2.md) | 418 | `result-track:ae0f9a494fd8d768f8de8b79e605af48bc7a4217827f4247983902ac83264e2c` |
| 49 | `lemma` | [charFunDual_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-prod.md) | 427 | `result-track:6f8ecc41afc290cc54bab5e042e03c994195423e918190653bccc8f8d3ae8380` |
| 50 | `lemma` | [charFunDual_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-pi-source-edition-2.md) | 444 | `result-track:dd1d61e2698c98e7b06cd2302d91d8f27e5bd198aa737486cd7ac0166f2bd0c9` |
| 51 | `lemma` | [charFunDual_pi'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-pi.md) | 455 | `result-track:2c7cc2cb3507903cbdceb393e11c0990f7fc085b99b25731404cac883f49acfb` |
| 52 | `theorem` | [Measure.ext_of_charFunDual](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/measure-ext-of-charfundual.md) | 470 | `result-track:1f3348ea70ddf706afb6aba9c1483cb9f8495de746d078d5ebb9893e322f3d71` |
| 53 | `lemma` | [charFunDual_eq_prod_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-eq-prod-iff.md) | 483 | `result-track:3f78301c7386e4c554377d60a8c122569489c6c51f4f6a3adbe94b3daeb2c1fd` |
| 54 | `lemma` | [charFunDual_eq_prod_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-eq-prod-iff-source-edition-2.md) | 498 | `result-track:c77be0276cd9d7c92174da23e38d41178bf0b86845bba601a1956a0c0fa12570` |
| 55 | `lemma` | [charFunDual_eq_pi_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-eq-pi-iff-source-edition-2.md) | 519 | `result-track:c422de918ccd6584d8cd704e80ab4f313054365d86ceba506a61be7cd8e333fc` |
| 56 | `lemma` | [charFunDual_eq_pi_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-eq-pi-iff.md) | 535 | `result-track:7d01977b5f142c7fcc8d4c92ec2a7341803dfada3fdbde5fc2147c814ce00c67` |
| 57 | `lemma` | [charFunDual_conv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicNamespacedPublic.lean/declarations/charfundual-conv.md) | 552 | `result-track:b0ecea4c850e18202450e81000d36e3bf8c3e0e0a894740a1734a8ef73ad15cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9b9549834e4722f47b2f1d6708364b00a57214c683616c38c74f8330c2c0f93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
