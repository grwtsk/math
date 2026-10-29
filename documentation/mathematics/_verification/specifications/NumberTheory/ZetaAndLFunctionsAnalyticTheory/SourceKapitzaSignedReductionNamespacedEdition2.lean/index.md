# Verification target: Source Kapitza Signed Reduction Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27ba25f777edc71dcf533d21b27aea1b7d5c934",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant490752dd77370f6367a80559c84e1a14c3492ba6caeea61b80af2a89860833b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27ba25f777edc71dcf533d21b27aea1b7d5c934`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant490752dd77370f6367a80559c84e1a14c3492ba6caeea61b80af2a89860833b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant490752dd77370f6367a80559c84e1a14c3492ba6caeea61b80af2a89860833b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [combined_terminal_eq_compensated](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/combined-terminal-eq-compensated.md) | 33 | `result-track:16a58e5e4d6c7aedcef245dab0e84897b6b34e3bd5d1415344e11ff05661f987` |
| 2 | `theorem` | [totalQuadraticWork_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/totalquadraticwork-nonneg.md) | 41 | `result-track:3acd243b022b3ddc9fb3ddd4ea07675e285f044aab8ab70af49f8b1652a7634f` |
| 3 | `def` | [CompensatedTailUpperBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/compensatedtailupperbound.md) | 46 | `declaration-track:3bec5a9e8dc86113254d776bc72e959f84953211bc81800631e3748248e4a001` |
| 4 | `def` | [CombinedTerminalTailUpperBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/combinedterminaltailupperbound.md) | 49 | `declaration-track:691a8c78e089406e0507efbed61c16f003837da0a675508ad0b3f7f99a661b70` |
| 5 | `theorem` | [combined_terminal_tail_iff_compensated_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/combined-terminal-tail-iff-compensated-tail.md) | 54 | `result-track:6e22ae4bb2b7d56308bf96c4936073801342b8f162f9b062bed7e3f2f8ced2df` |
| 6 | `theorem` | [original_lower_of_compensated_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/original-lower-of-compensated-cap.md) | 85 | `result-track:89d6a9b0e953be4bc9af7c2ccf32c1c0c90e305edfe3b71f26e44873df4e309a` |
| 7 | `theorem` | [estimate_of_compensated_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceKapitzaSignedReductionNamespacedEdition2.lean/declarations/estimate-of-compensated-tail.md) | 108 | `result-track:5e5cacab0adc6ebc80e96b9b9f7593dc60bcf6b59afd42afc2a125979a837af5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4337a8d745eaa4c59880b658e26a9a116c8f9d1e87e2b00a44b2b235f8cc6d82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant490752dd77370f6367a80559c84e1a14c3492ba6caeea61b80af2a89860833b0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variant490752dd77370f6367a80559c84e1a14c3492ba6caeea61b80af2a89860833b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
