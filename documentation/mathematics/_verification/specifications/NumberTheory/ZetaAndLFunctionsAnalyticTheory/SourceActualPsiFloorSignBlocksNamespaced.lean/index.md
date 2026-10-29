# Verification target: Source Actual Psi Floor Sign Blocks Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b83d0d6aef024d0c4b94bd7822f7218e9499fad",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b83d0d6aef024d0c4b94bd7822f7218e9499fad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiFloorDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actualpsifloordiscrepancy.md) | 24 | `declaration-track:60e06a8fac07e23342d261e9e7603fbfa812cb53d332e7318242913c8c763bf2` |
| 2 | `theorem` | [log_sixty_lt_five](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/log-sixty-lt-five.md) | 26 | `result-track:adebc8156735d0d90b8abc0f0be5b9e68fb3616266a3bffa7262d3155f5d27f8` |
| 3 | `theorem` | [log_closed_nineteen_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/log-closed-nineteen-gt.md) | 37 | `result-track:ef77d1a484f50168f6d3af0f1e118ea254b0ffcec1dc8400cd8338b167d092dd` |
| 4 | `theorem` | [actual_psi_floor_on_six_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-on-six-block.md) | 55 | `result-track:f7e2f32c493632d76307ad46c68a55c6ae28d29fff0263361dbeaae1f657c7e7` |
| 5 | `theorem` | [actual_psi_floor_on_nineteen_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-on-nineteen-block.md) | 71 | `result-track:3a80bf9cde0502c517f72a060a110eeed1116c6e3e6cd14ad268b4d810538090` |
| 6 | `theorem` | [actual_psi_floor_negative_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-negative-block.md) | 88 | `result-track:b25a3c03ae3f388a180d1ff7e98538883295edbc4c54a0ee82dd864cbdd467c8` |
| 7 | `theorem` | [actual_psi_floor_positive_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-positive-block.md) | 94 | `result-track:a0124b23608570960595ef252cf2ccc0c3238dd38e2bb414b449505d50e11bee` |
| 8 | `theorem` | [actual_psi_floor_unit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-unit.md) | 100 | `result-track:02f1d75a01c44adc65a2edbeeabb65c29f282eeb893db9a24bf4bc511fbdd873` |
| 9 | `theorem` | [actual_psi_floor_not_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-not-nonnegative.md) | 106 | `result-track:f4822476c8f03610813a480d7f4008db1041ed7c3b31bf8f9550ce20b0494b41` |
| 10 | `theorem` | [actual_psi_floor_not_nonpositive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocksNamespaced.lean/declarations/actual-psi-floor-not-nonpositive.md) | 114 | `result-track:93ad4b685a17393788a42e1bc7da3ec24eb55ab4a27928986697e438d651983c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed55d418bebaa6eadd4a2454be8493a8f39279e3fa8ec436de97da7d8f250307 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
