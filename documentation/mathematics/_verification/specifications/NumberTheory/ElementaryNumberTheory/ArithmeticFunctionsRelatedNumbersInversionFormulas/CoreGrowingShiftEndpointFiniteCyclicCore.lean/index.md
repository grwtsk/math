# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c311ec597b56c6fd08c72d60062b40c5bb70386",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c311ec597b56c6fd08c72d60062b40c5bb70386`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance`](../../../../../../NumberTheory/FiniteCyclicIntervalDistance.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointCyclicCoordinates.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [coreGrowingShiftEndpointFiniteCyclicFourierModulus](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicfouriermodulus.md) | 24 | `declaration-track:2e72668fcead228f47289f178869e44db8245f1998881d7cf6c720ef6affcd36` |
| 2 | `abbrev` | [coreGrowingShiftEndpointFiniteCyclicDoubledModulus](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicdoubledmodulus.md) | 29 | `declaration-track:a0ad744149c7beb17827621828847eb2478d53583bac82a238ed254108efbb8e` |
| 3 | `instance` | [coreGrowingShiftEndpointFiniteCyclicDoubledModulus_neZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicdoubledmodulus-nezero.md) | 32 | `declaration-track:e496de3ab3b1b45c812fc56a48f453b599bda5bc34b9e18bab9c14b9dd9bfc53` |
| 4 | `abbrev` | [CoreGrowingShiftEndpointFiniteCyclicIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicindex.md) | 37 | `declaration-track:b966a090519c10e4c02d714c47c85f3b0550765f643791eeafdb80ab601b05a4` |
| 5 | `abbrev` | [coreGrowingShiftEndpointFiniteCyclicNegativePhase](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicnegativephase.md) | 41 | `declaration-track:3d3a3b286316c6729de33c5d5e9428a19dc238d3ffcfaca910592a467ebc5a1b` |
| 6 | `abbrev` | [coreGrowingShiftEndpointFiniteCyclicMultiplier](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier.md) | 47 | `declaration-track:66cd7d247db2aec9a811b1374b3b005d3a5d8900ea906363cbfc4fbcc6e9e075` |
| 7 | `abbrev` | [coreGrowingShiftEndpointFiniteCyclicDistance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicdistance.md) | 53 | `declaration-track:c11b8e75d3dcc0b317f9e1e916810c00c0e7439cd27341f2e7b168d99adf86f6` |
| 8 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicnegativephase-eq.md) | 59 | `result-track:890543a6f59ba53e6df8e65510398c2992a02cb000c11ded873d9f16c5916215` |
| 9 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-eq.md) | 67 | `result-track:29c02afa7aea5ad117249dff5d5639d9331a1773b693fd25b94b52db1e829a56` |
| 10 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicDistance_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicdistance-eq.md) | 74 | `result-track:ed2f984f5ef94d44d17ff2cd34f386769067a12f44dffe742b946e43c5f818be` |
| 11 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicmultiplier-inv-norm-le-distance.md) | 81 | `result-track:8223e24b9079863e85ec49f35a89361b64017d30b98ea0c2180ac2afb07f5a72` |
| 12 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-norm-le-distance.md) | 97 | `result-track:32809936a85a1ac06ecb22d17423e1a73f85949912f94abb96a5934caf4e44b3` |
| 13 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-norm-le-regularcutoff.md) | 116 | `result-track:f2e3132a4b410bbec5ce4f4c4ff264319a329a90038612d7bff0d1f6b5b6703e` |
| 14 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-zero.md) | 137 | `result-track:d47aa06b75b876249451070e26270c3168a5f9485b32e8c93e25bed482fb453f` |
| 15 | `theorem` | [coreGrowingShiftEndpointFiniteCyclic_phaseMatchedWeights](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointFiniteCyclicCore.lean/declarations/coregrowingshiftendpointfinitecyclic-phasematchedweights.md) | 149 | `result-track:7505ee73b03c7fef72158d8abed5c8964ce8cb415192744dbd766f1a70e068dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f336dc208d27bb63c6ec78f85f202af3cb920c88c132951c1fe8104723ad1c63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
