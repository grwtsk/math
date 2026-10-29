# Verification target: Imo1998 Q2 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2dfab426e1ad15fbef5460e9196b4881633b330",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2dfab426e1ad15fbef5460e9196b4881633b330`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JudgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair.md) | 57 | `declaration-track:a65a90bd24a99910b763a67044cb5b354eaf0d2978186e1b2c8f23841fe5b100` |
| 2 | `abbrev` | [AgreedTriple](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/agreedtriple.md) | 61 | `declaration-track:e8fbe292c4f646ec068501cee761b61fdd7665fdfae2f297b8545432728275e4` |
| 3 | `abbrev` | [JudgePair.judge₁](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair-judge-source-edition-2.md) | 65 | `declaration-track:daad02f4949413f6114e749623515f1bcdde42feff990f7944670d57c5c6f7f9` |
| 4 | `abbrev` | [JudgePair.judge₂](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair-judge.md) | 69 | `declaration-track:517d0ed6d222628bbcb4f9682925204e8bcb362d36da166ad39ccaccdf901aa4` |
| 5 | `abbrev` | [JudgePair.Distinct](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair-distinct.md) | 73 | `declaration-track:216e560e1df6acc07f98760e6b27336bfa6ab4c1e1e8d47ee56106fcb3b1548a` |
| 6 | `abbrev` | [JudgePair.Agree](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair-agree.md) | 77 | `declaration-track:0d54d1876940c0515da2f4dc7650f21377bb9a8bcb2760ce3d42d8746972e2e4` |
| 7 | `abbrev` | [AgreedTriple.contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/agreedtriple-contestant.md) | 81 | `declaration-track:8f861901d2ebd3fa09d0b90109418a7f0baa870a125487f518df4e285b7350f0` |
| 8 | `abbrev` | [AgreedTriple.judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/agreedtriple-judgepair.md) | 86 | `declaration-track:16ae1e3823f2d9873cb73ae25d6564a3276d59fb7c3c6ecdae7d8c70ae9a91ac` |
| 9 | `theorem` | [JudgePair.agree_iff_same_rating](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judgepair-agree-iff-same-rating.md) | 90 | `result-track:4c3feb6fd6e868b41d22c78a41b31d95e86ecf4c69794eaa5c1c39406d3da146` |
| 10 | `def` | [agreedContestants](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/agreedcontestants.md) | 96 | `declaration-track:eae8c1203b2f9cd883984edb08b3b1fe7e50d81720d431661bdd468dfbd222da` |
| 11 | `def` | [A](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a.md) | 104 | `declaration-track:d98d7001224bf3e9ac6057b78eb8c06697e1693547a924dce8997e8583365a72` |
| 12 | `theorem` | [A_maps_to_offDiag_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-maps-to-offdiag-judgepair.md) | 109 | `result-track:f98132fd5f4fc74a45e388792e658718c579c1b5a6604b91e8c4f9af4e987ded` |
| 13 | `theorem` | [A_fibre_over_contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-fibre-over-contestant.md) | 113 | `result-track:34169a1795506aa2999d2acd2da2b562e9b62391a711e80b11611c051d346385` |
| 14 | `theorem` | [A_fibre_over_contestant_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-fibre-over-contestant-card.md) | 123 | `result-track:29912c96f9ca7d80cb2aa135f5f5bc71c6f259aa3a235c1b2cda0ff300c6525a` |
| 15 | `theorem` | [A_fibre_over_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-fibre-over-judgepair.md) | 133 | `result-track:52618174cab1dafaaab5166722b8e136e1f3ec8bcf4998de2d3f31e9d4eb48f1` |
| 16 | `theorem` | [A_fibre_over_judgePair_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-fibre-over-judgepair-card.md) | 141 | `result-track:2e92685791c2bad707f9d43004698e930dd31ccfc67f020cd918201ab5a67c58` |
| 17 | `theorem` | [A_card_upper_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-card-upper-bound.md) | 149 | `result-track:abc2e0c629e9fb0aecd1d450a410312289c62407fbdc5a64387e3c6865b70a70` |
| 18 | `theorem` | [add_sq_add_sq_sub](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/add-sq-add-sq-sub.md) | 162 | `result-track:380504fc872c8e0c27cd34bd5b5a4c07733335c9ac19933f92509b4332c2578c` |
| 19 | `theorem` | [norm_bound_of_odd_sum](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/norm-bound-of-odd-sum.md) | 165 | `result-track:79ca0f9f0fdcfe85a849a6019eebb2294e509080435deafd6483bdab48693571` |
| 20 | `theorem` | [judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/judge-pairs-card-lower-bound.md) | 179 | `result-track:50992429533593b038b1ccc3b09328155333fac98a91a9fd60cbc6ae3567a005` |
| 21 | `theorem` | [distinct_judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/distinct-judge-pairs-card-lower-bound.md) | 191 | `result-track:ecc6d6aec65d661044825aaf1eb5c04cc54a99146bcdbcf4a490dea3ca88601c` |
| 22 | `theorem` | [A_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/a-card-lower-bound.md) | 208 | `result-track:aed0246b4da7457bf9773314192ef237ab227c414dc80f13f0405dc19e3f7f23` |
| 23 | `theorem` | [clear_denominators](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/clear-denominators.md) | 219 | `result-track:3bb8d661304d6f0101ba848138b501a4e24d110800d27254cb75270b7b2d400d` |
| 24 | `theorem` | [imo1998_q2](../../../../AssociativeRingsAndAlgebras/Imo1998Q2Namespaced.lean/declarations/imo1998-q2.md) | 231 | `result-track:7b5f8dc7064371d59605977058083c11a37410035e2a85ac5078ebe265d69b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3318a1cbbd8fdf184328053e98445c5e6d89acbf21bf49b89cf305cf914b0c97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variantaaf9bb83f6e1e6710a950983d07a7bbc925266ce05b70e2bdbdf619d28880145.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
