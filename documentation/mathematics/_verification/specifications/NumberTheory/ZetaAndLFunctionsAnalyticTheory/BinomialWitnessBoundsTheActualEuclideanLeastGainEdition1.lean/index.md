# Verification target: Binomial Witness Bounds The Actual Euclidean Least Gain Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a75f5377d369b10222dffdcaed72efc073e0ecc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant6dd7332cf32e44ab28b3f467cf1ff3638c397d57dfb384d8f5d8bcfaf5226523.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a75f5377d369b10222dffdcaed72efc073e0ecc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant6dd7332cf32e44ab28b3f467cf1ff3638c397d57dfb384d8f5d8bcfaf5226523.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant6dd7332cf32e44ab28b3f467cf1ff3638c397d57dfb384d8f5d8bcfaf5226523.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.MixtureBinomialWitness` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastGain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/declarations/leastgain.md) | 21 | `declaration-track:9b6d44ddf4493b39980f3d9b901c9bfcb88512f64eeb5f502027c4c468410a80` |
| 2 | `theorem` | [response_smul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/declarations/response-smul.md) | 24 | `result-track:5cb6e54568329e27393cfa2d0ff3490f7c72403c9d54e2e4f3ebaf70e2e98082` |
| 3 | `theorem` | [leastGain_le_unit_response](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/declarations/leastgain-le-unit-response.md) | 34 | `result-track:078d42cc975f0414a3592136989b69df4495cba93e42c5f51748e2e18d1be313` |
| 4 | `theorem` | [leastGain_le_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/declarations/leastgain-le-ratio.md) | 42 | `result-track:278680978fe34f34396eb7145d346fc16945bfab0aafe878f6d2b1c39795fbf7` |
| 5 | `theorem` | [binomial_least_gain_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BinomialWitnessBoundsTheActualEuclideanLeastGainEdition1.lean/declarations/binomial-least-gain-bound.md) | 53 | `result-track:2ce29dba65cddb791f02c15421e29bf29083207d15bd8faeba66a48c9a319284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2170e33cd03ee51166b5101df9e0ce8557e7e7aa27deb04986f0d84ee83006b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant6dd7332cf32e44ab28b3f467cf1ff3638c397d57dfb384d8f5d8bcfaf5226523.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MixtureLeastGain/Variant6dd7332cf32e44ab28b3f467cf1ff3638c397d57dfb384d8f5d8bcfaf5226523.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
