# Verification target: Attempt05 Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f3d4a19bc2cbff578dc0cd317bcb84a7660f07",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f3d4a19bc2cbff578dc0cd317bcb84a7660f07`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualMovingCriticalIncrement` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualEdgeCorrelationDerivative` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edge_coordinate_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 25 | `result-track:666e56c5b20840f038467ddffd37d15adc23cd9b0897f2c6f7944ec5efe93626` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 35 | `result-track:f9e3b3254cc2ec2c560eec055cbfeea3dd31c94fe54febb66ffb88330dee86c4` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 60 | `result-track:26f30e49d19be826f8875563a36f9b0365f2e736dc794b7e8233cd51a3fb0b75` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 100 | `result-track:5c29f3357f97da0dba2110a82211095d44e4136890be0b5f7ec28d66c079e01b` |
| 5 | `theorem` | [overlap_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 110 | `result-track:ec454bff8196a68ef3fcf88a5c4e3e16cc2140811b770357ba32738dcd64de63` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 124 | `result-track:c6e8b6f83e0c84422d1597a1559bd44fc3aee22aedb483452c9c097f952e67f9` |
| 7 | `theorem` | [critical_kernel_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/critical-kernel-continuous.md) | 186 | `result-track:66dcae5db77e0a5ee7bf6f9ce3f747720cee2f9b211331a96954de4530eec275` |
| 8 | `def` | [actualUpperEdgeContinuousDrift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgecontinuousdrift.md) | 202 | `declaration-track:c805b683d466bb252b398e4fcf6410e5c858fbd01f893de593b4a834e81358ab` |
| 9 | `def` | [actualUpperEdgePrimeJumpCompensation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejumpcompensation.md) | 208 | `declaration-track:bc595d0878a7afb1dcfc654e4d2facf9d0a358ccb01001f7e5e1631959291b38` |
| 10 | `def` | [actualUpperEdgeMovingWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgemovingwork.md) | 216 | `declaration-track:23fe0e4f84f441af1694aed15ff5662fe965aa78c6f869bbeaddd94dbfca33cd` |
| 11 | `theorem` | [actualUpperEdgePrimeJump_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejump-intervalintegrable.md) | 222 | `result-track:d49ca750f5740a2e246fdadf3cd526573180c65c16eef1200b8b2558d8b93205` |
| 12 | `theorem` | [actualUpperEdgeMovingWork_eq_drift_add_jumps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgemovingwork-eq-drift-add-jumps.md) | 251 | `result-track:24fa2133038f4f7beffc88a4b5d16005ae387074c184f7c8f53dfdfba58b6a60` |
| 13 | `theorem` | [actualUpperEdgePrimeJumpCompensation_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejumpcompensation-nonneg.md) | 270 | `result-track:85f61b5164d6caace42b228d50a05b5851205e8a3a300edf7f1a48d161b11c06` |
| 14 | `theorem` | [actualUpperEdgeContinuousDrift_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt05EdgeCoordinateBounds.lean/declarations/actualupperedgecontinuousdrift-upper.md) | 297 | `result-track:58c0ef83404b65fd2b064d06c699fb95a0e02b3e7157908ee0a07cc70fb7389f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffcb021874d92b22f920950467b389e7f0862fcdadef31a8374c0ca8fcf9400c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant1c8fa2632a60ba9fe5f211cfb85eb2efa43a18d217617ceebe1feb34322adf66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
