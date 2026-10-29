# Verification target: Commuting Probability Namespaced Comm Prob Odd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69340b41cf24defe9197a3cdbaa4385d543cb22a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant5fbce821ccaa39bb84968f8c5a0689e36332832b213bb6a45644bb0f1f6bfa61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69340b41cf24defe9197a3cdbaa4385d543cb22a`.

Source path: `GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant5fbce821ccaa39bb84968f8c5a0689e36332832b213bb6a45644bb0f1f6bfa61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CommutingProbability/Variant5fbce821ccaa39bb84968f8c5a0689e36332832b213bb6a45644bb0f1f6bfa61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.CardCommute` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Dihedral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commProb](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob.md) | 43 | `declaration-track:1b7fc220cdaf7ccce987d8594c047aeb3e0b16399967edd36e8a6a37b6c7a437` |
| 2 | `theorem` | [commProb_def](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-def-source-edition-2.md) | 46 | `result-track:dc2002e4c43fe68c4149f3c2d3d69e62fc9e1b0a64c626776fa5cbe035398844` |
| 3 | `theorem` | [commProb_prod](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-prod.md) | 50 | `result-track:a361521f9c8638d174d14249c6e3e40ec0c2f690768e9ad4fa9c25ffdf1e0849` |
| 4 | `theorem` | [commProb_pi](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-pi.md) | 57 | `result-track:af4ece24fbbe46d4a66dfd6ad1226e5db810652aa8590d1ed58a817191d5a3cd` |
| 5 | `theorem` | [commProb_function](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-function.md) | 65 | `result-track:47963eaa63e2ddb91cb5fecce81b29cfd62a4ebb52fa69a137261927489f62e9` |
| 6 | `theorem` | [commProb_eq_zero_of_infinite](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-eq-zero-of-infinite.md) | 70 | `result-track:e0ca6e9d9f9ba89a76d58f09a39e661a3d12596af9873db9c241397f8d6c4638` |
| 7 | `theorem` | [commProb_pos](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-pos.md) | 75 | `result-track:33fdb3ad92c7d37e4085627daabe9c5b16fa926f94acb78fb7c4319b1b18041a` |
| 8 | `theorem` | [commProb_le_one](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-le-one.md) | 80 | `result-track:42f0660d49e30455264d256a4ea714b5d600c4acd31c88bcf9b22734563306fe` |
| 9 | `theorem` | [commProb_eq_one_iff](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-eq-one-iff.md) | 87 | `result-track:23f0fec510200f8134c9e28566b65bb63269a0f0f426fa46953c2f8bfd97e5ac` |
| 10 | `theorem` | [commProb_def'](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-def.md) | 99 | `result-track:0add07fd445dc383865a9a75a6318ebb632b7a1e0a13d58717744cb960c6d549` |
| 11 | `theorem` | [Subgroup.commProb_subgroup_le](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/subgroup-commprob-subgroup-le.md) | 108 | `result-track:3ec79d972043e6bbb321fa1ea47d2137d7ab2d0191d81559671a9953c0d48004` |
| 12 | `theorem` | [Subgroup.commProb_quotient_le](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/subgroup-commprob-quotient-le.md) | 118 | `result-track:a1f57d33e56b2740f06792fe85b20de4e5a5aac1b4dd0f5ecfd2ccfb952a9fa8` |
| 13 | `theorem` | [inv_card_commutator_le_commProb](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/inv-card-commutator-le-commprob.md) | 131 | `result-track:fa736afcadb77694c8d34e142b916377f1a93da4b03b5b00f345ddf2e8173b2b` |
| 14 | `lemma` | [commProb_odd](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-odd.md) | 139 | `result-track:331b50770dd65217df10fd47abc80123075fc9c340b93e8cae694713a9d56c8c` |
| 15 | `lemma` | [div_two_lt](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/div-two-lt.md) | 147 | `result-track:65c4c27f38ec8ac0ea6de13a31aec2b4c39dd937f71353c2c1cffd8b70251840` |
| 16 | `lemma` | [div_four_lt](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/div-four-lt.md) | 150 | `result-track:e3cf70d540c8003143198a7f88fe42b4dc2e2925eba5216c58a91600e9c2e0c6` |
| 17 | `def` | [reciprocalFactors](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/reciprocalfactors.md) | 155 | `declaration-track:3dbf7f5a024ff18ea0120b185036a7a595df2a9d84fe199be28521136d7204ef` |
| 18 | `lemma` | [reciprocalFactors_zero](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/reciprocalfactors-zero.md) | 163 | `result-track:51f5884c65efe92db88537b1f55848fcd73e37dfaeb3672dae1be97c570ab124` |
| 19 | `lemma` | [reciprocalFactors_one](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/reciprocalfactors-one.md) | 166 | `result-track:533b298cb13df4cb846c1d6d606f289087fab38fc317389c27b927632f6f7b8e` |
| 20 | `lemma` | [reciprocalFactors_even](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/reciprocalfactors-even.md) | 169 | `result-track:eab459f8a6dadc0a600b30ca25875696c6240821d9751270de6582d125e2a420` |
| 21 | `lemma` | [reciprocalFactors_odd](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/reciprocalfactors-odd.md) | 176 | `result-track:4cddcf9ec179838638fd59bc337faa2828ac17f1d3e9acd3ab8d637c487a85b9` |
| 22 | `abbrev` | [Product](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/product.md) | 184 | `declaration-track:47b168270a0e7996989224bff339af2065bb6308021729bd02eb72c9f5fb65f5` |
| 23 | `lemma` | [commProb_nil](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-nil.md) | 187 | `result-track:6263d308390ec6ae4ca4f83d534f59414758d353f5d75ba985edf0f78d5dcdc5` |
| 24 | `lemma` | [commProb_cons](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-cons.md) | 190 | `result-track:80911f737cac9a64c33587ba7fa86671f13552a6fb1fca2bdc3b0d7e0fccb2d7` |
| 25 | `theorem` | [commProb_reciprocal](../../../../GroupTheoryAndGeneralizations/CommutingProbabilityNamespacedCommProbOdd.lean/declarations/commprob-reciprocal.md) | 195 | `result-track:a88bee3655e9c7f84bcef384f21dbc5981671161ff4019d2d6996b4618bcf3e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab10debe76a9b57c4c0c2e102fb74b1714c0978cefcb1bb885983192d3a597a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant5fbce821ccaa39bb84968f8c5a0689e36332832b213bb6a45644bb0f1f6bfa61.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CommutingProbability/Variant5fbce821ccaa39bb84968f8c5a0689e36332832b213bb6a45644bb0f1f6bfa61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
