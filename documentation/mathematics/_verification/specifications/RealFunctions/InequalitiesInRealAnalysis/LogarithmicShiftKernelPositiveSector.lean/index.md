# Verification target: GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelPositiveSector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1905b4267d00b696ce5d9e787dbfa09fb49e5e4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/index.md) · [Full source](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1905b4267d00b696ce5d9e787dbfa09fb49e5e4`.

Source path: `GRWTSK/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileTailSigns`](../../../../../MeasureAndIntegration/CompactProfileTailSigns.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailReading](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/tailreading.md) | 21 | `declaration-track:ee39952a7517b0aa6812297ba6bee32fe0a78859a00e6a8d4401f88aab8195cc` |
| 2 | `theorem` | [tail_reading_strict_inside](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/tail-reading-strict-inside.md) | 23 | `result-track:ff27655eaeb725b25221bf94a4b637d5369ce3b48ef73cd4c0b46a380047448a` |
| 3 | `theorem` | [two_mem_inventory](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/two-mem-inventory.md) | 32 | `result-track:7263c670473c2891e717668bb9005b208c2157f276fec9a3f1177ceea940e496` |
| 4 | `theorem` | [higher_shift_above_support](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/higher-shift-above-support.md) | 39 | `result-track:7046768c2ba082e92823e73359c44329064509975554eec746d00c9a3b91c8da` |
| 5 | `theorem` | [polarity_kernel_tail_eq_atom](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/polarity-kernel-tail-eq-atom.md) | 50 | `result-track:c75c6fbe061380d9e5650532cc67bde5e5543075d5421f48450e2437304e9043` |
| 6 | `theorem` | [strict_positive_sector_of_tail_atom](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/strict-positive-sector-of-tail-atom.md) | 68 | `result-track:425905815cccfa4e3234d31b1d8fda33e7a586cb5de594924635da47246b4093` |
| 7 | `theorem` | [polarity_kernel_tail_pos](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/polarity-kernel-tail-pos.md) | 78 | `result-track:3a681e54fca507e1b042624020d29a2b78d3ec0017ec2067e084f57aa1d7460b` |
| 8 | `theorem` | [strict_positive_sector_nonempty](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/strict-positive-sector-nonempty.md) | 84 | `result-track:33333cad50a864803591939cd27f955a84384b0e910189da3d9d031fac4c889c` |
| 9 | `theorem` | [strict_positive_sector_volume_pos](../../../../../RealFunctions/InequalitiesInRealAnalysis/LogarithmicShiftKernelPositiveSector.lean/declarations/strict-positive-sector-volume-pos.md) | 88 | `result-track:71d2b1b488033d1d13409aa9a7f47bec69d966fd4e2236db5fcb846cb1c18210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef45af2d369dc5648f29caf529f3027ce2ae266b2969126a4474b16e7397827c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/LogarithmicShiftKernelPositiveSector.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
