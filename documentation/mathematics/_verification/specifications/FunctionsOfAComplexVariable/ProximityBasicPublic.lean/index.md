# Verification target: Proximity Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28c33d0edaf36c6c9ae2d35afcfeefa401bdaea4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean.json)

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
| 1 | `def` | [proximity](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity.md) | 50 | `declaration-track:2062c7427864000cf5587d0d84621dd89b9103bdc59adebaada94564d13096d1` |
| 2 | `lemma` | [proximity_coe](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-coe.md) | 56 | `result-track:9c8ab9cbeebbac605299d03a493c55927214eb3f9bd410cb9422a928f60483e0` |
| 3 | `lemma` | [proximity_zero](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-zero.md) | 63 | `result-track:2648479e44ee1872ad3b0d2d6c33928492a82b2b4b89c517a6a57f6e963c7902` |
| 4 | `lemma` | [proximity_zero_of_complexValued](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-zero-of-complexvalued.md) | 70 | `result-track:7d9693ef307c56d0202b133704886bb8547b6297df75ffdf73cca62edee4bd93` |
| 5 | `lemma` | [proximity_top](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-top.md) | 77 | `result-track:9cba61c1bdc707361372b4b8dad0fe2e692d76b5dcd795c60d456605cc8f2cb2` |
| 6 | `lemma` | [proximity_congr_codiscreteWithin](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-congr-codiscretewithin.md) | 88 | `result-track:a695d056718bd0ee460cf0b84f23394cd24877271b25ba00bb70b9cab2646937` |
| 7 | `lemma` | [proximity_congr_codiscrete](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-congr-codiscrete.md) | 101 | `result-track:d64e0c1d7e415378e8e15fcb9a1f31be82720df4941f885a811594bdb5f76d90` |
| 8 | `lemma` | [proximity_coe_eq_proximity_sub_const_zero](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-coe-eq-proximity-sub-const-zero.md) | 110 | `result-track:f2743e9152df06b1d8067831fd8885bb88f187fdbddfe3abf0a9172c37206238` |
| 9 | `theorem` | [proximity_inv](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-inv.md) | 118 | `result-track:862fd2c869ca768f455d4b0e744c52e4228aaa281aeedd59fd5d097842e43e61` |
| 10 | `theorem` | [proximity_sub_proximity_inv_eq_circleAverage](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-sub-proximity-inv-eq-circleaverage.md) | 125 | `result-track:9759759685ec4ee790eef5d6171396ec07fba801ab4b54e449628dc44d1cb907` |
| 11 | `theorem` | [proximity_even](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-even.md) | 138 | `result-track:b6242553b3394db73333fce73326bd04d2f1ca93d4788998f944248bf3ca133c` |
| 12 | `theorem` | [proximity_nonneg](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-nonneg.md) | 145 | `result-track:904471f19a5d1180e80b1a148d9caeb6e0a7e233739e2b6fc98e75f39daa25b2` |
| 13 | `lemma` | [proximity_const](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-const.md) | 151 | `result-track:fd262b7454c92db393555b9d01992318e803f5309ce1cfa870f534883a1ddd70` |
| 14 | `theorem` | [continuous_proximity_top](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/continuous-proximity-top.md) | 158 | `result-track:13a70e2ef008bb243b481f93a2798725d3c5986eebf8e2bdee40b8f08df4876c` |
| 15 | `theorem` | [proximity_sum_top_le](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-sum-top-le.md) | 171 | `result-track:ea8b474d20571233f50519948b892bed635a76a50974a88e174f2da31e1430dc` |
| 16 | `theorem` | [proximity_add_top_le](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-add-top-le.md) | 199 | `result-track:5ea611a3edbac161b6e373f8d85c6a4652fc6962f61c84f8ecfeddb128086ddf` |
| 17 | `theorem` | [proximity_mul_top_le](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-mul-top-le.md) | 209 | `result-track:49d9dc589db9634b5ec43b2213b9a93d748abc2cff8c8e43f3fd468884157244` |
| 18 | `theorem` | [proximity_mul_zero_le](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-mul-zero-le.md) | 234 | `result-track:293a2c010a59d131bd107a55f72049b199a1720f0d507dfac3601c12ab93bb82` |
| 19 | `theorem` | [proximity_pow_top](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-pow-top.md) | 247 | `result-track:913b16f600ccc485fd7aba9fef67cba6d0260ea9c94bbc2d174803c31dc4eed5` |
| 20 | `theorem` | [proximity_pow_zero](../../../../FunctionsOfAComplexVariable/ProximityBasicPublic.lean/declarations/proximity-pow-zero.md) | 256 | `result-track:8a911f1dbe5846395f65b0d1c387e20b2379109837b635e9e2259cd1ad7c8795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42c79b89c6a87ee896dba6fd2c5aa1302e92ab63eee537ad26966093fdcd15b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant213f4b8e52bb4fad86b0abfc0d31c5808f37ca118b575c6a294e9037087f8ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
