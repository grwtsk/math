# Verification target: Complete Finite Cover Pairing Amplifies ARetained Root Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5b0601d8678d8996b8d21c164195b4e518eba9c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCoverAmplification/Varianta7d8385e94553387dbd3b3a21dd811d98e867bf6b157a36456b6f6dc3679fe22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5b0601d8678d8996b8d21c164195b4e518eba9c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCoverAmplification/Varianta7d8385e94553387dbd3b3a21dd811d98e867bf6b157a36456b6f6dc3679fe22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCoverAmplification/Varianta7d8385e94553387dbd3b3a21dd811d98e867bf6b157a36456b6f6dc3679fe22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.InboundChannels` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basePairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/basepairing.md) | 28 | `declaration-track:228b26d2db79e3160a420f4f40197176ac89c721656e95906e22ee095dec64b8` |
| 2 | `def` | [pullback](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/pullback.md) | 34 | `declaration-track:72f751f7e3dcf11b0f993087dc74af5962048db1c80c24508b7a5f3ec1df4c8f` |
| 3 | `def` | [coverPairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/coverpairing.md) | 40 | `declaration-track:37298f97a27169820b3ad1fa983bdb86b9765786f06a59a9fe284ca5ea823449` |
| 4 | `theorem` | [complete_seven_sheet_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/complete-seven-sheet-pairing.md) | 42 | `result-track:a0336a96f74ab0d260b12c5556fefd9ca49b06a6d0b012a8b284318f42b47a0c` |
| 5 | `theorem` | [marked_root_base_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/marked-root-base-pairing.md) | 46 | `result-track:deb0a9d248d052fe4a884aa962bc6688efc62016b7ab2aad841ce249ec02a171` |
| 6 | `theorem` | [marked_root_cover_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/marked-root-cover-pairing.md) | 50 | `result-track:cde6f7a35061db882eafdf11a7d7ef88d7423367fd7a17e6141165be5a025d1d` |
| 7 | `theorem` | [invariance_does_not_force_zero_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/invariance-does-not-force-zero-pairing.md) | 56 | `result-track:8bbd73b35a684538db03f48447bad149f3228e74b565d48554235ba7576ccedf` |
| 8 | `theorem` | [centered_base_retains_zero_common_readout](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/centered-base-retains-zero-common-readout.md) | 64 | `result-track:9dafb69e720d6bd27af20c607e39916dbdff0550d46e1961b099ab6fd521ed39` |
| 9 | `theorem` | [root_pairing_scales_quadratically](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CompleteFiniteCoverPairingAmplifiesARetainedRootEdition2.lean/declarations/root-pairing-scales-quadratically.md) | 70 | `result-track:c86753865b76f50435d016306fbca5641e9476b361b2bdaed38d8353347be6f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=650f136f69c1b1e065b03172fee77aa794eb6bc35896a946b9e02bf0c5cbf9b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCoverAmplification/Varianta7d8385e94553387dbd3b3a21dd811d98e867bf6b157a36456b6f6dc3679fe22.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCoverAmplification/Varianta7d8385e94553387dbd3b3a21dd811d98e867bf6b157a36456b6f6dc3679fe22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
