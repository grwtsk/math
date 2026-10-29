# Verification target: Laws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Laws.lean/index.md) · [Full source](../../../../Combinatorics/Laws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Algebra.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bot_join](../../../../Combinatorics/Laws.lean/declarations/bot-join.md) | 9 | `result-track:33c39ecc74ad213996e76ddc5428446a5f63a74a43621527a670fec6fabf48c6` |
| 2 | `theorem` | [top_meet](../../../../Combinatorics/Laws.lean/declarations/top-meet.md) | 13 | `result-track:32b4968484023e82b4734c8037d04feef61632a19fa81ec027437bac2f873666` |
| 3 | `theorem` | [compl_join](../../../../Combinatorics/Laws.lean/declarations/compl-join.md) | 17 | `result-track:5444121ac29a0e5b3e85473bd9272f56098c1bcd5e6f075089eeeb03f36a641c` |
| 4 | `theorem` | [compl_meet](../../../../Combinatorics/Laws.lean/declarations/compl-meet.md) | 21 | `result-track:3d20ea03e44b29c425f87c56a64e70d30031967410a75f5d3b1f8fca8ac0e229` |
| 5 | `theorem` | [join_idem](../../../../Combinatorics/Laws.lean/declarations/join-idem.md) | 26 | `result-track:e2db266b0876a6d62a3f81e1c4b0cdd70205f4c2d71c948a2d23829ba3b18db2` |
| 6 | `theorem` | [meet_idem](../../../../Combinatorics/Laws.lean/declarations/meet-idem.md) | 40 | `result-track:e0eca61afd0445aaf189fad513171d306fd67fcdcc4a62ca1e483c6ed7d761e8` |
| 7 | `theorem` | [join_top](../../../../Combinatorics/Laws.lean/declarations/join-top.md) | 54 | `result-track:4eae47ffe70ecd8f415a29424358ffec9ea0cd6f8dbd53abc240d2009ef2873f` |
| 8 | `theorem` | [top_join](../../../../Combinatorics/Laws.lean/declarations/top-join.md) | 66 | `result-track:4f0201a62adf8d2d1ab294118a4cc69b7f4187c9effecd495a92d552109d4b89` |
| 9 | `theorem` | [meet_bot](../../../../Combinatorics/Laws.lean/declarations/meet-bot.md) | 71 | `result-track:070b3edb6ea80d768d25e4fd692b2ede8587f54ce8226eb4b26815896a21357a` |
| 10 | `theorem` | [bot_meet](../../../../Combinatorics/Laws.lean/declarations/bot-meet.md) | 83 | `result-track:f37ef3a5700a6726459f681b77bd3cd5ee57d6bcc9f6de079610b6129f03ebfa` |
| 11 | `theorem` | [join_absorb](../../../../Combinatorics/Laws.lean/declarations/join-absorb.md) | 88 | `result-track:5e83acc0d3a33592a7c22d56a277cce4d230097a875da6753a54b4b43e558861` |
| 12 | `theorem` | [meet_absorb](../../../../Combinatorics/Laws.lean/declarations/meet-absorb.md) | 101 | `result-track:bb7f6255c74c3502c981234767416a145549d8cff3af0f3e3b31fd33d3ac510a` |
| 13 | `theorem` | [join_left_comm](../../../../Combinatorics/Laws.lean/declarations/join-left-comm.md) | 113 | `result-track:1fbd89839e1fab76b184d3c7aaca2f26577b7c675ea53de254f2e054a5e80f49` |
| 14 | `theorem` | [meet_left_comm](../../../../Combinatorics/Laws.lean/declarations/meet-left-comm.md) | 123 | `result-track:87cb844f1c46dd0b5c6f86b4886ea50532b6d831cab384aed73145780ab99cb2` |
| 15 | `theorem` | [compl_unique](../../../../Combinatorics/Laws.lean/declarations/compl-unique.md) | 134 | `result-track:6a8eb2e43dbb5afb4127abb55cd3d29775fd112d241c618cef273e2a93549fe0` |
| 16 | `theorem` | [compl_involutive](../../../../Combinatorics/Laws.lean/declarations/compl-involutive.md) | 167 | `result-track:b66a363342814f432c8aed2913290388ea43e2fd3af883b2892087c60ef15c47` |
| 17 | `theorem` | [compl_join_eq_meet_compl](../../../../Combinatorics/Laws.lean/declarations/compl-join-eq-meet-compl.md) | 174 | `result-track:02e195f11926d8cba6ac72432e9553e519818e4aca07c59b76bf7124b5276137` |
| 18 | `theorem` | [compl_meet_eq_join_compl](../../../../Combinatorics/Laws.lean/declarations/compl-meet-eq-join-compl.md) | 245 | `result-track:39188bd1b4ce7b6c31bb037d09405a78e5a0a71a46779fa649179508ecdcd787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a178130605817b108a16ec3967b695caad2f5d1aacd110c836730be2fa7255b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
