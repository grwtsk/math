# Verification target: Source Actual Vaughan Mean Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4b332549c95147ef6cb03827136cf9adf7eb80",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4b332549c95147ef6cb03827136cf9adf7eb80`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPsiIntegerExact` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_moebius_quotient_sum_eq_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-moebius-quotient-sum-eq-one.md) | 21 | `result-track:99cf3f5436e31f3b5500709085f2f7f9f52c3df1139e26d01966d758622034fd` |
| 2 | `theorem` | [quotient_defect_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/quotient-defect-bounds.md) | 30 | `result-track:b9a051b300937699cc77e8f147682c2d0c7f400aefa06aa1da33ac4ec771c1b3` |
| 3 | `theorem` | [actual_alpha_unit_floor_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-alpha-unit-floor-defect.md) | 39 | `result-track:31e505903504844ceb707763ea73426cfcff2caa340e0089ab0e17d2813584aa` |
| 4 | `theorem` | [actual_alpha_unit_defect_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-alpha-unit-defect-abs-le.md) | 62 | `result-track:cd154f7a5647a1abd0ec556b55650e2d3f7fd87c1be0181507ce3eb33a2d48de` |
| 5 | `theorem` | [actual_alpha_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-alpha-bounds.md) | 82 | `result-track:81acaf4936d6aa2d3247843d2c362ecce398374c1ff8dd0d87433709e3cc93df` |
| 6 | `theorem` | [actual_alpha_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-alpha-abs-le-one.md) | 92 | `result-track:cbb28492751ced55a8bd90a6620bca86ff3f5ecabc34d2bfc87c6bcf2b2ed385` |
| 7 | `theorem` | [actual_vaughan_alpha_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualVaughanMeanBound.lean/declarations/actual-vaughan-alpha-abs-le-one.md) | 103 | `result-track:1921acc8e8550d69e234ae99b2c22dc8b3015edd7f7329fdbac977b108741db2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a288e6b10482779c28e1aca685bb0ce8090f2e9c8e555462c95a255eb341b673 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
