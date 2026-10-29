# Verification target: Arithmetic Function Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f23c87440097ccf7ec07fd49363ca517082bd12c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f23c87440097ccf7ec07fd49363ca517082bd12c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.Payload` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/arithmeticfunction.md) | 23 | `declaration-track:22cfc3e8b600e63fecef944230d85281ee6b07e426522e7242ac07d0738fdfb3` |
| 2 | `structure` | [DirichletConvolutionCertificate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/dirichletconvolutioncertificate.md) | 33 | `declaration-track:abd461d2e49cd3a705743d81f24ad84836a1723c05b6c4a80c1b1f0dc4fe8fc3` |
| 3 | `def` | [oneFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/onefunction.md) | 39 | `declaration-track:ab029bbd447600e0b37c0155264387973cc451beb0e2bafb58674b4e03188b82` |
| 4 | `def` | [epsilonFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/epsilonfunction.md) | 44 | `declaration-track:a86060509c5d95ea26017a38fb7f2974ba158c8dd9664efb47fab6c80cddb225` |
| 5 | `structure` | [MobiusFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/mobiusfunction.md) | 49 | `declaration-track:5330e4ce8b9dc38a98ff39173bb5aa4eec4676c0396ad1652fa4b82fa3992449` |
| 6 | `theorem` | [dirichlet_convolution_sound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/dirichlet-convolution-sound.md) | 54 | `result-track:ba70151aaef17e667c7caacb74a1855d25c14a5233f9eed6b885d925d9b0aa08` |
| 7 | `theorem` | [mobius_inverse_of_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/mobius-inverse-of-one.md) | 60 | `result-track:3884299c724af763952e4c70072369a6c8dbe8a89c7fa377c4d4d8b4c1ea9fc0` |
| 8 | `def` | [ArithmeticFunctionOwnsAnalyticSeries](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/arithmeticfunctionownsanalyticseries.md) | 69 | `declaration-track:23aa3ee9643fe97adb80bd9dca52948eff4604c3ce7edc63b5717a46b0938447` |
| 9 | `theorem` | [arithmetic_function_not_analytic_series](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionNamespacedEdition1.lean/declarations/arithmetic-function-not-analytic-series.md) | 73 | `result-track:9d6a807fe46a459cddd635d96130d0ec3eeb1f1aae47ef4bd83250c3808c126b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14276b8cdb3e047b91696d99445bcbfcecff3830f6cbf3c34ca6fa4bace6c999 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
