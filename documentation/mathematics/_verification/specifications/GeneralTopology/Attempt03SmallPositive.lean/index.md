# Verification target: Attempt03 Small Positive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d64803ff2c3cc5aa3071a963644ee50d5ba1a430",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt03SmallPositive.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt03SmallPositive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d64803ff2c3cc5aa3071a963644ee50d5ba1a430`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/smallpositive.md) | 17 | `declaration-track:57234f3dc8bae9603946b7575262e65820885e2d1ffa3ed8bbc7593a98f31628` |
| 2 | `def` | [GlobalNonnegative](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/globalnonnegative.md) | 20 | `declaration-track:b0b535205d6050d13c3a1ffd4ca7b3cc311dd673b14d7def02e64dbebd93937c` |
| 3 | `def` | [NonvanishingOnPositive](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/nonvanishingonpositive.md) | 23 | `declaration-track:9abc7ed5404861ed1f0d24cadbd10585771ad267b4c646ba3a9b5ed35d995754` |
| 4 | `def` | [affineFixture](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture.md) | 26 | `declaration-track:b3df3937a4ce7f600a94eb90ea7026bcba6871b8eb754c1dab36a60a4151b23c` |
| 5 | `theorem` | [affineFixture_continuous](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-continuous.md) | 28 | `result-track:9ddcf1f55fc67accdb234eae96a0ec639c2402e89961a5be37525050e9024ea8` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-smallpositive.md) | 32 | `result-track:e3731a4e82e0a6e494b59d17ddfa0fe45b5a6f355bf7cd6e10893735fa4f988c` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-later-negative.md) | 38 | `result-track:463455c3c7eedf93afc8d8ccf8dd24b186ee8b5d3468d4f1d4403dc7d1211216` |
| 8 | `theorem` | [affineFixture_not_global](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-not-global.md) | 41 | `result-track:80889efd1b23946965c2a9640546840f786a5a34c987d44fca62803995135b9f` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/continuous-local-does-not-imply-global.md) | 46 | `result-track:165188a6186bcba4716595efeb3b9e4998a6c93b251f71c6688cf5e0b6d7e5d9` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/bounded-window-can-miss-negative.md) | 55 | `result-track:04594829f2ed0823cdfe530f7e4db2221a0ac707ae6e7bdec564dece2c6f1549` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-unique-crossing.md) | 68 | `result-track:e0ca21b5bd322489d466f4fb0216770aaf1072363986f12360972fcd321d994a` |
| 12 | `theorem` | [zero_before_negative](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/zero-before-negative.md) | 74 | `result-track:adc1e609f08a29a9749a26b005464fdfe2be2d363b60fdfd65966504c43d48c6` |
| 13 | `theorem` | [zero_of_not_global](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/zero-of-not-global.md) | 97 | `result-track:3c0186cda07f872a7a1682f9763bac769528e1c33057725fbb4e1bc527db1c86` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/positive-everywhere-of-nonvanishing.md) | 108 | `result-track:1c2d8ff255d470420e3d0e40ec2f45ecd0bb83c009f4d6ad03c8d19c3d4eb0de` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/positive-everywhere-iff-nonvanishing.md) | 120 | `result-track:0cf85c13794b0f143aeeca5b054c1c2e799fe74c05951a1f3299af841132a312` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/global-nonnegative-of-nonvanishing.md) | 127 | `result-track:6f188f200f056d6d4128c3c757143c0cf32f48a4d4de816635cb64c751b951bd` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/lowesteigenvalueprofile.md) | 134 | `declaration-track:cb89e55e1fbbd9f5028e2594256bb1117c34473eee5fed05e72902575155b550` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/lowesteigenvalue-crossing.md) | 137 | `result-track:98aeeaab1dce491563d29f34a3e06a8822a568fa01352999bcf55d98b7c799b9` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/lowesteigenvalue-failure-crossing.md) | 142 | `result-track:e051c1add2a9f46ac46a2e8aec7713a90d2bbe4c33f1104ac686439cd5932ae7` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive.md) | 147 | `result-track:131dc4c106dd86f9fd15893d2096ea2b8caddffcdfbe2a2b02ed4b7ee184b158` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../GeneralTopology/Attempt03SmallPositive.lean/declarations/affinefixture-lowesteigenvalueprofile.md) | 152 | `result-track:e7d67da64919db77c1bc9bf5b868da00dfad7aac68f6c9bfbe9b2b8c94c9ca8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01009a14a7ce0067467b19c5578f19ecacfaf8bad7d0b94f10440680bb8922db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt03/Variantb44c6b43261d03825f125263556facb0d7de14a340de42eecc8e3787fb53925a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
