# Verification target: Source Preserving Transformations Leave The Literal Finite Readout Unchanged

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c01733f7788a889c7bc2be0de4a14c373ac757",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c01733f7788a889c7bc2be0de4a14c373ac757`.

Source path: `GRWTSK/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchPrimePowerCutoff` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autocorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation.md) | 29 | `declaration-track:143ff23a84512786ff9345617fbb162465ee031b42b1cf7f3ad11ecd0d9f5615` |
| 2 | `def` | [sourceReadout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout.md) | 32 | `declaration-track:d8ea268d41fc26611b95d17ef8570857c1738c99dcac5fc92800b3f1f949311b` |
| 3 | `theorem` | [autocorrelation_native](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation-native.md) | 37 | `result-track:a38535c4323ab76a5c29cc85485b4b404c4476b6a55168e71b42843871fdcdc9` |
| 4 | `theorem` | [sourceReadout_native](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout-native.md) | 42 | `result-track:2bddb4458e585e5df9401619ba6c3ea86ff642c909beeb965cf5b70004b31e91` |
| 5 | `theorem` | [autocorrelation_translate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation-translate.md) | 48 | `result-track:20fa9777b409e326d278c4d485f60752099dd2851d0d7eb0563baf09968f2e93` |
| 6 | `theorem` | [autocorrelation_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation-even.md) | 60 | `result-track:c9228ff3639d62924e859dce8126e0c7f73b09ba54512aeedd3782218d0d99e4` |
| 7 | `theorem` | [autocorrelation_reflect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation-reflect.md) | 68 | `result-track:34ece4aa14e8714b30e3ed98151ed48b3f5803d0b8fc9436fc7631812caed240` |
| 8 | `theorem` | [autocorrelation_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/autocorrelation-neg.md) | 84 | `result-track:49b59d610c343626419ae673b31e6f322332de4a287807b74a31a454741a36a9` |
| 9 | `theorem` | [sourceReadout_eq_of_correlation_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout-eq-of-correlation-eq.md) | 89 | `result-track:5610a72cea3ceea89c0d25e94a4ddb6bafa0293b3dabf14a41fa3b2d202002bf` |
| 10 | `theorem` | [sourceReadout_translate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout-translate.md) | 98 | `result-track:feb330bb3802056918ca331a313c872c64612ef3d9eb056a51570721707bf698` |
| 11 | `theorem` | [sourceReadout_reflect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout-reflect.md) | 103 | `result-track:a0e3f63945e5ff8b851b92262c9e37fc943b8acc2646b720163d25f866807831` |
| 12 | `theorem` | [sourceReadout_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/sourcereadout-neg.md) | 108 | `result-track:1d7325bf4c07d200dc95718aedbc3c24a90581ef3b74ef520ed5b547a2a3bf3f` |
| 13 | `theorem` | [translated_native_readout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/translated-native-readout.md) | 113 | `result-track:0235d0f9e653d3020e2b4395daa2e82c52d915f4df6c18fa35fb0afe9c8293ba` |
| 14 | `theorem` | [reflected_native_readout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/reflected-native-readout.md) | 119 | `result-track:1d0448882662191d5b074c273088eeab271b80c268a5855492d716359c137a80` |
| 15 | `theorem` | [negated_native_readout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/negated-native-readout.md) | 125 | `result-track:94a0a88a66c0e358ece800525d379726128cb7fbc235ae1c73abf1a20898dba2` |
| 16 | `theorem` | [no_strict_descent_of_correlation_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePreservingTransformationsLeaveTheLiteralFiniteReadoutUnchanged.lean/declarations/no-strict-descent-of-correlation-eq.md) | 131 | `result-track:69115af2f0c6e1d50a1e81ba55156524c04e932bafdb97ef3048e571c5b9211b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6603a19b35469dbaeeeb0b38e2731f4ff2180e3a122b31b533c0518ddab4dd1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/BranchSourceSymmetry/Variant9e8b7f6773feb8c44ad831c3ca84efc4cec4973089bfb69feb7dff855e7877ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
