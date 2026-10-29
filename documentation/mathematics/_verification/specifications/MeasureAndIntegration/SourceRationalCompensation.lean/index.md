# Verification target: Source Rational Compensation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e96c47bf986d5089c88c2674c92ef080136d77b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e96c47bf986d5089c88c2674c92ef080136d77b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRationalContinuousHalf` — import line 6; external provider; requires a separately pinned dependency.
- `SourceNativeDirichletMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalCompensator](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalcompensator.md) | 31 | `declaration-track:0b83f7537418922f0e31b24cd242a720acbaf2e4b24232a7ffa621b2194eb0d7` |
| 2 | `def` | [rationalRemainderMultiplier](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremaindermultiplier.md) | 35 | `declaration-track:09644ddfcd9177388aa495185dd591b2c511c5dee4401d3a4d2823add3ef8bc3` |
| 3 | `def` | [rationalRemainderIntegrand](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremainderintegrand.md) | 38 | `declaration-track:4771ab7c1a407c2ddd7df8753faa658e01ba94bb0071c24a3899b958308f389b` |
| 4 | `def` | [rationalRemainderContour](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremaindercontour.md) | 42 | `declaration-track:0f5a360b9ccc01b1ef322780a86021d69856d1b2be0cffce4395afc851b4ed27` |
| 5 | `def` | [rationalBaseline](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalbaseline.md) | 45 | `declaration-track:ba94d222db0a5dd07697e63ff31af4c41dc973bacc0935f280aa5756007e1107` |
| 6 | `theorem` | [denominator_ne_zero](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/denominator-ne-zero.md) | 49 | `result-track:913eacb41b0434baa97be9c56b148d46feb36f4fef36c444d07fac03386dc800` |
| 7 | `theorem` | [rationalKernel_norm_le_one](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalkernel-norm-le-one.md) | 55 | `result-track:1ac051fb18e85e1e0cc137a591f6dd65ca83e439eb9fb7f703c8da1889b41647` |
| 8 | `theorem` | [rationalRemainderMultiplier_norm_le](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremaindermultiplier-norm-le.md) | 62 | `result-track:fd4841ef52096710683371caf44acb32ab8a185ecf2374bbf61aca2969fc6611` |
| 9 | `theorem` | [native_rational_integrable](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/native-rational-integrable.md) | 93 | `result-track:167dd900dc9b141a7c592b568f5abfc81637af70eb1fc426b0c6d0698ef780ed` |
| 10 | `theorem` | [rationalIntegrand_eq](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalintegrand-eq.md) | 104 | `result-track:03b7661cd254fb156e20e66f9f28c1e138a42ad3d538446a8ad69e9f4d1b9b03` |
| 11 | `theorem` | [rationalRemainderIntegrand_integrable](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremainderintegrand-integrable.md) | 116 | `result-track:798383abb1de12fe49bd3a486cbab2550353425697ff6d9deed3a99a77848274` |
| 12 | `theorem` | [angularContour_eq_rational](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/angularcontour-eq-rational.md) | 123 | `result-track:6cf2d437a64e9dda89b7371bbb888b774a3c89b0d73fc61e88cab52f3d7ce5ad` |
| 13 | `theorem` | [mertensResidual_eq_rational](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/mertensresidual-eq-rational.md) | 168 | `result-track:e5657c22ede4639de239b7aaa9d96ac40e6b007a7d3dfa83dfcdf3e708b07196` |
| 14 | `theorem` | [rationalBaseline_upper](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalbaseline-upper.md) | 174 | `result-track:3b282f760a788445fdc8d360a38d5549266854b8008baa86f2db78028975036f` |
| 15 | `def` | [RationalRemainderTailUpperBound](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/rationalremaindertailupperbound.md) | 182 | `declaration-track:0081fafe70c6aa9c8ecad4cc537f107f2ea870c05dc74e8b80d188a2037f8289` |
| 16 | `theorem` | [mertensResidual_upper_of_rational](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/mertensresidual-upper-of-rational.md) | 186 | `result-track:0820dc53da3366eb2b1699366ca7e5122eac2dfa1ac7663a777c0d191bae0842` |
| 17 | `theorem` | [mertens_residual_tail_of_rational](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/mertens-residual-tail-of-rational.md) | 193 | `result-track:05b1557646d4dfc568b9e6c94f63fd13f8a90e33653748a5ce982eb29d5a2140` |
| 18 | `theorem` | [estimate_of_rational_remainder](../../../../MeasureAndIntegration/SourceRationalCompensation.lean/declarations/estimate-of-rational-remainder.md) | 201 | `result-track:833df01a6d71acf42d2bc10f0b8db4c353b5b3ab03a92b460c4af04fd81a7a1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c08e33c32eba54dd4d1e7b38c73efd7a0eb356be510b9665321f0c4df79af28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
