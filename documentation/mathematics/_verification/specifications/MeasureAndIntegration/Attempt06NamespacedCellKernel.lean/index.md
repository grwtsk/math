# Verification target: Attempt06 Namespaced Cell Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a9e84fa1acbcece9352cf741ff74412100b4d48",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a9e84fa1acbcece9352cf741ff74412100b4d48`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellkernel.md) | 21 | `declaration-track:288fc01274538a23ec6b0fe6e7b92c2cecd6ba7bd9dab15c24595a3a03867c4e` |
| 2 | `def` | [cellDerivative](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellderivative.md) | 22 | `declaration-track:de6d4bbef4d8e90c4811df0747bbe01004d303e1d0bbca83532481b663f1b235` |
| 3 | `def` | [derivativeMajorant](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/derivativemajorant.md) | 23 | `declaration-track:4489993db953a507a43ef4faa2d56981591bb8bbf829ebf7aa663b9f934f03d6` |
| 4 | `theorem` | [cellKernel_integrable](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellkernel-integrable.md) | 25 | `result-track:64b57d186ebcdebe56a64ada4bb3ef71d2d73f84e702c77702f228d0f652c745` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellderivative-integrable.md) | 35 | `result-track:2bccb0d14294fad78946503bc7e46a9b9f0ea0a51a5e604785782f943e978380` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellkernel-hasderivat.md) | 46 | `result-track:de21b42322c4a6fc711b065460b66efbda3fb93375f619a27cfac833bb31a02a` |
| 7 | `theorem` | [cellDerivative_bound](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/cellderivative-bound.md) | 61 | `result-track:4e91e0bcf644fbb6fc8440cecbb146a4cf93dfafc9809d847fd73663959b4361` |
| 8 | `theorem` | [term_hasDerivAt](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/term-hasderivat.md) | 81 | `result-track:fbcf3776ca70bc0606d555fdd7ed2b232d6fa07f83149b2b05fd8656b3f482cf` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/term-hasderivat-one.md) | 106 | `result-track:9695101b2ee4f7741146aa0bca39f2aa90ee18c671a6c58018c3249ed171a252` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/derivativemajorant-nonneg.md) | 112 | `result-track:d34a7f2efc04f9be272a2d4246592718b66146c8f23a3fca5f93fc06d9720768` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/derivativemajorant-le-pseries.md) | 117 | `result-track:f0a845ead120bde7e685487dfb6a5612d0f83fe89e5d03971010bdb45590d44e` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/derivativemajorant-summable.md) | 139 | `result-track:1a15cfc0ade1cd72f60d936acf5f88134191648b06f06edb230256686e6aa804` |
| 13 | `def` | [termDerivValue](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/termderivvalue.md) | 147 | `declaration-track:d1547d83c3cd27513d361c34c04a1087ac419c360f2cb4a094a58f32d2a605a3` |
| 14 | `theorem` | [termDerivValue_bound](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/termderivvalue-bound.md) | 150 | `result-track:4977cb6e9cf7bf730ddc037658d9b1b4858c02f49090e1d639d6257823f3d8b8` |
| 15 | `theorem` | [termDerivValue_one](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/termderivvalue-one.md) | 159 | `result-track:73fcc718f179c31a865c039afe394283ea60daf3eb2f3769f1683052e49644c3` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/termtsum-hasderivat.md) | 163 | `result-track:1dd80d5798d84d605b6d1311d69d569eb8a4a94c2d12cbd2dd7192e9b0923f20` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../MeasureAndIntegration/Attempt06NamespacedCellKernel.lean/declarations/termtsum-hasderivat-one.md) | 171 | `result-track:d5b40e0b37a88b39152011e798d178937692015deedffd7204c4e5da75f23237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb514c6de263d35e58533a4b7d0f7de2800cccf2005cbe258f15ac4e2014249a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant3831e1b32d49e6ae88ffaf8c716c0c0f66ee5d352f55accd87e17c8491f3c550.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
