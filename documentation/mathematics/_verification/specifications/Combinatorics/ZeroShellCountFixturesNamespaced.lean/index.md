# Verification target: Zero Shell Count Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a847d376525fd49cc0ec7cedd86dab2c4fca8e2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a847d376525fd49cc0ec7cedd86dab2c4fca8e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [each_synthetic_shell_finite](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/each-synthetic-shell-finite.md) | 22 | `result-track:b99165cfa504693c9d270e8c050737698ff9376a306e26dedbf2e247a80beafa` |
| 2 | `theorem` | [finite_shells_not_quartic](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/finite-shells-not-quartic.md) | 25 | `result-track:5456d16f562c2e9a7dbe8e59f8685f563fcd34dac91ac5aab7d35108fbd3a1d4` |
| 3 | `def` | [SyntheticOccurrences](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/syntheticoccurrences.md) | 41 | `declaration-track:80ef586ebf226639018588eb891f2cb3201d8fe030fc3b362f5d713e6929ebb6` |
| 4 | `theorem` | [multiplicity_slots_three](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/multiplicity-slots-three.md) | 44 | `result-track:e64c1d59fd15a7d29b195cbdaf1b1705cfa3995cff158a0c4d187188c03ed8d6` |
| 5 | `theorem` | [point_count_two](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/point-count-two.md) | 50 | `result-track:38ef06ba8bef1496264cab4fd46a6b20d5fa499b41ecf145e514b2703ce604e5` |
| 6 | `theorem` | [forgetting_multiplicity_changes_count](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/forgetting-multiplicity-changes-count.md) | 53 | `result-track:c1c79f00384998c2ab91ae2a551f7ddc327da5e0d38e502c206f4b8fd0454cfc` |
| 7 | `theorem` | [shifted_shell_boundary](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/shifted-shell-boundary.md) | 59 | `result-track:70bc83bdd9ba7371a31acfa18a48e176a1d1464a9300dbcf8b370327315839cb` |
| 8 | `theorem` | [shifted_boundary_not_previous_shell](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/shifted-boundary-not-previous-shell.md) | 63 | `result-track:1a90f37de46e9bab1df769896d90a64a539cda2c28e1296193c41af91b49d342` |
| 9 | `theorem` | [omitting_shift_changes_shell](../../../../Combinatorics/ZeroShellCountFixturesNamespaced.lean/declarations/omitting-shift-changes-shell.md) | 69 | `result-track:9e7f0e5547fa85e981dc4142401aef391e236f9140cd844076823eb2eaff7ce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b49ba341c012b49c9eb98c0af549423269a167b156009111471a2bef814ff97f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variantcf853500e71806775517f13f36f40728faf53707cda5076ab15c3c5e4def50dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
