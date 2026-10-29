# Verification target: Source Actual Critical Edge Sector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "890725f2a956f34d242529a04bb7b1180124a60d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant9ef80aaf9631c1b02a679d30bd4f5f33786c63b804f7eee8fbcd9f157c030cc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `890725f2a956f34d242529a04bb7b1180124a60d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant9ef80aaf9631c1b02a679d30bd4f5f33786c63b804f7eee8fbcd9f157c030cc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant9ef80aaf9631c1b02a679d30bd4f5f33786c63b804f7eee8fbcd9f157c030cc7.lean.json)

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
| 1 | `theorem` | [edge_coordinate_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/edge-coordinate-bounds.md) | 25 | `result-track:8a3d439694d983d87dab43fd6c7befbfe805ea63e4221abee28e233c6bcfa9d0` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualendpointpolynomial-edge-lower.md) | 35 | `result-track:6e0b17488a351d149c162d46172e251b9a104b32651fc2e5b92b260a93270420` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualendpointderivative-edge-lower.md) | 60 | `result-track:86b8be571efe500f7d4b6f313f92e5c956d9e363447b31eb83f3c52453be219e` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualendpointcritical-edge-upper.md) | 100 | `result-track:5cfe105c71d16514bcc8c0e164048801d71263b558f943696934b78ce1f4336c` |
| 5 | `theorem` | [overlap_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/overlap-moment.md) | 110 | `result-track:33e00817c39a380885db83bbdc5228e88d7e96f3fbad960ae56485fe403676be` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualcriticalkernel-edge-upper.md) | 124 | `result-track:d53e6cbd28b9a9c0bbb669b8414f79f8450f56157651873df1583df5c8141f81` |
| 7 | `theorem` | [critical_kernel_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/critical-kernel-continuous.md) | 186 | `result-track:14623c7e660751583f7d5ad1d0bf550e230272dcf1d445fd0d9fa0952bf50827` |
| 8 | `def` | [actualUpperEdgeContinuousDrift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgecontinuousdrift.md) | 202 | `declaration-track:992d67b05f2f71e1fb9b7e849e529fbc72a1d0a69c682ef8b900f5aa8f7d5723` |
| 9 | `def` | [actualUpperEdgePrimeJumpCompensation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgeprimejumpcompensation.md) | 208 | `declaration-track:c777da07cc44c11354dcd47278fdffcbb9e6242f2bff223204dc49592f7edf0d` |
| 10 | `def` | [actualUpperEdgeMovingWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgemovingwork.md) | 216 | `declaration-track:bfeb879bd8550fd4f438335e7f59b12c7519ff39c41ddc0af115a83f6a854f8d` |
| 11 | `theorem` | [actualUpperEdgePrimeJump_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgeprimejump-intervalintegrable.md) | 222 | `result-track:40b06580a06f89f0a2f613a4d15b764769b129bf9f82e0cb7a876da3abb5c2bd` |
| 12 | `theorem` | [actualUpperEdgeMovingWork_eq_drift_add_jumps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgemovingwork-eq-drift-add-jumps.md) | 251 | `result-track:7c4e35c3e822ffe6e27642b1e1f5e6d3af24fcbcb7323608febab6cb910013cb` |
| 13 | `theorem` | [actualUpperEdgePrimeJumpCompensation_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgeprimejumpcompensation-nonneg.md) | 270 | `result-track:cbd2e4bb48126073130ea2bf24f070be2d65c5275450868b34a15125ad7ab28a` |
| 14 | `theorem` | [actualUpperEdgeContinuousDrift_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualCriticalEdgeSector.lean/declarations/actualupperedgecontinuousdrift-upper.md) | 297 | `result-track:e6a993e7358a588c629691f637db92b5b73ead664bdb7f04fb0fc6aabadf8ca1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4f97a5e3d58ab5f248e94baa7e64cd092e3b84f8080288186b48aee696011f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant9ef80aaf9631c1b02a679d30bd4f5f33786c63b804f7eee8fbcd9f157c030cc7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalEdgeSector/Variant9ef80aaf9631c1b02a679d30bd4f5f33786c63b804f7eee8fbcd9f157c030cc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
