# Verification target: Finite Tensor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89266a8aca0d5a85ea84b4e5a9072a4312ce3aff",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/FiniteTensor.lean/index.md) · [Full source](../../../../FunctionalAnalysis/FiniteTensor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89266a8aca0d5a85ea84b4e5a9072a4312ce3aff`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorVector](../../../../FunctionalAnalysis/FiniteTensor.lean/declarations/tensorvector.md) | 18 | `declaration-track:9511c27263ab59cfa74de34e4931f6abb03cfe57045592ccf744d57aa9b94afd` |
| 2 | `theorem` | [tensorVector_apply](../../../../FunctionalAnalysis/FiniteTensor.lean/declarations/tensorvector-apply.md) | 23 | `result-track:1b859edef7ca71b4f12a6eec6ad9e7d300684555a24a42e0c08201d5c108a837` |
| 3 | `theorem` | [tensorVector_norm_sq](../../../../FunctionalAnalysis/FiniteTensor.lean/declarations/tensorvector-norm-sq.md) | 30 | `result-track:af0a755407c26092227abf38aab6cfcd37c8eaccc0aeb0c3b4cdfa17232089ac` |
| 4 | `theorem` | [tensorVector_norm](../../../../FunctionalAnalysis/FiniteTensor.lean/declarations/tensorvector-norm.md) | 41 | `result-track:0eaf4b0ca14b0523a7c28deb20b47d4ce1bdbd4d6f2deb6022acec9d2718b915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a1acf49a23b0b37183c2f1962bccd1a3ee2720f2204cde12f70297789eb1a93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/FiniteTensor/Variantfc9e5a132240b71c18db568c83add8e97c3a3b85d0f6f6f56f7cdea5d0403a1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
