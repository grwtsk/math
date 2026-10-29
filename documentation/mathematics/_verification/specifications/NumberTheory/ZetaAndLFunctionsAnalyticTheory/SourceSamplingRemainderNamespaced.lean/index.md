# Verification target: Source Sampling Remainder Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e55ac8aa897632ba22db483b9a1ffab8ed9b4c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e55ac8aa897632ba22db483b9a1ffab8ed9b4c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePositiveSampling` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [plainModelDerivative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/plainmodelderivative.md) | 30 | `declaration-track:cf05985b8627cff00ee5606d1b4ace5ff0ee4e0a1f52bd1a119d780b6879eace` |
| 2 | `def` | [logModelDerivative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/logmodelderivative.md) | 37 | `declaration-track:6b3bedb29714ef677c7472aad6f9fd1deab2b9b60daefd5a9c51bbe70ebc3925` |
| 3 | `theorem` | [samplingDerivative_prefactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/samplingderivative-prefactor.md) | 45 | `result-track:370c8919e917a106b8d1cdf71afb9d50eea5a4c5173069733a53ee86e77a9dee` |
| 4 | `theorem` | [plain_derivative_difference](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/plain-derivative-difference.md) | 57 | `result-track:372cc46e74ed53a547b0faf9deaa099901039fde4c9c6eb5988fbb1ba2f7ad3c` |
| 5 | `theorem` | [log_derivative_difference](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/log-derivative-difference.md) | 69 | `result-track:77ea8fdea3308b5fdee8796e32dbf0ef21ba0fe84f31284593c9e81538992d79` |
| 6 | `theorem` | [plain_derivative_difference_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/plain-derivative-difference-abs-le.md) | 82 | `result-track:5733388e23b2b26f87dd85ab6226f5250649321bb0e47cf024e227b93f0b17ee` |
| 7 | `theorem` | [log_derivative_difference_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSamplingRemainderNamespaced.lean/declarations/log-derivative-difference-abs-le.md) | 109 | `result-track:1083e14dbd981504034f0e67219d83202597e28286df4ce177c4acd86e6cc701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5caddb1cd28e2ee808077d53bc7bc3b5e9b2ec4e3b4cdc71fcd17e140de31382 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant936643af41d50bad482f49e69346ed469957f55ce3d86157eb7be92f30e1a30d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
