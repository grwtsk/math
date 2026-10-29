# Verification target: Feshbach Inertia Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fe9351e4b19e50a0b7b0f7823fe25cea9b352d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fe9351e4b19e50a0b7b0f7823fe25cea9b352d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachInertia` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/scalar.md) | 20 | `declaration-track:b97cd4f8b94a14c6e4729c86b2fb1d2fdf657265e5500147b7e22d3f6eb07b50` |
| 2 | `def` | [weights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/weights.md) | 22 | `declaration-track:4a7cdc9d6b1c70f438780852c227cdf422d2c35b93b60f2fc02d51f15c44e238` |
| 3 | `def` | [reducedWeightedEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/reducedweightedequiv.md) | 25 | `declaration-track:8e3845db7af5535cd8a871170a2ad948e3a1dd5a7c5ec3edfb7a5d21b38ea11d` |
| 4 | `theorem` | [inertia_counts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/inertia-counts.md) | 36 | `result-track:c3c9165a45ba6ac2836f1dfbadb2c6cd78d75a80270584bec61a106b28f43fa9` |
| 5 | `theorem` | [nonzero_shear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/nonzero-shear.md) | 51 | `result-track:3719a795ef811da96c5cdd133978166015143d2d50335f65c568baa0922c559d` |
| 6 | `theorem` | [singular_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/singular-center.md) | 57 | `result-track:5b14dcb34c13b28ebbb1d6c371beba35db73222c8ad744b3757d163442021b32` |
| 7 | `theorem` | [singular_inertia](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/singular-inertia.md) | 64 | `result-track:70cd9278475504dff310284ec7d4bce478fafb12afc116b494017198639299be` |
| 8 | `theorem` | [indefinite_inertia](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachInertiaAudit.lean/declarations/indefinite-inertia.md) | 84 | `result-track:c54d6ed7a5d059e5f319ee0b4404627f1d5e396d6ad6830d80e64fd9900f6994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c300160b44672153ac2fdf74e2b218d3cc0c2b4ca0abbc6f6a0200c29116a986 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
