# Verification target: Energy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d46571674948d48976d78c07d1e44460659cd21",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Energy.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Energy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d46571674948d48976d78c07d1e44460659cd21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.NatInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../Combinatorics/GraphTheory/Energy.lean/declarations/energy.md) | 35 | `declaration-track:b8a881bd4e6e79bb9923a30ff007c02d7e109731cefc6107ae2577468ab08bc1` |
| 2 | `theorem` | [energy_nonneg](../../../../../Combinatorics/GraphTheory/Energy.lean/declarations/energy-nonneg.md) | 38 | `result-track:e702b0adde4fc991225147c5cfb5d60c26e67795d9deaeea1c403a12bc3bb818` |
| 3 | `theorem` | [energy_le_one](../../../../../Combinatorics/GraphTheory/Energy.lean/declarations/energy-le-one.md) | 41 | `result-track:e6d186e02e27a7e34d9fc26b2d86b0e0e7e26af102eff63ec56f1cd902cbeef2` |
| 4 | `theorem` | [coe_energy](../../../../../Combinatorics/GraphTheory/Energy.lean/declarations/coe-energy.md) | 55 | `result-track:07dd8dc04ff5006d61093b03ce6a01478020e9c904fd726ab1a2d010b624fa76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bff0f59f6dcd264267e5ffad36903b57c1de949a4dd92b057455ed8e56e5c01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantdce57021df5bf332ffa1855ebc3f3f276be21bbd8e961240d1863de4c2ed3812.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
