# Verification target: With Density Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b8bced081feb62dc5a16e2ce9acac3981bf1d1",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b8bced081feb62dc5a16e2ce9acac3981bf1d1`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Exhaustion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/measure-withdensity.md) | 43 | `declaration-track:ea6487fd054d5d75aae7d9b172e647cea170b87e17fa7e4ea0b28df29e4f18ab` |
| 2 | `theorem` | [withDensity_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-apply.md) | 48 | `result-track:69c4354b3a4ca5bb662970847bc162ca8be9c411ae676d0a39ca4096a4753a77` |
| 3 | `theorem` | [withDensity_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-apply-le.md) | 52 | `result-track:62a2e488793518f5b928a0080e1fbcbb8f1f5c1838a037604dce6fb4e3eaeafa` |
| 4 | `theorem` | [withDensity_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-apply-source-edition-2.md) | 76 | `result-track:fe94ace69c2ea6679fa09481f3a6df8d751f1a982408a7651194ae29b9b2b4a1` |
| 5 | `lemma` | [withDensity_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-zero-left.md) | 86 | `result-track:19ad8973214b675367fcde498433ee8b30525680bde0e996dd021bf06bb0c471` |
| 6 | `theorem` | [withDensity_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-congr-ae.md) | 91 | `result-track:1c53718d3b09100290b12ce7ee2dc38ebcd02af4aa369f4b3e9b7ebff26a3a94` |
| 7 | `lemma` | [withDensity_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-mono.md) | 97 | `result-track:dc493a5f4036e898455a6eb4d9ade44858f58a920ee4012530ed3b22ead07fc9` |
| 8 | `theorem` | [withDensity_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-add-left.md) | 104 | `result-track:932a0958774a7b31a3f944c4452d994ef96fefeda329d3a0d990eef0119f99fa` |
| 9 | `theorem` | [withDensity_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-add-right.md) | 111 | `result-track:1aa10d970e1eda7e891d678c3cc32308ffd4822c18315733468b5a2a1f028f1a` |
| 10 | `theorem` | [withDensity_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-add-measure.md) | 115 | `result-track:1b6eafd7df6cfb4aaaead4cea2a602a45fe4142786e3e5421d0116429ee3d5cb` |
| 11 | `theorem` | [withDensity_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-sum.md) | 120 | `result-track:a072f0695c9641f954ae4f93bcb527c9e54726c636374e95b9c4bfb28d9cd5de` |
| 12 | `theorem` | [withDensity_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-smul-source-edition-2.md) | 125 | `result-track:ec9e14c85b516e2396a8f6aad366715983e8df1e745396cbb671fa3f47fa8b87` |
| 13 | `theorem` | [withDensity_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-smul.md) | 132 | `result-track:3960634cb890318fc8a8017e747a9dd662403a4a44184d88b62d050a4bb55e7b` |
| 14 | `theorem` | [withDensity_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-smul-measure.md) | 139 | `result-track:292faa41bfb14dea0faa1d8e141a289de108670cfc5f24adf37fb5be27028761` |
| 15 | `theorem` | [isFiniteMeasure_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/isfinitemeasure-withdensity.md) | 144 | `result-track:45932da7e45eb1738e666172c0b5940b33aed8daf0760e711972302acdd811f5` |
| 16 | `theorem` | [withDensity_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-absolutelycontinuous-source-edition-2.md) | 149 | `result-track:ee790964dfe7228704b5e7671cb92c965b3eb67aae610c6081e58a3fa59e136d` |
| 17 | `instance` | [noAtoms_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/noatoms-withdensity.md) | 155 | `declaration-track:8e1b0b3b97a286d362ad27a8988353d5f8420cd988941bb01dd9c5c1fa611112` |
| 18 | `theorem` | [withDensity_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-zero.md) | 159 | `result-track:674e99cfa6c28cfa0d5d4f7c36a44dea07755d80ef0104cedf08d70646b7ac7e` |
| 19 | `theorem` | [withDensity_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-one.md) | 164 | `result-track:74d79cc8c1386554e023edf3b7a4d64626d8c665067d8e4f72c7f522bbb0c19f` |
| 20 | `theorem` | [withDensity_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-const.md) | 169 | `result-track:8090a5c0af9b7fecfa106ecabd3c8f43cd077b89efaf35d7577bcd4d3b7a22ed` |
| 21 | `theorem` | [withDensity_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-tsum.md) | 173 | `result-track:ff6b84ca823e7a45924a05e91f8c6a191d67ef447913635705902f92302a5723` |
| 22 | `theorem` | [withDensity_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-indicator.md) | 181 | `result-track:50d7e1dfc4b66d054bec7e1fed098e41412e13845b883b4c5eacae7e7cd6fdc1` |
| 23 | `theorem` | [withDensity_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-indicator-one.md) | 187 | `result-track:8a6065ecc2467a5faa36de3e95c0cefaac8dc4dc62af9f64083709c05d9e7095` |
| 24 | `theorem` | [withDensity_ofReal_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-ofreal-mutuallysingular.md) | 191 | `result-track:a814b0a31496de9906b9fafdc8352faf3c8eff4dbd6b82123ce1325b642ad8ed` |
| 25 | `theorem` | [restrict_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/restrict-withdensity-source-edition-2.md) | 204 | `result-track:fe53f24684a18c36d7d7ffe810cf4afecddcb9c83216aadf231b83c0e3234a5d` |
| 26 | `theorem` | [restrict_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/restrict-withdensity.md) | 210 | `result-track:c312a31257bac7e8884cdf8f5a36afe86e89df2d52ea951b44f4c281856887df` |
| 27 | `lemma` | [trim_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/trim-withdensity.md) | 216 | `result-track:8e6793dd685674a84bc6da00bccf5db865f4494ee9a51713a5e828f059dd0a04` |
| 28 | `lemma` | [Measure.MutuallySingular.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/measure-mutuallysingular-withdensity.md) | 223 | `result-track:88b6da7629d2cff7c7a5c806578f623e5854a513834f785af6b1aba0e30d33f2` |
| 29 | `theorem` | [withDensity_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-eq-zero-iff.md) | 228 | `result-track:aa62784514af3f786e527b67b608aa56bd94dcb8c413a7840545fcb297c25d9b` |
| 30 | `theorem` | [withDensity_apply_eq_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-apply-eq-zero-source-edition-2.md) | 234 | `result-track:9c624caf69e650beff17bfb075ec5146339dfcd66062898f581343b21d3fc04b` |
| 31 | `theorem` | [withDensity_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-apply-eq-zero.md) | 276 | `result-track:49f0f5974654268334e8ac46eee91d3903c9f18feaea2924777c7b4588deb265` |
| 32 | `theorem` | [ae_withDensity_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/ae-withdensity-iff-source-edition-2.md) | 280 | `result-track:f454373ae0565486b7d954df0f07a6bbe24b435c0994bf8e4bc2128821af7134` |
| 33 | `theorem` | [ae_withDensity_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/ae-withdensity-iff.md) | 287 | `result-track:53dc5372d1a62dfb733ded672b8dde0e93f4e32cc44b29bc1c497b6935d6d2b2` |
| 34 | `theorem` | [ae_withDensity_iff_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/ae-withdensity-iff-ae-restrict.md) | 291 | `result-track:553c21b12d25ec06389e03043cb93e9aabad46f3208edf631f24e02671822b80` |
| 35 | `theorem` | [ae_withDensity_iff_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/ae-withdensity-iff-ae-restrict-source-edition-2.md) | 307 | `result-track:fc168092c23a4212d60279efc559aac7a7b952474616371aa139e3c3576915f8` |
| 36 | `theorem` | [aemeasurable_withDensity_ennreal_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/aemeasurable-withdensity-ennreal-iff-source-edition-2.md) | 311 | `result-track:4085351b4d2d5e08d134e028922d812ac70d918d67eb74c8d0348de7cca4248e` |
| 37 | `theorem` | [aemeasurable_withDensity_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/aemeasurable-withdensity-ennreal-iff.md) | 341 | `result-track:16ce6c5775509080e2a98d69912699703745044d9d9e4d43b42d60cac232b830` |
| 38 | `theorem` | [lintegral_withDensity_eq_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-3.md) | 357 | `result-track:f36e61aafc5955ae8bc19c1355794c55d5a925a6abc03e479126228015047324` |
| 39 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul.md) | 369 | `result-track:a629286dcc7b4f257d74841891a379b1b687c1d959837a2381e273c8f236c5e6` |
| 40 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 378 | `result-track:7759232d75bab9e4562c635ea9927a7f73ced9563afd496ef6c176aedb9fec5e` |
| 41 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-lintegral-mul.md) | 409 | `result-track:57702d14debe1cda82155ef3884806c82a3a51affaf316a1a3e820c7ba8ac44f` |
| 42 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-eq-lintegral-mul.md) | 417 | `result-track:40395a117f7666c34840f349b69c316b00105541f7af7715c806fafc3a26985e` |
| 43 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 422 | `result-track:c65cd54f6e733adbd76165ec87b9822954c91c750ccbcc42d047a3c487a0fd30` |
| 44 | `theorem` | [lintegral_withDensity_le_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-le-lintegral-mul.md) | 429 | `result-track:276f695a5a55470df7f536a321bf8a351c1640d08fec7c16f0b0d9bf7beabeb6` |
| 45 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable-source-edition-2.md) | 437 | `result-track:ebec36d19d02cad646f1b24988493cd99cff97a050e579c788bdcd3f63d1fa2e` |
| 46 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable.md) | 462 | `result-track:0985951ddc670204b7c42ac2c33f6002138f5298358442549d533077dcc36374` |
| 47 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable.md) | 468 | `result-track:df0ced3c4aafe0eee9866f610f699ff17464d7053c2be1ba5aaac3148e5f60bb` |
| 48 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-2.md) | 486 | `result-track:31ffa7bdb2169d44ba36ef316b68d89692ed6dbe3c5d162801e6545159851d61` |
| 49 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-3.md) | 492 | `result-track:dcb42a26d58a199ecd6b66015e8d14c05efd9bcc0c9278b4db936be8cce1ce10` |
| 50 | `theorem` | [withDensity_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-mul.md) | 498 | `result-track:327e8ce9ed85da88b0482b0c92a17274e2c739758a5341fb209e76b01efdf043` |
| 51 | `theorem` | [withDensity_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-mul-source-edition-2.md) | 505 | `result-track:c12d3b26196fe789a198879cf925022c8648df3a4433ca325b591244e60a8cbc` |
| 52 | `lemma` | [withDensity_inv_same_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-inv-same-le.md) | 509 | `result-track:ee843df9463c19022381b1d007a1203194dc498acb84c478224b33bb6f483d7c` |
| 53 | `lemma` | [withDensity_inv_same₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-inv-same-source-edition-2.md) | 524 | `result-track:49d379f9d625d90e1aaa49b1c0e87c809cba5f60fb19e29190d7be11ffcc6aa6` |
| 54 | `lemma` | [withDensity_inv_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-inv-same.md) | 534 | `result-track:34285dd14d836b49d366fc8438a6be1f37a73a9ef4e44d8b03d6d93a1baf296e` |
| 55 | `lemma` | [withDensity_absolutelyContinuous'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-absolutelycontinuous.md) | 541 | `result-track:92e8e2c2a5d48c29cfc2870844c451e4be15771c0904563e4ff7eb8ce9fe7779` |
| 56 | `theorem` | [withDensity_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/withdensity-ae-eq.md) | 554 | `result-track:aeefed4e8280dc4c27618da552e540ae612cfc38ae14f80aa79d8d6885f9894c` |
| 57 | `instance` | [SigmaFinite.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/sigmafinite-withdensity.md) | 565 | `declaration-track:0ca4c4c5dac3c175942439756bc76bcd136713366e746f148098d1cfaa8a8713` |
| 58 | `lemma` | [SigmaFinite.withDensity_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/sigmafinite-withdensity-of-ne-top.md) | 577 | `result-track:952320f48c4d0266260291e46d5ea323684b7ac1cef628205dba68ec93400d24` |
| 59 | `lemma` | [SigmaFinite.withDensity_of_ne_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/sigmafinite-withdensity-of-ne-top-source-edition-2.md) | 583 | `result-track:e084bbf21321aa408db57887f6749d027b4abe4b626ebc8d12443adcffa2c3a4` |
| 60 | `instance` | [SigmaFinite.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/sigmafinite-withdensity-ofreal.md) | 587 | `declaration-track:e19938f515d38ab53522de476df9a3d3cf8cec082822a8af29caf2ba96b913ab` |
| 61 | `theorem` | [exists_measurable_le_withDensity_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/exists-measurable-le-withdensity-eq.md) | 594 | `result-track:11aa7c6faf3b34feb99212dd253e114f4ea83a0215f7b3d492086f95efa1b133` |
| 62 | `instance` | [Measure.withDensity.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/measure-withdensity-instsfinite.md) | 602 | `declaration-track:29d98c5e977f4a71f711f0f4fbd491b53fd7a6300141f7a98233c90d5544807e` |
| 63 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/instance.md) | 631 | `declaration-track:5874318efa283064a80696630c5d886263b8b70c3bba6ee9f5c0f702aaff89b2` |
| 64 | `theorem` | [sFinite_of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/sfinite-of-absolutelycontinuous.md) | 636 | `result-track:6d41e173216f1df2ac6a721180da23fc40c8d0ffd74fc34983780a0cdeffc9ee` |
| 65 | `theorem` | [prod_withDensity_left₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity-left.md) | 648 | `result-track:791cbd6ede67992956ef02f626e13b839bac7f92e038c0ba1842c548dbc076d2` |
| 66 | `theorem` | [prod_withDensity_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity-left-source-edition-2.md) | 658 | `result-track:d2d24aff871851e79437a8df6edf5beb8fb10cd320ecdd830caee05592944f38` |
| 67 | `theorem` | [prod_withDensity_right₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity-right.md) | 662 | `result-track:5f39b44e526fa0df883d3e91059ab5daaa743e403ba582167f675bab2ce18df3` |
| 68 | `theorem` | [prod_withDensity_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity-right-source-edition-2.md) | 672 | `result-track:7c7eca06c9a5b1881cc21c7eca6d5be98f628a03167a7991b2ce3076410d2bd0` |
| 69 | `theorem` | [prod_withDensity₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity.md) | 676 | `result-track:8e9c03191374c42f2f389aae21c744fb63d3f55b13ca0518fc3c73fc7976c69e` |
| 70 | `theorem` | [prod_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/prod-withdensity-source-edition-2.md) | 683 | `result-track:e2752ecd6b6302da5a1212b0b083532741c7d0b50f9f37b24e3f588be48bd158` |
| 71 | `lemma` | [Measure.prod_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/measure-prod-smul-right.md) | 689 | `result-track:8962fc2b9afdb239a686d705aea998dd3038e8f648115f24f8b956502cf7d889` |
| 72 | `lemma` | [IsLocallyFiniteMeasure.withDensity_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/islocallyfinitemeasure-withdensity-coe.md) | 699 | `result-track:ca39820586f0e87304ce31ee8004e329ba3cd1a3ad628b3cbacdc07b6c790e96` |
| 73 | `lemma` | [IsLocallyFiniteMeasure.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespaced.lean/declarations/islocallyfinitemeasure-withdensity-ofreal.md) | 708 | `result-track:4f349cb24e35cced0d5399a92f01a60bab2051c756a29b638aa6aa42e094e8ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ebf962597c1cc14551f31384a8c4131d3750eaee2c77c35a60fc82dd6cd2bdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
