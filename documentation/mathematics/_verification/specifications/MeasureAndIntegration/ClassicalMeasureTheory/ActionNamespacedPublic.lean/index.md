# Verification target: Action Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7001a424951a381acbd9bd4a9bc0cecde9f4bfb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variant6b5bbaf6cbb3150fc32d5888ca56697da28573b27b26734084b0a8a588f445f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7001a424951a381acbd9bd4a9bc0cecde9f4bfb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variant6b5bbaf6cbb3150fc32d5888ca56697da28573b27b26734084b0a8a588f445f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variant6b5bbaf6cbb3150fc32d5888ca56697da28573b27b26734084b0a8a588f445f5.lean.json)

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
| 1 | `instance` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/zero.md) | 45 | `declaration-track:943068d824f43fc20473164bfc79d0ca573089398457cf37d4c0815a766487fd` |
| 2 | `instance` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/add.md) | 51 | `declaration-track:b8596ff7bcb4265157723bfa34c6ead71ac66e2c9b53dd5156f7100c68b2d022` |
| 3 | `instance` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul.md) | 58 | `declaration-track:51ca9a43772acebf1be3fb3cfb0c8df01051cf7bfcc8a358a98eabf3e121acac` |
| 4 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul-nnreal.md) | 62 | `declaration-track:3cb9aed04b5fd14929614afc6597de64efc5c15fd2cf5d22f2df621ea796ad7b` |
| 5 | `theorem` | [measure_preimage_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-preimage-smul-le.md) | 75 | `result-track:5a6d8ff86b9bb6013804532f05229da002bca16c482985af405317c96fb031ff` |
| 6 | `theorem` | [tendsto_smul_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/tendsto-smul-ae.md) | 81 | `result-track:bb218d27cae9310e44ec404ab243442c14912737bcd3642592ce0c347b3c3ecb` |
| 7 | `theorem` | [measure_preimage_smul_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-preimage-smul-null.md) | 87 | `result-track:9f6479d3d6283769ff4c72fb516814a236abc82b2a191cd43ca3810a6461fe3d` |
| 8 | `theorem` | [measure_preimage_smul_of_nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-preimage-smul-of-nullmeasurableset.md) | 91 | `result-track:c2cfdfcd42815aaf50bd1ee873804292c665adec8c0215139256cfcd88215a3f` |
| 9 | `theorem` | [measure_preimage_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-preimage-smul.md) | 105 | `result-track:e4bdaa861f96f4639b057e4655e382d9e151530630b3273a5826de757d597cf6` |
| 10 | `theorem` | [measure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-smul.md) | 110 | `result-track:7c9392f8681b6ee2513c856f78a3c9a6805f0d2260ab80ec04b993ac530f8b65` |
| 11 | `theorem` | [measure_inter_inv_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-inter-inv-smul.md) | 114 | `result-track:3dd3b73ae50c7549733d251dc242258f1ae66845ece96950ae3af05f9f74b943` |
| 12 | `theorem` | [measure_inv_smul_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-inv-smul-inter.md) | 118 | `result-track:e0c4d94da5e0003cde8f2cc8ea2d102d9915b30ac25fbc6af346ec1eb32f8d63` |
| 13 | `theorem` | [measure_union_inv_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-union-inv-smul.md) | 122 | `result-track:05cca7e3c2f5442212937099d2e8d14e9462b1bbc0d3031aa3f6504db2cea198` |
| 14 | `theorem` | [measure_inv_smul_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-inv-smul-union.md) | 126 | `result-track:c8bebe732b42e96bfbbeea7fcf4e19c9b9b9bf10b95acc04d3c6cfffbcf23997` |
| 15 | `theorem` | [measure_sdiff_inv_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-sdiff-inv-smul.md) | 130 | `result-track:2383f067bfe8f1f671530e515d5df29aa426f016fcbf27ee9435ad2482f0762d` |
| 16 | `theorem` | [measure_inv_smul_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-inv-smul-sdiff.md) | 134 | `result-track:dbd97d224a2523571f8d8f675143b00feb603296f36e2b2a4b48d0be24b28e38` |
| 17 | `theorem` | [measure_symmDiff_inv_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-symmdiff-inv-smul.md) | 138 | `result-track:8468eb0f34554967f7437821765e3ec8ceacdd3a9d349c6c059e9150de2c3537` |
| 18 | `theorem` | [measure_inv_smul_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-inv-smul-symmdiff.md) | 142 | `result-track:ba9f6c4eeb5e20b65c4615c789762571a0460573ce66a4dda590e328843344ac` |
| 19 | `theorem` | [measure_smul_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-smul-eq-zero-iff.md) | 148 | `result-track:60a0d390c40138bd8c1fc532dee27d9f007f18ed27b70304931c77a7c03d7b22` |
| 20 | `theorem` | [measure_smul_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-smul-null.md) | 152 | `result-track:9a6877124f8ab4516ff884bf56e4072e870f491c56d5c7852b157bdfbf838eef` |
| 21 | `theorem` | [smul_mem_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul-mem-ae.md) | 156 | `result-track:cd1152ff0256c9d43c808ce071f81b03011cdae0d1219a9238212b376bf8a5ef` |
| 22 | `theorem` | [smul_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul-ae.md) | 160 | `result-track:b760b72bb97dc2633c49ce4c8ba1ba87d0c1ca4f7c30042f7f12cdf3564f554b` |
| 23 | `theorem` | [eventuallyEmptyOrUniv_smul_set_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/eventuallyemptyoruniv-smul-set-ae.md) | 165 | `result-track:7bec2f0736d9ab803793822fa40902cb81d80d76850923c771fe107c546cb50e` |
| 24 | `theorem` | [smul_set_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul-set-ae-le.md) | 170 | `result-track:8c0effb48d2107d709ce7a143b240480938ff87fe5099a711af22d3f6a43b96a` |
| 25 | `theorem` | [smul_set_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smul-set-ae-eq.md) | 174 | `result-track:c3c75febcec6a871002ba4f9113c4f40b98f0bb01014085abc3aa46fd6f8359d` |
| 26 | `theorem` | [measurePreserving_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measurepreserving-smul.md) | 185 | `result-track:f4ecad7c2840dc00cdbffd607c16b1679d9b15faf239d2b6627c84b967cdefa5` |
| 27 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/map-smul.md) | 193 | `result-track:46f364568130533f05009f80c6026dd80b22f3653a64c02c7370123af059413b` |
| 28 | `theorem` | [MeasurePreserving.smulInvariantMeasure_iterateMulAct](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smulinvariantmeasure-iteratemulact-source-line-199-occurrence-2.md) | 199 | `result-track:7477d0104278b7591f234e2e16a47d411761c658b19c524b214aa9c6b4353298` |
| 29 | `theorem` | [smulInvariantMeasure_iterateMulAct](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smulinvariantmeasure-iteratemulact.md) | 205 | `result-track:7d11149050f2457d29e456911d5bbd9ede8ed9d864e290590b29cabdd85a3c4f` |
| 30 | `theorem` | [smulInvariantMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smulinvariantmeasure-map.md) | 220 | `result-track:13bd8d28b2cc881272e84d5a63a947e804c8a91183e5d41c796aef4fe66ac054` |
| 31 | `instance` | [smulInvariantMeasure_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smulinvariantmeasure-map-smul.md) | 235 | `declaration-track:7d66e2850334fabd1f9577572dde5e47ab4e0b2002f7dff005e0c836032df0dc` |
| 32 | `theorem` | [smulInvariantMeasure_tfae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/smulinvariantmeasure-tfae.md) | 263 | `result-track:7910dff490842f1a2c6c350bd7b695efa72fbcf3e94a5eae3431f55ee09de50b` |
| 33 | `theorem` | [NullMeasurableSet.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/nullmeasurableset-smul.md) | 310 | `result-track:8e82858c556c45cc3f336fa4f957fc319a2b1ecb288d63a252bdaa707071401b` |
| 34 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero.md) | 325 | `result-track:edf43bb96cb2b63e5898cf057a12b8e95ec3779bb39fdd8575c2510b57f5acef` |
| 35 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/islocallyfinitemeasure-of-smulinvariant.md) | 341 | `result-track:d4cf06a6191e09c1d9b5ab35006a7d9ef909fa83aae7a4babde44d8825b70bf0` |
| 36 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero.md) | 351 | `result-track:0573dc4e9d258807971c9bae6489843f702b4651fbdd019408e032ce7c748a15` |
| 37 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant.md) | 357 | `result-track:b79755bcb935cf00def2ecfbda84c74814c4f9c74ae46020dfbd04fc1b020fd4` |
| 38 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ActionNamespacedPublic.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant.md) | 363 | `result-track:3fe2003d32d3cd94e397e6c7053eca9dc7d8a6b7ad29c04def7a193af0d93e04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc42fbce1ce3073b2ddd17222771c65c87a99de6ff03f73af00515a749d51281 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Action/Variant6b5bbaf6cbb3150fc32d5888ca56697da28573b27b26734084b0a8a588f445f5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Action/Variant6b5bbaf6cbb3150fc32d5888ca56697da28573b27b26734084b0a8a588f445f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
