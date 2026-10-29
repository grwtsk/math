# Verification target: Imo1998 Q2 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf`.

Source path: `GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JudgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair.md) | 62 | `declaration-track:b4d8d0d095870c40fa85f125d95acf83cf10c2620fe258743d968b3e797cead4` |
| 2 | `abbrev` | [AgreedTriple](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/agreedtriple.md) | 66 | `declaration-track:1c3ff1599dfb8783eaaf42966a0bc3497c0db7596991bbeded7ae8eb46c63d0c` |
| 3 | `abbrev` | [JudgePair.judge₁](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair-judge.md) | 70 | `declaration-track:0d8a38dfa0607a33ed8505ebacd895bd8dfc2c41abac3799c94178181bc5d8da` |
| 4 | `abbrev` | [JudgePair.judge₂](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair-judge-source-edition-2.md) | 74 | `declaration-track:b043432f20c9d86e8fa217dc3f129c4be5ddeb235911d4fd10db6f6292c4d334` |
| 5 | `abbrev` | [JudgePair.Distinct](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair-distinct.md) | 78 | `declaration-track:1b61f024d2e35bc3aed8430b6ae7e805db9521a8978335aef402975a8412882e` |
| 6 | `abbrev` | [JudgePair.Agree](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair-agree.md) | 82 | `declaration-track:920ef9d8c27b55277db9c4ac3755caf422c8f20bc61caec531bf3c2392abf67e` |
| 7 | `abbrev` | [AgreedTriple.contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/agreedtriple-contestant.md) | 86 | `declaration-track:e35c02dde51c5d2c394bf2d26244d2862a1c18559e8b19717628bd9cdcf1eefb` |
| 8 | `abbrev` | [AgreedTriple.judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/agreedtriple-judgepair.md) | 91 | `declaration-track:3581a48babb41d1a0caf89f6e77933a3585adc3aab752bb9a9e9cedbf2726404` |
| 9 | `theorem` | [JudgePair.agree_iff_same_rating](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judgepair-agree-iff-same-rating.md) | 95 | `result-track:fbb9d361c68083a94a56d8aaf084f7610560a9839b5845d16c78ab2bff7d0df2` |
| 10 | `def` | [agreedContestants](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/agreedcontestants.md) | 101 | `declaration-track:f0341953220c05c8e3c577bfcf08bd57bd8980dd488ff768f877cd46991bcf03` |
| 11 | `def` | [A](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a.md) | 109 | `declaration-track:f364476a0d9dd3b54a2b37ddaf048f7ef2ee2dcb28ac3a09387f0158103ace96` |
| 12 | `theorem` | [A_maps_to_offDiag_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-maps-to-offdiag-judgepair.md) | 113 | `result-track:dc68625761f73dd552631f0cf017ea4460618329cb8d82ef8dac5dd48e49dd21` |
| 13 | `theorem` | [A_fibre_over_contestant](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-fibre-over-contestant.md) | 117 | `result-track:6847f63f7970265bce894801c0a5f3b222d3ac51769d5c8dae6850a0fe954ad6` |
| 14 | `theorem` | [A_fibre_over_contestant_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-fibre-over-contestant-card.md) | 124 | `result-track:9dfd1a75eedbc1e662fe55bec9d8fa35ba613e827e8517c349749e006bf158dd` |
| 15 | `theorem` | [A_fibre_over_judgePair](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-fibre-over-judgepair.md) | 134 | `result-track:e6b59ee64f1532486bc2547d0f727474b5c067e4b8f4e0ef7e3573017f98cdd6` |
| 16 | `theorem` | [A_fibre_over_judgePair_card](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-fibre-over-judgepair-card.md) | 142 | `result-track:5bd87b17f886d4ba144ced40861acaad0d356bd6441eb000bae54a84ba7f0528` |
| 17 | `theorem` | [A_card_upper_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-card-upper-bound.md) | 152 | `result-track:1a5a2b23c9b6184539defef1fb308fc8b31b21b37df86d8b4de547377db8c345` |
| 18 | `theorem` | [add_sq_add_sq_sub](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/add-sq-add-sq-sub.md) | 165 | `result-track:58979d95d5d39b7add6ab2f68fd0d9dff51da28f01358b1a648c18bd9ab356fb` |
| 19 | `theorem` | [norm_bound_of_odd_sum](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/norm-bound-of-odd-sum.md) | 168 | `result-track:790e6a26b61fa072ef2624949e6f3ad7a82d77d5b0f4f25d4120a953dfd4bf0f` |
| 20 | `theorem` | [judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/judge-pairs-card-lower-bound.md) | 182 | `result-track:d52e05f09a61acc23d16e90d21e0af2769b357bbb7f5f88448e96f4abb8d7fda` |
| 21 | `theorem` | [distinct_judge_pairs_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/distinct-judge-pairs-card-lower-bound.md) | 194 | `result-track:166ee9df24663a4a3c92d1c1419e5127aa11f0efea6b29f8fbbe64a541fbcab6` |
| 22 | `theorem` | [A_card_lower_bound](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/a-card-lower-bound.md) | 211 | `result-track:0a9a49909baa7da5f73e317d5b9f37dae325a35ba883ee96cb8c0a2df3ef49fc` |
| 23 | `theorem` | [clear_denominators](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/clear-denominators.md) | 222 | `result-track:bb6709bfdfedf7a80b48d20f01330b9cca33e809bb706b16d8cdac8db3c39c2d` |
| 24 | `theorem` | [imo1998_q2](../../../../AssociativeRingsAndAlgebras/Imo1998Q2NamespacedPublic.lean/declarations/imo1998-q2.md) | 234 | `result-track:019c834c758d5fdc2d14e6b0a168b3ca633033ebe60061ab9349717956592567` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b56d86b8076f2cac80ee0883f67d90bc401eda2e2f517f5f45e44bf6ac2837e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean","GRWTSK/_verification/specifications/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
