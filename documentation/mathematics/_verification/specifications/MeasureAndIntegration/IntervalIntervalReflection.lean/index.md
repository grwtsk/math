# Verification target: Interval Interval Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50225caec668de8077d08e9c29dc719596d12165",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant56bc0ef401bd94944dc23e6caefd523aaf31ecba386f696c5578a18374065b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/index.md) · [Full source](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50225caec668de8077d08e9c29dc719596d12165`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant56bc0ef401bd94944dc23e6caefd523aaf31ecba386f696c5578a18374065b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interval/Variant56bc0ef401bd94944dc23e6caefd523aaf31ecba386f696c5578a18374065b69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalReflection](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/intervalreflection.md) | 20 | `declaration-track:2703da984793f675295b1fac0ad7e195f49a051f8c957210394712db2935c644` |
| 2 | `theorem` | [interval_reflection_involutive](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/interval-reflection-involutive.md) | 23 | `result-track:b07748e1f853e95b9d06e99bdb784465be5d7190f94d6abe0565a4c73470db92` |
| 3 | `theorem` | [interval_reflection_mem_Icc_iff](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/interval-reflection-mem-icc-iff.md) | 30 | `result-track:6e64efe3ffc8a8f02c7f556cfa9d00a5196ac4a52c280ddf2dbc005c71d21b25` |
| 4 | `def` | [evenPart](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/evenpart.md) | 36 | `declaration-track:699cfbe83ca6dc5e5a1b2e4a947fdac877d45504dd86b05c5c0252b090165c91` |
| 5 | `def` | [oddPart](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/oddpart.md) | 40 | `declaration-track:9ff007980c11cbdffc2ce36812642b900c7b0405e2ea4b942e4304ed2bd9600e` |
| 6 | `theorem` | [even_add_odd](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/even-add-odd.md) | 43 | `result-track:db288c737854b1202a4622ca0f384acbad96b0441eccd2026de4486b6990608b` |
| 7 | `theorem` | [even_part_reflection](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/even-part-reflection.md) | 48 | `result-track:b06253fb5f8224bcdd6429f5f7fac9b1c40575de6241157152006056d6364835` |
| 8 | `theorem` | [odd_part_reflection](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/odd-part-reflection.md) | 53 | `result-track:11aff08d82bce6d2b2b6f21702306d77682fa8a4bd62a316874c2d8d6b7e9dc7` |
| 9 | `theorem` | [integral_reflection](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-reflection.md) | 59 | `result-track:d76797eb8e3deed73eaa150adedc4843ea024cf5bb47c1778a1d9ffba3d9401f` |
| 10 | `theorem` | [integral_eq_zero_of_reflection_odd](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-eq-zero-of-reflection-odd.md) | 66 | `result-track:0945e5f14ec1a81ce635fd0db524d189a3ac11f4d216e748a10d69a81ccbf801` |
| 11 | `theorem` | [integral_even_mul_odd](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-even-mul-odd.md) | 74 | `result-track:69e563357b77d3ec7ebbf1221cf54723a724b2df06c8dc3004b720ce62135741` |
| 12 | `theorem` | [integral_odd_mul_even](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-odd-mul-even.md) | 81 | `result-track:4446b77ff322da7c0ade1925971695596acd4880251caa5b7b8a376121b1df14` |
| 13 | `theorem` | [integral_product_eq_signed_squares](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-product-eq-signed-squares.md) | 87 | `result-track:f14811207b9dc7fb39c9e8197f981f82ff4e939b6d31810e05e375fe0ec8bb16` |
| 14 | `theorem` | [integral_product_eq_even_add_odd](../../../../MeasureAndIntegration/IntervalIntervalReflection.lean/declarations/integral-product-eq-even-add-odd.md) | 103 | `result-track:daa9ef039e4ece7aef50137825a7ade45acbf775db6bcdb167ca6d30e378e7e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938b949763f07d82cf5ff5ec385f033221aefa876818d2bd51c29351d1dbffea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant56bc0ef401bd94944dc23e6caefd523aaf31ecba386f696c5578a18374065b69.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Interval/Variant56bc0ef401bd94944dc23e6caefd523aaf31ecba386f696c5578a18374065b69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
