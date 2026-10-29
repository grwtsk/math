# Verification target: Topology Clopen Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c8d3a34b987ca4805269f32d7e0112a8c6308ae",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyClopenPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyClopenPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c8d3a34b987ca4805269f32d7e0112a8c6308ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean.json)

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
| 1 | `theorem` | [IsClopen.isOpen](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-isopen.md) | 28 | `result-track:4cdfea9ffef093d7cd9df93f3a0e39f1485bc937be25743cef97f411b41fece2` |
| 2 | `theorem` | [IsClopen.isClosed](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-isclosed.md) | 30 | `result-track:19621fbd12ed16b18fd3c79a7369dde7ed0e307e2472fde6d822876f10630999` |
| 3 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-iff-frontier-eq-empty.md) | 32 | `result-track:5d77f4677db0f96948695ce00870148bae9baf16dbe062c91e6869ad5f6aeaef` |
| 4 | `theorem` | [IsClopen.union](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-union.md) | 40 | `result-track:e68b1b929cc6ade1540466b0e779a92ca2407276c2f26656d473e8e5f4d6cddc` |
| 5 | `theorem` | [IsClopen.inter](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-inter.md) | 43 | `result-track:129a932f58a5311b255ccd1844c105023bbfaf7ab5be932e34cab2a491a872fb` |
| 6 | `theorem` | [isClopen_empty](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-empty.md) | 46 | `result-track:cef1b7840e71112584504796a250265a252e831857f318f0879869d8e683654a` |
| 7 | `theorem` | [isClopen_univ](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-univ.md) | 48 | `result-track:75d0b4f854c116db2e67120b3bed68b3684b044f80a07c34a39f46dc2ef073d7` |
| 8 | `theorem` | [IsClopen.compl](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-compl.md) | 50 | `result-track:59dc907052540f738970c7392182d350a653c5dee3b5337a8db1b7528d484787` |
| 9 | `theorem` | [isClopen_compl_iff](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-compl-iff.md) | 54 | `result-track:b49add4c4472b0424d498da5700ec9975a53ef116d66e2532f92a8a1298a6110` |
| 10 | `theorem` | [IsClopen.diff](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-diff.md) | 57 | `result-track:1b871e12375ed1146a221fd41712c1a99e2ff01f4b6f8ece9b262347547d6fcc` |
| 11 | `lemma` | [IsClopen.himp](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-himp.md) | 60 | `result-track:22597960adca257d83d63331a547232c2267e2537f948a278b7603afea47543e` |
| 12 | `theorem` | [IsClopen.prod](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-prod.md) | 63 | `result-track:883ed3df3d8ab1b0b23fa201248e306cab08782960b162fc8814d590857cb217` |
| 13 | `theorem` | [isClopen_iUnion_of_finite](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-iunion-of-finite.md) | 66 | `result-track:8c1be1d2507624ccf58ff37816ed673b601eba80c8c2cdf13f4269e02a760f1d` |
| 14 | `theorem` | [Set.Finite.isClopen_biUnion](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/set-finite-isclopen-biunion.md) | 70 | `result-track:bd6eb90c4e3574190dc2cdffcc06cd788f0bf0b3c9d63d93126e4f8f3e3a1f09` |
| 15 | `theorem` | [isClopen_biUnion_finset](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-biunion-finset.md) | 74 | `result-track:22c004800291fc0f02191aee856830bf4599ff8050109f5d66a2db0e66208c20` |
| 16 | `theorem` | [isClopen_iInter_of_finite](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-iinter-of-finite.md) | 78 | `result-track:1cbdcfb261f9d49ef45e388314df819fd25b94f0b57497a9191ec0786825e77f` |
| 17 | `theorem` | [Set.Finite.isClopen_biInter](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/set-finite-isclopen-biinter.md) | 82 | `result-track:27ccbcb702241e0a2f729bd5d909d6ee894c2a9f61209acf2f57c03bdf2e1c8f` |
| 18 | `theorem` | [isClopen_biInter_finset](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-biinter-finset.md) | 86 | `result-track:49a05f41bf63e26a08d461719574d93a32270b978d1e9905b784fa764b8cd48a` |
| 19 | `theorem` | [IsClopen.preimage](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-preimage.md) | 90 | `result-track:620c9222d3f549d9f695219f0af82155f654eedf5b0d41d0f856a07a7ad4d12b` |
| 20 | `theorem` | [ContinuousOn.preimage_isClopen_of_isClopen](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/continuouson-preimage-isclopen-of-isclopen.md) | 94 | `result-track:62e0ba4c936dfcd67d6fa8e919d326b3dae614a01bd81682b7c6016251d2aae6` |
| 21 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-inter-of-disjoint-cover-clopen-source-edition-2.md) | 100 | `result-track:8f4177b8c9e9bfa21dd83604ad3f3af0278dda9892c824896fb9258f6d187610` |
| 22 | `lemma` | [isClopen_inter_of_disjoint_cover_clopen'](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-inter-of-disjoint-cover-clopen.md) | 110 | `result-track:618ae791c55079f880649f78c077e74bf40a36b802b9fdfd868d32d488f9b41c` |
| 23 | `theorem` | [isClopen_of_disjoint_cover_open](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-of-disjoint-cover-open.md) | 118 | `result-track:c81b929a0c83cb16925bb27d4fceca4bb8d8b3531df23163d7c0f3261ccd42c7` |
| 24 | `theorem` | [isClopen_discrete](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-discrete.md) | 123 | `result-track:413f1c29c196b2b35e232a356bc2486e22e163e254689114b99b66563ae0e5b3` |
| 25 | `theorem` | [isClopen_range_inl](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-range-inl.md) | 126 | `result-track:5731237124cba96fee9f83f485aac54649c5dc151f284e1efba1726d23948b16` |
| 26 | `theorem` | [isClopen_range_inr](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-range-inr.md) | 129 | `result-track:44ba4154e05ac43d2a6e220eb258048460ac801c42536454143d9311c3ba3629` |
| 27 | `theorem` | [isClopen_range_sigmaMk](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/isclopen-range-sigmamk.md) | 132 | `result-track:34b485a1c5b9e7083509924340a6b425fc9067fc23f4ac6c42428823aea031cb` |
| 28 | `theorem` | [Topology.IsQuotientMap.isClopen_preimage](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/topology-isquotientmap-isclopen-preimage.md) | 136 | `result-track:1380216069c327bbc39e9bf4a94cb232820ce4d0199a3ad9e23078a45401fa47` |
| 29 | `theorem` | [continuous_boolIndicator_iff_isClopen](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/continuous-boolindicator-iff-isclopen.md) | 140 | `result-track:9d1a963305be159645dcd4f129a34a4598d522317b99c9fa91d069627c35da50` |
| 30 | `theorem` | [continuousOn_boolIndicator_iff_isClopen](../../../../GeneralTopology/TopologyClopenPublic.lean/declarations/continuouson-boolindicator-iff-isclopen.md) | 144 | `result-track:4796c4c3c5ea1e5e6583463884da70868993ff6897694872fb402ea15ca00732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5b34a844711406cb2fdb0549f1b0076e2d3fbb711c0e8914913a3341772c811 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
