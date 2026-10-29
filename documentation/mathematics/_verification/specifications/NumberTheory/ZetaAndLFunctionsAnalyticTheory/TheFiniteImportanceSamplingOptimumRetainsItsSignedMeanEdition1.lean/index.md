# Verification target: The Finite Importance Sampling Optimum Retains Its Signed Mean Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be69251360d2fcfa41acef7f968957e7452fa458",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingOptimization/Variant0460a41e9c26a67bc4d0d273db0843ebd44704cc016dbe6da54b77d40e015177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be69251360d2fcfa41acef7f968957e7452fa458`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingOptimization/Variant0460a41e9c26a67bc4d0d273db0843ebd44704cc016dbe6da54b77d40e015177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingOptimization/Variant0460a41e9c26a67bc4d0d273db0843ebd44704cc016dbe6da54b77d40e015177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/absolutemass.md) | 23 | `declaration-track:256d17bdeb69b06638f3089333c5da219b54b2e2eabd1f7773993eea474c8544` |
| 2 | `def` | [optimalProbability](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimalprobability.md) | 24 | `declaration-track:11a808eff6075492b9f896813d717b3ce86f18f4d6ebdfcc46ec622fb3bb6b2c` |
| 3 | `def` | [secondMoment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/secondmoment.md) | 26 | `declaration-track:3b5274f17f7cbc51a03fcc4706ae4c971ee01ff38be2d57d30c07a598cdaffb4` |
| 4 | `def` | [variance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/variance.md) | 27 | `declaration-track:d1424df5be80bd060ae203380eb6e1632eba4ca36d7827cce3884ebb05bafac4` |
| 5 | `theorem` | [optimalProbability_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimalprobability-pos.md) | 30 | `result-track:61df1fd90e1b167b1100878f37e534bb8b5e75c7087eaf4798204cc24ac8cb7a` |
| 6 | `theorem` | [optimalProbability_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimalprobability-sum.md) | 34 | `result-track:61ae6bc717faf8f18a20ca20379cdc351e6472c0c18f96e1e5492994fe50e043` |
| 7 | `theorem` | [optimal_secondMoment](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimal-secondmoment.md) | 40 | `result-track:99a92503464f9e1ae979e6974b91f339c8d605e15e35469c6b95bca4925a7917` |
| 8 | `theorem` | [optimal_variance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimal-variance.md) | 53 | `result-track:02bdafcf2693bd809badfcd87741cc38694330701d0d5d9c6c9e225c2655b913` |
| 9 | `theorem` | [optimal_variance_minimum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/optimal-variance-minimum.md) | 61 | `result-track:875d3df36731e086e432c700263601e0f3f19b825b0d5cbeb254226c18e049b3` |
| 10 | `theorem` | [expected_readout_eq_signed_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheFiniteImportanceSamplingOptimumRetainsItsSignedMeanEdition1.lean/declarations/expected-readout-eq-signed-sum.md) | 71 | `result-track:531b49b01eb04083c4828e00bcddb6dd344fddf6e9e4c937fec469578a6e52ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=058f7c2cbf1c35818f6536c959cc7fc812270983c5744fe11221b50db3783a03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingOptimization/Variant0460a41e9c26a67bc4d0d273db0843ebd44704cc016dbe6da54b77d40e015177.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingOptimization/Variant0460a41e9c26a67bc4d0d273db0843ebd44704cc016dbe6da54b77d40e015177.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
