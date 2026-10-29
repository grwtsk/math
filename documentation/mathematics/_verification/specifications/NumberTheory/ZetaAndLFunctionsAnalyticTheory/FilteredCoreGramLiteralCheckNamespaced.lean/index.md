# Verification target: Filtered Core Gram Literal Check Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237ade4d325f4591b80ca0996b73723f44d6f7df",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237ade4d325f4591b80ca0996b73723f44d6f7df`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean.json)

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
| 1 | `def` | [coreBasisFunction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/corebasisfunction.md) | 22 | `declaration-track:9cef43509f93f9e8cb522a07a026fc530951964d475f134a80d9587d7d506397` |
| 2 | `theorem` | [coreBasisFunction_memLp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/corebasisfunction-memlp.md) | 28 | `result-track:03f9c131a6487d0749ff571929e860686c93223329779aedf79940951285d597` |
| 3 | `def` | [coreBasisVector](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/corebasisvector.md) | 57 | `declaration-track:5bd200fc397f41304c7b63a35e179d0488640b969e91ef5112a0c5ab0a78e0f0` |
| 4 | `theorem` | [coreBasisVector_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/corebasisvector-ae.md) | 61 | `result-track:d03287ef56fce1f6d8e2dcf698d8f8fe0e2929d739488f9814f47a29c6a2ab8f` |
| 5 | `theorem` | [sum_coe_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/sum-coe-ae.md) | 65 | `result-track:9f632d8dfcd0d81c4abf3efbdc7fb3b3173261704aa74ad5a512403f3f4d977b` |
| 6 | `theorem` | [coreResidualVector_eq_basis_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/coreresidualvector-eq-basis-sum.md) | 78 | `result-track:ea7f48fde26bfaef1e493e0efd6eb2be54527f7171ad21136228ed3840c51cd1` |
| 7 | `theorem` | [filtered_core_norm_sq_gram](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/filtered-core-norm-sq-gram.md) | 113 | `result-track:798622ea1964d61899abfb31650a426f81b51f767f09729ca101c22c65378b7d` |
| 8 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example-source-edition-6.md) | 143 | `declaration-track:edf946c7e3511de9d5324e56ae1dcde9daeba4a86028dcfa793612d24f891285` |
| 9 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example.md) | 148 | `declaration-track:1c46058bc5ea19f61feaddd6667a4f4c697f1ac8e52ee497247ee48feb581479` |
| 10 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example-source-edition-2.md) | 151 | `declaration-track:60018450155d9bedc8fd6753dc307223ac8264cf0acfe52992240c0a2423e1d9` |
| 11 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example-source-edition-5.md) | 154 | `declaration-track:cbe31b7ff5f9138a53039c945ce56eac984226ab12127779217acf92dad9fbe9` |
| 12 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example-source-edition-3.md) | 157 | `declaration-track:a65be2e38a048449f39defb312526443a1d3dd556bc3dfd10970cfe6f98a542d` |
| 13 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FilteredCoreGramLiteralCheckNamespaced.lean/declarations/example-source-edition-4.md) | 162 | `declaration-track:caba4dc95bfa612cb1969587d3f92fdba72001b84da406a7a7d987aa51f2bc4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41b5e37c3a58288f077189f885c49fb11c14c04643cf855addfe020db0a4edc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
