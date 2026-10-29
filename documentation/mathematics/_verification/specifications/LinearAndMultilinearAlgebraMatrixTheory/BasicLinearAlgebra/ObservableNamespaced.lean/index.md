# Verification target: Observable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6254f286406431ce6f05f03ae256c066ae1287b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6254f286406431ce6f05f03ae256c066ae1287b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Canonical` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HermitianObservable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/hermitianobservable.md) | 24 | `declaration-track:ed109179c97bc53b367e154058b72caeb5bc17a6398a7f2d401ab47000b4fe0a` |
| 2 | `def` | [stateWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/stateweight.md) | 34 | `declaration-track:a4261f45d31fdfeaf429f94652b825e4cd3d3617f11156427be6f65bcb784980` |
| 3 | `def` | [observableNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/observablenumerator.md) | 40 | `declaration-track:462c3ed1352df3cf1911494c2d9fbb5649e9044de8daccae0bfbd40382e94046` |
| 4 | `def` | [normalizedExpectation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/normalizedexpectation.md) | 50 | `declaration-track:5a2bf437c5f968eae1081d609081ef52d70bd0c352821a0e74f6a85f55c284f2` |
| 5 | `structure` | [NormalizedStateCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/normalizedstatecertificate.md) | 56 | `declaration-track:ceeb2c62d71dfd4f4132cfe4f16e214b1fe3c0830d14a6baa1e8e492677023d0` |
| 6 | `theorem` | [normalizedExpectation_gauge_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ObservableNamespaced.lean/declarations/normalizedexpectation-gauge-invariant.md) | 61 | `result-track:a93b5f1bdfcab94550f33920233a264c9bbb9c6e5de44a6af01ca58216e73808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f5410887d9104859d7b43542a50114930a7590554e581ba1c8079b6fb81f215 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Observable/Variante92d53429ed86cdf0220737b8abad6185d8a192606c30d32d0b4c7d7b0bf6a8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
