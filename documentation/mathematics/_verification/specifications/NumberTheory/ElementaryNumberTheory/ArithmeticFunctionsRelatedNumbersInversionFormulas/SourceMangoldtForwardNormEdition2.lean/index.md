# Verification target: Source Mangoldt Forward Norm Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "746f13f58111ce99312cfe8ab2fb329c303a3517",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant32f9b54769b2a41df052062d757ba3b36377735c5c1fefacd83cb8cfbe9c7d9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `746f13f58111ce99312cfe8ab2fb329c303a3517`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant32f9b54769b2a41df052062d757ba3b36377735c5c1fefacd83cb8cfbe9c7d9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant32f9b54769b2a41df052062d757ba3b36377735c5c1fefacd83cb8cfbe9c7d9c.lean.json)

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
| 1 | `def` | [realSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/realsource.md) | 27 | `declaration-track:759984fe3460a1ddd12a4b0ddde5a304fc986a18e737458fec9d391ed1ba096b` |
| 2 | `theorem` | [realSource_coe](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/realsource-coe.md) | 30 | `result-track:761544e7931749a317da331c05276eb056bb365f94e1a93a6056fa370f22392d` |
| 3 | `theorem` | [realSource_norm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/realsource-norm.md) | 37 | `result-track:8ac4b8f6d0e92a61d35818f6625ca0ce3a68c440065ea7349852ad0df1cd4a26` |
| 4 | `def` | [shift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/shift.md) | 46 | `declaration-track:cbe9bb1fbf148bc03d7551556eb11ed7240458ab79533e9804a0b77e2290681c` |
| 5 | `theorem` | [shift_coe](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/shift-coe.md) | 50 | `result-track:9f56917eb11a15d22aab1281ef821644c7fd3e53fe1888e3348d403736690ddc` |
| 6 | `theorem` | [shift_norm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/shift-norm.md) | 58 | `result-track:c8e22bc60e09ea69ce7d558bced1e6428ef1777f2e882d148feab9ca7515b93b` |
| 7 | `theorem` | [mangoldtL2_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/mangoldtl2-eq-sum.md) | 62 | `result-track:29474d224d1781ba1eb8dbc720dfbaeafa577f90476e966c0fcd87025a7dd939` |
| 8 | `theorem` | [inverse_sqrt_step](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/inverse-sqrt-step.md) | 84 | `result-track:569caf439154b293fd11da872e888ef2f68f09da57d80a3d03c883be4b483cb7` |
| 9 | `theorem` | [inverse_sqrt_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/inverse-sqrt-sum-le.md) | 95 | `result-track:33795c79f0dd5573c8408219cf9192b7ea93613558f763d070536b85a1d4f9dd` |
| 10 | `theorem` | [sourceKernelCutoff_le_exp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/sourcekernelcutoff-le-exp.md) | 105 | `result-track:dd114d7fecfe50b0414a9189501a65e40191ff8aa39857cc3ce801c45232f60b` |
| 11 | `theorem` | [actual_mangoldt_le_two_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/actual-mangoldt-le-two-scale.md) | 110 | `result-track:7f5bf608ae2bba7732cd4cd86a1b7d3bad1bfea5516370c194508b5d02e57997` |
| 12 | `theorem` | [mangoldtL2_norm_le_finite_sqrt_cutoff_diff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/mangoldtl2-norm-le-finite-sqrt-cutoff-diff.md) | 121 | `result-track:7f3c0d600d3e729580f606008f0af3f069534843241593206d5cc081e60fb239` |
| 13 | `theorem` | [mangoldtL2_norm_le_four_mul_scale_exp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtForwardNormEdition2.lean/declarations/mangoldtl2-norm-le-four-mul-scale-exp.md) | 158 | `result-track:eafd45dd07db78d2f07f3a6e02631ac2f8619f7068784323b2c768518b12e5ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7526ad7211f6301463f227f3320069106b450ee8304afbc72bf8e6dccdbf99b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant32f9b54769b2a41df052062d757ba3b36377735c5c1fefacd83cb8cfbe9c7d9c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant32f9b54769b2a41df052062d757ba3b36377735c5c1fefacd83cb8cfbe9c7d9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
