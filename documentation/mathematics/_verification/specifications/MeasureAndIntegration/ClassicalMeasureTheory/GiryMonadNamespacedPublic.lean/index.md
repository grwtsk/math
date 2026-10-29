# Verification target: Giry Monad Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11bc189ae7232a0216ce593fbb36ba426409d99a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11bc189ae7232a0216ce593fbb36ba426409d99a`.

Source path: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean.json)

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
| 1 | `instance` | [instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/instmeasurablespace.md) | 57 | `declaration-track:178095008c3941a49e74ec78c69faaaf7d2674eabf4ae788dfe9c77250d6663b` |
| 2 | `theorem` | [measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-coe.md) | 60 | `result-track:3f45f7ad3c416956ab3523a14301e4f3ba7582d14380392485751f52fac36c99` |
| 3 | `theorem` | [measurable_of_measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-of-measurable-coe.md) | 63 | `result-track:6108fae73bd0f3040d2027311066369ed00d097d8dc8a79d06880400f0c9c172` |
| 4 | `instance` | [instMeasurableAdd₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/instmeasurableadd.md) | 69 | `declaration-track:e9cb4aa734efa94c3a4b7371a21203a5a9e5446f14aa648c01ebaf6bd8abb75b` |
| 5 | `lemma` | [Giry Monad Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/smul-measure.md) | 79 | `result-track:4129ac3a2b57c4c1188618a47127d08e2e39f39d68f75a3797deb0a2882d4734` |
| 6 | `theorem` | [measurable_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-measure.md) | 85 | `result-track:b0bdcc5e8c6e2bd382f1cd5f587c2ab2e5630bf5050bc3213c114b73d58b75be` |
| 7 | `theorem` | [Giry Monad Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measure-of-ispisystem.md) | 89 | `result-track:79499e6706b3d4cc86457ea7729c28c7404b91f662b13b541282a7066a8040bf` |
| 8 | `theorem` | [Giry Monad Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measure-of-ispisystem-of-isprobabilitymeasure.md) | 104 | `result-track:b827037336d4058b1ef5556af610e68a1dd0b66670dd24830fe88185e917c292` |
| 9 | `theorem` | [measurable_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-map.md) | 111 | `result-track:f67870294b40d4376289f8b4fc230d4785f1a11e520fe81e9c7cb82bb2f05c46` |
| 10 | `theorem` | [measurable_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-dirac.md) | 118 | `result-track:54c018119c821e6b9aca7f907fc86002e5170218ebb0e3b8da4c5f72277d8764` |
| 11 | `theorem` | [measurable_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-lintegral.md) | 124 | `result-track:6007ea764d0b3d51f7d026d2ef585c559d5a29b880a17ba158011b633f015600` |
| 12 | `def` | [join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join.md) | 133 | `declaration-track:a367caa0804c3f6718b9b83833b7a478b00ad54024f9717653e05b23dc4708f1` |
| 13 | `theorem` | [join_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-apply.md) | 143 | `result-track:92b81d695d89f6596f3960e1d3730b2b3cec24a4c520e9b2c11e4f65f21c6334` |
| 14 | `theorem` | [le_join_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/le-join-apply.md) | 147 | `result-track:830640f8a8173b20a6aba193b4289a88c63e052f31fbad513d202e3be6dde225` |
| 15 | `theorem` | [join_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-smul.md) | 152 | `result-track:602d54397503c9ce734e3276037a95971fad461688623d5cf762a4569851f893` |
| 16 | `lemma` | [join_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-sum.md) | 157 | `result-track:0112989e9c1a8603ac044fcbc41e78e5c15d3fe498eadf61f347bf633f069501` |
| 17 | `theorem` | [join_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-dirac.md) | 163 | `result-track:c306b5966e086e16c13aaeba09fe8b4b28468fc6638e44031f9723074a9729f3` |
| 18 | `theorem` | [le_ae_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/le-ae-join.md) | 167 | `result-track:54e2c9b7c2a98af89910fa9694f7fc4ef35d112b1c57bcf8f5a28dd5317d9f47` |
| 19 | `theorem` | [ae_ae_of_ae_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/ae-ae-of-ae-join.md) | 174 | `result-track:44529424a667a2e9e2814ceeb57dc0f3ec6a155176627a3e5ed9cde20008aacf` |
| 20 | `theorem` | [Giry Monad Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/ae-of-join.md) | 178 | `result-track:1d9a085838821d7d61629f1e74508bd0c817ef892609c3737dec9b98cd21ce6e` |
| 21 | `theorem` | [aemeasurable_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/aemeasurable-lintegral.md) | 182 | `result-track:962d9e03da21bc6dc245e785f72f14065b74d24214ff2bc1da8db21615563a3b` |
| 22 | `theorem` | [join_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-zero.md) | 189 | `result-track:d8d1ea20acce2bde05d4eae404e06e859f0876b76bd06d71a293343894c073aa` |
| 23 | `theorem` | [measurable_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-join.md) | 194 | `result-track:1e19b0c63bd965ef6312c0cfc33913cfce32fc54b64b0c7c352795dad3b0ba07` |
| 24 | `theorem` | [lintegral_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/lintegral-join.md) | 198 | `result-track:343c0cb1ab6b56d2db01be70901a8a00c6945c6573002b89378d9866647e5db6` |
| 25 | `theorem` | [lintegral_join_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/lintegral-join-le.md) | 227 | `result-track:11df4459ee7142fda5a5823bcc79bef71689d005209d1c75ab7050636cef33ed` |
| 26 | `def` | [bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind.md) | 236 | `declaration-track:e719b688d3affc0b65544ff2778e6b4c5f3b2b54533b92b2bc1f1ec37b99e4a3` |
| 27 | `theorem` | [bind_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-zero-left.md) | 240 | `result-track:f206de4de38397ce93366cd123f2822cab5dc7a1a56b9b92f976cb4dbb73d9e4` |
| 28 | `theorem` | [bind_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-apply.md) | 243 | `result-track:0647e36b73a4b89a76564df48fb53660f3dd99703f446625ea1641cb8f9c4e10` |
| 29 | `theorem` | [bind_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-apply-le.md) | 247 | `result-track:b3da240edb4b5952e65e41f716901bbb6e612d97cc42a5e0059a794280b05d9c` |
| 30 | `theorem` | [ae_ae_of_ae_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/ae-ae-of-ae-bind.md) | 253 | `result-track:093e07d473dc8857f99aa9f37955b915354057fe4edf7d7f7d3195c0d2cf7333` |
| 31 | `theorem` | [Giry Monad Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/ae-of-bind.md) | 257 | `result-track:6cd64b888c524bc9fe9ccfcbad30084e68827c2426fb037cbec4c8c998ccdb02` |
| 32 | `theorem` | [bind_congr_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-congr-right.md) | 262 | `result-track:0a1b35e316b9d645ec5b9d510d81d48fda48664c416ec8c9ce3cbf7dd82c7f16` |
| 33 | `lemma` | [bind_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-const.md) | 267 | `result-track:8f5f7ef0ad307ad7cfecca1474e44d7fbc39eb18054206a5cb55133edbe3ce9c` |
| 34 | `theorem` | [bind_zero_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-zero-right-source-edition-2.md) | 270 | `result-track:ec89a1ee14f3f366f99950b81f129dc705163633e71789d9513f149e683b0ea1` |
| 35 | `theorem` | [bind_zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-zero-right.md) | 273 | `result-track:cf2878e5bbf3a9cde09d7bbee38e1285270286b9ee89df9b54c280fd4108fafd` |
| 36 | `theorem` | [measurable_bind'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/measurable-bind.md) | 276 | `result-track:dccd619b48284999a78b5d09760f3db209d34957230432ec478132f67873fd41` |
| 37 | `theorem` | [aemeasurable_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/aemeasurable-bind.md) | 280 | `result-track:c5c7531d30645ab95093052fb2a86c2170d2ac12c975c6e9cb8b50f2e7ee1ed6` |
| 38 | `theorem` | [bind_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-sum.md) | 285 | `result-track:6d9e083d3a2049c356bb337cbf35de15fb3c66029954b1e181fc37f2afd92c01` |
| 39 | `lemma` | [bind_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-smul.md) | 290 | `result-track:76fabe99fa80d96f3be0498cf7603396c3dd60c66f6a99a15e52087e07fbcc0d` |
| 40 | `theorem` | [lintegral_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/lintegral-bind.md) | 294 | `result-track:0573f730560d4b4b434cc2277eccea7b17681710c91c6d7f2bdd5d2290be66ee` |
| 41 | `theorem` | [lintegral_bind_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/lintegral-bind-le.md) | 298 | `result-track:d5f9b29e01731c4c76f92227ab6e09f9c10da302cdcb53d550c191e887a83b06` |
| 42 | `theorem` | [bind_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-bind.md) | 303 | `result-track:d5910c099c84ba4e107b082365ca8831c92039cf4d039d71a7b0475b55745023` |
| 43 | `theorem` | [dirac_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/dirac-bind.md) | 313 | `result-track:be1c178a1004be754c28227f7241c12315e692a581d221ec3eaf3bfbff4ce08c` |
| 44 | `theorem` | [bind_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-dirac.md) | 317 | `result-track:f5165737f88b86d7137e4700b166922dff935a2c224692c44a9e25c3f8f4fe50` |
| 45 | `lemma` | [bind_dirac_eq_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/bind-dirac-eq-map.md) | 323 | `result-track:f16f7a03fcff53cd859832b4234c40dba9550443ae024d28967f206686415f1d` |
| 46 | `theorem` | [join_eq_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-eq-bind.md) | 328 | `result-track:5f88ccb71ead793cc2ff466a0987235c6f5eb52fa27baadb0e2eb3a513c2449b` |
| 47 | `theorem` | [join_map_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-map-map.md) | 330 | `result-track:cb3223fb847a3299d40f52521f50ba821ce6ed2cc7e91a89e62902dc5db3eec5` |
| 48 | `theorem` | [join_map_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-map-join.md) | 337 | `result-track:85159b657d1c717631777255548d94add8231b2ca60b54b2386f8a6f8d3a8020` |
| 49 | `theorem` | [join_map_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadNamespacedPublic.lean/declarations/join-map-dirac.md) | 344 | `result-track:7134d22f5f94802f7a1f02e76d71af14518b36563068db0ce44f41637a555d08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8543dd040554813e33070832f057bd60ab7c0e970f8ddcdd259a7e989dae1c82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
