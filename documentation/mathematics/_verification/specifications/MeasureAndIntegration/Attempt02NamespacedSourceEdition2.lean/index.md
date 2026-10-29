# Verification target: Attempt02 Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1475bb2134e1d7be19d1499fd8b5f90b566794f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1475bb2134e1d7be19d1499fd8b5f90b566794f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/poweronset.md) | 25 | `declaration-track:bb7ef61e1a7a75255781676025ccc5de10d9b4954a051966653d6dd868c70176` |
| 2 | `def` | [powerWeight](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/powerweight.md) | 28 | `declaration-track:d4d27e7216f64a6a24644e45bb5440df6a443d2c2b421b5a0568dd7f6ee5cdca` |
| 3 | `def` | [positiveOnsetAtom](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom.md) | 31 | `declaration-track:04730f296b9d00d0c8e370e627171b736f3f75aebe2d5f6f7f61766be9bef5e2` |
| 4 | `def` | [positiveOnsetTail](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsettail.md) | 34 | `declaration-track:6fdc88d64f061c5e281b46f49ec2fe3ad7e8ff5438a652edf246f8bce32aeb23` |
| 5 | `theorem` | [powerOnset_pos](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/poweronset-pos.md) | 37 | `result-track:43c305f0512d6073da077bc29540576dc687aa66cd4d30415828df425782bbd1` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/powerweight-nonneg.md) | 41 | `result-track:46767a01d72c03a42c60aada0d0333854b5b22227bb5d6d134f42465edc32b20` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-nonneg.md) | 46 | `result-track:77a21692e7dae7fffd3e48e8fb143f72a9cc0f29f19232e37979730fa38409bf` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-measurable.md) | 50 | `result-track:0bd403c65974d7963cc97dcbb1bdfd6bc8560e4c1ae2f0ab0df31334eafe4936` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-integrable.md) | 54 | `result-track:0614594f42cc2e21173818b2acec14c4b78b3e3946dcb4c8667b11d6642bf189` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-integral.md) | 61 | `result-track:83cbd07058c178f9d1af410410c6c7c9787a7e1a7d254133452bef5956d18836` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-eq-omitted.md) | 69 | `result-track:2b46d53a464098faf1bfc0cefc281097dce465e1b60b3b5452cd7e7850fae78f` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsetatom-le-zeromoment.md) | 77 | `result-track:438f5f2b36f855f6b661ce2d32a4342a7ce980dcdf1eed950eec068293bebc9b` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsettail-summable.md) | 84 | `result-track:7e0cb2de5826b83649b8b9be07628f2735d64c701c535e28c19dd8b55a394c38` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsettail-nonneg.md) | 89 | `result-track:043810d23affd0dc130abff60ed0b59cb7ea60a29a46d04947ca27047c93db0c` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsettail-measurable.md) | 92 | `result-track:e61fbc69e2701bb1b4cee89bcb70f8597194a73ea03c71317436d5afcd3de582` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../MeasureAndIntegration/Attempt02NamespacedSourceEdition2.lean/declarations/positiveonsettail-eq-indicator.md) | 95 | `result-track:af6d0131b3291dee3c2876fb654307f4dbf9635e22fc98391b1b4963a36a5e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3456a5ffe1b2f0a623238b01ed3bfe45c0ec947bd5c8a6d5c9edc358b6fa0956 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
