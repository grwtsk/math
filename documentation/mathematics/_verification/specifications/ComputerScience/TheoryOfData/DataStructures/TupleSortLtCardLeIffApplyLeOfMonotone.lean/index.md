# Verification target: Tuple Sort Lt Card Le Iff Apply Le Of Monotone

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3ce2590cee1202ca4632f63733132bc85095475",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3ce2590cee1202ca4632f63733132bc85095475`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graph.md) | 37 | `declaration-track:0895a6448c9c02dac610380eb8d4c0aba4e8c5863470c2fb1670612de9c7abbb` |
| 2 | `def` | [graph.proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graph-proj.md) | 43 | `declaration-track:ed5baca16fc10bd2d1b51be7a7c199c3f2bdbb02513824a94073887d35803c23` |
| 3 | `theorem` | [graph.card](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graph-card.md) | 46 | `result-track:cac7fc1f78572d61c2c12a4da5a5c6c5d917a19e75efa3962a300697552123de` |
| 4 | `def` | [graphEquiv₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graphequiv-source-edition-2.md) | 56 | `declaration-track:cd18c851adac2343370cf19e2673f4c5e9e74dc829c990eea880b6c8ee86dfb3` |
| 5 | `theorem` | [proj_equiv₁'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/proj-equiv.md) | 68 | `result-track:d8713f1a00d8514efab7fc7108d43effa352d4684ee9917116c39d7621918e24` |
| 6 | `def` | [graphEquiv₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graphequiv.md) | 73 | `declaration-track:1dbf7003aa2725ae058e0148824ceaf939d87662a3a717c40822ed8763baf251` |
| 7 | `def` | [sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/sort.md) | 77 | `declaration-track:5cfc4a634890454fc37e309baf6aa934b4e1bf56ae40816dcc8ce5a28a9b0c54` |
| 8 | `theorem` | [graphEquiv₂_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/graphequiv-apply.md) | 80 | `result-track:759ea3045ca20a9b57ef322e0874d0a1ff994d8223c94a7063346477225692be` |
| 9 | `theorem` | [self_comp_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/self-comp-sort.md) | 84 | `result-track:f6e1b646f0bc3d51e544db50f5b4e3cae69023484df101ae5c986a0bb24366ba` |
| 10 | `theorem` | [monotone_proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/monotone-proj.md) | 87 | `result-track:f92b30e04eac3073c4dc12cb0b9382689724f695015062d0cd1b0134cc969fdb` |
| 11 | `theorem` | [monotone_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/monotone-sort.md) | 92 | `result-track:71faa2ca8ad9a86a6e5d2e4556cec74bbdc8e727bb32cb2fd928beafd1abaf65` |
| 12 | `theorem` | [lt_card_le_iff_apply_le_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/lt-card-le-iff-apply-le-of-monotone.md) | 106 | `result-track:ea2f565aef44a30632ad7c58d355b46e3351c80ef684b2db9f57a1d1c3751c37` |
| 13 | `theorem` | [lt_card_ge_iff_apply_ge_of_antitone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/lt-card-ge-iff-apply-ge-of-antitone.md) | 133 | `result-track:e3f9dcc6fbf4c414afdf0ce6291e866db7fb853c49df39756fb170ed0439cf27` |
| 14 | `theorem` | [unique_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/unique-monotone.md) | 139 | `result-track:eb7eada4c655d795f447d88b5c3739d6727af971f5a2835199181421d6932de9` |
| 15 | `theorem` | [unique_antitone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/unique-antitone.md) | 146 | `result-track:63d78729b8c7a640504ffc4f5bce4367ebc340a85530b448d9de24e6aa41c9d4` |
| 16 | `theorem` | [eq_sort_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/eq-sort-iff.md) | 156 | `result-track:0a339f692309e46cf2adab350fb38fc8414363e7f2ffe867d7b03302f0179fdb` |
| 17 | `theorem` | [eq_sort_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/eq-sort-iff-source-edition-2.md) | 167 | `result-track:57d00578219094746d65b5800ec71102c138c712c7b77533d68d819d867e77d8` |
| 18 | `theorem` | [sort_eq_refl_iff_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/sort-eq-refl-iff-monotone.md) | 176 | `result-track:f9e8c221a2927ab8776113c96488db73b8329f0ab4393f52cd1f54daa2c0e4c3` |
| 19 | `theorem` | [comp_sort_eq_comp_iff_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/comp-sort-eq-comp-iff-monotone.md) | 182 | `result-track:de369ac9a98ef0824749046474d05ff07f3ac3a970a6076ab5caf1f3768e8f44` |
| 20 | `theorem` | [comp_perm_comp_sort_eq_comp_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/comp-perm-comp-sort-eq-comp-sort.md) | 186 | `result-track:257fcdb888c3221429714fa2defcb52e4efcbade37351346603913ab757928bb` |
| 21 | `theorem` | [antitone_pair_of_not_sorted'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/antitone-pair-of-not-sorted.md) | 192 | `result-track:14de6a7cd9a6837b44bc17d295981dd7647dead81ca08788624bf6cbfab17e8f` |
| 22 | `theorem` | [antitone_pair_of_not_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSortLtCardLeIffApplyLeOfMonotone.lean/declarations/antitone-pair-of-not-sorted-source-edition-2.md) | 199 | `result-track:b6c5ebbfa6c66d97d43b8dea314567bf4a02ad491b64f6801e1ffac5228b9055` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32f43e4c286402cc9e228632ed916059ec33948131f4c222064b80b257796523 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sort/Variantfe53eb0b7e5b8598c35037fed1e6a08d54d45d130e005a86235175813228587d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
