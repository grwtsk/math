# Verification target: FDeriv Analytic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb79c85afa1487dcea5bd7353b29b46a8c3f6b12",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb79c85afa1487dcea5bd7353b29b46a8c3f6b12`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiffDef` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFPowerSeriesAt.hasStrictFDerivAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-hasstrictfderivat.md) | 44 | `result-track:e356cca772b8cd941296f8678d65840a49d201197cdaf6085f6b1bb137ea62e5` |
| 2 | `theorem` | [HasFPowerSeriesAt.hasFDerivAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-hasfderivat.md) | 52 | `result-track:1de8a49f067b1e453baef0bc15e2af6456906c65c20114c9228d51e666945586` |
| 3 | `theorem` | [HasFPowerSeriesAt.differentiableAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-differentiableat.md) | 57 | `result-track:407a9548da800459d11efc1323d6ccfb7978c751852aa74eb91485815028deed` |
| 4 | `theorem` | [AnalyticAt.differentiableAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticat-differentiableat.md) | 61 | `result-track:93af4df248c912d59bbdb3944007201ca5e3d70e585775738c072c6ffecabbf2` |
| 5 | `theorem` | [AnalyticAt.differentiableWithinAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticat-differentiablewithinat.md) | 65 | `result-track:9664009ca2904996812a3e742da72aacf26041520eed415ddaa7bc568586117a` |
| 6 | `theorem` | [HasFPowerSeriesAt.fderiv_eq](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-fderiv-eq.md) | 69 | `result-track:2d25945e639a9145d3374afd03d576f9dfc2748ccc57ce608d7eff7ff0b0d9ba` |
| 7 | `theorem` | [HasFPowerSeriesOnBall.differentiableOn](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesonball-differentiableon.md) | 74 | `result-track:d966b8b21e08fe2bbe0dd6b94eddbecd1e59b1a70419a8ede7bffaa814a9b5a0` |
| 8 | `theorem` | [AnalyticOn.differentiableOn](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-differentiableon.md) | 79 | `result-track:d21b12091364b851d7f4b1b56722a04d1997bea97b40ec1d7ba79f139780b811` |
| 9 | `theorem` | [HasFPowerSeriesOnBall.hasFDerivAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesonball-hasfderivat.md) | 83 | `result-track:3d2699f0e615dc76a5daa47314c8cd1e1233dedb308444f51ff449e7fcafb23b` |
| 10 | `theorem` | [HasFPowerSeriesOnBall.fderiv_eq](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesonball-fderiv-eq.md) | 89 | `result-track:784b6886527e6cf5a588b8dfce3dbd1baa18885b49c2927fd578ed049f3e7574` |
| 11 | `theorem` | [HasFPowerSeriesOnBall.fderiv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesonball-fderiv.md) | 96 | `result-track:d9b48ff86142fa456cda449116fbc1eb4bbec22edb1b70a787607856d4df9eff` |
| 12 | `theorem` | [AnalyticOn.fderiv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-fderiv.md) | 127 | `result-track:d8ef2bf677296b1569202e52df814fd51492eb61750e0f07979c1a559cac74ee` |
| 13 | `theorem` | [AnalyticOn.iteratedFDeriv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-iteratedfderiv.md) | 135 | `result-track:69bd92aa00cb37d929ebc49ff2516402339265be6f7de31c0e0a68b91daa2eb1` |
| 14 | `theorem` | [AnalyticOn.contDiffOn](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-contdiffon.md) | 152 | `result-track:9995c1a7e201912631ef5fb9e69435e72ec26af00a35935e6eff95f106e099c1` |
| 15 | `theorem` | [AnalyticAt.contDiffAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticat-contdiffat.md) | 169 | `result-track:aba885df21d196158ecac7a37c450931ef67c311ce4148310257907c3f4a1849` |
| 16 | `theorem` | [HasFPowerSeriesAt.hasStrictDerivAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-hasstrictderivat.md) | 182 | `result-track:3f9e50126d1637a696ad0145bbcac39520f2da85c0e2fea67fc75df6423c5960` |
| 17 | `theorem` | [HasFPowerSeriesAt.hasDerivAt](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-hasderivat.md) | 187 | `result-track:56328b57c3c44cc73768f0465295a600def0aebed20f4a968aedb8d6a10dc886` |
| 18 | `theorem` | [HasFPowerSeriesAt.deriv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/hasfpowerseriesat-deriv.md) | 192 | `result-track:7df7cfd097a2e850b326b2bbbcc0cfce64ea9218210643f2010547845c9e1230` |
| 19 | `theorem` | [AnalyticOn.deriv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-deriv.md) | 198 | `result-track:36c6d1f9ac1fe49284b00bf7454a51b1ee79642b0fb30d10e55168be41582f36` |
| 20 | `theorem` | [AnalyticOn.iterated_deriv](../../../../RealFunctions/FDerivAnalyticNamespaced.lean/declarations/analyticon-iterated-deriv.md) | 203 | `result-track:8870d5f982e0141fd9d2942f423fa007b134bebcc16c1826dc572abc51f2d327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aebbb3dc70c6e99289c90d0855a3e12fa39091179b9901b45d92fc97e47163c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant9f95ab7ab59bb3abcbca04dad1edc3324423725d2a0bf9ca890e691183653d2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
