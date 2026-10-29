# Verification target: Corrected Cutoff Increment Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f077a3d4f8262e9463c578fb115720ed12db58b0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f077a3d4f8262e9463c578fb115720ed12db58b0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffShape](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/cutoffshape.md) | 12 | `declaration-track:87d4c38d07636df336dfa949a3cdb295510cc2a2f9e5237bb64c909a2feb57ee` |
| 2 | `theorem` | [correctedNumerator_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/correctednumerator-one.md) | 17 | `result-track:85c3edd06925bf086dbd5c426238dc5564c5746e211b2bdc275aa260baa8296d` |
| 3 | `theorem` | [exponential_split](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/exponential-split.md) | 20 | `result-track:8e827006a0071654286038b08fec1635cee0f8b3b644f9d3d066f648358a03f2` |
| 4 | `theorem` | [reciprocal_succ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/reciprocal-succ.md) | 31 | `result-track:d01fec3fbe18b00d06c78c4e3b218e54fafa6e40834c0c8b7270a4608046b1e0` |
| 5 | `theorem` | [correctedNumerator_succ_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/correctednumerator-succ-sub.md) | 38 | `result-track:3b5ab73ce98ebb9c22e864a87f3aa85511441cd55c469b15d117a5d2ea41ad0d` |
| 6 | `theorem` | [correctedNumerator_eq_sum_increments](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/correctednumerator-eq-sum-increments.md) | 50 | `result-track:3b2cf82757cf9096e326c36b5db2c2bf6521bf36b8add39544232b2fade49698` |
| 7 | `def` | [boundaryResidual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/boundaryresidual.md) | 61 | `declaration-track:d886870f93254d967b7b644d95a6cbee1522080bb69c31a8f19272d18a2a1652` |
| 8 | `theorem` | [boundaryResidual_succ_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/boundaryresidual-succ-sub.md) | 66 | `result-track:e2564899a64b90be9e51e7dd94d4d2c00e914c0ec4d6e2d7df8122f70da5ad37` |
| 9 | `theorem` | [boundaryResidual_increment_product](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/boundaryresidual-increment-product.md) | 76 | `result-track:1899872452426184f587631a66fa0e130a26e7b8d20b4b07408b6de52bcae3aa` |
| 10 | `theorem` | [boundaryResidual_memLp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/boundaryresidual-memlp.md) | 90 | `result-track:b783842abd57f6c5055af7ce3197073cb72bb0c3e0689a073e821b3280826612` |
| 11 | `theorem` | [boundaryResidual_increment_product_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/boundaryresidual-increment-product-integrable.md) | 116 | `result-track:eee7fa060de7ed99ca8d4a5f9be60f9be1824649745215c1b44e4b72b4e25f21` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-9.md) | 137 | `declaration-track:effc9740dee0b1a7826d710eb6b05065b804329acc243c8b90d41ba796e419fa` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-5.md) | 141 | `declaration-track:a9969e2ef4a21b5e9f8d02794535a2b3bdea919240c69109f3df613d502e1504` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-4.md) | 145 | `declaration-track:7d6718d4f924a5df143d978e0d453a4cab2b43088a1d13dbfef1dff1f6a8e611` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-6.md) | 148 | `declaration-track:c3384e99df16c12beeb7f654654d29dc05f0ae908c66c1ad3c7a15404db2fc4a` |
| 16 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-2.md) | 153 | `declaration-track:73c283b00aa3289b66b2d0e0bec5053506edd778d90100b085446c14e074a9f3` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-8.md) | 158 | `declaration-track:de9facde8108e78d9511465eda0b788b5f0d62aa14d88c0fd159c350ca3dea1a` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-7.md) | 165 | `declaration-track:ca315d27ecca94200c7779460a38ef58e001f5ee0491821fde84f1074d2648e3` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example.md) | 176 | `declaration-track:334e6f151b1c3964b712f56399d3b7da7803b14890c39ec8a9e0f3646e42d47b` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CorrectedCutoffIncrementStatements.lean/declarations/example-source-edition-3.md) | 184 | `declaration-track:76f3850f8f2a3d4a04891bff5c6e5215d01c0d8bf92f016f81b0ac897d548336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d631867efb2f4b703cb79ce6d52eabb23e6128646d80214d29b1becd9c471d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementStatements/Variant5b269f3077c595f79646a52e8d3f1d6c5ca1fa1379294459124571a0397d0765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
