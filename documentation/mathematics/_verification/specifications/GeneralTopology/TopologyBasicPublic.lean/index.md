# Verification target: Topology Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bce207603a63573751103b7cf27c0c15aab1686a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bce207603a63573751103b7cf27c0c15aab1686a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean.json)

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
| 1 | `def` | [TopologicalSpace.ofClosed](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/topologicalspace-ofclosed.md) | 44 | `declaration-track:548fc04221d78df2bedec656a0c77db82f010ebfb1099fb4648036a1a678a980` |
| 2 | `lemma` | [isOpen_mk](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-mk.md) | 58 | `result-track:810a35efdbc7c85ef0e3ea2a74a1e8d3ca0cf8e2a3d8ac8843d8538a25d830ea` |
| 3 | `theorem` | [TopologicalSpace.ext](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/topologicalspace-ext.md) | 61 | `result-track:a217a3ed3f9681ec2ed27e8fe5c4f2aa6ebc3b859a1e6ad720308b8f73135aeb` |
| 4 | `theorem` | [TopologicalSpace.ext_iff](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/topologicalspace-ext-iff.md) | 65 | `result-track:b4a4d9d6c6f0bcc7219494029303d93c508de3c35b6c6188156bdaaedebe7722` |
| 5 | `theorem` | [isOpen_fold](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-fold.md) | 69 | `result-track:f90a14d3c66222a978034562fa7451843a47a8e9711e58e2c740379ae91801f5` |
| 6 | `theorem` | [isOpen_iUnion](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-iunion.md) | 74 | `result-track:f6a41ef873a90eea9c97128e52b04839bb0e7b23d3a62dde4de13dfdd7a7e417` |
| 7 | `theorem` | [isOpen_biUnion](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-biunion.md) | 77 | `result-track:2e0ee701ba60927261b01713a8b2f6844522da0a1d6c671abe61a6ef7c8b2d6c` |
| 8 | `theorem` | [IsOpen.union](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-union.md) | 81 | `result-track:53df7192b11d3d6d7c23e7fccc0b72c8e1938253665630c815e4b26af9afaa61` |
| 9 | `lemma` | [isOpen_iff_of_cover](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-iff-of-cover.md) | 84 | `result-track:eb1e2799c534d861365bbf344c9c46b51aa2141a092029bb1c1b5c0504bb3a72` |
| 10 | `theorem` | [isOpen_empty](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-empty.md) | 90 | `result-track:70a52db7e477f5c629ea4d09d501ce75353226c3f564e213d0c6ebab07478fc4` |
| 11 | `theorem` | [Set.Finite.isOpen_sInter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/set-finite-isopen-sinter.md) | 93 | `result-track:f51c0178518a2addd22e107715204dc1779a6f2fe175f01211387941d6cf4505` |
| 12 | `theorem` | [Set.Finite.isOpen_biInter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/set-finite-isopen-biinter.md) | 101 | `result-track:04c606e3903715c042176d1dd84f5a4c22a7d91ededf0c1ce67bc02418fa07b8` |
| 13 | `theorem` | [isOpen_iInter_of_finite](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-iinter-of-finite.md) | 106 | `result-track:5911dec2d6822f6fd9e18882ff3ae613933e8a9720f6122564bb3aa83d3e19d1` |
| 14 | `lemma` | [IsOpen.iInter_of_finite_ne_univ](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-iinter-of-finite-ne-univ.md) | 110 | `result-track:32469af8289569a94661a93e9a3903f4d55dc23cc2343248b3e019dc94c91dd4` |
| 15 | `theorem` | [isOpen_biInter_finset](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-biinter-finset.md) | 114 | `result-track:925038774a1b2b4c9c8550419eaa0039c60d0ddfb9a399a25b15b7433740b5d2` |
| 16 | `theorem` | [isOpen_const](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-const.md) | 119 | `result-track:6b06a7fb0536f9067f408d54fab814df6176ab72b4badc808e962e42d9c01e4c` |
| 17 | `theorem` | [IsOpen.and](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-and.md) | 121 | `result-track:71fc2d517a830503e540277b2925c7f3ee0682699b2f3e53271740c9c08eebb5` |
| 18 | `theorem` | [isOpen_compl_iff](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-compl-iff.md) | 124 | `result-track:c22042ab9bbef7a3300b8522ce846e2d29af128b108a4327f1f82aacf3b5f602` |
| 19 | `theorem` | [TopologicalSpace.ext_iff_isClosed](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/topologicalspace-ext-iff-isclosed.md) | 127 | `result-track:9cc8e5b2373661782d2971adff9b306ae902844b08f6c7acce223fe97e3acfb5` |
| 20 | `theorem` | [isClosed_const](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-const.md) | 134 | `result-track:203f97b6e31a77a9eaac0f083fecda466b7a931b535d4f3dc09a0e9dc56804fb` |
| 21 | `theorem` | [isClosed_empty](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-empty.md) | 137 | `result-track:f6ea5bda3c89def045244d913da34f870fe77dbfedc94023a693dda82a1998c3` |
| 22 | `theorem` | [isClosed_univ](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-univ.md) | 140 | `result-track:3a014f27c73973f6fb64549f73ba9bec3cd61f5d454b188f9f11a5c1b83a5e41` |
| 23 | `lemma` | [IsOpen.isLocallyClosed](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-islocallyclosed.md) | 143 | `result-track:e2d59ad9fb0bbf58a21291ced56e08a76eb5a631c1e2bc29a11bc200d0d8a683` |
| 24 | `lemma` | [IsClosed.isLocallyClosed](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-islocallyclosed.md) | 147 | `result-track:96398813e131d92201d330cd8346bbe19a4e3ef5625bff16bbe82243a18b3748` |
| 25 | `theorem` | [IsClosed.union](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-union.md) | 151 | `result-track:f3d821419e6de76db407730a7dca70015ac1f1f43fe678aa87e2af0b1b4016b8` |
| 26 | `theorem` | [isClosed_sInter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-sinter.md) | 155 | `result-track:cbd43ec0bd73a961bbc6b8215510a92b91f1adf9edc43de2cdb39a2da52b2091` |
| 27 | `theorem` | [isClosed_iInter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-iinter.md) | 159 | `result-track:dd7afff4d83e36f2ac25613762101ec86cfecc42c377b98974a7e7ed9cf94f92` |
| 28 | `theorem` | [isClosed_biInter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-biinter.md) | 162 | `result-track:a2343cdbf509c9bb6004ddc589c21274c8bb6bd4b44d22beb6d57648f1b58b61` |
| 29 | `theorem` | [isClosed_compl_iff](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-compl-iff.md) | 167 | `result-track:5bb00728dc53e959af7d85ef4443e592483e91ff238741a4df1881cd01689a59` |
| 30 | `theorem` | [IsOpen.sdiff](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isopen-sdiff.md) | 172 | `result-track:6d2517b6b775c57bac62a1f75ed91bf22021605fe3817c437459314ce8f7fc0e` |
| 31 | `theorem` | [IsClosed.inter](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-inter.md) | 176 | `result-track:d37a075d3efdd542b3ccc4a2ba43b9ecc73c30087f95c28ca3f965f37e6d0ac8` |
| 32 | `theorem` | [IsClosed.sdiff](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-sdiff.md) | 182 | `result-track:46ff2545b6675496d5668d27ec0e0fc8a1da332d08d6878183745dad78f853d2` |
| 33 | `theorem` | [Set.Finite.isClosed_biUnion](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/set-finite-isclosed-biunion.md) | 185 | `result-track:6e0cda6bbdcc6d492093d45b59e8d6088181bfc96ffd3f29cee5a7a345534c0d` |
| 34 | `lemma` | [Set.Finite.isClosed_sUnion](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/set-finite-isclosed-sunion.md) | 191 | `result-track:1199de7edb84c3653ac4c8f709a4939dcc48b399f39832994906de1dfc959fed` |
| 35 | `lemma` | [isClosed_biUnion_finset](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-biunion-finset.md) | 195 | `result-track:be020507e0bf2d1962a2466fa7f0de8c9c82540283b62d894e1ff727e6400144` |
| 36 | `theorem` | [isClosed_iUnion_of_finite](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-iunion-of-finite.md) | 200 | `result-track:b6109f2682e0e5eaf4c95940bc0b929fd1270c51fd51a647f61a12b6866734bf` |
| 37 | `lemma` | [IsClosed.iUnion_of_finite_nonempty](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-iunion-of-finite-nonempty.md) | 205 | `result-track:3a8d24e242e6da694c0b0b1a1e07a4a35c9404be879878edc2eb722ff723f962` |
| 38 | `theorem` | [isClosed_imp](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-imp.md) | 210 | `result-track:5fedb4cacd043486f2c0c908ff285f8ccb1c4e439f0c7fad5117236185bdfd2a` |
| 39 | `theorem` | [IsClosed.not](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-not.md) | 214 | `result-track:2dcc96b2d2ad36d5616d2c2cdb2a1380bd6578580b661e729d26266e14bd2ce1` |
| 40 | `theorem` | [IsClosed.and](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/isclosed-and.md) | 218 | `result-track:a6aa362579a76ecf6d66e51f16b8981947415e76f632817a2be65f4a63145097` |
| 41 | `theorem` | [le_nhds_lim](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/le-nhds-lim.md) | 238 | `result-track:c3bbf822715a0a7f859ab74406d909bee4e20ec267d4530b4533d16c12b49e67` |
| 42 | `theorem` | [tendsto_nhds_limUnder](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/tendsto-nhds-limunder.md) | 245 | `result-track:09b6134dd8b2ff5465393ea72e9da580c3e3d86f50a16fef4dee30c2a501eb3b` |
| 43 | `theorem` | [limUnder_of_not_tendsto](../../../../GeneralTopology/TopologyBasicPublic.lean/declarations/limunder-of-not-tendsto.md) | 249 | `result-track:1b38bec6391c7b97aea6c880fc64a5e98a36783eeffebfb529e8cf8a0f2c009e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=396cd50c7ec440c4ff4b5c838af79da4b81fce9168aa28b3407a6b066edacb68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
