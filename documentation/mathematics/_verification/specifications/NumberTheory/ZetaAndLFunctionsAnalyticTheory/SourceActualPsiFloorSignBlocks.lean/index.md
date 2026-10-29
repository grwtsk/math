# Verification target: Source Actual Psi Floor Sign Blocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd84bb1fd8c333df1f8159576f5433aa1fc979c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant64ed8d6ba85d5a61917ceda440536730824075296257b23aa9b8126a1c4297d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd84bb1fd8c333df1f8159576f5433aa1fc979c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant64ed8d6ba85d5a61917ceda440536730824075296257b23aa9b8126a1c4297d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant64ed8d6ba85d5a61917ceda440536730824075296257b23aa9b8126a1c4297d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPsiFloorDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actualpsifloordiscrepancy.md) | 16 | `declaration-track:770261c6082805764df3e6fd36f8a244b3d0b5d0a9bc1aea7d9434e3ad22383a` |
| 2 | `theorem` | [log_sixty_lt_five](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/log-sixty-lt-five.md) | 18 | `result-track:8e4a90232d907313983e5c31ccdb107daf6115ddb4f6b105b4a04b35180310a1` |
| 3 | `theorem` | [log_closed_nineteen_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/log-closed-nineteen-gt.md) | 29 | `result-track:4b5e54026f1c4be0447f8987d7c612423993f3a1ac6deac1ffd7ee4e68191066` |
| 4 | `theorem` | [actual_psi_floor_on_six_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-on-six-block.md) | 47 | `result-track:53de26d1926e751d1a4759835e38c19f9fa50f747708d77ca97742d9fa3c6c14` |
| 5 | `theorem` | [actual_psi_floor_on_nineteen_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-on-nineteen-block.md) | 63 | `result-track:e54bb513a5c808fdd52249f4514602b94c493df92ec833ecdc8be7e27efcd342` |
| 6 | `theorem` | [actual_psi_floor_negative_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-negative-block.md) | 80 | `result-track:06d7bbf0561d1cd9b91cc4621e852f2ba95a3a385ecd67de35eb1c9524d52105` |
| 7 | `theorem` | [actual_psi_floor_positive_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-positive-block.md) | 86 | `result-track:ae135e517a43569dd429eed7f594fab430d9b833c83867db7b50d5c2c501caab` |
| 8 | `theorem` | [actual_psi_floor_unit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-unit.md) | 92 | `result-track:aec83c702cba0ef3014b802d0c9a71500a8ddbc9e56e7cbca6b880b239c38599` |
| 9 | `theorem` | [actual_psi_floor_not_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-not-nonnegative.md) | 98 | `result-track:7bc43125b835bb2d5bfd246b4f059809f4329724b1fe470412164debdce490b0` |
| 10 | `theorem` | [actual_psi_floor_not_nonpositive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualPsiFloorSignBlocks.lean/declarations/actual-psi-floor-not-nonpositive.md) | 106 | `result-track:75c1a4a0819561abd210836cdc2318fcc840fa963f2d899e019d01e45433d096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=774fac03ef503f25055bfd7932f5d55cc4388d5ee09c313e7f3bc22b50e64418 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant64ed8d6ba85d5a61917ceda440536730824075296257b23aa9b8126a1c4297d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant64ed8d6ba85d5a61917ceda440536730824075296257b23aa9b8126a1c4297d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
