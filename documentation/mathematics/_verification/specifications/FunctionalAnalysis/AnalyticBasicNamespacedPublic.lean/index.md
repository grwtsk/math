# Verification target: Analytic Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c88012ed4bccff4e09c30b984dfafcb75761ca0",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c88012ed4bccff4e09c30b984dfafcb75761ca0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean.json)

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
| 1 | `structure` | [HasFPowerSeriesOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball.md) | 82 | `declaration-track:0cbc63af752c6430105a90a13678ce5c3835ce1a7f1e48afc540ae54c84ea868` |
| 2 | `structure` | [HasFPowerSeriesWithinOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball.md) | 91 | `declaration-track:7f936fcc7ceaf135dcddec317300790eff7425de0422059cea646560356d6ba9` |
| 3 | `def` | [HasFPowerSeriesAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat.md) | 103 | `declaration-track:f59d651a9e840bf4be651b3be877f815ea22d05534bdaf0eabe33633b5ff7286` |
| 4 | `def` | [HasFPowerSeriesWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat.md) | 107 | `declaration-track:971a7ebfeea27bf4d86d7036c6cec772726f4be003056bc3273b0c566429eb4c` |
| 5 | `def` | [AnalyticAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat.md) | 118 | `declaration-track:e5a948e0c2032435dd6ae7b7a206bdbb7f78453d94ae9c893262aeb27bc61375` |
| 6 | `def` | [AnalyticWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat.md) | 122 | `declaration-track:49068ab08d2a27637210f22b5b417437c85a58867f1cccb8739a8456d0a48c4b` |
| 7 | `def` | [AnalyticOnNhd](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd.md) | 128 | `declaration-track:1ff98015adb4fc146b5d851aef83503a662eb5c4d7770709777f97ee1e78a5ee` |
| 8 | `def` | [AnalyticOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon.md) | 133 | `declaration-track:9d0e7f14163c1d70da18d87b7df6cc6e60b0814571026db2083ab938e8095605` |
| 9 | `theorem` | [HasFPowerSeriesOnBall.hasFPowerSeriesAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-hasfpowerseriesat.md) | 142 | `result-track:1d6fd7865ff35aba7c2c7b98ff7a85dee1e4c54ffb0c3590d0bfecda584c632f` |
| 10 | `theorem` | [HasFPowerSeriesAt.analyticAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-analyticat.md) | 146 | `result-track:4c4622f3e97676b7c1a7d80ff5b23e6529d07e31925b431075c017625c8f0e2f` |
| 11 | `theorem` | [HasFPowerSeriesOnBall.analyticAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-analyticat.md) | 149 | `result-track:23b9d79e20697d3455600ae4d709c63fed9094b7272032001ce993847d9cf513` |
| 12 | `theorem` | [HasFPowerSeriesWithinOnBall.hasFPowerSeriesWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-hasfpowerserieswithinat.md) | 152 | `result-track:54b6559c9693d3e570baeb54c092bd10f601e12d07a4124042113790f0504ab7` |
| 13 | `theorem` | [HasFPowerSeriesWithinAt.analyticWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-analyticwithinat.md) | 156 | `result-track:460c31e3b09ffbeeaa12728315b94c6636f03fad91a6724fa0a669c275db19fc` |
| 14 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-analyticwithinat.md) | 159 | `result-track:d4f7b8b41190320b26c0249e9b8736b722b2946929ae565750a01f9dd7b42a76` |
| 15 | `theorem` | [HasFPowerSeriesOnBall.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-comp-sub.md) | 165 | `result-track:21a7dc685cd9872405ec1a9bc8ea468d45f4af4c1c84aadf12e1f14b88f95c65` |
| 16 | `theorem` | [HasFPowerSeriesWithinOnBall.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-comp-sub.md) | 173 | `result-track:55185105160a02b5f6489197e1d409f2c176746ea2f99ef9270079dd4017c502` |
| 17 | `theorem` | [HasFPowerSeriesAt.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-comp-sub.md) | 185 | `result-track:851e2f1ba4298235f47e9dd51574cfe59cca39c5c48d4f824079df752c9ed6c5` |
| 18 | `theorem` | [HasFPowerSeriesWithinAt.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-comp-sub.md) | 190 | `result-track:4521da97bd6e3409d2b4181659fcd6986f5434f806184b25996e5fcd3c41a975` |
| 19 | `theorem` | [AnalyticAt.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-comp-sub.md) | 195 | `result-track:142398d7d724d372d2f113a012215fc80323784c695bef0137e55ee6517f07d2` |
| 20 | `theorem` | [AnalyticOnNhd.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-comp-sub.md) | 200 | `result-track:253e3400e24a6b4254b2f42f965c308a90bfd6415bbd38d012006e20d8fa2984` |
| 21 | `theorem` | [AnalyticWithinAt.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-comp-sub.md) | 207 | `result-track:f5311edbc3d3a3825d8d0514d18af4345b5c6a891265934f7877275d9f6a9a95` |
| 22 | `theorem` | [AnalyticOn.comp_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-comp-sub.md) | 212 | `result-track:fc6577c17d449999e3f8f8ffad814a425df8bac5fdbf894c682684b09c577455` |
| 23 | `theorem` | [HasFPowerSeriesWithinOnBall.hasSum_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-hassum-sub.md) | 219 | `result-track:fa3200fb22ea61faed1655bbdf56c985322f6a56524a7745cdbb321eedcdc322` |
| 24 | `theorem` | [HasFPowerSeriesOnBall.hasSum_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-hassum-sub.md) | 225 | `result-track:06e9f18e9f18f9851d554ab77637f2f33cabd2e44b9198cca15e20e2c8f58a47` |
| 25 | `theorem` | [HasFPowerSeriesOnBall.radius_pos](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-radius-pos.md) | 230 | `result-track:7c914ab2cb07b2abac2a5bb95fe1f0066a4e1a9bf473cbbd159fa96c60180dbc` |
| 26 | `theorem` | [HasFPowerSeriesWithinOnBall.radius_pos](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-radius-pos.md) | 233 | `result-track:8d568c5d16b19e65414a6a5d9ed32c9a5e28f4231eb57e5909ccdd115d34b9ae` |
| 27 | `theorem` | [HasFPowerSeriesAt.radius_pos](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-radius-pos.md) | 237 | `result-track:9e01c290517890dfad8a2d629cae749c6dcd4de914023f410936072bb7465b01` |
| 28 | `theorem` | [HasFPowerSeriesWithinOnBall.of_le](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-of-le.md) | 241 | `result-track:d741b4494a44507d65380abd9e19352c22b383b814324ca1f83bc8fd985c9c0d` |
| 29 | `theorem` | [HasFPowerSeriesOnBall.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-mono.md) | 246 | `result-track:43dbb6c5ab8856dcf4d16892335fd39dd416e7d37d03b2d75d16d741931a3983` |
| 30 | `lemma` | [HasFPowerSeriesWithinOnBall.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-congr-source-edition-2.md) | 250 | `result-track:f16dda2e4203787a4b1facb79e91f2809835f2ad07a50080c661166b3890c746` |
| 31 | `lemma` | [HasFPowerSeriesWithinOnBall.congr'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-congr.md) | 266 | `result-track:cebc25fd4ff005cf8e63d3d3964ec2f1d85d025c916b9722168d683108e9586f` |
| 32 | `lemma` | [HasFPowerSeriesWithinAt.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-congr.md) | 274 | `result-track:50e4b7015d97d83e3d31ddfaca0975b205b359a3fea04a2bfdb287c274c0f55f` |
| 33 | `theorem` | [HasFPowerSeriesOnBall.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-congr.md) | 287 | `result-track:ae114ab98f36ff9402eb54fd777269f576f971744f4a9a7f9ddfb71f1fb0e9bc` |
| 34 | `theorem` | [HasFPowerSeriesAt.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-congr.md) | 296 | `result-track:a5a93b9c206ec5297f7de13386f7464cd4e65dc3c159b441fe40e7e566e29424` |
| 35 | `theorem` | [HasFPowerSeriesWithinOnBall.unique](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-unique.md) | 304 | `result-track:796fe5495372d346bc9fd105a60b7422f35129aa95fb4a6ac6f6e283743536dc` |
| 36 | `theorem` | [HasFPowerSeriesOnBall.unique](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-unique.md) | 309 | `result-track:1ee39016e571df1de0faf6e26b841105917037c453221fbe78e35d82539690d6` |
| 37 | `theorem` | [HasFPowerSeriesWithinAt.eventually](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-eventually.md) | 313 | `result-track:feddb3b754ff28013fafffdda2570dff112911e7b5861b509fbf8438bb6c74f9` |
| 38 | `theorem` | [HasFPowerSeriesAt.eventually](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-eventually.md) | 318 | `result-track:aad581fd3e7f51df4613aff035dd09b0c27cd2a2ecb08823d037560603c40ff2` |
| 39 | `theorem` | [HasFPowerSeriesOnBall.eventually_hasSum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-eventually-hassum.md) | 323 | `result-track:4c184774fbc0f1f0214b99735175a7b3a966639272d00c1e0f40693293640c04` |
| 40 | `theorem` | [HasFPowerSeriesAt.eventually_hasSum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-eventually-hassum.md) | 327 | `result-track:bb045d25e2eff6705e957e6f782f078967ca879c9571c5142a788434d32a0a5c` |
| 41 | `theorem` | [HasFPowerSeriesOnBall.eventually_hasSum_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-eventually-hassum-sub.md) | 332 | `result-track:1ca96d956e840fa7fbd2f5318db642c81ce5f8570a502ad2e407e096cc822cea` |
| 42 | `theorem` | [HasFPowerSeriesAt.eventually_hasSum_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-eventually-hassum-sub.md) | 336 | `result-track:658783c2aebcedccc5918ab7b49e99cb3365a865725d617199bb44e68f78dfbb` |
| 43 | `theorem` | [HasFPowerSeriesOnBall.eventually_eq_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-eventually-eq-zero.md) | 341 | `result-track:71eb48f42cd69a6c59d3454a82846d3947e7c7754eded60530a77cc0d0e0e2aa` |
| 44 | `theorem` | [HasFPowerSeriesAt.eventually_eq_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-eventually-eq-zero.md) | 346 | `result-track:1bfb05b58cd6d81efebbe9d5f271a31f41e8c6ae492d34546d5f2de480f7c9df` |
| 45 | `lemma` | [hasFPowerSeriesWithinOnBall_univ](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-univ.md) | 351 | `result-track:5821051902abcd272353526500634f48003bc171e2d1d8003c89a5e7edf0b754` |
| 46 | `lemma` | [hasFPowerSeriesWithinAt_univ](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-univ.md) | 359 | `result-track:4312fd083f5aa87546bbc023a8242fdc0bcab596a4030c739c1f8e14c9cd8b08` |
| 47 | `lemma` | [HasFPowerSeriesWithinOnBall.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-mono.md) | 363 | `result-track:9a0e4064d7b878a4fb2cf496012e94b9c85cc57b1081e9328fef3a4d967b4d66` |
| 48 | `lemma` | [HasFPowerSeriesOnBall.hasFPowerSeriesWithinOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-hasfpowerserieswithinonball.md) | 369 | `result-track:147ecf57401db35708769c2eabf8b6a144d34b2f2a1cb9b59c5cf3422e713be9` |
| 49 | `lemma` | [HasFPowerSeriesWithinAt.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-mono.md) | 374 | `result-track:9c7f9e88d85f3d1baef6ebd951b6da793449f4582ffd27abe50d6b2aaa36b9af` |
| 50 | `lemma` | [HasFPowerSeriesAt.hasFPowerSeriesWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-hasfpowerserieswithinat.md) | 379 | `result-track:5edfe9d131e4ce5fde17b60b0c0849e02de2244f483ea5f9dbc04c72182b63ce` |
| 51 | `theorem` | [HasFPowerSeriesWithinAt.mono_of_mem_nhdsWithin](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-mono-of-mem-nhdswithin.md) | 384 | `result-track:675ca07c2d3db46917fa3be2d39916cc8598b93976fb512a5ff6b3f968876352` |
| 52 | `lemma` | [hasFPowerSeriesWithinAt_iff_of_nhds](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-iff-of-nhds.md) | 401 | `result-track:4bb7d9d034512536b880b6c02e3381962ce7eb349748b2a3a95b43e8c2190727` |
| 53 | `lemma` | [hasFPowerSeriesWithinOnBall_insert_self](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-insert-self.md) | 408 | `result-track:0bb587063487e1faa3dd4ccedd612970859f9613ca1e51e471bb1b3568fec5ce` |
| 54 | `theorem` | [hasFPowerSeriesWithinAt_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-insert.md) | 413 | `result-track:ea9d10d6579dbbae8ad93d00d8a7b3c4af959814cdb973c763b3afc24a6ed365` |
| 55 | `theorem` | [HasFPowerSeriesWithinOnBall.coeff_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-coeff-zero.md) | 422 | `result-track:2e5d4d69b1864cf15b5fab106c97884a2558a08ba44f599601ac44f615e01075` |
| 56 | `theorem` | [HasFPowerSeriesOnBall.coeff_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-coeff-zero.md) | 433 | `result-track:22850254838f23aef9fd27a70b6d5027b2c7f4670659a88428027d6c44e6a056` |
| 57 | `theorem` | [HasFPowerSeriesWithinAt.coeff_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-coeff-zero.md) | 438 | `result-track:8393abbf635f5d3ee61f381487fbf0dbff9b1236f62d5e92c91e63fcc3a5d8df` |
| 58 | `theorem` | [HasFPowerSeriesAt.coeff_zero](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-coeff-zero.md) | 443 | `result-track:f1b6be93e8349650753ea29b751c82bc61b52e5553ab7ef3e22044c52efa7c5a` |
| 59 | `theorem` | [analyticOn_empty](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-empty.md) | 452 | `result-track:f4220ff4254e101ff4b7553442250fb65aa52343de94539a87842029c2b5385c` |
| 60 | `theorem` | [analyticOnNhd_empty](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-empty.md) | 454 | `result-track:05880ceb04641e1da6ced741d69a3e27804e21ce9382f40f7f237d3ecedf7ed7` |
| 61 | `lemma` | [analyticWithinAt_univ](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-univ.md) | 456 | `result-track:d408298a5216acff0eddb3d869742e9dc56d229bd48d5634d3720af1cc4f5a63` |
| 62 | `lemma` | [analyticOn_univ](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-univ.md) | 460 | `result-track:aa89920cb5304df15b5535a3e4af4a9c2a8f1fab6318de6cb32535e24750eda3` |
| 63 | `lemma` | [AnalyticWithinAt.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-mono.md) | 464 | `result-track:dccc0c09173ebfd80edd371c5a664f00627a5786f20b9afac5a66d8ec4c58c05` |
| 64 | `lemma` | [AnalyticAt.analyticWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-analyticwithinat.md) | 469 | `result-track:d861afa14d5abfa9078caa7db35f888ddb8dc1779a62b582ed9f7b672bb21c9e` |
| 65 | `lemma` | [AnalyticOnNhd.analyticOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-analyticon.md) | 473 | `result-track:78111c23d38427ade1f416e564c23fbb0c2997a2975a7038b29bb2abf42526b2` |
| 66 | `lemma` | [AnalyticWithinAt.congr_of_eventuallyEq](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-congr-of-eventuallyeq.md) | 476 | `result-track:8de1b2bc491d5865d3ef31c8da357a3997e601ca6cef8d9d13f85226eb21589c` |
| 67 | `lemma` | [AnalyticWithinAt.congr_of_eventuallyEq_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-congr-of-eventuallyeq-insert.md) | 482 | `result-track:9afd8da69cd182b3867ab367df132c22a30f76a882651729ec3d98b1d1423388` |
| 68 | `lemma` | [AnalyticWithinAt.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-congr.md) | 488 | `result-track:c2b6a7be1cd7a47a83a83c6619081ec985423aebcbb68e0f55f10b87b045bdef` |
| 69 | `lemma` | [AnalyticOn.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-congr-source-edition-2.md) | 493 | `result-track:e2a7e00f7416e68abdf712e57c4c797ec5bd7479f6c29400486d66d631f1dedb` |
| 70 | `lemma` | [analyticOn_congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-congr.md) | 498 | `result-track:163a824a51afa987bfb9601235e8cd729aedc2e8b7f84cdb8c3c7e7707b62920` |
| 71 | `theorem` | [AnalyticAt.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-congr.md) | 501 | `result-track:0dd7b68ebebadb802e08fdcca326914efbbbb9c47525e84b4767c89932514236` |
| 72 | `theorem` | [analyticAt_congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-congr-source-edition-2.md) | 505 | `result-track:3f021e7a9c9575253fa769258bb638eb2166d6d05ad235bca23802a967ecede0` |
| 73 | `theorem` | [AnalyticOnNhd.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-mono.md) | 508 | `result-track:c788d449f8ae9fb74d86a28b678e6ac6c955771017f562dc531f786b002a5f04` |
| 74 | `theorem` | [AnalyticOnNhd.congr'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-congr.md) | 512 | `result-track:3f5d59048921aaa89ada6789d757a76f78a20e7c23293926a7124408095de41c` |
| 75 | `theorem` | [analyticOnNhd_congr'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-congr-source-edition-2.md) | 516 | `result-track:589acec0772a35fa88dfc5bd7704913051898488e44c6eb8597e3b7a8995a4b1` |
| 76 | `theorem` | [AnalyticOnNhd.congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-congr-source-edition-3.md) | 519 | `result-track:dcdb82ae6fa4ef0cae1b282e0e22f2f36b6c5ef00567d672898d4078c2395dfa` |
| 77 | `theorem` | [analyticOnNhd_congr](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-congr-source-edition-4.md) | 524 | `result-track:e6e3670ee75b89b48100447b48393c2caeac381ccd40992e3cc06258fc4b476d` |
| 78 | `theorem` | [AnalyticWithinAt.mono_of_mem_nhdsWithin](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-mono-of-mem-nhdswithin.md) | 527 | `result-track:d0e7fbe39932aa1de330c55907f0005f0220846580260942342d28ba5481c41d` |
| 79 | `theorem` | [AnalyticWithinAt.congr_set](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-congr-set.md) | 532 | `result-track:0e17b9cb8e3ab751cfb035cfbf94d4a02cf08e44e8c96b32ac8c60dc16947266` |
| 80 | `lemma` | [AnalyticOn.mono](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-mono.md) | 537 | `result-track:790db52ab8bdff0d466a417835487d707b5141287f565d593dd055be6cedf8da` |
| 81 | `theorem` | [analyticWithinAt_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-insert.md) | 541 | `result-track:b4d15b26cef0455eced6a01160fcaf48ecb00db374334a997a9a7aa233466076` |
| 82 | `lemma` | [AnalyticOn.analyticAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-analyticat.md) | 545 | `result-track:8ba5ed522c1624890ed62d2cf55a26e4f78aa1c98ccd29b30e17a2b40ab11093` |
| 83 | `theorem` | [ContinuousLinearMap.comp_hasFPowerSeriesWithinOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/continuouslinearmap-comp-hasfpowerserieswithinonball.md) | 556 | `result-track:4d3853139865e422a896b6b529f823d5ed243a5f111aa463be170131bb07e72d` |
| 84 | `theorem` | [ContinuousLinearMap.comp_hasFPowerSeriesOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/continuouslinearmap-comp-hasfpowerseriesonball.md) | 568 | `result-track:2f3e3d98d5e056231b8ee286f63a81fb64e382664a3cbc101409de56ab325de5` |
| 85 | `theorem` | [ContinuousLinearMap.comp_analyticOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/continuouslinearmap-comp-analyticon.md) | 576 | `result-track:a052f965b01355cc6d78a09df43a78be647e1091e043f13a02b49a074f45414f` |
| 86 | `theorem` | [ContinuousLinearMap.comp_analyticOnNhd](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/continuouslinearmap-comp-analyticonnhd.md) | 584 | `result-track:ed5d850c800d7aedf6852462d38579b2d5d0182b9363ab649d10a0539639ded7` |
| 87 | `theorem` | [HasFPowerSeriesWithinOnBall.tendsto_partialSum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendsto-partialsum.md) | 595 | `result-track:75d508fbc0809541cb1bda95dd24fc8f8aef5a7b419a2fdfd0b9eb651626fc93` |
| 88 | `theorem` | [HasFPowerSeriesOnBall.tendsto_partialSum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendsto-partialsum.md) | 601 | `result-track:4e57583c00fb602e100c8c54514cc088b85caa37c2d46e6ae9cdca9557cd27de` |
| 89 | `theorem` | [HasFPowerSeriesAt.tendsto_partialSum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-tendsto-partialsum.md) | 606 | `result-track:43fb4f5b09f93cc99bf64549f6cc82f7830131a310e066790e1ef93d4720ae9b` |
| 90 | `theorem` | [HasFPowerSeriesWithinOnBall.tendsto_partialSum_prod](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendsto-partialsum-prod.md) | 617 | `result-track:18848d11c8d0daea0b3cfd4d343f456b485622aba022fed7d3d0968d3967370d` |
| 91 | `theorem` | [HasFPowerSeriesOnBall.tendsto_partialSum_prod](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendsto-partialsum-prod.md) | 683 | `result-track:713b4fa077861c7a17670370cd1ae7f7cb11f6bada598ea530aff9c89d9689ab` |
| 92 | `theorem` | [HasFPowerSeriesWithinOnBall.uniform_geometric_approx'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-uniform-geometric-approx.md) | 693 | `result-track:478ca58024b3764e81c825175146c2fd28cf61d063d898febd7365cf175b9d87` |
| 93 | `theorem` | [HasFPowerSeriesOnBall.uniform_geometric_approx'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-uniform-geometric-approx.md) | 729 | `result-track:b511b6508de38c1da9628312d8246cee61b08b3b61d5ba61ab52eee23489fe49` |
| 94 | `theorem` | [HasFPowerSeriesWithinOnBall.uniform_geometric_approx](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-uniform-geometric-approx-source-edition-2.md) | 738 | `result-track:b1c585aaa9760c5b163c71ccc8ad39c0fe3dadbdc40350e7313b046966f409f0` |
| 95 | `theorem` | [HasFPowerSeriesOnBall.uniform_geometric_approx](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-uniform-geometric-approx-source-edition-2.md) | 754 | `result-track:f3439ba274f347ad33b61d33bbd47af58f8d1d0ff9b0f2d56b7dd09368ca4496` |
| 96 | `theorem` | [HasFPowerSeriesWithinAt.isBigO_sub_partialSum_pow](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-isbigo-sub-partialsum-pow.md) | 763 | `result-track:f6474460277a7b31e4e214187a647dd023ba2148a39aaa65e7af15b060d1b6db` |
| 97 | `theorem` | [HasFPowerSeriesAt.isBigO_sub_partialSum_pow](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-isbigo-sub-partialsum-pow.md) | 779 | `result-track:657f4a981143603d0486a5c63ac98c418a255b1c096b012a69728e6ea8e9ae32` |
| 98 | `theorem` | [HasFPowerSeriesWithinOnBall.isBigO_image_sub_image_sub_deriv_principal](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-isbigo-image-sub-image-sub-deriv-principal.md) | 789 | `result-track:7fbea43e986cf93e8191875edee99d6cf45b6068825b62cb501896d393756565` |
| 99 | `theorem` | [HasFPowerSeriesOnBall.isBigO_image_sub_image_sub_deriv_principal](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-isbigo-image-sub-image-sub-deriv-principal.md) | 855 | `result-track:fbd853a923042d3baa3337d49f56ca60ffd1acaee190744eec0ad083876e8398` |
| 100 | `theorem` | [HasFPowerSeriesWithinOnBall.image_sub_sub_deriv_le](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-image-sub-sub-deriv-le.md) | 865 | `result-track:1df4d6312eddad8250340b66c261ad3a88b57145c77202d96edbc9559d201d75` |
| 101 | `theorem` | [HasFPowerSeriesOnBall.image_sub_sub_deriv_le](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-image-sub-sub-deriv-le.md) | 878 | `result-track:a0953b6492bbb76045f0e7762d1dcc907c10d5fb77fd5b29efb050201abef787` |
| 102 | `theorem` | [HasFPowerSeriesWithinAt.isBigO_image_sub_norm_mul_norm_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-isbigo-image-sub-norm-mul-norm-sub.md) | 888 | `result-track:8043879febd0768ff2d90af5946c124fe26ec12abf54bc2177b7dced7d01c81f` |
| 103 | `theorem` | [HasFPowerSeriesAt.isBigO_image_sub_norm_mul_norm_sub](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-isbigo-image-sub-norm-mul-norm-sub.md) | 901 | `result-track:774e030d4a4b1919f4a8596d5eef2c09401edb400d8cbddb8d37098058482c28` |
| 104 | `theorem` | [HasFPowerSeriesWithinOnBall.tendstoUniformlyOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendstouniformlyon.md) | 910 | `result-track:462c8079892bdeb4ec78bde69564bf7a19d4f3c46d24076ab58656016105d0c9` |
| 105 | `theorem` | [HasFPowerSeriesOnBall.tendstoUniformlyOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendstouniformlyon.md) | 927 | `result-track:ea717b5cc7930dce82e08db695d543024cb1961a183266588f1902688dfc0c34` |
| 106 | `theorem` | [HasFPowerSeriesWithinOnBall.tendstoLocallyUniformlyOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendstolocallyuniformlyon-source-edition-2.md) | 937 | `result-track:dd9e3e368988eac42a4a6498e4b0180a04e25aa1076e5c28a11b387f3c4a2028` |
| 107 | `theorem` | [HasFPowerSeriesOnBall.tendstoLocallyUniformlyOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendstolocallyuniformlyon-source-edition-2.md) | 954 | `result-track:c57198732f3c9baeeac568ee1aa270ff13d0abcd3e05c6ab71125069a48ed632` |
| 108 | `theorem` | [HasFPowerSeriesWithinOnBall.tendstoUniformlyOn'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendstouniformlyon-source-edition-2.md) | 963 | `result-track:8db9fff69f8ac6af109ba656f4f5c055ae77d0d416d76373db4f498610c2c132` |
| 109 | `theorem` | [HasFPowerSeriesOnBall.tendstoUniformlyOn'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendstouniformlyon-source-edition-2.md) | 975 | `result-track:f3684417782a29dd55530a2b0a58352d652c11e4e793d0937607db1092b1c6dc` |
| 110 | `theorem` | [HasFPowerSeriesWithinOnBall.tendstoLocallyUniformlyOn'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-tendstolocallyuniformlyon.md) | 984 | `result-track:75ce3c0f9ec720efcb343a27898ce86dbe837193fbe147781458218d181d2be5` |
| 111 | `theorem` | [HasFPowerSeriesOnBall.tendstoLocallyUniformlyOn'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-tendstolocallyuniformlyon.md) | 998 | `result-track:b15cef4d3abfe38b013f99ace53538e754e9026687566aba5b38cc4ed5ab116b` |
| 112 | `theorem` | [HasFPowerSeriesWithinOnBall.continuousOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-continuouson.md) | 1006 | `result-track:51b91cdf6354d883b64b2b3ee9dc9bbaa2b3a0b484bdad9d89798fc0aa768d28` |
| 113 | `theorem` | [HasFPowerSeriesOnBall.continuousOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-continuouson.md) | 1014 | `result-track:0198a9d6c08ae93886015993309b56324c8c842f0307e0564983e90c9353efcd` |
| 114 | `theorem` | [HasFPowerSeriesWithinOnBall.continuousWithinAt_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-continuouswithinat-insert.md) | 1019 | `result-track:08a8482913be53775fc6e0fc47ff27fcd8e26674201e9be5bcbe1d8eff37f3cd` |
| 115 | `theorem` | [HasFPowerSeriesWithinOnBall.continuousWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-continuouswithinat.md) | 1025 | `result-track:24e98cc542105d16dbb04bd6d1dc51e9a54c601b53aa6ec5ee0e07172b083e75` |
| 116 | `theorem` | [HasFPowerSeriesWithinAt.continuousWithinAt_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-continuouswithinat-insert.md) | 1030 | `result-track:2e7f9f0a87487eae5a616495a5479ff7b4600d20cabb02bd280f3f6a641beb6e` |
| 117 | `theorem` | [HasFPowerSeriesWithinAt.continuousWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinat-continuouswithinat.md) | 1036 | `result-track:468a840742f3de1409ec7dc853bc79ac4947a3fa9d7cb44670df9c471127a844` |
| 118 | `theorem` | [HasFPowerSeriesAt.continuousAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-continuousat.md) | 1041 | `result-track:e30bff842d7278e7c7fea940485ced567a485ca2366ecc201a3811b22b0523de` |
| 119 | `theorem` | [AnalyticWithinAt.continuousWithinAt_insert](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-continuouswithinat-insert.md) | 1046 | `result-track:d0b6035982be96cdfde5cd5596a4ac433f4059c5a71dcbb4ad53186fc077bd79` |
| 120 | `theorem` | [AnalyticWithinAt.continuousWithinAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticwithinat-continuouswithinat.md) | 1051 | `result-track:048f8f9b52b45a1c6a5f1431d9f1ce3d651a5bd4d9d00fc8852307702793019c` |
| 121 | `theorem` | [AnalyticAt.continuousAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-continuousat.md) | 1056 | `result-track:d1e7493e48c017e8fc4706e3ce0f989bc456a1808c2bc3a4efc3d97361a0be9e` |
| 122 | `theorem` | [AnalyticAt.eventually_continuousAt](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticat-eventually-continuousat.md) | 1060 | `result-track:ce04e28159d358a86da9177622f092b94c8d8e576a4c3d1c9fbdddb3138ff2c6` |
| 123 | `theorem` | [AnalyticOnNhd.continuousOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-continuouson.md) | 1068 | `result-track:0a0971b2b2a5872b62af2dec33f8f56288239ba9c2717886c7a5f6872bb96828` |
| 124 | `lemma` | [AnalyticOn.continuousOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticon-continuouson.md) | 1072 | `result-track:bc47a8fe01f8c3522975edd7e1f8d2d3618e9eaf2107bfab07b7ae8e5d4b0e19` |
| 125 | `theorem` | [AnalyticOnNhd.continuous](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/analyticonnhd-continuous.md) | 1077 | `result-track:e37db777fcfd03947b58c6f3ff8762233f53d1cd9e65033e3512bfca2416f7e5` |
| 126 | `theorem` | [FormalMultilinearSeries.hasFPowerSeriesOnBall](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/formalmultilinearseries-hasfpowerseriesonball.md) | 1082 | `result-track:94c3b93625e8f7e1f6a3e641e549eeb9b84834c7b8a696d728112f87f252b48b` |
| 127 | `theorem` | [HasFPowerSeriesWithinOnBall.sum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerserieswithinonball-sum.md) | 1091 | `result-track:ae2d59c96ad1664abef493541e1d68a06b2d72c64c44d08b4ceb8f38d2a0405a` |
| 128 | `theorem` | [HasFPowerSeriesOnBall.sum](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesonball-sum.md) | 1095 | `result-track:9b5d8809856142bee1ab2d9c55d068ba8f289225f745e534f782a565273a6b3d` |
| 129 | `theorem` | [FormalMultilinearSeries.continuousOn](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/formalmultilinearseries-continuouson.md) | 1100 | `result-track:6ee2e610d798a111f50b2008cfb9a653382c0160cd80b88bf55b0264b20f3509` |
| 130 | `theorem` | [hasFPowerSeriesAt_iff](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-iff.md) | 1117 | `result-track:5c654999abba72a5b2c522259effc638c30ec91cf4fd07d3bc54be7909de2219` |
| 131 | `theorem` | [hasFPowerSeriesAt_iff'](../../../../FunctionalAnalysis/AnalyticBasicNamespacedPublic.lean/declarations/hasfpowerseriesat-iff-source-edition-2.md) | 1139 | `result-track:9ffaa200171fb243ee655721ef59bd8a564a6eb513380ade6d92f24625f4031a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a29f7ef4cbc4ae775115bfdf1a2800cf6574cd32e6663b0625bd0026e31d34d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
