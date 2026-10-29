# Verification target: Attempt05 Cell Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1fa18913242a279ebc75c2d35e3ebde849b811f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant45872446eb449430e680b28a1a6fae0730b8561441af632c7750a8af22429f57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1fa18913242a279ebc75c2d35e3ebde849b811f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant45872446eb449430e680b28a1a6fae0730b8561441af632c7750a8af22429f57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant45872446eb449430e680b28a1a6fae0730b8561441af632c7750a8af22429f57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellkernel.md) | 13 | `declaration-track:54815b8b6f823596e04f0234faafbd840da2aa9e2b1066c118f2f0748022d6a3` |
| 2 | `def` | [cellDerivative](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellderivative.md) | 14 | `declaration-track:1c6a3eb22f0975eab39671e0a60ff0d0fe2c05faccc721510deffc9e0fb7fa66` |
| 3 | `def` | [derivativeMajorant](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/derivativemajorant.md) | 15 | `declaration-track:e5d7d84b4406ce131f009e3774bceddcf9f015a98d7792205e77557f4d232900` |
| 4 | `theorem` | [cellKernel_integrable](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellkernel-integrable.md) | 17 | `result-track:15140e2da308174acc7f8ba5834d666727dfa686dff4fb5df1851822125576ae` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellderivative-integrable.md) | 27 | `result-track:f7b006e39793d0fc8e525a297b49bfdf17f53304b767e797aaf7ca82970add18` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellkernel-hasderivat.md) | 38 | `result-track:cccc8f88ba4d01b0d3cfa2ccbb0eb34c2416ffaa91fa5f51e232ae2aa28896c9` |
| 7 | `theorem` | [cellDerivative_bound](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/cellderivative-bound.md) | 53 | `result-track:00910e93b1cb575dcf7de9390914449976c359bc3fbe81857ee4ca6afc019930` |
| 8 | `theorem` | [term_hasDerivAt](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/term-hasderivat.md) | 73 | `result-track:3648e493a36e53aa09412d210c2c1c9d90c555a579a726f32181fae21df0c430` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../MeasureAndIntegration/Attempt05CellKernel.lean/declarations/term-hasderivat-one.md) | 98 | `result-track:2ff739c9506dd107176989da966b506368fdfcac345ddfc617c1bff02a27c54a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beea4c441f606eb9c76c723d9be33b95ff4f84a306898409e3d0c2a873f58689 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant45872446eb449430e680b28a1a6fae0730b8561441af632c7750a8af22429f57.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant45872446eb449430e680b28a1a6fae0730b8561441af632c7750a8af22429f57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
