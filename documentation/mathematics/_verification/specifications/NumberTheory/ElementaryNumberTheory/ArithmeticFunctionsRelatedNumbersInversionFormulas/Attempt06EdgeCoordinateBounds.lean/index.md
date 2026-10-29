# Verification target: Attempt06 Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de21df3c388d76f80d0b60f3337d6bdc373da706",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de21df3c388d76f80d0b60f3337d6bdc373da706`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean.json)

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
| 1 | `theorem` | [edge_coordinate_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 25 | `result-track:3406c47607fc20b1110e02bfd357f0904c8c7be5bcbfc3d62d341aad61345ff8` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 35 | `result-track:58701f373632d776200565aff824b19b89f92f2c84ae4e49877df384bb5cf4c0` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 60 | `result-track:9c706944bcb48d012031e9e78a601d0af6c057e2d24cc388807684b501c3ede5` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 100 | `result-track:14d02a6da25a6980104451c26b4d853a7720afbe4019c4adea65291cc9fd5c1f` |
| 5 | `theorem` | [overlap_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 110 | `result-track:3e7f98a181863f1ee63e9f49c81d18f917f9c41c5909aad895d82267d7c5c148` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 124 | `result-track:d36e53f5b434d07b3d2e4bb9ccdf4dd72342e7b2e08dfacaf6ed4b4738a33d5e` |
| 7 | `theorem` | [critical_kernel_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/critical-kernel-continuous.md) | 186 | `result-track:fb195d9fd27e55747d540f23958cb52bcd9b9d54171554ee1aecead801cc582b` |
| 8 | `def` | [actualUpperEdgeContinuousDrift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgecontinuousdrift.md) | 202 | `declaration-track:168805e7a111ed4e8b1589d5521443903d7377e84d85f9febe0e4a111e8d507e` |
| 9 | `def` | [actualUpperEdgePrimeJumpCompensation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejumpcompensation.md) | 208 | `declaration-track:4b6513473905bf32b5f355e16cec0421071315648df51d48a939abcbbcd09b0b` |
| 10 | `def` | [actualUpperEdgeMovingWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgemovingwork.md) | 216 | `declaration-track:dfb2e21429f11b8a6f07956cbb48bfcf73f270de1849b7928df84cfbb6bb9f04` |
| 11 | `theorem` | [actualUpperEdgePrimeJump_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejump-intervalintegrable.md) | 222 | `result-track:a7825911740d001195426db4824f04496b57874140b0346e87f63419ccc4aa77` |
| 12 | `theorem` | [actualUpperEdgeMovingWork_eq_drift_add_jumps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgemovingwork-eq-drift-add-jumps.md) | 251 | `result-track:f4cf3e51e9d7762aff53e1d3e1a8a58480669dcba33ad8a91bc010775f8f4038` |
| 13 | `theorem` | [actualUpperEdgePrimeJumpCompensation_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgeprimejumpcompensation-nonneg.md) | 270 | `result-track:6c7e2c9650a14e6f26c3458833f80b48a648c56bbbbc5067f6ca494d6accfcf0` |
| 14 | `theorem` | [actualUpperEdgeContinuousDrift_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt06EdgeCoordinateBounds.lean/declarations/actualupperedgecontinuousdrift-upper.md) | 297 | `result-track:94726936d99a1786690d25eb3d9d037192f8d05709a1640b3602c1830df7caa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d50f6229831c4356ae4c6e4800446dba1b3a615e76eb78c21ae5695e710af9a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant212b93b5fb8ab956c58b4abdf335d6c0571bb62fd17aa4766a5ab658ecf3591f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
