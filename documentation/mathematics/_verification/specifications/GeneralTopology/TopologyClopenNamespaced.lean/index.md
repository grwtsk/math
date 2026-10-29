# Verification target: Topology Clopen Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543e75e73c7915cb532fe0027ecbd384def50da1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant27aad42824e3e6377973b3f57d8db5b9741cfd182f0e4db898df858a61f50b18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyClopenNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyClopenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543e75e73c7915cb532fe0027ecbd384def50da1`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant27aad42824e3e6377973b3f57d8db5b9741cfd182f0e4db898df858a61f50b18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant27aad42824e3e6377973b3f57d8db5b9741cfd182f0e4db898df858a61f50b18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.BoolIndicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsClopen.isOpen](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-isopen.md) | 32 | `result-track:d47aff428daa7c5ee72d2c8746e956a41723047a41eb9f2caf7b9056f48c8e19` |
| 2 | `theorem` | [IsClopen.isClosed](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-isclosed.md) | 34 | `result-track:a062f89264c0b1dbf31f15a855454258ac90a2353e15003c90da17aab523cbbb` |
| 3 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-iff-frontier-eq-empty.md) | 36 | `result-track:e06159ecde56fe17d6b118898b14475dd72e0edb1eeebccc7bbc58cd64bc0027` |
| 4 | `theorem` | [IsClopen.union](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-union.md) | 44 | `result-track:b3995742cd7f702552eb70ff98f6383fcf4db4806f9f0639f927678546f9bf96` |
| 5 | `theorem` | [IsClopen.inter](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-inter.md) | 47 | `result-track:edc8265b0bfae795c4d231a95e0a8a8f121f6660c4289f6510180a50c61025bd` |
| 6 | `theorem` | [isClopen_empty](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-empty.md) | 50 | `result-track:aa9ea140727bec3ee88157cfbb65787b471cd7c3aadc27069d38b8d97b68618f` |
| 7 | `theorem` | [isClopen_univ](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-univ.md) | 52 | `result-track:5d425d1006d4dd788fc374137ecf3f921b7e411376f6c14d443522bb24a5930f` |
| 8 | `theorem` | [IsClopen.compl](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-compl.md) | 54 | `result-track:4c35f88092d6f2b4e8ab383a1972edfa01b21b35d8782c06da3e46e1368ac7ae` |
| 9 | `theorem` | [isClopen_compl_iff](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-compl-iff.md) | 58 | `result-track:9bbeb85628bc8494eaf228737ab6af32c0978ddf174188a6f3446d775dd2c2cb` |
| 10 | `theorem` | [IsClopen.diff](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-diff.md) | 61 | `result-track:9d9f4a786ab9d2b736c839a27344f89574ea8bf0b4af32ca06e6251c3b16f8ba` |
| 11 | `lemma` | [IsClopen.himp](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-himp.md) | 64 | `result-track:c45a5e8177a1d2a2a0a6203acf827f07d8f8e83869374fe885e29ede9b1b9c16` |
| 12 | `theorem` | [IsClopen.prod](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-prod.md) | 67 | `result-track:30edf626c7ed20700f2277aa839174310d1279c987ffb4bc5c7d6f3399567e7a` |
| 13 | `theorem` | [isClopen_iUnion_of_finite](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-iunion-of-finite.md) | 70 | `result-track:ade2e2664e23a671ab1c4baa815fe0b0494cd1efbb1f05d9ee62e7601770101e` |
| 14 | `theorem` | [Set.Finite.isClopen_biUnion](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/set-finite-isclopen-biunion.md) | 74 | `result-track:dbe0e4bfc1beb22d98926e23ad65a537e3281dfc45e5c5dff109964f5d62a9d4` |
| 15 | `theorem` | [isClopen_biUnion_finset](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-biunion-finset.md) | 78 | `result-track:d43bc3f7b379db377ee496d71637570d1114120f0186e7ae106e8f4027ad7b8d` |
| 16 | `theorem` | [isClopen_iInter_of_finite](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-iinter-of-finite.md) | 82 | `result-track:1a8637f8f972e48993de817fbe5bda7d58788a2d0146a92d013dca0ff4554863` |
| 17 | `theorem` | [Set.Finite.isClopen_biInter](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/set-finite-isclopen-biinter.md) | 86 | `result-track:bced16e0fa22552953b2a9949e030e13aea60f8ab5d12737928b55b7d8e5721e` |
| 18 | `theorem` | [isClopen_biInter_finset](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-biinter-finset.md) | 90 | `result-track:a0d994b160cdb7aaa084a7a554bb468abe951a53f41214643db45bf4b595c88c` |
| 19 | `theorem` | [IsClopen.preimage](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-preimage.md) | 94 | `result-track:7f0f48269b5066d301a2d37a3e1c2b945b5e5b10ac1c63b45eebaf63d594597b` |
| 20 | `theorem` | [ContinuousOn.preimage_isClopen_of_isClopen](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/continuouson-preimage-isclopen-of-isclopen.md) | 98 | `result-track:1f1cbb2b642d781baa9ed6b44ee898acfa78ece2eaed8eaabe64ab4512f1836c` |
| 21 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-inter-of-disjoint-cover-clopen.md) | 104 | `result-track:2cf37d000d87e44cfee70f8adad10257a31c3cf56d527e5ea06e23195d07fdbe` |
| 22 | `theorem` | [isClopen_of_disjoint_cover_open](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-of-disjoint-cover-open.md) | 113 | `result-track:38f9b5237101faf85a3dc0130523eb8970045ab5d6e893582427f208628971d1` |
| 23 | `theorem` | [isClopen_discrete](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-discrete.md) | 118 | `result-track:341c60a1a4e63009cd19b88b22d96e7c4aa542e4ca12ab225b3649450e747cac` |
| 24 | `theorem` | [isClopen_range_inl](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-range-inl.md) | 121 | `result-track:c9d0cf44b19d29999ab57163197d3941447ee13eef88ed4ec7f594ceb3cb420d` |
| 25 | `theorem` | [isClopen_range_inr](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-range-inr.md) | 124 | `result-track:5366d97e696aecb0ad1035ba7e8423174d6a268ef7addee4a661002d75dce552` |
| 26 | `theorem` | [isClopen_range_sigmaMk](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/isclopen-range-sigmamk.md) | 127 | `result-track:d72248e0f18e7e03d0ff814a7fbdb904a6fb6755c0d1a5a8ffddefcb48c23393` |
| 27 | `theorem` | [Topology.IsQuotientMap.isClopen_preimage](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/topology-isquotientmap-isclopen-preimage.md) | 131 | `result-track:1f07cc180a7c6494bc6dc5386bb0fa083c1fe48eada5d4b29421ccad8453f095` |
| 28 | `theorem` | [continuous_boolIndicator_iff_isClopen](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/continuous-boolindicator-iff-isclopen.md) | 138 | `result-track:a70e29dd8004151cf82ff78e035c09885056f1cbc67a1a53fd000561d4b4436d` |
| 29 | `theorem` | [continuousOn_boolIndicator_iff_isClopen](../../../../GeneralTopology/TopologyClopenNamespaced.lean/declarations/continuouson-boolindicator-iff-isclopen.md) | 142 | `result-track:1a03f97bd329935022cc6b0f77d58d83ae0c07f07148334c1e1be7b900124e32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09e2dd6399ed1e44d0013e24acf46a90ac83b0d5fcf4c65f03d4c03a7d385096 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Clopen/Variant27aad42824e3e6377973b3f57d8db5b9741cfd182f0e4db898df858a61f50b18.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Clopen/Variant27aad42824e3e6377973b3f57d8db5b9741cfd182f0e4db898df858a61f50b18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
