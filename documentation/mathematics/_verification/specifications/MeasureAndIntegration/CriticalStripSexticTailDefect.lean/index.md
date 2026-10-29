# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "859b686b504c0960ca8aedcf3a49bbc6263371b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `859b686b504c0960ca8aedcf3a49bbc6263371b0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticKernelDefect`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSexticKernelDefect.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [defect](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/defect.md) | 26 | `declaration-track:673d30b24902a7ea9bcfd02be130a496028c73f93b3f988210c923698b0645bd` |
| 2 | `lemma` | [integrand_norm](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/integrand-norm.md) | 29 | `result-track:d11c08e3f017dba2316de4289db6cb785906b3255abe3c5c867e31bb35418122` |
| 3 | `lemma` | [defect_nonneg](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/defect-nonneg.md) | 35 | `result-track:5015db1beb8aebfa95af390ae4accb65d87d5fbb21eb9e50c4eb73f1543bbd1d` |
| 4 | `lemma` | [defect_integrable](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/defect-integrable.md) | 44 | `result-track:74dd7b21ab9add118f28c52e0777b98aec1aeefb64c243d2ef451989c25886e2` |
| 5 | `lemma` | [real_interval_of_tail](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/real-interval-of-tail.md) | 51 | `result-track:fc3e97a5a313c91093bb4455050068e243d48473b6778b8a340f5dc9220f0c92` |
| 6 | `lemma` | [defect_on_subcell](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/defect-on-subcell.md) | 57 | `result-track:9f9d96442358f94480cd8c8d06cdd9c22b031e0a9ae603e8be1d19e24666ca21` |
| 7 | `def` | [cellMass](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/cellmass.md) | 72 | `declaration-track:8152d76861e2c24c51bf9d439cb5f1767ccd63c279b65ac4fa3d56c41ac4ba8a` |
| 8 | `lemma` | [cell_power_integral](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/cell-power-integral.md) | 75 | `result-track:1c7854bf41d36d48ffe493304996a12b62939e5d2f92d19a11c72ef8732541e8` |
| 9 | `lemma` | [subcell_defect_integral](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/subcell-defect-integral.md) | 84 | `result-track:7665eafa3c24e0854aa371359e8ad7c932f4dff6f507d8bd68a3aa16d4f9d45a` |
| 10 | `theorem` | [rational_saving](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/rational-saving.md) | 106 | `result-track:af490a0d343db9d880e38cf387db4f4059ec8304e097a6e15df05dbb9a9f2a37` |
| 11 | `lemma` | [first_cell_defect_lower](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/first-cell-defect-lower.md) | 109 | `result-track:fbb80663d969c59ff5aaf8af885c5dd53804e664d2c9789f4e6345b9b0cd2080` |
| 12 | `lemma` | [full_defect_lower](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/full-defect-lower.md) | 125 | `result-track:cc7a110f87f146e80eb80173589d9722070e9f1a43a7bb573ae76a5456d7647f` |
| 13 | `theorem` | [first_tail_with_saving](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/first-tail-with-saving.md) | 153 | `result-track:2d0cb3188fcdd3d64918dd6f9421e490b8b02559dba7c452841022a83f7716d6` |
| 14 | `theorem` | [first_tail_improved](../../../../MeasureAndIntegration/CriticalStripSexticTailDefect.lean/declarations/first-tail-improved.md) | 171 | `result-track:32f65d653532e3d8354423b7508d8d424209d292e4e6e170c375ef690efcc44e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aad88a888637508b2be4530ddf844732194e289c35c40ececc149df7d83c809 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
