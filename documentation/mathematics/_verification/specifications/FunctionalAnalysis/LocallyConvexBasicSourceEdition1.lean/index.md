# Verification target: Locally Convex Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c8015cc7cb07119f74084423b1c82708db5b43c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c8015cc7cb07119f74084423b1c82708db5b43c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Absorbs](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs.md) | 58 | `declaration-track:7b5348d3d7abaf322f98234bf1a80b8363a25f34bba7e108129baec3b9ed5b48` |
| 2 | `theorem` | [absorbs_empty](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-empty.md) | 65 | `result-track:88c40d26e6d9bc538d9c0a44bcd60421095dbd26b98a671852da202ddba5aab2` |
| 3 | `theorem` | [Absorbs.mono](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-mono.md) | 69 | `result-track:d80db95d617803a128f87ec4d77c7f2bfaa535202050b27e4f4a489d01b764b5` |
| 4 | `theorem` | [Absorbs.mono_left](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-mono-left.md) | 74 | `result-track:53cb66e65d721b540bb27ef7526d4b02c142978228381e63f553db5d9c7791d1` |
| 5 | `theorem` | [Absorbs.mono_right](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-mono-right.md) | 78 | `result-track:846fed5994791846bfb83c15279dd6ba07634ba88cba8929a207bdeea7707610` |
| 6 | `theorem` | [Absorbs.union](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-union-source-edition-2.md) | 82 | `result-track:87d47697abe4e5052c93c015318d92e42d4a39e658ec73ff059fa4a888d70401` |
| 7 | `theorem` | [absorbs_union](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-union.md) | 91 | `result-track:08be3f46f73a5ff714474013b85e7b7341716437e7fe8b4534749c10a9972565` |
| 8 | `theorem` | [absorbs_iUnion_finset](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-iunion-finset.md) | 96 | `result-track:db1ac00552f82e22265aad48dee17a0e002f7e64a4017f14af4d0024c3d65f15` |
| 9 | `theorem` | [Set.Finite.absorbs_iUnion](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/set-finite-absorbs-iunion.md) | 111 | `result-track:e1249a2b64efe228ba4d7e8dbd6bca13017ef7482a1c6535b997566ec6098d44` |
| 10 | `def` | [Absorbent](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent.md) | 121 | `declaration-track:0ca35051051001de28dce70d2b5704dbd9710a7bb53639363836bb2324382e96` |
| 11 | `theorem` | [Absorbent.subset](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-subset.md) | 127 | `result-track:aeaefcfeb7728664ddf821cc72cf18baa83b08c81865cf286bdcffe462950031` |
| 12 | `theorem` | [absorbent_iff_forall_absorbs_singleton](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-iff-forall-absorbs-singleton.md) | 132 | `result-track:180f38b0f0db0913861d1f3209c73c9c9afc3b235d902923cb3f2b46944bd21d` |
| 13 | `theorem` | [Absorbent.absorbs](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-absorbs.md) | 136 | `result-track:5a22fe767aa4defcc5a255bdd51c8b68e41ee2779df8cbad5cc92d4e174d9217` |
| 14 | `theorem` | [absorbent_iff_nonneg_lt](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-iff-nonneg-lt.md) | 140 | `result-track:d37de804295282869a63602296217a44e43a55de4efab79b5446946201cc2298` |
| 15 | `theorem` | [Absorbent.absorbs_finite](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-absorbs-finite.md) | 148 | `result-track:0100163eef4146b48e9f730419eabd98f97155e29bb56019ef2504159de8208f` |
| 16 | `def` | [Balanced](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced.md) | 157 | `declaration-track:b807208dcbc24359c3cff346192c0addc7b410a2d6122ace8e04e330b14851a0` |
| 17 | `theorem` | [balanced_iff_smul_mem](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iff-smul-mem.md) | 163 | `result-track:86c28abdd92d282eae9e11c73083445e130259afce5847a18bef2e650816e363` |
| 18 | `theorem` | [balanced_empty](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-empty.md) | 171 | `result-track:451d3a1fae4ec031f5f71170edc510bcdf986695c5a91598b4b7175083773cc7` |
| 19 | `theorem` | [balanced_univ](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-univ.md) | 175 | `result-track:405f58d565303abda017a6f3180a7ecc76b946f5983fadaf4be3d85802b93a4f` |
| 20 | `theorem` | [Balanced.union](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-union.md) | 178 | `result-track:c4abd8c3ac2d8a835335d63e3dd1533fb95112d9828c08e50ff830ba384270fe` |
| 21 | `theorem` | [Balanced.inter](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-inter.md) | 182 | `result-track:1b131ee7d482ee080a8038f741c68c606e6d0d9b5b5a23d74f5fb80204f94949` |
| 22 | `theorem` | [balanced_iUnion](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iunion.md) | 186 | `result-track:180a760f25e5dc31a9ab1ee5bf3ab64e6c1ce146fefdb9dd4dfd4cee78fcab88` |
| 23 | `theorem` | [balanced_iUnion₂](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iunion-source-edition-2.md) | 190 | `result-track:37ce546ce4416ad8924936371761cb3197f4097d4528f7b45aa114c408d3cfd8` |
| 24 | `theorem` | [balanced_iInter](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iinter-source-edition-2.md) | 195 | `result-track:9fcac7da3bb5897a8b36f5bccfe083f79e5f8b7884587329be50ef02c15ab94b` |
| 25 | `theorem` | [balanced_iInter₂](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iinter.md) | 199 | `result-track:6c24134616f3c15e99a470f6c40413c1fad8352eb2951c09f0625330324401eb` |
| 26 | `theorem` | [Balanced.smul](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-smul.md) | 206 | `result-track:c9bccad4400548f195b2657b78384627cb4b83f3aac842ad92d98b40d6dea552` |
| 27 | `theorem` | [Absorbs.neg](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-neg.md) | 216 | `result-track:5c159240e9f2e395c972361cfcb1c10e709e44a20111af5c464d319527b3b59b` |
| 28 | `theorem` | [Balanced.neg](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-neg.md) | 221 | `result-track:60fbb2599306bfac5d73ebd52cd3090ad5535bc164e3da588cb70e5634e341c9` |
| 29 | `theorem` | [Absorbs.add](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-add.md) | 225 | `result-track:3aa32e30abcd5ab292ad8e84f99f103856ccb753a09b2ec5b5c4e9bff16c2957` |
| 30 | `theorem` | [Balanced.add](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-add.md) | 232 | `result-track:a88deedf00f755989e444576335fa7a8d4d00fbe352794454515e8a592c57fd7` |
| 31 | `theorem` | [Absorbs.sub](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-sub.md) | 236 | `result-track:8f0cd27cd23203046ad4fa9af98ed74e6568d81330b70a34b6676d8f5fbf2084` |
| 32 | `theorem` | [Balanced.sub](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-sub.md) | 242 | `result-track:1ef0db14b7f5f4416fc337e7b3806658aa79fadb02a30b7782bd959476bf7c9b` |
| 33 | `theorem` | [balanced_zero](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-zero.md) | 247 | `result-track:80a95200489da39aba55be8f829b70b14f5ab9d4a057814cb8410526a9c38414` |
| 34 | `theorem` | [Balanced.smul_mono](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-smul-mono.md) | 260 | `result-track:2fa569147d05c3f6d30a2161dce88d6fc51409362d05a7db7985a7fefbaa2a2f` |
| 35 | `theorem` | [Balanced.absorbs_self](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-absorbs-self.md) | 276 | `result-track:76f080cfa53960573e6cd5268782703d6322808b833a79b7bf3b6ffa7a565f31` |
| 36 | `theorem` | [Balanced.subset_smul](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-subset-smul.md) | 284 | `result-track:dae6e650e964421295aab4307e68f6ff1956add731343ff33e3998c3653b6e95` |
| 37 | `theorem` | [Balanced.smul_eq](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-smul-eq.md) | 293 | `result-track:3c64bcfb5de0a61e52c35297cf244be1beed56919a9a9a5a19cf387cfd844356` |
| 38 | `theorem` | [Balanced.mem_smul_iff](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-mem-smul-iff.md) | 297 | `result-track:98fc60dd313830f0b6cb8977dae680856fab9e3fe9064f9d6405c0e831b38d73` |
| 39 | `theorem` | [Balanced.neg_mem_iff](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-neg-mem-iff.md) | 309 | `result-track:12a76d4c56b025fb3d60d818f78c2304b7c36ea43eb109f502a7965c9815e4ed` |
| 40 | `theorem` | [Absorbs.inter](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-inter-source-edition-2.md) | 314 | `result-track:a5114e0e7e64a8be6313b8aad5f7919e5408890dde7d9c215402a3842cdf3b23` |
| 41 | `theorem` | [absorbs_inter](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-inter.md) | 324 | `result-track:324de8105f94d1fa9749ba81831aa38ac21d891f956b93f155226cd06895f3ee` |
| 42 | `theorem` | [absorbent_univ](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-univ.md) | 329 | `result-track:23bd93051c48b8c1da5031085fbc4140a43e61e7e65581c29e07a90898f4adc7` |
| 43 | `theorem` | [absorbent_nhds_zero](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-nhds-zero.md) | 338 | `result-track:f9f3f5623a4dbeecd85f709d9f05cef21e786d08604a0b23682bb6e09a79532e` |
| 44 | `theorem` | [balanced_zero_union_interior](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-zero-union-interior.md) | 355 | `result-track:51dcdd71ee5e7723cb9a7c6c7355c0e1b768eaf54c6dc4bff3491aa89d694729` |
| 45 | `theorem` | [Balanced.interior](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-interior.md) | 371 | `result-track:b166795bad1867cbd89ae190fa4562b0eb76b2962e51feaa682ae7bde7eac673` |
| 46 | `theorem` | [Balanced.closure](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-closure.md) | 377 | `result-track:38c4d738de0fcbe325531749f3e561a3b765cf33c35db5f30d9159a1b0b64eeb` |
| 47 | `theorem` | [absorbs_zero_iff](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbs-zero-iff.md) | 388 | `result-track:de9bc70b511b38c1b2ba00d529fbb2ffba2b73f71719cd08b67b26c0f4458438` |
| 48 | `theorem` | [Absorbent.zero_mem](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/absorbent-zero-mem.md) | 397 | `result-track:48005fd82ff13e7c02c1585d0f5dd722cedc60a8e931b453666b6dc889af9680` |
| 49 | `theorem` | [balanced_convexHull_of_balanced](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-convexhull-of-balanced.md) | 403 | `result-track:5e91a56221a4c5f7822eeffb5fe68f745723d2e8455d6badf0bce72f4f6fd9e5` |
| 50 | `theorem` | [balanced_iff_neg_mem](../../../../FunctionalAnalysis/LocallyConvexBasicSourceEdition1.lean/declarations/balanced-iff-neg-mem.md) | 419 | `result-track:d292605114e09f051eab7066ef88f92d61737ce869ff3d791fd0556e60c03d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfdedbd7487d44cfedb0219827d401ccf63969f5ca3dc703fb5fb09f04f390e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
