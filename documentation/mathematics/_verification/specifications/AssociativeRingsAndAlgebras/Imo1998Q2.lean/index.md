# Verification target: Imo1998 Q2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19953105781f75b7680b57c100de6e8934a59d32",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19953105781f75b7680b57c100de6e8934a59d32`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JudgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair.md) | 49 | `declaration-track:f6d227a88059852557936e1ee2a3096bb8138ad8c37ed2ff718ab07281125d72` |
| 2 | `abbrev` | [AgreedTriple](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/agreedtriple.md) | 53 | `declaration-track:8ba8144d7f94656e6bad56a982245243ecf2cbe809721d174d1e443a1212c1c7` |
| 3 | `abbrev` | [JudgePair.judge₁](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair-judge.md) | 57 | `declaration-track:b7dd7380f82c0862b714602da4d60c397bbe3cfce886affaf12d939dc76026fb` |
| 4 | `abbrev` | [JudgePair.judge₂](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair-judge-source-edition-2.md) | 61 | `declaration-track:b98e890c454632e793d5554775ebd580ad47b82941e60b2295ef75183851b7d1` |
| 5 | `abbrev` | [JudgePair.Distinct](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair-distinct.md) | 65 | `declaration-track:07a7a2b419ed6963778565799d37a7600b7620d076b939d55f6f8500d84d25bf` |
| 6 | `abbrev` | [JudgePair.Agree](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair-agree.md) | 69 | `declaration-track:4764c661318a76c37569110b334ec062eadfba09065b4726c230896115f560bd` |
| 7 | `abbrev` | [AgreedTriple.contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/agreedtriple-contestant.md) | 73 | `declaration-track:5fcceb2466c22fcd7a6750c2f20dcc4e9313d87fee6a31dcde1ed103d2fc73ef` |
| 8 | `abbrev` | [AgreedTriple.judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/agreedtriple-judgepair.md) | 78 | `declaration-track:e82d348d5a5785df926b1dbf5462e38d18ab17ffdf67a7d1730fc1154804bc1c` |
| 9 | `theorem` | [JudgePair.agree_iff_same_rating](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judgepair-agree-iff-same-rating.md) | 82 | `result-track:b500dfd7307e12c2412e1aa52ac5faf806e74a27142497e320aa12ffa3246b75` |
| 10 | `def` | [agreedContestants](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/agreedcontestants.md) | 88 | `declaration-track:51372f82cd554ae125044e79236888a23c73c9aa0dfa3b96feea95b80824e149` |
| 11 | `def` | [A](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a.md) | 96 | `declaration-track:23afd68b66b01f1e13ea5f30211404ffd30b2fbd3ea05c7a4318f4610a2c3964` |
| 12 | `theorem` | [A_maps_to_offDiag_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-maps-to-offdiag-judgepair.md) | 101 | `result-track:889fced0684217c4c8b8ae13b598f5676cb04ba02a582dd83320f8b4da8ee600` |
| 13 | `theorem` | [A_fibre_over_contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-fibre-over-contestant.md) | 105 | `result-track:cb8528b57378a27f11562c9c7154d102699920022ef87646de1b6b8ea3243a1f` |
| 14 | `theorem` | [A_fibre_over_contestant_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-fibre-over-contestant-card.md) | 115 | `result-track:7c5877e6ad29df2ba61cc19be3a8a6a3d9175a101e2bf7af8a230bcf9c9344a4` |
| 15 | `theorem` | [A_fibre_over_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-fibre-over-judgepair.md) | 125 | `result-track:d05488a439a384e4f2894d863aff6a9495bb0f7a3e270a883efde42e96a5509f` |
| 16 | `theorem` | [A_fibre_over_judgePair_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-fibre-over-judgepair-card.md) | 133 | `result-track:66d91027831f560a168a5459c546001dcdfa34c2775f53481e42dfe6e2fd1f80` |
| 17 | `theorem` | [A_card_upper_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-card-upper-bound.md) | 141 | `result-track:8389396d33d4004e56e549816ef71eab9ead55755a327f35d4601390e8c3f8a3` |
| 18 | `theorem` | [add_sq_add_sq_sub](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/add-sq-add-sq-sub.md) | 154 | `result-track:e758e1100298df91fd8f741adbcca336344d3e5bbaf16ea2317b54243b6a4d07` |
| 19 | `theorem` | [norm_bound_of_odd_sum](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/norm-bound-of-odd-sum.md) | 157 | `result-track:742dbbc6d48cdb6654df4414df967719ab4c1498bff9e585261c1850bb7e687c` |
| 20 | `theorem` | [judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/judge-pairs-card-lower-bound.md) | 171 | `result-track:15fa9c05b53f4d28860891f0fe61f6c6ae8ef70e615bf67c3bb589c80458dd5b` |
| 21 | `theorem` | [distinct_judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/distinct-judge-pairs-card-lower-bound.md) | 183 | `result-track:654a2e21be6f241478cae98c155a996e3cbd1e0516e998b4ebbaabd1c48b7790` |
| 22 | `theorem` | [A_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/a-card-lower-bound.md) | 200 | `result-track:fee4ea1058547bf7c3fdf873e6190db4009975ce9f20a4b32c75c5cc4b7a6df5` |
| 23 | `theorem` | [clear_denominators](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/clear-denominators.md) | 211 | `result-track:c8c6b7a0c232eeaabefeea49bd1a576be2d8da2e895989f57c9a7c401fe49a98` |
| 24 | `theorem` | [imo1998_q2](../../../../AssociativeRingsAndAlgebras/Imo1998Q2.lean/declarations/imo1998-q2.md) | 223 | `result-track:cf26df6fcaf64faaafbe5e4b59a2b5137be4977f4053af161b11b369bdcc48de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=caafd6380897f680b75dc89c741124ce5f4363613f0ab858e07302a7f84bf0e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaebb60b4e8e62162666846357a0d01161edcce0fe67dfa31699dee49e1d307a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
