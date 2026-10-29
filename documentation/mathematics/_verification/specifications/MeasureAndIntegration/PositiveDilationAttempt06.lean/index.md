# Verification target: Positive Dilation Attempt06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "167ac06c6a408c5f6ffeabfc1d4bc72141ee6b06",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `167ac06c6a408c5f6ffeabfc1d4bc72141ee6b06`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/positivemeasure.md) | 14 | `declaration-track:10181c45ce976a569b865385c1c570578b486d3d2012fda8114e93d1a4402c47` |
| 2 | `abbrev` | [PositiveL2](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/positivel2.md) | 15 | `declaration-track:e9f3be4870bbd42e683649f698189e85de81745f1fb1c8c10c3dece9894f2f3e` |
| 3 | `def` | [dilateFunc](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilatefunc.md) | 17 | `declaration-track:35297250a71df8571a02323479c355587f53b1cb38012d7bdea40ea5c56e861d` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/positivemeasure-map-mul.md) | 19 | `result-track:e42fbafa638d4b64b7ab20d9c904aee671697dda5090259161cb91da1310d517` |
| 5 | `theorem` | [positive_mul_quasi](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/positive-mul-quasi.md) | 28 | `result-track:b76375d8f3b5f8cb5b48933978a7fdfebf9aab02c1590ec4c71226b8a06d4003` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilatefunc-memlp.md) | 34 | `result-track:50e4f216d63b834e8e344c48727692efdfb4ed0ffe765f2496ae4a46c27fd098` |
| 7 | `def` | [dilate](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate.md) | 41 | `declaration-track:9641a5ec91adbedd510205d2e0c261d3cbbad7a72cc017636e8595c24df13514` |
| 8 | `theorem` | [dilate_ae](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-ae.md) | 44 | `result-track:3609290cb9ad3aa955d46693fb455347bad8bf96e1e6fb3ace84be55e0077b3a` |
| 9 | `theorem` | [norm_sq_integral](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/norm-sq-integral.md) | 48 | `result-track:b11b31e089d5492e5f24e2f0610a2471ca542e78323013a3a965138eced49d09` |
| 10 | `theorem` | [dilate_norm_sq](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-norm-sq.md) | 63 | `result-track:efe2c106443e3dd7c6ffdeb3ca5a1bd0692161ac6f856d21ab7caad45c999bb0` |
| 11 | `theorem` | [dilate_norm](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-norm.md) | 77 | `result-track:fb53dda0f1756f136565740b296f34d49b3c4a2f3409b0df14459db5422377c5` |
| 12 | `theorem` | [dilate_one](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-one.md) | 80 | `result-track:0bfa45f050a1512297dcbd6370553c36c1c314e90e195bbfb268a67db7dce8da` |
| 13 | `theorem` | [dilate_comp](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-comp.md) | 85 | `result-track:e9b1ddabcc04702a5f1c7b989e946d51bf57dbe640170f29970ed890a61b189c` |
| 14 | `theorem` | [dilate_inverse](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-inverse.md) | 97 | `result-track:e49386df64165e3e8a53f07ad84fefa8e2553cdc8911523a19a1c93a9e5a3f59` |
| 15 | `theorem` | [dilate_add](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-add.md) | 102 | `result-track:166f501c7d78a20967b2283220b329cf4baf3b2ba37344fa727432e634b730c8` |
| 16 | `theorem` | [dilate_smul](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilate-smul.md) | 112 | `result-track:bc8ef14e77aa66a6592c2cfc62007b685c7f7269e19b803a1339a52eafd11737` |
| 17 | `def` | [dilationIsometry](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilationisometry.md) | 123 | `declaration-track:991f4a5252f2c69b5eacd4144cda34ca51cb0b8bf82fac24aad4129f50fb6b11` |
| 18 | `def` | [dilationEquiv](../../../../MeasureAndIntegration/PositiveDilationAttempt06.lean/declarations/dilationequiv.md) | 129 | `declaration-track:2abc18f0e3516ce20f0d52b07078168dba08f838ac3929b734b63cfe7f8770f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0c65ec0167b6f4607cd7e4690444813270d95c96b1a24c54ec415d391a64f6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
