# Verification target: Filtered Core Gram Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c41278ab9c731210d4479c3d3ba043d1ef7a3d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variant29cac50989caa21d234aecfedcc752f8f17052f25504dacf85b8d759cb33ed1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c41278ab9c731210d4479c3d3ba043d1ef7a3d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variant29cac50989caa21d234aecfedcc752f8f17052f25504dacf85b8d759cb33ed1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variant29cac50989caa21d234aecfedcc752f8f17052f25504dacf85b8d759cb33ed1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreBasisFunction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/corebasisfunction.md) | 22 | `declaration-track:20154e5294d05976a8888f610c46ae94310929c3a44b970c54d4bb752eb2eac4` |
| 2 | `theorem` | [coreBasisFunction_memLp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/corebasisfunction-memlp.md) | 28 | `result-track:45c8ad8586d956d6bf5d79f833f75f0f56469db57bf37c2f7f70d88eab7a2d00` |
| 3 | `def` | [coreBasisVector](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/corebasisvector.md) | 57 | `declaration-track:8fb7c0c5bb2c9116b8e6e591adfab9365f7ee0f5c1c21a8e86b03700ab86ea2c` |
| 4 | `theorem` | [coreBasisVector_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/corebasisvector-ae.md) | 61 | `result-track:e1ec5fcd08125a292eacd5ec378bb94b27561f38b4bb26017c6e80463cbddaca` |
| 5 | `theorem` | [sum_coe_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/sum-coe-ae.md) | 65 | `result-track:1a920744389d6866bb1e5f6644e87dca2cd082a247279900166bf56465a8f780` |
| 6 | `theorem` | [coreResidualVector_eq_basis_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/coreresidualvector-eq-basis-sum.md) | 78 | `result-track:be7c3cd5691d0dcb4194ac11c51fb36b30110a2c79378b0b159f484cc4670534` |
| 7 | `theorem` | [filtered_core_norm_sq_gram](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramNamespaced.lean/declarations/filtered-core-norm-sq-gram.md) | 113 | `result-track:a57b3d09db538f4d3fc91159f178f931c36b1ff1e6789ce5e229b8f4496c3bce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec69b9b22bedd50405513e51d63ad47bf0850a7658fba43df38275a908e61411 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variant29cac50989caa21d234aecfedcc752f8f17052f25504dacf85b8d759cb33ed1e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGram/Variant29cac50989caa21d234aecfedcc752f8f17052f25504dacf85b8d759cb33ed1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
