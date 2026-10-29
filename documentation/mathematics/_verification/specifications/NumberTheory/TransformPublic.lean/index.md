# Verification target: Transform Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71772d84acea316d4a44b5bc2fb6e9742fc3d035",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/TransformPublic.lean/index.md) · [Full source](../../../../NumberTheory/TransformPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71772d84acea316d4a44b5bc2fb6e9742fc3d035`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean.json)

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
| 1 | `def` | [δ](../../../../NumberTheory/TransformPublic.lean/declarations/anonymous.md) | 83 | `declaration-track:679797e03a7b05dee290f2e2a3e6b8d38ed4b27b53f6f3de17d095df533dec91` |
| 2 | `lemma` | [δ_eq](../../../../NumberTheory/TransformPublic.lean/declarations/eq.md) | 86 | `result-track:090e54edca6514e01f326c2be46a00b1e13a41ac0f1b0ae5b7cf2f8ce560b369` |
| 3 | `lemma` | [δ_eq_two](../../../../NumberTheory/TransformPublic.lean/declarations/eq-two.md) | 89 | `result-track:6a24b40a667dd2f93616b3eea8fb3e6df6e52173fcfab9f8a51a52d491750543` |
| 4 | `lemma` | [δ_eventually_cofinite](../../../../NumberTheory/TransformPublic.lean/declarations/eventually-cofinite.md) | 91 | `result-track:c2b37effc27fe819aab51bbc39e88be2ca600e891be5c1e43061c4f376e066e6` |
| 5 | `abbrev` | [G2Term](../../../../NumberTheory/TransformPublic.lean/declarations/g2term.md) | 96 | `declaration-track:9b30934d5ccc57fc637c2b933cf27d4f4817f39145ad159ab76f94408ac6b7d8` |
| 6 | `lemma` | [G2Term_summable](../../../../NumberTheory/TransformPublic.lean/declarations/g2term-summable.md) | 99 | `result-track:de71533be1d31f3906507c2125bf575798d7c8c196bc9ebb0a94a9697e3ab7d3` |
| 7 | `lemma` | [G2Term_prod_summable](../../../../NumberTheory/TransformPublic.lean/declarations/g2term-prod-summable.md) | 108 | `result-track:025894d3ce7cc218e09a6071fc9ce212515789366f46f3d06ecaa70781e72ddf` |
| 8 | `lemma` | [aux_identity](../../../../NumberTheory/TransformPublic.lean/declarations/aux-identity.md) | 111 | `result-track:5a88637db4febd75286bd43cf446121c8539e45f968550988bd109d1e616991f` |
| 9 | `lemma` | [G2_eq_tsum_G2Term](../../../../NumberTheory/TransformPublic.lean/declarations/g2-eq-tsum-g2term.md) | 131 | `result-track:86bf6742d6659d63b93948b4083447c5910dd32ea93ae1cade117f5f4773b9cb` |
| 10 | `lemma` | [G2_S_action_eq_tsum_G2Term](../../../../NumberTheory/TransformPublic.lean/declarations/g2-s-action-eq-tsum-g2term.md) | 147 | `result-track:d37bc19c0c60803ddac9e991de35f2442bf34699b0d2e1f8592075471eb353a2` |
| 11 | `lemma` | [tsum_G2Term_eq_tsum](../../../../NumberTheory/TransformPublic.lean/declarations/tsum-g2term-eq-tsum-source-edition-2.md) | 172 | `result-track:c8b9cfb9825629fee83a4090eb4ea2ee80a71a5ca236b36fba65a422b7aff17f` |
| 12 | `lemma` | [tsum_G2Term_eq_tsum'](../../../../NumberTheory/TransformPublic.lean/declarations/tsum-g2term-eq-tsum.md) | 177 | `result-track:a6d1127d0db5147e2830ab20111bd6ce99e88354fcb5f9adad72b8cbfefe82bf` |
| 13 | `lemma` | [G2_S_transform](../../../../NumberTheory/TransformPublic.lean/declarations/g2-s-transform.md) | 192 | `result-track:26b5d3066dc8ca12faeaf75dc79a84d851a9481b199281d81eb663ab55662830` |
| 14 | `lemma` | [G2_T_transform](../../../../NumberTheory/TransformPublic.lean/declarations/g2-t-transform.md) | 197 | `result-track:3fe134f90574f1ff7acdb9a60c7008d23331bcbf79de307655e6996343e9c963` |
| 15 | `lemma` | [G2_slash_action](../../../../NumberTheory/TransformPublic.lean/declarations/g2-slash-action.md) | 203 | `result-track:0ff1092e989ee69fc5321a9023c1e9bec389eeb069cc95ba6efb2b8182c83d29` |
| 16 | `lemma` | [E2_slash_action](../../../../NumberTheory/TransformPublic.lean/declarations/e2-slash-action.md) | 229 | `result-track:37d10d2d06cb38a1c04d0ab501baa6a091c1a004469080a2b6be57195ef9d0b5` |
| 17 | `lemma` | [E2_T_transform](../../../../NumberTheory/TransformPublic.lean/declarations/e2-t-transform.md) | 234 | `result-track:3f82b03b767b573cf2dc81588eaf54b4f63a220dfe22865262d998cfad3fb08c` |
| 18 | `lemma` | [E2_T_smul](../../../../NumberTheory/TransformPublic.lean/declarations/e2-t-smul.md) | 238 | `result-track:1210b6cf6bed0c0329bad6de9542e2a5287151ed1fbd9dbbcd2e3212cccc8b69` |
| 19 | `lemma` | [E2_periodic](../../../../NumberTheory/TransformPublic.lean/declarations/e2-periodic.md) | 242 | `result-track:18c927308f275f07cbe4dc82cfbea2634444466f10568f9e37b6d09e9ad1a5d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0271c66e875e47d5f7469dd21d36d99fd55e323ec61aab9d1e21137e1c573ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Transform/Variant6ab5f9bfbef39fb1a8f1dd25ae40f0d81ea24f197ca7a58d4783ae173e22d64b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
