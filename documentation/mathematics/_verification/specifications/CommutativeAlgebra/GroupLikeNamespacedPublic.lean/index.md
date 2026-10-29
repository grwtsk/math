# Verification target: Group Like Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98baa3a10b601d3fec09a684ff644d2d1663735d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98baa3a10b601d3fec09a684ff644d2d1663735d`.

Source path: `GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean.json)

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
| 1 | `structure` | [IsGroupLikeElem](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/isgrouplikeelem.md) | 45 | `declaration-track:04368d500de9b9526a91cdc48c1c042e7e6b4e05642ac219a8df353beaa8334c` |
| 2 | `lemma` | [isGroupLikeElem_self](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/isgrouplikeelem-self.md) | 53 | `result-track:80bdf521c8ecfccb0c275083a22d063797ab717bb2d5756c306823fb6ed071a2` |
| 3 | `lemma` | [IsGroupLikeElem.ne_zero](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/isgrouplikeelem-ne-zero.md) | 56 | `result-track:d5d658a0cd3605cc4138267025b43d3ee2f1be7387e105a57b4bb8bc92056889` |
| 4 | `lemma` | [IsGroupLikeElem.map](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/isgrouplikeelem-map.md) | 60 | `result-track:50ae9143289953eaf9e15c51570a387b56b1815934d1c7c9d2ff609f6d0dc410` |
| 5 | `lemma` | [isGroupLikeElem_map_equiv](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/isgrouplikeelem-map-equiv.md) | 66 | `result-track:afd6bfc91fbc3ce776a3e5f14780f4a8314884b5e2f103f12e5a4802c3b866f1` |
| 6 | `structure` | [GroupLike](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/grouplike.md) | 74 | `declaration-track:0f7423f7ac02c29bfebacdde9338f26f57d1c4dc2adfb6d07863caebb0e73dca` |
| 7 | `instance` | [instCoeOut](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/instcoeout.md) | 87 | `declaration-track:0b3a4aad55c274984425a2f6eb75557685ed028f592bdefb8ce7d11386aa25b0` |
| 8 | `lemma` | [val_injective](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/val-injective.md) | 89 | `result-track:b959d7874d2b20c413b7c3e409fa85adfe34e45b19daaa6a1c7056650c4835fe` |
| 9 | `lemma` | [val_inj](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/val-inj.md) | 91 | `result-track:65b98056792954792406bc31360720bbfe831c68c6b5c17c7d84d037bef1eb14` |
| 10 | `def` | [valEquiv](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/valequiv.md) | 96 | `declaration-track:0e0a6f171cebd686e3e05ba871a93aadb86263b52670f83983b90438938ca3c8` |
| 11 | `lemma` | [linearIndepOn_isGroupLikeElem](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/linearindepon-isgrouplikeelem.md) | 111 | `result-track:a093c88b66216764f40e8e2803511254bb0c7856f32cfff75a293bf332f1fa8f` |
| 12 | `lemma` | [linearIndep_groupLikeVal](../../../../CommutativeAlgebra/GroupLikeNamespacedPublic.lean/declarations/linearindep-grouplikeval.md) | 165 | `result-track:c196e8496df8461983f0265eb7f6224e9f1cf1a7194cd04414f7ce03c23c4ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a615a2fb6ca98c490a48ccfb455746d015bb798051c061c1248a9cf7f20b95fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
