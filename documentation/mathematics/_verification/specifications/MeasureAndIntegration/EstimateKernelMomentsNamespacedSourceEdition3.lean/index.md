# Verification target: Estimate Kernel Moments Namespaced Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92cf282bd39eb4de5ce69dea0f14d499596796e5",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92cf282bd39eb4de5ce69dea0f14d499596796e5`.

Source path: `GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedTest_continuous_all](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/normalizedtest-continuous-all.md) | 42 | `result-track:9062bc37f2faec056b689bf02c0462066d1165edb2ad773300ebb70c4d8d5338` |
| 2 | `def` | [positiveWeightedTest](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtest.md) | 55 | `declaration-track:f0cf1354026b74ca36384138d94d8ba45946457ffd837449695fcbd07dd54fad` |
| 3 | `def` | [reflectedPositiveWeightedTest](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtest.md) | 60 | `declaration-track:307f30a53e94246fa2d02dfd01866c3c55b3f3ec5cb2c97498253b198925ef34` |
| 4 | `def` | [positiveWeightedTestMoment](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtestmoment.md) | 65 | `declaration-track:58f70efe40a47367789bdf4741402339b65f069d34292a94ac0fc4274c273c1f` |
| 5 | `def` | [reflectedPositiveWeightedTestMoment](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtestmoment.md) | 69 | `declaration-track:faae801e6cd827728bb48ee99d70549ddcdb1c9899f87009b9e9a9a0188f9405` |
| 6 | `theorem` | [positiveWeightedTest_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtest-integrable.md) | 72 | `result-track:cc01ee24be67f400812c44a9324c1b318b8f21345b9e8d33672e97531e954b27` |
| 7 | `theorem` | [reflectedPositiveWeightedTest_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtest-integrable.md) | 77 | `result-track:5539cf2c1e9de9eb94535099b00244bd7b518b3907f3bd9e7fc9de26bb7bef5e` |
| 8 | `theorem` | [positiveWeightedTest_continuous](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtest-continuous.md) | 83 | `result-track:ef8466755f3cfde76e50baa9aa0699598143c74874b04921dc6943e800bb05e2` |
| 9 | `theorem` | [reflectedPositiveWeightedTest_continuous](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtest-continuous.md) | 90 | `result-track:207976c4a9d2d91b71f95218328d19bd67567b8329c3e66680061e59488171ac` |
| 10 | `theorem` | [positiveWeightedTest_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtest-hascompactsupport.md) | 97 | `result-track:8a96f1eb03ff1e17bf35c166a06c53be9170106c3dcc9446b44d2ce139f1ed3e` |
| 11 | `theorem` | [reflectedPositiveWeightedTest_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtest-hascompactsupport.md) | 104 | `result-track:beabe659d8416088a0d2a390aabf49bcd6dc13f0b730d7809fb878c7bbc91ee0` |
| 12 | `theorem` | [positiveWeightedTestMoment_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtestmoment-integrable.md) | 111 | `result-track:1a2adb8d986df516c7a2ab0cc5a2b54f3799d9526893ca7999fd67e4e8cb0fec` |
| 13 | `theorem` | [reflectedPositiveWeightedTestMoment_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtestmoment-integrable.md) | 131 | `result-track:f96e5b95b0dd6016d15ddcef997c50965b71aa386200b7d1a8abf75fde28785a` |
| 14 | `theorem` | [positiveWeightedTestMoment_continuous](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtestmoment-continuous.md) | 151 | `result-track:c38cf1fa6959c33c7fe5af85b1acf3f2e901bf6c650d89fc034d4dce7d9414a6` |
| 15 | `theorem` | [reflectedPositiveWeightedTestMoment_continuous](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtestmoment-continuous.md) | 158 | `result-track:5965f957dd70cf81f05d9a863c8f9b545c74f342dd64c61644c103026cdb79b6` |
| 16 | `theorem` | [positiveWeightedTestMoment_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtestmoment-hascompactsupport.md) | 165 | `result-track:5f6db64061c27e61a20ca11bd68246573674ba36baf0d9f123d40aa4f5162cb3` |
| 17 | `theorem` | [reflectedPositiveWeightedTestMoment_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtestmoment-hascompactsupport.md) | 171 | `result-track:b11988aca5ae4d989885075da698515202e8c41ced7309c8882f660ce822dc23` |
| 18 | `theorem` | [positiveWeightedTest_integral_zero](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/positiveweightedtest-integral-zero.md) | 177 | `result-track:680164fa640cb8b1805d7506572e47e3cfde876aa314ae54318a25ccf582f702` |
| 19 | `theorem` | [reflectedPositiveWeightedTest_integral_zero](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/reflectedpositiveweightedtest-integral-zero.md) | 183 | `result-track:4764c1e77e4c6a25c473530383d97e76b4dd9ddc430b54b8498b11b721207fe9` |
| 20 | `theorem` | [mul_weighted_convolution](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/mul-weighted-convolution.md) | 203 | `result-track:e2d580cc3102cfe38f3570d681f8fd0521d0aaebfe7772998790eb8f10807c12` |
| 21 | `theorem` | [sourceCorrelation_first_exponential_moment_zero](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/sourcecorrelation-first-exponential-moment-zero.md) | 254 | `result-track:61bcaa37b055e86353325ebc5ba2e891d39ee031fcf09a13886ed8dd417a701b` |
| 22 | `def` | [weightedCorrelation](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation.md) | 332 | `declaration-track:6de3dc2af998196621a23920f7f5d17818804b3b33f41dcbf8333dce1c71def3` |
| 23 | `def` | [derivativeProfile](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/derivativeprofile.md) | 337 | `declaration-track:aadb4397bc09435deb1f6b9fb03a64c5137c158ae450ca47d1705c8be1a04ad1` |
| 24 | `theorem` | [weightedCorrelation_contDiff](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation-contdiff.md) | 341 | `result-track:507aab4c599c7f57b8c55adb5ce1be56fb744fe83726bd987b92e00b7c29d799` |
| 25 | `theorem` | [weightedCorrelation_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation-hascompactsupport.md) | 350 | `result-track:8506c17c117cc70f8e8df68c9cef928f805546ec6e7a6b75c4fd348f0b581c08` |
| 26 | `theorem` | [weightedCorrelation_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation-integrable.md) | 357 | `result-track:dd605b647aefd61dc8e9e5659d8e64cc1f3cf7848d1fee1c245a8d814f5edc86` |
| 27 | `theorem` | [weightedCorrelation_deriv_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation-deriv-integrable.md) | 363 | `result-track:f9eeaccbd62afe86b4448e817b345b765055c61e65c1fe314cfdde6cff016a31` |
| 28 | `theorem` | [weightedCorrelation_deriv](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/weightedcorrelation-deriv.md) | 370 | `result-track:5b8c8145d56d215f27e58c95ef85a2c03f2ea0117af1007c40425a296647232e` |
| 29 | `theorem` | [derivativeProfile_exponential_moment_zero](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/derivativeprofile-exponential-moment-zero.md) | 389 | `result-track:2070a651024021d1de2e52d121f712df6133ba7439295e3a44bd1e9e75854119` |
| 30 | `def` | [firstWeightedCorrelation](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation.md) | 423 | `declaration-track:705a47e1afce09d7fcc91764814eee1d96bcdbd0c25db553915700948d8e16ba` |
| 31 | `theorem` | [firstWeightedCorrelation_contDiff](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation-contdiff.md) | 426 | `result-track:b86f6bd70b2de2e058f9f361e36983c4311c2cbc47a82ad81a9edd6cfe5dec63` |
| 32 | `theorem` | [firstWeightedCorrelation_hasCompactSupport](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation-hascompactsupport.md) | 432 | `result-track:2dc5d424bf771afcb8bb8c58dd874cac69c162b39492b86b76b42eda4f5bbd1e` |
| 33 | `theorem` | [firstWeightedCorrelation_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation-integrable.md) | 438 | `result-track:615a86c3ca05edfdcd3b87078bad02be13d7a41798adcb1c65c8f71a3c6e6eb4` |
| 34 | `theorem` | [firstWeightedCorrelation_deriv_integrable](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation-deriv-integrable.md) | 444 | `result-track:b89f4ebe9b4c837a44e6d2b220f7bed6426f64b6f082157a3457619e4a1ca03e` |
| 35 | `theorem` | [firstWeightedCorrelation_deriv](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/firstweightedcorrelation-deriv.md) | 451 | `result-track:89085f64d3cfc76d7b90955df3708b2c96d865f74458da9223ef3612d64366f9` |
| 36 | `theorem` | [derivativeProfile_first_exponential_moment_zero](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/derivativeprofile-first-exponential-moment-zero.md) | 463 | `result-track:b76b37b6ced7e2b32b425105e2fe4e6615cd1002cdb47da977062b176582ab4e` |
| 37 | `def` | [DoubleMomentCheckpoint](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/doublemomentcheckpoint.md) | 549 | `declaration-track:c9aca2a17be975610ae1500e4bf2f66ddd7df70cde48d3e43f0f0b7ad6a2290c` |
| 38 | `theorem` | [double_moment_checkpoint](../../../../MeasureAndIntegration/EstimateKernelMomentsNamespacedSourceEdition3.lean/declarations/double-moment-checkpoint.md) | 563 | `result-track:9eb44ad0f086a41e309497b6f2c82479ae74a92408853e28aaccd3a7a9883ed9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4496bb0672b86430a3cad1b93052b9873114224d23a0fbea1bd87334cfd0f2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
