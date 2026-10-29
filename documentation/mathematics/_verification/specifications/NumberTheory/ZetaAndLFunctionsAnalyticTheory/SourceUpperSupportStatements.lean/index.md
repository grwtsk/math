# Verification target: Source Upper Support Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c97fedb1d7327d64c85815154f5cfa3fd323a4eb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c97fedb1d7327d64c85815154f5cfa3fd323a4eb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaRemainder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceSamplingKernel_zero_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/sourcesamplingkernel-zero-of-two-mul-ge.md) | 14 | `result-track:cbfbb167e8a2ff8146f6d5cd4fb02e7af6e9bc58f921b779f3e2b6298dfdd97f` |
| 2 | `theorem` | [thetaKernel_zero_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/thetakernel-zero-of-two-mul-ge.md) | 26 | `result-track:8964e52d7d76d64bf19d473e7f4d5261a7904ce2176477e0b517073f2310742a` |
| 3 | `theorem` | [thetaKernel_eq_sourceSamplingKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/thetakernel-eq-sourcesamplingkernel.md) | 38 | `result-track:768fe8b56a50ded799f7f0704eb273f01731e21d8ba5e681d4bb9466a78bed41` |
| 4 | `theorem` | [sourceSamplingKernel_eq_two_channels](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/sourcesamplingkernel-eq-two-channels.md) | 58 | `result-track:ec17cccb7f066b7e7c9c0e5a60d26c17b8aa49c53c74520552b10a29bc1d4c76` |
| 5 | `theorem` | [thetaKernel_eq_two_channels](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/thetakernel-eq-two-channels.md) | 98 | `result-track:49958c38056131b4a094c7fcce06a37ac823d12d2e113e7ac947b35ac877f2a0` |
| 6 | `theorem` | [thetaRemainder_eq_neg_rankOne_of_two_mul_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/thetaremainder-eq-neg-rankone-of-two-mul-ge.md) | 110 | `result-track:8d8bdec2b4a69a8226a18223eed8380bceb807d0baf734d38b897ac32cbc559f` |
| 7 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example-source-edition-2.md) | 129 | `declaration-track:34951856dcda198f4b820a422a6de48d208e1283f941b6ced1748a93992669d9` |
| 8 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example-source-edition-4.md) | 133 | `declaration-track:802010e479f5b41669b8097d09a59f796ad6a91bd46d5a1af8022ee50f21cd6e` |
| 9 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example-source-edition-6.md) | 137 | `declaration-track:ecd3c6cfaed87a0ead9644dcf324347de25d602d7218a07f523301593627d818` |
| 10 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example-source-edition-5.md) | 142 | `declaration-track:8ea6c8729b025e7654101497976fe48314e4c2d34f7b7aff6953f75bda8091da` |
| 11 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example-source-edition-3.md) | 153 | `declaration-track:6960d7192ec6acdbae4b925330b1d1d39a40171fce9abb374078c7803959f87f` |
| 12 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceUpperSupportStatements.lean/declarations/example.md) | 164 | `declaration-track:1432d986d5ad9374b7542d5c14e2990ddc4f237cbab08c8034236bdb29ab76df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41b7be230b5f50ccbe054ed477c4c119f13e04203a88d467202a883f56e83ab9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupportStatements/Variant7c89ab9a015f0184a2b1c43a146b79eb38afdedac2ae0bbf24f401331e3d66d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
