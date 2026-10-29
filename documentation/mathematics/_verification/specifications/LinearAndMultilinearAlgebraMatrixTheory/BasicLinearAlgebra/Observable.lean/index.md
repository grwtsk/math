# Verification target: Observable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598ff6e0d2771577856ae6a6ca59f5855fd37749",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Observable/Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598ff6e0d2771577856ae6a6ca59f5855fd37749`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Observable/Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Observable/Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Canonical` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HermitianObservable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/hermitianobservable.md) | 16 | `declaration-track:a51419a389c1688f9d031a306f1af3601732174e1ff88f5b40c93cc986cdce5d` |
| 2 | `def` | [stateWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/stateweight.md) | 26 | `declaration-track:98d449ba6b4eac8e8374dfcd03e2c4918a19b49ba9eff52bc58425dca7fda77a` |
| 3 | `def` | [observableNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/observablenumerator.md) | 32 | `declaration-track:bf60be7bf7334b36525663318ce5eb7c833415f466f2ba2f3bac42c9ae9d3910` |
| 4 | `def` | [normalizedExpectation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/normalizedexpectation.md) | 42 | `declaration-track:424eb065bc2f9767d69f5aa287e70fb6813b0aaf54712edf6143b4632c4dca7d` |
| 5 | `structure` | [NormalizedStateCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/normalizedstatecertificate.md) | 48 | `declaration-track:eb2c3def6a4df67b1be5bec8561951347d2ae392fe2103886709c6d196edf06a` |
| 6 | `theorem` | [normalizedExpectation_gauge_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Observable.lean/declarations/normalizedexpectation-gauge-invariant.md) | 53 | `result-track:f0f21adf9bcf728332931701fabf3027ac567811e980c6bd893623370f3b1594` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30b1c56f9bbba02f43ed234449325317bc36ee90eba557f57ca063c3b465f4ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Observable/Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Observable/Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
