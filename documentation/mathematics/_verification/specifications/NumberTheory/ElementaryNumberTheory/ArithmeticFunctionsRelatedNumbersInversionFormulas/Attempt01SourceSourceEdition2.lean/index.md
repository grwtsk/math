# Verification target: Attempt01 Source Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cced8eaccaa77f9e81a205514fde9f58f482cfc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cced8eaccaa77f9e81a205514fde9f58f482cfc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactRestrictedStrip` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactStripCost](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/exactstripcost.md) | 26 | `declaration-track:ba22fd47da9c3af2029b59f32f724425eec713deeb954ad2930062e644e87266` |
| 2 | `def` | [exactOverlapResidualBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/exactoverlapresidualbudget.md) | 30 | `declaration-track:af21632eec6c5d7f4675b63d4e5f622a5fae5cbc9c998c173e4bb795de98aba8` |
| 3 | `theorem` | [exactStripCost_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/exactstripcost-nonneg.md) | 33 | `result-track:7a0768406366d71aba98e7c1cff2a3b92620a3c2047cba38630359e4cd430504` |
| 4 | `theorem` | [exactOverlapResidualBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/exactoverlapresidualbudget-nonneg.md) | 39 | `result-track:3c361c6c7e69ea54fabf62301c5e0bfa1e5783b513c7208efa437a1b79f2c55b` |
| 5 | `theorem` | [residual_upper_of_overlap_with_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/residual-upper-of-overlap-with-ledger.md) | 43 | `result-track:15d921fcf289d0084b91a2970e9a3f093c0d64fa6c89e96e9a0a891d566b0ac2` |
| 6 | `theorem` | [residual_tail_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/residual-tail-of-overlap-with-exact-strip.md) | 61 | `result-track:78748d8d1a4248700cb2ffd3ad87fb38a31e27a5c1bb1547cfe4e8a22119ce1f` |
| 7 | `theorem` | [quadratic_lower_of_residual_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/quadratic-lower-of-residual-upper.md) | 69 | `result-track:500aaa33a9f86fce81a56b9e26efc0e5b390527380b74d9090a64aa980640848` |
| 8 | `theorem` | [all_real_lower_of_overlap_with_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/all-real-lower-of-overlap-with-ledger.md) | 81 | `result-track:74ef5d244ef97ea7796463dfe07a0e4501a038ef37d5403acab64f5b6b402355` |
| 9 | `theorem` | [all_real_lower_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/all-real-lower-of-overlap-with-exact-strip.md) | 101 | `result-track:4ca77b6aa7e1c81910551a21669100de5e2b9d29f01bbf542e0abefa96b0406b` |
| 10 | `theorem` | [estimate_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01SourceSourceEdition2.lean/declarations/estimate-of-overlap-with-exact-strip.md) | 112 | `result-track:9bb4f4a8fac37bebf0d8ae1be5317633e3100b59375e96711d90c6fec90d3bdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dcd812bb8b3c78b4e817bb710af3a517e0648bb30eec53437fc851dd23879ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
