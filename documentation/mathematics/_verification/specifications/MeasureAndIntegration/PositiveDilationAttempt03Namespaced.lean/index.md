# Verification target: Positive Dilation Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5fcefb85b7f50e01f7ac0b3aa8e7ae69f141fe",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant5cb5664f9811f9117c81d15f7244af978b3f2cfff9f07ed67de8d185181577e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5fcefb85b7f50e01f7ac0b3aa8e7ae69f141fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant5cb5664f9811f9117c81d15f7244af978b3f2cfff9f07ed67de8d185181577e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant5cb5664f9811f9117c81d15f7244af978b3f2cfff9f07ed67de8d185181577e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/positivemeasure.md) | 22 | `declaration-track:a6001c3c0f466f3afd244590ad804cb693438d779cae19edca9ddfd2a85e017f` |
| 2 | `abbrev` | [PositiveL2](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/positivel2.md) | 23 | `declaration-track:377998a8adfef7c7903f36fe35e16bc574a27418e1c6542fbd3354ab389c6d99` |
| 3 | `def` | [dilateFunc](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilatefunc.md) | 25 | `declaration-track:eb1ba431c82215e5b20e6edd6f30be8f138278f39bffc0b913334fdd0623d8a4` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/positivemeasure-map-mul.md) | 27 | `result-track:5090f0da53da29a9588963090bdd7a9617290879ee6a7590beb0082c08c80f9d` |
| 5 | `theorem` | [positive_mul_quasi](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/positive-mul-quasi.md) | 36 | `result-track:79e0af5726e908a687a39da6007220a167cb9dee9f8b5d3b23e55b9ae8161227` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilatefunc-memlp.md) | 42 | `result-track:b76834b1d70079f54024afaaa53a0f8621b8aef800bf340c5c4c5d6136a36986` |
| 7 | `def` | [dilate](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate.md) | 49 | `declaration-track:604732cf9d2402d0b610647684e6e065a9a0d09b041b364533937cbea92e8f58` |
| 8 | `theorem` | [dilate_ae](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-ae.md) | 52 | `result-track:e36ea6b9067e14c7d28f7792b5231aa6fdaebd4266277b90df8cffba372b2fec` |
| 9 | `theorem` | [norm_sq_integral](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/norm-sq-integral.md) | 56 | `result-track:d4f774859f80c58d7eb8f3e0a4d2c00a4e38bf2689597751f2cefb833259c237` |
| 10 | `theorem` | [dilate_norm_sq](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-norm-sq.md) | 71 | `result-track:f2aef7460e20a0e2c1fa13bc572eb4034b20f048867fe30a5e09e4d9f5673f43` |
| 11 | `theorem` | [dilate_norm](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-norm.md) | 85 | `result-track:6bb145180b953eded024dd1d1cdc04955f48a6c7fe4337b122bc92c2becd259d` |
| 12 | `theorem` | [dilate_one](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-one.md) | 88 | `result-track:0034113babcd63874fb5700ab81d7b04a54c8d030fabaeb5cc50bb8e968bce21` |
| 13 | `theorem` | [dilate_comp](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-comp.md) | 93 | `result-track:ff0200a93aafce84f2d548067996ed06458f40cf161bc2193aedafde9158731e` |
| 14 | `theorem` | [dilate_inverse](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-inverse.md) | 105 | `result-track:6d96c0738267bd181d8827f86dd1822383388026b441dec73492cf12ffa88938` |
| 15 | `theorem` | [dilate_add](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-add.md) | 110 | `result-track:8aaa2728cd843a868856434280bb0b70912a5f6e274aa75873629ade2f1615e5` |
| 16 | `theorem` | [dilate_smul](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilate-smul.md) | 120 | `result-track:6c0828cbdd46e4c73f27429b5217f245c07d6cec7069435bb4ba91f9453b9519` |
| 17 | `def` | [dilationIsometry](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilationisometry.md) | 131 | `declaration-track:694f00a4fbb26c8259dced556747e7761dc1408b688f4cabd327f2cbb0d1c23f` |
| 18 | `def` | [dilationEquiv](../../../../MeasureAndIntegration/PositiveDilationAttempt03Namespaced.lean/declarations/dilationequiv.md) | 137 | `declaration-track:595447d17e704bba9bbcee0ab87fcde1655e1c6ed6d5eae5f8929206c1375ffb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f54d061cbe2d3f522805ca497d3d65ecd2b8024633583ebf377442bc2de1d201 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant5cb5664f9811f9117c81d15f7244af978b3f2cfff9f07ed67de8d185181577e5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PositiveDilationAttempt03/Variant5cb5664f9811f9117c81d15f7244af978b3f2cfff9f07ed67de8d185181577e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
