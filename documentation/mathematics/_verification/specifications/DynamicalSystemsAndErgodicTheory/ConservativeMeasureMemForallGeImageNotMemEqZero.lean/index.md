# Verification target: Conservative Measure Mem Forall Ge Image Not Mem Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afbae1cda770943e280ecd4c3d7c776077f7392a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afbae1cda770943e280ecd4c3d7c776077f7392a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Conservative](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/conservative.md) | 56 | `declaration-track:bd2d97d35f7e8269e94469fe760fb411ece7d01969f8c06a1c2fd41ab50f1712` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/measurepreserving-conservative.md) | 62 | `result-track:d46e8d22eb0f943dd159f92fb7a0d9e7d36df55963f4de9a6c8a55c5a5303938` |
| 3 | `theorem` | [id](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/id.md) | 70 | `result-track:eb76d931c6e3522855f92e5b29e9460ae7f881fd5e466b4fb0520fb076258e6f` |
| 4 | `theorem` | [frequently_measure_inter_ne_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/frequently-measure-inter-ne-zero.md) | 80 | `result-track:6df932344d51b6ee03a4e0b624e26ef6c5bab0b56d348b0f97f804d1b7ec5768` |
| 5 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/exists-gt-measure-inter-ne-zero.md) | 109 | `result-track:a9876929aaa02e9d791e86d6474ded4d4fa58a50dc6dd3f7578623507c399226` |
| 6 | `theorem` | [measure_mem_forall_ge_image_not_mem_eq_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/measure-mem-forall-ge-image-not-mem-eq-zero.md) | 118 | `result-track:97e750db47eb6a06bfeb54f84445c2aa6dee641c66e76934862360dd677c227b` |
| 7 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-mem-imp-frequently-image-mem.md) | 132 | `result-track:09c74cfe38d3f6be518ef8be5718a3e1eabc4bc8c6cac58e6f5d39b054bad8f8` |
| 8 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/inter-frequently-image-mem-ae-eq.md) | 140 | `result-track:0ec18f62cfa8019d5be639192cc769f7928c55b3d6dd5a1424007514a4eb8885` |
| 9 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/measure-inter-frequently-image-mem-eq.md) | 145 | `result-track:e01ed28e8e85fb9e6ee3ae3b83d2ca27611bd62e747cbe77c074382fc60be8fd` |
| 10 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem.md) | 153 | `result-track:ecda438ea1b73ffed727ae8ca3b97daf12742b89acf41b197cb99a022ac4d0b8` |
| 11 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/frequently-ae-mem-and-frequently-image-mem.md) | 164 | `result-track:47d92056111e6b6cfb55bc72bb1be936f0299094eb7209a46d23f508c04bd9e3` |
| 12 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-frequently-mem-of-mem-nhds.md) | 173 | `result-track:46eda4bf588d01ea020c09b095dd6f3397a363ba309ba5d1600708fa89b8700f` |
| 13 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/ConservativeMeasureMemForallGeImageNotMemEqZero.lean/declarations/iterate.md) | 184 | `result-track:59277424e043ef98c3de1583d3659d3f6e7903b31eee230b06f5c3cc9e1b4727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36178cd46750ed451d5f4dbf34606e88e28c3aede83bddc0b081cfadb3216d1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
