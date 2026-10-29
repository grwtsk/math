# Verification target: Laws Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18211feb5123687caf1cb3da6bc56234f444e856",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/LawsNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/LawsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18211feb5123687caf1cb3da6bc56234f444e856`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bot_join](../../../../Combinatorics/LawsNamespaced.lean/declarations/bot-join.md) | 17 | `result-track:66c897c8f38fa7423674d7e14f35f7f8c33ae6eb993017367d97a5f90baeca3d` |
| 2 | `theorem` | [top_meet](../../../../Combinatorics/LawsNamespaced.lean/declarations/top-meet.md) | 21 | `result-track:f0cab9e98b32b62ad34720d32de26b5a15f4c188d2818b51948036c773a73336` |
| 3 | `theorem` | [compl_join](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-join.md) | 25 | `result-track:ff7099b9e6c01f5ebd1ab2ddb45d59d060c16a2947b619715ce536aff49d65f7` |
| 4 | `theorem` | [compl_meet](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-meet.md) | 29 | `result-track:efc50fe1d81788fa1672626ce0ca22563cb7b14a99d3a72ed122a278ff78d76f` |
| 5 | `theorem` | [join_idem](../../../../Combinatorics/LawsNamespaced.lean/declarations/join-idem.md) | 34 | `result-track:4fec7eabe4ab44c132529f656a3c355dd0bc1e5d0dedeadf0964b47b7468fdbd` |
| 6 | `theorem` | [meet_idem](../../../../Combinatorics/LawsNamespaced.lean/declarations/meet-idem.md) | 48 | `result-track:bd3f74bf0163e5b7fa79b705cc77fadbddc3771069c7076fbafcfaa265d5d878` |
| 7 | `theorem` | [join_top](../../../../Combinatorics/LawsNamespaced.lean/declarations/join-top.md) | 62 | `result-track:599306a9221efbae5cbd97b5c2885aa5f6215cc218f677b2d1771c17276fb1eb` |
| 8 | `theorem` | [top_join](../../../../Combinatorics/LawsNamespaced.lean/declarations/top-join.md) | 74 | `result-track:192aac5d46c4f7a86c8852f1abf9f797d3a3a7589eab694155c2a3210c55e7a8` |
| 9 | `theorem` | [meet_bot](../../../../Combinatorics/LawsNamespaced.lean/declarations/meet-bot.md) | 79 | `result-track:aabe93b63a0121763ebcbfa0b234e8ad0b6fec9724f951b596e2fcc5db475157` |
| 10 | `theorem` | [bot_meet](../../../../Combinatorics/LawsNamespaced.lean/declarations/bot-meet.md) | 91 | `result-track:c9d35421136bf4e3bf2924f07102806942a69c2b1109d05b73ba6dc98ce69101` |
| 11 | `theorem` | [join_absorb](../../../../Combinatorics/LawsNamespaced.lean/declarations/join-absorb.md) | 96 | `result-track:57662c89431a28aeb5a45c99ca3e0ba1941f1d09e502cabe57b6a91782570c9f` |
| 12 | `theorem` | [meet_absorb](../../../../Combinatorics/LawsNamespaced.lean/declarations/meet-absorb.md) | 109 | `result-track:541b3efc43db8a537c06709391d0bc61452bd7008757f52db1f4287fb7a09d88` |
| 13 | `theorem` | [join_left_comm](../../../../Combinatorics/LawsNamespaced.lean/declarations/join-left-comm.md) | 121 | `result-track:c047a6e1a3f04b23afe9860e22c88b2913cb491a05d087dfdd70437e107c89bd` |
| 14 | `theorem` | [meet_left_comm](../../../../Combinatorics/LawsNamespaced.lean/declarations/meet-left-comm.md) | 131 | `result-track:ad8dad3bf69dafc142f38358d7fe511b838d921df1f9b069cd5f93755a8d1024` |
| 15 | `theorem` | [compl_unique](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-unique.md) | 142 | `result-track:51ac07a21271da6bbeb45b829c98589f8df3e13f1ab0c1745cb4b6dd039fa7f9` |
| 16 | `theorem` | [compl_involutive](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-involutive.md) | 175 | `result-track:4c2df9882fd45704ff5be694c31ad6aa85789d4d76b2ee9926ee746029c9ab83` |
| 17 | `theorem` | [compl_join_eq_meet_compl](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-join-eq-meet-compl.md) | 182 | `result-track:d21ba8e963ba43d32529b768c05177ec4f93d28616dd7af83173b82ac2e03fa5` |
| 18 | `theorem` | [compl_meet_eq_join_compl](../../../../Combinatorics/LawsNamespaced.lean/declarations/compl-meet-eq-join-compl.md) | 253 | `result-track:108157fbf96d096963750995c0377e05791e8535d2d7c48b2d4e87dc72ed2c1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=615febc3443712f720752f0b928ab692a565fadf80f605be33f304219434c4f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
