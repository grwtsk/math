# Verification target: Atomic Measure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4f5e915a81fe8287c6d8d5c5af0e034823cc87",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4f5e915a81fe8287c6d8d5c5af0e034823cc87`.

Source path: `GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomicMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure.md) | 33 | `declaration-track:915fa9fc4faec718529af8ef0d9dccdfa79ce77e25cd0876b0ad4d0baeb4378f` |
| 2 | `theorem` | [atomicMeasure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure-apply.md) | 39 | `result-track:e1b1d3a1c18fe96b60c818274a39b56bf47288288ef43d85d3c3c610dffa65bc` |
| 3 | `theorem` | [atomicMeasure_event](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure-event.md) | 50 | `result-track:4766583c730fe74a156e54c43aad721ac79c1090da30bb89d2cd1e3d1f1d2d29` |
| 4 | `theorem` | [atomicMeasure_univ](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure-univ.md) | 69 | `result-track:86d17a826c1d4812b2c0d3b430f0ef812dd05a9bc15afeea213de5d65d7557f5` |
| 5 | `instance` | [atomicMeasure_isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure-isprobabilitymeasure.md) | 75 | `declaration-track:60ba7109a6117bffefca9557b722ec890227e6e514c37f7a6082824bc97b39b5` |
| 6 | `def` | [mixedAtomicMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/mixedatomicmeasure.md) | 82 | `declaration-track:c9cc30400de63ca08ce506cee3e98eee43fd1e908fc8b1f436b9cd788cb164e4` |
| 7 | `theorem` | [atomicMeasure_mix](../../../../ProbabilityTheoryAndStochasticProcesses/AtomicMeasureNamespaced.lean/declarations/atomicmeasure-mix.md) | 88 | `result-track:9d94057a63739d0ef94666d42faf0cc5ae7ac9e369b854ac0b2265e285a014d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c1bc4d87a3a1a5729628f5114d065b10e0b0c8d67aaf586776fc4f0d2f2ca3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
