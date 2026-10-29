# Verification target: Derangements Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f487965ecb46abf617f5684ca0baaf3bb8ecb1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f487965ecb46abf617f5684ca0baaf3bb8ecb1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Derangements.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/instance.md) | 41 | `declaration-track:ef69ec691b447e5b9d1e1fac2f99466a2530f51393268027de7cab0abf772ce2` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/instance-source-edition-2.md) | 44 | `declaration-track:fb5bc191d69be7f9284c4b08124bd79cb99b5263c9969cf0ee1c1a021bf9ba8c` |
| 3 | `theorem` | [card_derangements_invariant](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/card-derangements-invariant.md) | 46 | `result-track:00b9a9b0329aa2c7e8d0dfc40032e3aad7416cce5fb36811900fcd4a58b0149b` |
| 4 | `theorem` | [card_derangements_fin_add_two](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/card-derangements-fin-add-two.md) | 50 | `result-track:d8c73884ecf3184dcda9f62ea2e12cd16f66efd0ff3022beab6fb8772f8c3cf4` |
| 5 | `def` | [numDerangements](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements.md) | 72 | `declaration-track:98b13107082d7ee28af183d4bc5460a1162295fc091adfa2af737c409b4d6502` |
| 6 | `theorem` | [numDerangements_zero](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements-zero.md) | 78 | `result-track:6b4b8b1f4306ed22a037947266546ba93760dc2ce651608f0515140de1e80d5a` |
| 7 | `theorem` | [numDerangements_one](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements-one.md) | 82 | `result-track:9dfe01a00b08e4e20963d0e14030f6aaedf7897d6a5899b770a3fb22ac184491` |
| 8 | `theorem` | [numDerangements_add_two](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements-add-two.md) | 85 | `result-track:3bc9ae9b9a6bf700a94c6041da1a148a017609abca9323f4520819e6b745679c` |
| 9 | `theorem` | [numDerangements_succ](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements-succ.md) | 89 | `result-track:5ef79a47d69d0bf839a115547fefcb377909b75ee3d67ffb107c4463916ed4f6` |
| 10 | `theorem` | [card_derangements_fin_eq_numDerangements](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/card-derangements-fin-eq-numderangements.md) | 97 | `result-track:b372c34467c6b1571e1937de69d66de66e4b6c11604c6d1a23bb190e64f61d70` |
| 11 | `theorem` | [card_derangements_eq_numDerangements](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/card-derangements-eq-numderangements.md) | 108 | `result-track:5225f93e34345a850ca8c923f0130f1a859dcf06b2a004dd525b2ce592c1b9b1` |
| 12 | `theorem` | [numDerangements_sum](../../../../Combinatorics/DerangementsFiniteNamespaced.lean/declarations/numderangements-sum.md) | 113 | `result-track:571df610b28559a482746d4a8cb4ecf01673d8260caa2dca061ff51119e5e872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96ca237d9909662ca473c0e014d7b09845a78773a6d03f7c9764bc144538fe44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finite/Variante206b03cbe12f1f9fd3839c1e2800662c1af584c4e4aaad4ddc4c0a5283656ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
