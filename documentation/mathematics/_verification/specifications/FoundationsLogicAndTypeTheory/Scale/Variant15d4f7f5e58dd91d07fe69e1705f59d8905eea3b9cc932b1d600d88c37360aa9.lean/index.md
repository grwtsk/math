# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Scale.Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5005dd72bb78b0325086880f162157f1ec3eb1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/index.md) · [Full source](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5005dd72bb78b0325086880f162157f1ec3eb1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ScaleWindow](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/declarations/scalewindow--bb3f6246528498266990a0df.md) | 22 | `declaration-track:bb3f6246528498266990a0df03c3c4a40250a7183f029288cfee9a08a7cfa2d2` |
| 2 | `theorem` | [ScaleWindow.coarsePositive](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/declarations/scalewindow-coarsepositive--e8432536545dc18d5a121441.md) | 28 | `result-track:e8432536545dc18d5a121441435bcddc29e9c69cbea0542d53ed700c6c22b163` |
| 3 | `theorem` | [ScaleWindow.fineNonnegative](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/declarations/scalewindow-finenonnegative--1b8f46c6b2d107026301d54d.md) | 32 | `result-track:1b8f46c6b2d107026301d54d8fce2efbb7b945659a4a0c44b15deffa91fc766b` |
| 4 | `theorem` | [ScaleWindow.coarseNonnegative](../../../../../FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean/declarations/scalewindow-coarsenonnegative--15bb7ea2efb0bbd8420a1daf.md) | 36 | `result-track:15bb7ea2efb0bbd8420a1dafbc61ad1fdac2f84b2692a04b3c95c08c5f636b0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2fcd7b6a3150fe2f0bca32957e8a8680a5c4f0e39826e9cc06343006461f97e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Scale/Variant15d4f7f5e58dd91d07fe69e1705f59d8905eea3b9cc932b1d600d88c37360aa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
