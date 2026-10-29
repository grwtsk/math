# Verification target: Mod Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab64ef81d8b8a83989a23866b3a90b9e1c1af78a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab64ef81d8b8a83989a23866b3a90b9e1c1af78a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Monoid` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frequently_modEq](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/declarations/frequently-modeq.md) | 27 | `result-track:0ea7036f678d554426a00dd3e1d8b0007a7733f036f7a7b583052871617d4ed9` |
| 2 | `theorem` | [frequently_mod_eq](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/declarations/frequently-mod-eq.md) | 31 | `result-track:df683c07d477f8f148464717db5d3ef3c9dba5842fb65e95cbf5291e874f3ddd` |
| 3 | `theorem` | [frequently_even](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/declarations/frequently-even.md) | 34 | `result-track:a345d1ecc18f54431a9e67ac9351b6ae12e0ed4b9598e59cfd4360b5ff579575` |
| 4 | `theorem` | [frequently_odd](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/declarations/frequently-odd.md) | 37 | `result-track:c6e3e5173968e319dacf8378f293d9ccde42c6561cbfcd0ad36ada06e47ed07d` |
| 5 | `theorem` | [Filter.nonneg_of_eventually_pow_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/ModEq.lean/declarations/filter-nonneg-of-eventually-pow-nonneg.md) | 42 | `result-track:c9ca8daa8b0d31d284c431d4d718e464ad25898bd6cdeb153af7b817a54a55b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22ecfaeed2c371080571bfc1c3429ca24e6efb4c6df37c766602158240302a6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModEq/Variant41794c6e630d801fd241b4e86d91cc8baac5d091a6e197e670dd9acec332473a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
