# Verification target: Half Cutoff Tail Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "782f67f9debd2ab1f9c39bec7ec1fe1d427c3f85",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variantb3f99dbc8e6af28d8209b87f323c83c95ad74262c09ccc171a376cae13a6b637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `782f67f9debd2ab1f9c39bec7ec1fe1d427c3f85`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variantb3f99dbc8e6af28d8209b87f323c83c95ad74262c09ccc171a376cae13a6b637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variantb3f99dbc8e6af28d8209b87f323c83c95ad74262c09ccc171a376cae13a6b637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_half_cutoff_tail_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/reciprocal-half-cutoff-tail-le.md) | 12 | `result-track:ca12ac8c48e8ebb79d5c16b260d9e75a75565d558e7bcd83d9f4b719236c536a` |
| 2 | `theorem` | [sqrt_square_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/sqrt-square-scale.md) | 29 | `result-track:02c1ca812997609dd92b6dfd344ccac09bdd2a1e320828ac009ed97cfe3f86f6` |
| 3 | `theorem` | [thetaRemainder_half_cutoff_tail_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/thetaremainder-half-cutoff-tail-abs-le.md) | 34 | `result-track:6a7dca22bdab248b9af8cd7acec3fc40d1a32e599346fb200527bb714e5b7996` |
| 4 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/example.md) | 67 | `declaration-track:06fc8fe1b07edd6ca27ce11e908cb0fc2f143dc2621d847ade9e85f98546da5f` |
| 5 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/example-source-edition-2.md) | 71 | `declaration-track:9ae222515afa55a452eb23618028784c284dee0ec65a1b1ddf5724977476a2fb` |
| 6 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalfCutoffTailStatements.lean/declarations/example-source-edition-3.md) | 75 | `declaration-track:a8a006c13afb34adad3eebd73ee4f727ce6e2d383d1b2e3afed55a90647470b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cff507bf1dddaf3d58cb7cad09f4fbeb957367dc3a4736b22b4bc3baf9b8b40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variantb3f99dbc8e6af28d8209b87f323c83c95ad74262c09ccc171a376cae13a6b637.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HalfCutoffTailStatements/Variantb3f99dbc8e6af28d8209b87f323c83c95ad74262c09ccc171a376cae13a6b637.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
