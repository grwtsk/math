# Verification target: Defs Linear Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e96a831b3d94f29b1d2d790a66530f923ba810b1",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variantdd0130c240109d5bdd532d2b0bd72996941de49af84b4239fa0d1caae555106f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e96a831b3d94f29b1d2d790a66530f923ba810b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variantdd0130c240109d5bdd532d2b0bd72996941de49af84b4239fa0d1caae555106f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variantdd0130c240109d5bdd532d2b0bd72996941de49af84b4239fa0d1caae555106f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/maxdefault.md) | 37 | `declaration-track:51a5ebbd2c348893bd48d87ccf691991d1fe63108ef833db28b8e79bf5a638a2` |
| 2 | `def` | [minDefault](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/mindefault.md) | 41 | `declaration-track:49269e19850d2ac803792ceee77662af406e8dec39c257e40d12f0bfe8162900` |
| 3 | `macro` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/macro.md) | 54 | `declaration-track:8f34ca50e814e2eab87b816771ba5b0f916591a0887aa46b68bc279d5a915bfa` |
| 4 | `class` | [LinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/linearorder.md) | 61 | `declaration-track:04844440f154a4ce7f0d270daa0d50d66c80f4988c5833fca43ee1c5051ec21f` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:c16342bf462b96e5032d47f4cc5c5eaf0e5e720beb66f6156ed34bf74874075c` |
| 6 | `lemma` | [le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-total.md) | 92 | `result-track:06bc1ff39317de8d05e5fc4f4d32ab42542e00a18587f943b07ccabf56f896ed` |
| 7 | `lemma` | [le_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-of-not-ge.md) | 94 | `result-track:ccbf07c6773033e593aeefa6f4178f7355a95fdb051cd5cb8eaf04dd13f90f82` |
| 8 | `lemma` | [lt_of_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-of-not-ge.md) | 95 | `result-track:7625296fc8254b8f42c2ec654446a32b1eb55580b0ae10e08555ff2acba0d761` |
| 9 | `lemma` | [lt_or_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-or-ge.md) | 97 | `result-track:3cf6e3e24db3b3a7dec9d98472fe48e336e78dce3292b4e847b6a50619704c01` |
| 10 | `lemma` | [le_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-or-gt.md) | 100 | `result-track:011d1798ef466b6059e5166f0258279adce916c2f693ac588e3fc1fccdc87003` |
| 11 | `lemma` | [lt_trichotomy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-trichotomy.md) | 103 | `result-track:c36b2f96e15157290f92a6b432431e74d1ce127069741d68e15630f753c2323a` |
| 12 | `lemma` | [le_of_not_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-of-not-gt.md) | 107 | `result-track:58911d680a4e8118fd933df5a379af8647e8fcabd7574d00c857e893f3f803c1` |
| 13 | `lemma` | [lt_or_gt_of_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-or-gt-of-ne.md) | 110 | `result-track:967f8698222dcba301ccc55bcf512c9e84ba499cd8b86abe0f12e07c3e7bc442` |
| 14 | `lemma` | [ne_iff_lt_or_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/ne-iff-lt-or-gt.md) | 114 | `result-track:aff958d22424f5726a8da316c38fcd6e1c727d9fe21d150882d85d0492849341` |
| 15 | `lemma` | [lt_iff_not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-iff-not-ge.md) | 116 | `result-track:64b965132529b7bc81826cd5b0a3d080d19a680d8603cb3d708036670263fd03` |
| 16 | `lemma` | [not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/not-lt.md) | 118 | `result-track:d331da39e6631cc7ce419003afc53383ebbf3c908c362524a51386034122ccbe` |
| 17 | `lemma` | [not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/not-le.md) | 119 | `result-track:b7892b3303419e11e9cbb70e503b8099765275953e85fa30753c0e65ea2c7135` |
| 18 | `lemma` | [eq_or_gt_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/eq-or-gt-of-not-lt.md) | 122 | `result-track:b31bd1a97b3ed6b7ff0476e8c5c3d3b2073fe4cfa24d75708fe49ca4e7ed9ed1` |
| 19 | `theorem` | [le_imp_le_of_lt_imp_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-imp-le-of-lt-imp-lt.md) | 126 | `result-track:42bc69aef625b01d0516325ff95de02ea5f4260435cc4f92766a32c0a23616be` |
| 20 | `lemma` | [min_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-def-source-edition-2.md) | 131 | `result-track:aa4206444c2f99f8789209204e9a1121689ab9947564c0bb505cdc18db215035` |
| 21 | `lemma` | [max_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/max-def.md) | 133 | `result-track:1979e464c303ffa12e3cbc36a899ed99a73a519e4568cb8baa9a240b6dff82b3` |
| 22 | `theorem` | [min_ind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-ind.md) | 135 | `result-track:9d3db92e73e3bfeb0b1b7d437a42570cac949432ed3d119a81a92e3500d6a4cc` |
| 23 | `theorem` | [max_ind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/max-ind.md) | 141 | `result-track:96181c590096c7304d3a43a4ec15ffcf36247dc5ec8de5cb20e6ebaad2d6891b` |
| 24 | `theorem` | [max_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/max-le-iff.md) | 147 | `result-track:b484211be1e2f1a935c12c038d96c1ff5b6cdfd715309eb2706d6255e5296c70` |
| 25 | `theorem` | [min_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-le-iff.md) | 151 | `result-track:1298ab1ca247dcfaa316b419af4ea1be436255b15716cb6b392d9506f607532e` |
| 26 | `theorem` | [max_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/max-lt-iff.md) | 155 | `result-track:0e03172877cc85e3498f32bd53f7d8efcc868dccd980e91e87006f29c61892d5` |
| 27 | `theorem` | [min_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-lt-iff.md) | 159 | `result-track:43b702d369c96e6c707a5a82c7b4c4f4b122f2f8d640b3b192e2222d721cd361` |
| 28 | `lemma` | [min_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-le-left.md) | 163 | `result-track:12f08adad4b16550a22c04dcde895bcef49f6d79cd34d22e9cfd9a84d65ce96b` |
| 29 | `lemma` | [min_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-le-right.md) | 166 | `result-track:db05605b8f2baf2012a8b1c2bb593a7ac5ed4dee1bc73bb6ae0e2145b17d9375` |
| 30 | `lemma` | [le_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/le-min.md) | 169 | `result-track:dd4c69b794249a35ae7c8181ff43cbf5e75f693b9cb118c2f9d21bd13080e8af` |
| 31 | `lemma` | [eq_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/eq-min.md) | 172 | `result-track:828805811291bd98f8e4ff1e91ff2f0f521c470a0a37f0018545b6cdc65c9a83` |
| 32 | `lemma` | [min_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-comm.md) | 176 | `result-track:bac12792e4025d0fad7e7fd9a1fb9a8489d9be3934733b944aada6a32e2b42fd` |
| 33 | `theorem` | [min_def'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-def.md) | 180 | `result-track:14f19a27842398f7e3e49cf9465254b42e0daad6add3848cf50238bd87bb0f0a` |
| 34 | `theorem` | [max_def'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/max-def-source-edition-2.md) | 183 | `result-track:f458fc8271f20f06854a3aea49b2461a69653a2296b0ab3cbebb76f79fb7244f` |
| 35 | `lemma` | [min_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-assoc.md) | 186 | `result-track:e33612cd568651bf52d220223b9b545b3f8ab0d160db5c1ce68a0bce29d54522` |
| 36 | `lemma` | [min_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-left-comm.md) | 190 | `result-track:c81dac0a8f4c02fe69c530236fc792062186a648af1baf4a0c2f030b037010e9` |
| 37 | `lemma` | [min_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-self.md) | 193 | `result-track:3fc7b0c8813cff65f96a8d4ef3bccf09a4e69cb31a294ef7f3abd419968f59fd` |
| 38 | `lemma` | [min_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-eq-left.md) | 196 | `result-track:630f5501ef0ef5bf9011183f90fb1bce642af56360f5423eb193191edac77496` |
| 39 | `lemma` | [min_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-eq-right.md) | 199 | `result-track:98f17aee4ad79166f29fded333486308206fb42d7caa4bf3191970f0b0227f28` |
| 40 | `lemma` | [min_eq_left_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-eq-left-of-lt.md) | 201 | `result-track:fa7ec4fb4af927c1ed3d822f3a469f8d74d1e499b452fb2ee13400c1b3bab022` |
| 41 | `lemma` | [min_eq_right_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/min-eq-right-of-lt.md) | 202 | `result-track:d8ead8bffffc99f66ebe6f7535fc585edd6afe555dd2c37d62515336626cebd1` |
| 42 | `lemma` | [lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/lt-min.md) | 205 | `result-track:c76b96135ec4f95452995271dea0899988f02f4f22d83e0f02f51d0121d91bf0` |
| 43 | `lemma` | [compare_lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-lt-iff-lt.md) | 209 | `result-track:4f5e3a57d210764394cfdbb3d38c08cb0250b9f49cf21174881b254a33498af3` |
| 44 | `lemma` | [compare_eq_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-eq-iff-eq.md) | 212 | `result-track:2afdac6ad08e260820c4351a03adf28b936fbdc360c6fc006e140ce8ed10d39a` |
| 45 | `lemma` | [compare_gt_iff_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-gt-iff-gt.md) | 215 | `result-track:7ebaf47b97fc2a60c16a28b137cf77acc327d1b8cf263363713d56e401f60bf8` |
| 46 | `lemma` | [compare_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-le-iff-le.md) | 219 | `result-track:c98beb6e0d5b06736b83a7ec0b197098430b5617bb4786ea6d4dada1baf1d30e` |
| 47 | `lemma` | [compare_ge_iff_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-ge-iff-ge.md) | 225 | `result-track:1d5d4e1a5e3328f56c6d47651191e768e66a8bbb65f0da0022d186c93282a5f2` |
| 48 | `lemma` | [compare_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/compare-iff.md) | 231 | `result-track:7c64ab4bfe9b92967f8300213ea6ca39f340bd261d79bfebd7c2311f9d01bc14` |
| 49 | `theorem` | [cmp_eq_compare](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/cmp-eq-compare.md) | 237 | `result-track:80c41c77414233755209a76c9216cc8d0251222dca32912cf88a0d2dc8165dd6` |
| 50 | `theorem` | [cmp_eq_compareOfLessAndEq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/cmp-eq-compareoflessandeq.md) | 244 | `result-track:90bc01a0b14e644ebf58325e7f4a4c1e9e3bb62ae61ae0963a8029a2324dd870` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:50761d8b271daa07f311ca707f3092da9fd4b2939308a04fa9a8684b8b02f17f` |
| 52 | `structure` | [LinOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/linord.md) | 263 | `declaration-track:fce221a17ffcf50d09cc6aa1c4be220dfc1580f9cadbc1d1f42ec5228750aad4` |
| 53 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DefsLinearOrderPublic.lean/declarations/instance.md) | 276 | `declaration-track:42045f93ec4b703876e6d2562636f214e2f33ddf41d49e0aacb0e48fb539aa39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e573d50b1764b6bc530e08b727729ce999bed8c90f38c6580e5fae4560c307b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variantdd0130c240109d5bdd532d2b0bd72996941de49af84b4239fa0d1caae555106f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variantdd0130c240109d5bdd532d2b0bd72996941de49af84b4239fa0d1caae555106f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
