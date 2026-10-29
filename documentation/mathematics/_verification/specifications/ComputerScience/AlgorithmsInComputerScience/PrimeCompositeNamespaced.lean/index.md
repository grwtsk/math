# Verification target: Prime Composite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f20a6d53c203b7ffe39337181bde4872e7b1225",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantc34516df02519dcee6fc0396c3fd4447239ed0c92d675c5e9e49e5aac0eb994f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f20a6d53c203b7ffe39337181bde4872e7b1225`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantc34516df02519dcee6fc0396c3fd4447239ed0c92d675c5e9e49e5aac0eb994f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantc34516df02519dcee6fc0396c3fd4447239ed0c92d675c5e9e49e5aac0eb994f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.NumberSystems` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/primeevidence.md) | 13 | `declaration-track:e7184672a3557c59221d862f46dedf4005af174ab7f120971c787eaad7727965` |
| 2 | `structure` | [CompositeEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/compositeevidence.md) | 17 | `declaration-track:b307e7ef317d3fd2113f1353b94b78aef9dfe4e2c89cec6afd618f6fd7d78163` |
| 3 | `structure` | [FactorizationCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/factorizationcertificate.md) | 22 | `declaration-track:24ab3c8cd8266c2b1826cbd0ce3e820eed794cab249451d77a36d911d034b93d` |
| 4 | `theorem` | [factorization_certificate_has_value](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/factorization-certificate-has-value.md) | 29 | `result-track:3454e608b297e6f48a3f6f5616d020a6dc4942cfbaaee7bf6847664755ba10bc` |
| 5 | `theorem` | [factorization_certificate_product](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/factorization-certificate-product.md) | 33 | `result-track:01e148b240fe887805ef2c29312c8326fb74a22164bf6d8a3076c6290486ffdc` |
| 6 | `theorem` | [factorization_uniqueness_requires_boundary](../../../../../ComputerScience/AlgorithmsInComputerScience/PrimeCompositeNamespaced.lean/declarations/factorization-uniqueness-requires-boundary.md) | 39 | `result-track:1f8cf6e829fb92ebcb72bce49ef8db3da1fe9790167df7f4a2c6a780892bfcaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7f365f49600cc741a6e9883d5a5c922782c2dfd6d839b17e302a9167606284 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantc34516df02519dcee6fc0396c3fd4447239ed0c92d675c5e9e49e5aac0eb994f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimeComposite/Variantc34516df02519dcee6fc0396c3fd4447239ed0c92d675c5e9e49e5aac0eb994f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
