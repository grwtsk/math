# Verification target: GRWTSK.Topology.GeneralTopology.Profinite.Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f49e52e51793b55bd28c7d503ad6e1eca5b9a3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f49e52e51793b55bd28c7d503ad6e1eca5b9a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteGaloisIntermediateField.finGaloisGroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/finitegaloisintermediatefield-fingaloisgroup--3a7cf8fab202c196e2dff02c.md) | 74 | `declaration-track:3a7cf8fab202c196e2dff02c7eac0c779fcea0397718ca50895668386538c677` |
| 2 | `def` | [finGaloisGroupMap](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/fingaloisgroupmap--0c0bd77870df539de99ea17d.md) | 81 | `declaration-track:0c0bd77870df539de99ea17db6f5f378efd9d17c706547c0f299fea1f96a0262` |
| 3 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/map-id--934d98d0fcc98fbb5d1fb1c8.md) | 91 | `result-track:934d98d0fcc98fbb5d1fb1c820a80e3dfa5507865f2a61f5af12548b74c34532` |
| 4 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/map-comp--ce4ea780d400fdfb37b21fa9.md) | 96 | `result-track:ce4ea780d400fdfb37b21fa9033d4fa2eaef156c254c06bb84462f675cee2332` |
| 5 | `def` | [finGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/fingaloisgroupfunctor--d3a6b22fdd61dd5d270d83a1.md) | 116 | `declaration-track:d3a6b22fdd61dd5d270d83a1c6e4284e4ee2e8afab7ef6e98e407c970948b1e9` |
| 6 | `abbrev` | [asProfiniteGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/asprofinitegaloisgroupfunctor--9d90394c86b5ea6d79f5f14c.md) | 131 | `declaration-track:9d90394c86b5ea6d79f5f14c2bbbf90479092e58540d921a79b990cfce6a4154` |
| 7 | `def` | [algEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/algequivtolimit--673c739ce34a3be7c1c1bee8.md) | 141 | `declaration-track:673c739ce34a3be7c1c1bee81e4afe641c6ebad929dcadc0a9309326cb79e996` |
| 8 | `theorem` | [restrictNormalHom_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/restrictnormalhom-continuous--38f29ec7ebce78d53768f006.md) | 156 | `result-track:38f29ec7ebce78d53768f006b431e71d85861d1eb4c13840dd3a3b5d7bb96252` |
| 9 | `lemma` | [algEquivToLimit_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/algequivtolimit-continuous--c5c386f532aceefd337c9a63.md) | 177 | `result-track:c5c386f532aceefd337c9a63ab12d2f7e3c3eb77e403bacddd808b57b8c94e7a` |
| 10 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/proj--f2f406a27d6eab7346d10e15.md) | 184 | `declaration-track:f2f406a27d6eab7346d10e156cf411254086164ffabd2f54abe5002697c40b06` |
| 11 | `lemma` | [finGaloisGroupFunctor_map_proj_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/fingaloisgroupfunctor-map-proj-eq-proj--4b6ef719869df59c48307a1e.md) | 190 | `result-track:4b6ef719869df59c48307a1e3c6bd1c7f61c70269feb761259120e661cba7073` |
| 12 | `lemma` | [proj_of_le](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/proj-of-le--7ddd46b66de9d8d63c6ec7b0.md) | 195 | `result-track:7ddd46b66de9d8d63c6ec7b02b0fe7be89bd40e3aaed8c191b8ff0e60ad3379b` |
| 13 | `lemma` | [proj_adjoin_singleton_val](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/proj-adjoin-singleton-val--97757f644444ee4db34f6d41.md) | 208 | `result-track:97757f644444ee4db34f6d41e49a9a5976dff71192fd5ec83c6789827340a50f` |
| 14 | `def` | [toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/toalgequivaux--a5a133b8c05ec619e8b2f195.md) | 217 | `declaration-track:a5a133b8c05ec619e8b2f195ae019b5122918a612d5756c17da63f9e90925514` |
| 15 | `lemma` | [toAlgEquivAux_eq_proj_of_mem](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/toalgequivaux-eq-proj-of-mem--42da988f329a6f2c5a73f002.md) | 223 | `result-track:42da988f329a6f2c5a73f002367b6706514b19072b776781ccd6f19bb2c4f33c` |
| 16 | `lemma` | [mk_toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/mk-toalgequivaux--19861715130e693bd3ce1de9.md) | 230 | `result-track:19861715130e693bd3ce1de9fe142c12b744c4023c0cc4cc2b982bd5de683f26` |
| 17 | `lemma` | [toAlgEquivAux_eq_liftNormal](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/toalgequivaux-eq-liftnormal--af22501c374f33203d34f14f.md) | 238 | `result-track:af22501c374f33203d34f14fe4187b0d287dc272d88019393857df3cc0b885fb` |
| 18 | `def` | [limitToAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/limittoalgequiv--e6cca197c6c0721c5c93d412.md) | 249 | `declaration-track:e6cca197c6c0721c5c93d412731945625aef597a59910ed7b651e78de27e38ea` |
| 19 | `def` | [mulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/mulequivtolimit--f9258c89edf17370690a072f.md) | 282 | `declaration-track:f9258c89edf17370690a072fb902e38a44ea86e0d26b262674e860f59728d279` |
| 20 | `lemma` | [krullTopology_mem_nhds_one_iff_of_isGalois](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/krulltopology-mem-nhds-one-iff-of-isgalois--f2f7cbb45adf957e9845384a.md) | 300 | `result-track:f2f7cbb45adf957e9845384a2ea4056411252ea5a678e1cee6771864accc30c4` |
| 21 | `lemma` | [isOpen_mulEquivToLimit_image_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/isopen-mulequivtolimit-image-fixingsubgroup--8a53e5ae8e7adaa3ac506386.md) | 306 | `result-track:8a53e5ae8e7adaa3ac506386f52d71cbadd82b00ade409761eeff6c2395bf5b1` |
| 22 | `lemma` | [mulEquivToLimit_symm_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/mulequivtolimit-symm-continuous--b0e3ef9bca1a28bea6478960.md) | 316 | `result-track:b0e3ef9bca1a28bea6478960b17828710f92d7ae8c8eab1d1b6dd9190b4b8fbb` |
| 23 | `def` | [continuousMulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/continuousmulequivtolimit--86a1723f23c35bbbfab4b4a1.md) | 331 | `declaration-track:86a1723f23c35bbbfab4b4a175eab252179e98232cc109aebf8c83ecdc6b51dd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/instance--d0eed51f38d140231d551ce3.md) | 337 | `declaration-track:d0eed51f38d140231d551ce3e246c322fcdf92dc1e4fd9fb775498728ad9a239` |
| 25 | `def` | [profiniteGalGrp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/profinitegalgrp--1328b53f80d03f6bf09d4755.md) | 342 | `declaration-track:1328b53f80d03f6bf09d4755f3b12e0da862f48bab3ebc29e61697cd426e732f` |
| 26 | `def` | [profiniteGalGrpIsoLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/declarations/profinitegalgrpisolimit--3ea3096fa8edf90b43f8a0b0.md) | 347 | `declaration-track:3ea3096fa8edf90b43f8a0b08bc03e2cc6ca5638fd1c74dc828a8461b30a6c70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
