# Verification target: Source Mangoldt Forward Norm Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f607483b9fd9a8ccb14d46a0ae50b97582130190",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f607483b9fd9a8ccb14d46a0ae50b97582130190`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/realsource.md) | 27 | `declaration-track:aa61e2f316a17b7bb372856137cbeb367543f48ef034c3aaecec5405d1d36269` |
| 2 | `theorem` | [realSource_coe](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/realsource-coe.md) | 30 | `result-track:dfe18c347342aba93aad36ea31487e90959b31c844d0f786b8c3bb45031f0f72` |
| 3 | `theorem` | [realSource_norm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/realsource-norm.md) | 37 | `result-track:75676d805569246a657dbe5e51061bdb7bece5bdd5a0cc18616e27fb6adc5ec5` |
| 4 | `def` | [shift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/shift.md) | 46 | `declaration-track:e26a4209eb74b443fbffbceeb789564bc9513eaf251c8c5942d7efaa0ded722c` |
| 5 | `theorem` | [shift_coe](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/shift-coe.md) | 50 | `result-track:8aa6e3506baec1ad8d50a571af37348389479914a09200a9a2ee6ffb0cf28d52` |
| 6 | `theorem` | [shift_norm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/shift-norm.md) | 58 | `result-track:b0c0bf718e16ff2883a265a654b69c0fb3b54e60ba1bca105290eb3928c05c9b` |
| 7 | `theorem` | [mangoldtL2_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/mangoldtl2-eq-sum.md) | 62 | `result-track:5058d553d18ea015eb88eead08d1395164513d027f34b68c0b384cb9cec4fcf6` |
| 8 | `theorem` | [inverse_sqrt_step](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/inverse-sqrt-step.md) | 84 | `result-track:0041ed776d24b77834de63f5588de84c26b35fff891a5b4a4668de4cce228c86` |
| 9 | `theorem` | [inverse_sqrt_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/inverse-sqrt-sum-le.md) | 94 | `result-track:9f70574069b802dae13528eb0a9d8ac6a4f5a30cfa12b0706b55e2f8430bd9fc` |
| 10 | `theorem` | [sourceKernelCutoff_le_exp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/sourcekernelcutoff-le-exp.md) | 104 | `result-track:69c0edd88c7aa2118e11623c16159cbc0f7e3fb89e5a3358cca3d03de3a43d9e` |
| 11 | `theorem` | [actual_mangoldt_le_two_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/actual-mangoldt-le-two-scale.md) | 109 | `result-track:7fcbef7373a7aff5a53ed547f9a1c1587994bd334c10b22027dd1434ddadb357` |
| 12 | `theorem` | [mangoldtL2_norm_le_finite_sqrt_cutoff_diff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/mangoldtl2-norm-le-finite-sqrt-cutoff-diff.md) | 120 | `result-track:894c8fcdeae98d810948029640274cc2e10077b39dbe451007337f8a000b17a3` |
| 13 | `theorem` | [mangoldtL2_norm_le_four_mul_scale_exp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition1.lean/declarations/mangoldtl2-norm-le-four-mul-scale-exp.md) | 157 | `result-track:80589a3e0e183a98e0303fb670e4577b101015202677bf0d12243b489e949f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a419a719bd95c6fec1dc5282ec72d470014e0b84286de33a4bb17384c5d7d852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
