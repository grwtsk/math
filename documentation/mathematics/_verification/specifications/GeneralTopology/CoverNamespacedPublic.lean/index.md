# Verification target: Cover Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58a3e02907c76b9b983ee95f9031a4a410cd704",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CoverNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CoverNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58a3e02907c76b9b983ee95f9031a4a410cd704`.

Source path: `GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:a0f78e9828a32fcdd7d82a035d50f0c4043e59582e6e072320c104a77914c42b` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/instance.md) | 48 | `declaration-track:63321825c1f6e2a5b1e4b61591dfa5aeef56d1ab220b15aec70c0781a2479533` |
| 3 | `def` | [IsCover](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover.md) | 56 | `declaration-track:5cd24ea5108b6f58235193e46664513d70581beef5af076081e45ce1e6ee0d60` |
| 4 | `lemma` | [IsCover.empty](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-empty.md) | 58 | `result-track:5f57f6c7a6853fe541485c73f4ee2107a99082ff07d1179631e91fe9c0ebdcdb` |
| 5 | `lemma` | [isCover_empty_right](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-empty-right.md) | 60 | `result-track:67833de02b2a9e3b09498376df4874c057dd194f6e1004f348edc1b7a2889922` |
| 6 | `lemma` | [IsCover.nonempty](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-nonempty.md) | 62 | `result-track:97cb3316066a0309e446ce09b702673e10fccbf14e325d5fcf8af8bb1308fc24` |
| 7 | `lemma` | [IsCover.refl](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-refl.md) | 65 | `result-track:18701760627d99c42a7bdca500a5354ceaa5ba26f04c7c5901454866f3768aa1` |
| 8 | `lemma` | [IsCover.rfl](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-rfl.md) | 66 | `result-track:9ef7e6e793da54c1b93c2ca92deee048bacebed2e85b45894ec5e3a165dbe127` |
| 9 | `lemma` | [IsCover.mono](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-mono.md) | 68 | `result-track:7ef81b99def63b43ac884e65e500e425c4ebad1a2c0a1fc3f1361df65468eefa` |
| 10 | `lemma` | [IsCover.anti](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-anti.md) | 70 | `result-track:bbf08a8ede751f68182d1a1852d60ffedeb18c19b1aebf6c136895ea1cc88e65` |
| 11 | `lemma` | [IsCover.mono_radius](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-mono-radius.md) | 72 | `result-track:989e8c7cf0ce9ad2571f9928411dc8a4c1cf3ddab91593d395a04a122b8fc9aa` |
| 12 | `lemma` | [IsCover.image_lipschitz](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-image-lipschitz.md) | 75 | `result-track:c2f4158950b1b2ceb6d9a2a77b7a5239ce7009bb6e67c0bfe00272fc323ce298` |
| 13 | `lemma` | [IsCover.image_lipschitz_of_surjective](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-image-lipschitz-of-surjective.md) | 82 | `result-track:0681b8076466b0ac37993d636430f6dd5fe2c25004f43fc4d9b356bd963f16f7` |
| 14 | `lemma` | [Cover Namespaced Public](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-image-iff.md) | 88 | `result-track:c3070597e130e5170239ff009bf52a3bb683ee5af8164ae14ba60bfc88080c20` |
| 15 | `lemma` | [IsCover.singleton_of_ediam_le](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-singleton-of-ediam-le.md) | 95 | `result-track:b9002b9e3636e3fa2fa433d5155a970edad92c044228e26d543e031bba5e7ba5` |
| 16 | `lemma` | [isCover_iff_subset_iUnion_closedEBall](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-iff-subset-iunion-closedeball.md) | 99 | `result-track:3658de326f0afd3bd594812526653870779a5d2f7c48a36ea762e620f307be23` |
| 17 | `lemma` | [IsCover.of_maximal_isSeparated](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-of-maximal-isseparated.md) | 109 | `result-track:918b75bee6a7384d90e45ab0cce6ce2b5b7cb97e7c2900009f605bc0c13f5145` |
| 18 | `lemma` | [exists_finite_isCover_of_totallyBounded](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/exists-finite-iscover-of-totallybounded.md) | 114 | `result-track:193efba217fe8eaafac50a780a0851c3a890ab0668d13b7ce06558c3ff49a11b` |
| 19 | `lemma` | [exists_finite_isCover_of_isCompact_closure](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/exists-finite-iscover-of-iscompact-closure.md) | 126 | `result-track:6e212ddbe70cb5d15b6f8b81498b05cee974226a2b3832489c6a2bad0aff1696` |
| 20 | `lemma` | [exists_finite_isCover_of_isCompact](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/exists-finite-iscover-of-iscompact.md) | 131 | `result-track:cd9bc9abc94cd3cef2d119743338681dd8ebbb48c05b2c8bd81844f088d80733` |
| 21 | `lemma` | [isCover_iff_subset_iUnion_closedBall](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-iff-subset-iunion-closedball.md) | 140 | `result-track:bfdbbcb0819661f70013852c98246db73c40cf07515deeff940429deb18a2004` |
| 22 | `lemma` | [IsCover.of_subset_cthickening_of_lt](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-of-subset-cthickening-of-lt.md) | 146 | `result-track:f6fc0e28c4ab6305ca22cc55a6ddef4022c301e7c053da56ee993f11ceb14aae` |
| 23 | `lemma` | [isCover_iff_subset_cthickening](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-iff-subset-cthickening.md) | 153 | `result-track:301e4018d7f56881feecd1febc285b8bd09ba8926d2e611515a0756abe5e0f80` |
| 24 | `lemma` | [isCover_closure](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-closure.md) | 158 | `result-track:5f1dfe6314b6b6e0808ad05d61552e4470f38f233ea5cca20e021a67687f97b6` |
| 25 | `lemma` | [isCover_zero](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-zero.md) | 168 | `result-track:109f09042f17cda43af4e4d2901800150fc7e325498e264d14c4b145ce98a412` |
| 26 | `lemma` | [IsCover.isCompact](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-iscompact.md) | 177 | `result-track:cb27f726e8f320ea2caeb9661c8fefdf2d6791014928556a44bcb821a8c2b8ab` |
| 27 | `lemma` | [IsCover.isCompact_closure](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscover-iscompact-closure.md) | 181 | `result-track:708d53b5866c5ef4da9fb7d03569f2e3f60374f1e71d6c5280c3198e6f39f1ab` |
| 28 | `lemma` | [isCompact_closure_iff_exists_finite_isCover](../../../../GeneralTopology/CoverNamespacedPublic.lean/declarations/iscompact-closure-iff-exists-finite-iscover.md) | 188 | `result-track:e605d8d3725320c60e73ecdff701f704efc638b133ecc97277f52e6019fc4469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3446d6b5b774614152792b19cd16c319c33bf0496f222f527ef7ac36ec6b4d58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Cover/Variantae861385d11f7ff18404e8ed6e3d1f2d282756090976da74f5a4e0538763896c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
