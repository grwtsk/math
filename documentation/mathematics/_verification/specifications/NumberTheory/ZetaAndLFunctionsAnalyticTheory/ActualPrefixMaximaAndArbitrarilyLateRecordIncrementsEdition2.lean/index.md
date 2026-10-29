# Verification target: Actual Prefix Maxima And Arbitrarily Late Record Increments Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d15a089152649edd651b7f43ca63236ee1a75e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d15a089152649edd651b7f43ca63236ee1a75e5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeDeficit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeSupremum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixMaximum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/prefixmaximum.md) | 21 | `declaration-track:ef770807b70ae8283f04af584a9951797588a2287a17557b3be420081fd0e66e` |
| 2 | `theorem` | [literal_prefix_maximum_attained](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-prefix-maximum-attained.md) | 23 | `result-track:60191fa1eb4d488412d0d63759d4b0cfb80e60a70f854991a424a873055835a1` |
| 3 | `theorem` | [literal_prefix_value_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-prefix-value-le.md) | 34 | `result-track:565a458a2cb96bff4467e832e4ad795ebd2a011bc1dd46a3a00fcbfcd3d03cdd` |
| 4 | `theorem` | [literal_prefix_maximum_monotone](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-prefix-maximum-monotone.md) | 40 | `result-track:dc4fad961b2a4a4079b317ce59c2d104b1b9806ddc96055a93f57f434e30e278` |
| 5 | `theorem` | [literal_prefix_maximum_lt_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-prefix-maximum-lt-two.md) | 46 | `result-track:670e6b4185125e08967789868e1b6d608f939a2dc5d64943d83fb53afcad359a` |
| 6 | `theorem` | [literal_prefix_maximum_uniform_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-prefix-maximum-uniform-deficit.md) | 52 | `result-track:867b040701d85fc0ad969a49b7f620aff4b54d8083d862cbafbfa1d95d30cd37` |
| 7 | `theorem` | [literal_later_record_rise](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrefixMaximaAndArbitrarilyLateRecordIncrementsEdition2.lean/declarations/literal-later-record-rise.md) | 63 | `result-track:02495c4b5b510f3986357074b453863b7ff692a4de5ce476869df9b220313479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df8dac42875d919fe123640aa1f7c5b47044adcb406924e4bf00022fd2c0dcc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
