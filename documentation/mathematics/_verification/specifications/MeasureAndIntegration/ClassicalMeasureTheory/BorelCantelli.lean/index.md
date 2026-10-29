# Verification target: Borel Cantelli

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "929acc3d97a687a9a1053471fcc0cbbc36f28baf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant1dbb55ebc78506595d3cf36ca1ad539e54abec685c5d4d292471a2f1e1114ae8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `929acc3d97a687a9a1053471fcc0cbbc36f28baf`.

Source path: `GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant1dbb55ebc78506595d3cf36ca1ad539e54abec685c5d4d292471a2f1e1114ae8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BorelCantelli/Variant1dbb55ebc78506595d3cf36ca1ad539e54abec685c5d4d292471a2f1e1114ae8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.AE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_limsup_cofinite_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/measure-limsup-cofinite-eq-zero.md) | 41 | `result-track:94d4c0e39b8b7646216a5a73f25981fe0bfee32834f2ec8b98f5ca0278e9234d` |
| 2 | `theorem` | [measure_limsup_atTop_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/measure-limsup-attop-eq-zero.md) | 58 | `result-track:6e3f818e8a6424191477d29fecd300899fc97c9fd95a8fa84fb9d595ed2e7c40` |
| 3 | `theorem` | [ae_finite_setOf_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/ae-finite-setof-mem.md) | 66 | `result-track:2d7c711db3f48f32d17b1d3c9139cf6f8220449778bc4f144e357ec8e3f51e3d` |
| 4 | `theorem` | [measure_setOf_frequently_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/measure-setof-frequently-eq-zero.md) | 75 | `result-track:644676bd2c5918bafeb06dd34f5b95d2747c3760e515c3b37bb583eab243d4d0` |
| 5 | `theorem` | [ae_eventually_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/ae-eventually-notmem.md) | 82 | `result-track:c62cf35ca554d0f0a1cb691f9c75b7a5d4dd975ec455db3226d150341b09cfa8` |
| 6 | `theorem` | [measure_liminf_cofinite_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/measure-liminf-cofinite-eq-zero.md) | 88 | `result-track:3d0607056cc3ae84038297da1a2b1aced30da23847c2f06b2c56dd5536dac0a6` |
| 7 | `theorem` | [measure_liminf_atTop_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/measure-liminf-attop-eq-zero.md) | 93 | `result-track:3851dcd3d0a6f4e4776000f1047679c0ee484acd77e2d348d459a9d2a8c81440` |
| 8 | `theorem` | [limsup_ae_eq_of_forall_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/limsup-ae-eq-of-forall-ae-eq.md) | 99 | `result-track:1b89386232e209b3a34d00683dbf7934f82d7b840622fd3dfcd264bd6bea4c19` |
| 9 | `theorem` | [liminf_ae_eq_of_forall_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelCantelli.lean/declarations/liminf-ae-eq-of-forall-ae-eq.md) | 106 | `result-track:eb0f4491e928f3abaf892e818eb3f28c75b595dc4647a4a78aa1c156a18d62be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddab6a10192d53cbb4ff7e3d30604a4aac186da125c42d35cfc2a9ac800c1f7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant1dbb55ebc78506595d3cf36ca1ad539e54abec685c5d4d292471a2f1e1114ae8.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/BorelCantelli/Variant1dbb55ebc78506595d3cf36ca1ad539e54abec685c5d4d292471a2f1e1114ae8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
