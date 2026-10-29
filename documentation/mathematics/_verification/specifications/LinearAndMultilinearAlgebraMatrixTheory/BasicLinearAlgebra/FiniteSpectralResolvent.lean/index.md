# Verification target: GRWTSK.LinearAlgebra.FiniteSpectralResolvent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccc6d27fb89fe84130699b6d2f29600a7338a95b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccc6d27fb89fe84130699b6d2f29600a7338a95b`.

Source path: `GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FiniteSpectralResolvent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FiniteSpectralHeat`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralHeat.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/shiftedoperator.md) | 17 | `declaration-track:0ad51dd20215dfd8feba0f698d48e92682b2648adbb8547ea1aebe419edb348f` |
| 2 | `def` | [coordinateResolvent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/coordinateresolvent.md) | 21 | `declaration-track:6038df48e6f001d722f8ffa3872e431385f78fec2b1eb42bb44adcac5cd9848e` |
| 3 | `def` | [resolvent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/resolvent.md) | 26 | `declaration-track:e91412016233e474c46f5f42ede5b6d877ba876d525cd338d20518ffea7c5733` |
| 4 | `theorem` | [shiftedOperator_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/shiftedoperator-coordinates.md) | 31 | `result-track:cb71297dd30e0459619cae76ff9fbf1e4fc3afcacd5060d48e0dcf06eb8de714` |
| 5 | `theorem` | [resolvent_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/resolvent-coordinates.md) | 40 | `result-track:2467d533a4f2d47dd4104de2ec945a344809a52992c1e88943beccbd4ab41b10` |
| 6 | `theorem` | [shiftedOperator_comp_resolvent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/shiftedoperator-comp-resolvent.md) | 45 | `result-track:4e043c593c8819acdc244c4f1cb07386d9872fef3f3e05a95505785b66f91a4a` |
| 7 | `theorem` | [resolvent_comp_shiftedOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/resolvent-comp-shiftedoperator.md) | 60 | `result-track:d22d6e06e96a0d7547c25420d5f0189a43de79b53666719f30d2368271990f4d` |
| 8 | `theorem` | [resolvent_operator_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralResolvent.lean/declarations/resolvent-operator-comm.md) | 75 | `result-track:176cb38e060ab75618099b04b87fd75f3ebfff9988078d2ca0e20a4b9b159855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=320546d7d3bca42708350096ec7221fc4c33ffd0e095f919e0f1a6ef445b0f63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/FiniteSpectralResolvent.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteSpectralResolvent.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
