# Verification target: Attempt04 Namespaced Small Positive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/smallpositive.md) | 25 | `declaration-track:d4cb8a44428c5cc79a08a94e2f23b05acdb1d4138ad2449b886cc7958f19260f` |
| 2 | `def` | [GlobalNonnegative](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/globalnonnegative.md) | 28 | `declaration-track:8b8e891c260ed8fd0b3c68660015ae665303de8cf274fea6ec23c9702998b8dc` |
| 3 | `def` | [NonvanishingOnPositive](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/nonvanishingonpositive.md) | 31 | `declaration-track:9baeb499c2d6e7ba7b932159bdb0f8f23f17ae12ab7ca49ce55651328b614c04` |
| 4 | `def` | [affineFixture](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture.md) | 34 | `declaration-track:74347e6420a17d46fe749f8b66d3ea045f9b100aadbb43b13f5dc2ead73d0755` |
| 5 | `theorem` | [affineFixture_continuous](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-continuous.md) | 36 | `result-track:3f64f7a7e0d8ac388687cba3e4f75f0b2873bab1dfec7505a1ba7c079ca6c493` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-smallpositive.md) | 40 | `result-track:b34ede6cfa7f33e4188676dc9f714a665cd7b4fe71b4e12e503314f7c4eac590` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-later-negative.md) | 46 | `result-track:a3ab59bd2d20590b34d8bb472b9a3a5062d9ba2a7aa7c1296e9a6335eda439ab` |
| 8 | `theorem` | [affineFixture_not_global](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-not-global.md) | 49 | `result-track:82f1f0f4a0fba078adb25357436711d16e5ac681cba4345f4b44b4c8d6d058c5` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/continuous-local-does-not-imply-global.md) | 54 | `result-track:67b842858685e6d3857ebffc262c6b633c249a7917d74c48376b79af253219d3` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/bounded-window-can-miss-negative.md) | 63 | `result-track:e0e05b2d6317f0c646ba4fe3793daa6c286aacdd5796055ce6f4cbfc9c9c1dc2` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-unique-crossing.md) | 76 | `result-track:b53fa072e4aa112e8573819a4d6e619ccb38fbe4b75d68a2caff40e32cd2f941` |
| 12 | `theorem` | [zero_before_negative](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/zero-before-negative.md) | 82 | `result-track:f2277fecc91d63d25fed8daf12ff2e965ddf56a09eb22d02ed1325423c1918bd` |
| 13 | `theorem` | [zero_of_not_global](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/zero-of-not-global.md) | 105 | `result-track:1c8add071a0a7fdd0365c98b42c55669b5d1fe79a4f2dd378f118e454a972860` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/positive-everywhere-of-nonvanishing.md) | 116 | `result-track:7b31ba395deec91fa35803d132d313ff90de5c5ebb4ed1fb5b61c316fd6dcce1` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/positive-everywhere-iff-nonvanishing.md) | 128 | `result-track:b85e6328ea6607618ae4f287f3672750598eab0e092f1ae257471990a336cbb0` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/global-nonnegative-of-nonvanishing.md) | 135 | `result-track:8f4ca4c095475d7d3dee8518e41b18f36bdd70aa0c1b25fdfe4df06b23e82d96` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/lowesteigenvalueprofile.md) | 142 | `declaration-track:fbf5820f03d9018348b41bbb6b84bbde78f44faccd0fd3acf6cb479c644136fd` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/lowesteigenvalue-crossing.md) | 145 | `result-track:3aad276e3207f1cf20a4eb06b01666b866cd75c5e9a73c21576e89bc6dbd5341` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/lowesteigenvalue-failure-crossing.md) | 150 | `result-track:d0ae63c3e2d610d0021e1f42bf319b1306a57f12a8dcfbb485183d471091aaf2` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive.md) | 155 | `result-track:265d2fb734d504fdf575ba62de42a8410264e982629e2a5b7680a74a6991dbd8` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../GeneralTopology/Attempt04NamespacedSmallPositive.lean/declarations/affinefixture-lowesteigenvalueprofile.md) | 160 | `result-track:2a59bff680161ad1f378426a5961108dfa5344b60793d30d2c5386cea024142e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fad34745adb8e95bb51a8de1ce2301b1bb87b7eeac793ee7e5ecb7cfa807cc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
