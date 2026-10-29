# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MellinNormalizedDyadicPackingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2c52fdd438c118dc49f82a6686cce457a80802",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean/index.md) · [Full source](../../../../../../../NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2c52fdd438c118dc49f82a6686cce457a80802`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking`](../../../../../../../NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_action_is_uniformly_bounded](../../../../../../../NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean/declarations/normalized-action-is-uniformly-bounded--7c82893cf0f815c626235d84.md) | 14 | `result-track:7c82893cf0f815c626235d848b298a8864aa3536aea0220d76817ebd5656e3fb` |
| 2 | `theorem` | [normalized_quartic_is_positive](../../../../../../../NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean/declarations/normalized-quartic-is-positive--5a50d7fb2bf43b8f47de2349.md) | 19 | `result-track:5a50d7fb2bf43b8f47de234978b465e85b3c968b0a2c5d052c36a6a33a3db0fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=736f02ddd7e9dce0ea045d62cd3c3d6f3958a39b03b44e3c0ade5d9e23e31e19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/MellinNormalizedDyadicPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
