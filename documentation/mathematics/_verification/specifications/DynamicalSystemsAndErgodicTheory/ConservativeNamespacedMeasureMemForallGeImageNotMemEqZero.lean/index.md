# Verification target: Conservative Namespaced Measure Mem Forall Ge Image Not Mem Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20226c202e555a3abbecd9acf0464ef7a31dd7aa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20226c202e555a3abbecd9acf0464ef7a31dd7aa`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Conservative](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/conservative.md) | 64 | `declaration-track:b1c52b9bc4aec7cdcab5f47812c265bda6d3fbda4630bac348e02dd53ef811e9` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/measurepreserving-conservative.md) | 70 | `result-track:f3f26929f0d78a311d97bcc7314c4ce0c387f14dba710d3b288a8afba08c7876` |
| 3 | `theorem` | [id](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/id.md) | 78 | `result-track:08ec05e77f71f1a6f279ebc3c73116bff4d6228ce698ca5f595108c8034a3c78` |
| 4 | `theorem` | [frequently_measure_inter_ne_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/frequently-measure-inter-ne-zero.md) | 88 | `result-track:3025295c2fe14e680d977ec091c2e9b91def49eae247a283f532d11928c68ef5` |
| 5 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/exists-gt-measure-inter-ne-zero.md) | 117 | `result-track:f4a6338c9ab758f8d974809c56c463022282ef67275d6eef427ac160f55bc78e` |
| 6 | `theorem` | [measure_mem_forall_ge_image_not_mem_eq_zero](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/measure-mem-forall-ge-image-not-mem-eq-zero.md) | 126 | `result-track:108c8abffeb0f88037c073cb64664d3647c8fc259a2c3314aeb5bd84869e53ed` |
| 7 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-mem-imp-frequently-image-mem.md) | 140 | `result-track:25145850a9c9e2ab66993f8b52df2aca7f7fce0212b80d16441ab92f4631a35b` |
| 8 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/inter-frequently-image-mem-ae-eq.md) | 148 | `result-track:f63035c4a9599338954e2ff05e6c0d56914558dc5a1d01080c862ad3f56b244a` |
| 9 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/measure-inter-frequently-image-mem-eq.md) | 153 | `result-track:af08067c141edc153034ee84a56e05ffd4fd1855e5ad791373e1970f2e767423` |
| 10 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem.md) | 161 | `result-track:d0bdbd51de755818cec490cc57aa66904d53a7033f8dc1b8b8edad045a8dbb6c` |
| 11 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/frequently-ae-mem-and-frequently-image-mem.md) | 172 | `result-track:9529521764603774e809562b031a96fd81bb46cc37ef78cd7d6028fd7137d669` |
| 12 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/ae-frequently-mem-of-mem-nhds.md) | 181 | `result-track:87ca099499093b8dff589273bb7a807e9e52da7700a2f445eef98fcb76691827` |
| 13 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/ConservativeNamespacedMeasureMemForallGeImageNotMemEqZero.lean/declarations/iterate.md) | 192 | `result-track:69f831c9c28e43aed8eb49a55f764d7a1748373700ceb27086282bb9dd53128a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b372d265a75ad1e605dad90fbdc62e601e054677ef1d8a68ae0b73db404c3a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
