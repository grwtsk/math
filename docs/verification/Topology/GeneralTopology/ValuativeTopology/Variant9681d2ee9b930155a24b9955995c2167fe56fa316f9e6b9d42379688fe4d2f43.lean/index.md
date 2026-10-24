# Verification target: GRWTSK.Topology.GeneralTopology.ValuativeTopology.Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4cf09f93bf16d223bd5e106fb4758e780a28df5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4cf09f93bf16d223bd5e106fb4758e780a28df5`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean.json)

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
| 1 | `lemma` | [Valuation.exists_setOfPred_restrict_le_iff](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/valuation-exists-setofpred-restrict-le-iff--528bed82eb150d53b80bfa30.md) | 45 | `result-track:528bed82eb150d53b80bfa30e33f7c32a153ab2f4d75dd7bf2b8c3c840ac6e05` |
| 2 | `class` | [IsValuativeTopology](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isvaluativetopology--c9ce0a667acf27cf05146c0d.md) | 58 | `declaration-track:c9ce0a667acf27cf05146c0d2d734352871c9545eb7a9c3bb8bc34816dbe45f9` |
| 3 | `instance` | [topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/topologicalspace--4ba6158cc8fde0922c7dbf82.md) | 68 | `declaration-track:4ba6158cc8fde0922c7dbf822aa1da9441cdf86cc5f4b45f544c046663010276` |
| 4 | `instance` | [nonarchimedeanRing](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/nonarchimedeanring--4705fc3b420581c63bd2f487.md) | 70 | `declaration-track:4705fc3b420581c63bd2f4871c85eac27eeaa704915c0e8fb71e8f9f96e6cdb1` |
| 5 | `instance` | [isValuativeTopology](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isvaluativetopology--77bd06101f7eeb29ae66d51c.md) | 73 | `declaration-track:77bd06101f7eeb29ae66d51c036001655c11fc29bcd5ccea96e9826ea30a0a35` |
| 6 | `instance` | [uniformSpace](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/uniformspace--a8f243a5bce9969389268fc2.md) | 84 | `declaration-track:a8f243a5bce9969389268fc23a01120ab7b965c59589aefcc697e89743c26d4e` |
| 7 | `instance` | [isUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isuniformaddgroup--5855ddcc8e980d8042d20966.md) | 87 | `declaration-track:5855ddcc8e980d8042d20966f57576da9413aa7379f04dea7f13b9d17fef6536` |
| 8 | `theorem` | [of_mem_nhds_iff_vle](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/of-mem-nhds-iff-vle--a93b6866a6f61c52b95581ea.md) | 103 | `result-track:a93b6866a6f61c52b95581ea60524424054be8f9251b230a4693862fcde46e79` |
| 9 | `theorem` | [of_mem_nhds_zero_iff_vle](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/of-mem-nhds-zero-iff-vle--921c2dcd6416ddfecc808923.md) | 115 | `result-track:921c2dcd6416ddfecc80892307573ff38809ffed1313190b77e8a24071b28328` |
| 10 | `lemma` | [mem_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/mem-nhds-iff--be2a63bf19964aa951a7f69a.md) | 128 | `result-track:be2a63bf19964aa951a7f69a0eeef0a331fad13d9d436725c36d6f4593729732` |
| 11 | `lemma` | [mem_nhds_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/mem-nhds-zero-iff--4f6d5c0a459c0e353bb989ee.md) | 133 | `result-track:4f6d5c0a459c0e353bb989eea2cad63ac5863e8d9fdcf595bbbeb90bdeadb472` |
| 12 | `theorem` | [hasBasis_nhds](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds--0fc4fc437509d2d9dafec395.md) | 137 | `result-track:0fc4fc437509d2d9dafec39553aca9c589123c0c510b8a1d362f6ea5cef88ab6` |
| 13 | `lemma` | [hasBasis_nhds'](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds--38a6b18bf263f418305086d6.md) | 143 | `result-track:38a6b18bf263f418305086d63d827253b806825496c91a49739e17e96713ee10` |
| 14 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds-zero--4bd316a1bb7a31c0a1209759.md) | 149 | `result-track:4bd316a1bb7a31c0a12097599974cf2d0cc7312def2d2e711e940de45a517ec3` |
| 15 | `lemma` | [hasBasis_nhds_zero'](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds-zero--7dd4355a7a3f8f3ada02381b.md) | 157 | `result-track:7dd4355a7a3f8f3ada02381b26eaf9ef462ff0c746751750e787a02b299a08ee` |
| 16 | `lemma` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/mem-nhds-iff--3b180410fe2925ef7af3b4d9.md) | 170 | `result-track:3b180410fe2925ef7af3b4d9bdbb1047fd976e037e3cadcec27b4ef42f71c614` |
| 17 | `lemma` | [mem_nhds_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/mem-nhds-zero-iff--1c95dfdc1f4fd13f9b99d62d.md) | 175 | `result-track:1c95dfdc1f4fd13f9b99d62d0c786010149a90c7250ed35d3ec6bdcfb2f64b88` |
| 18 | `theorem` | [hasBasis_nhds](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds--2204cda38d289c2ac22d990a.md) | 181 | `result-track:2204cda38d289c2ac22d990ae10158e10c48a718f964a5a7ab6ca3537c6dd2d6` |
| 19 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-nhds-zero--cd730ff76c47e30b2c07899f.md) | 186 | `result-track:cd730ff76c47e30b2c07899f95cf6879e86917f992d5552e446b8c3db1cb4e4f` |
| 20 | `theorem` | [locally_const](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/locally-const--810dbadf0a1db0b5bc35488c.md) | 195 | `result-track:810dbadf0a1db0b5bc35488c30c59241d14f9f5b48e708fc19a2086a2cb06d28` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/instance--33a1ea6649a5a4090ebb7a00.md) | 208 | `declaration-track:33a1ea6649a5a4090ebb7a007bd18f8394629d10c7b1c7ff5f24c75b0439e592` |
| 22 | `theorem` | [hasBasis_uniformity](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/hasbasis-uniformity--14c9b7f751924f09e0f8d235.md) | 233 | `result-track:14c9b7f751924f09e0f8d235d2241a583612306fb6f0869b8f13602b0e88b5ae` |
| 23 | `theorem` | [toUniformSpace_eq](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/touniformspace-eq--9b2d482af58c237db0fc414f.md) | 239 | `result-track:9b2d482af58c237db0fc414f822222d8fb1e0552b93c85a8b56ff08a89ece991` |
| 24 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/cauchy-iff--55f94f3334fa2dc106cf2c19.md) | 245 | `result-track:55f94f3334fa2dc106cf2c194e8955d2bd005971fd37b28a6b8e2021e36a8e70` |
| 25 | `theorem` | [toTopologicalSpace_eq](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/totopologicalspace-eq--ab9278a1d6e3d26b4c91f7ed.md) | 266 | `result-track:ab9278a1d6e3d26b4c91f7edae63ef79e27abadee9d71faf1640b10d03da6d4e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/instance--36b592a13f47be86caacf8f7.md) | 272 | `declaration-track:36b592a13f47be86caacf8f707ddc90a75231457ba0129e11eb87ebe21a5865a` |
| 27 | `lemma` | [discreteTopology_of_forall_map_eq_one](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/discretetopology-of-forall-map-eq-one--35f23403dacc65f359caddf3.md) | 278 | `result-track:35f23403dacc65f359caddf3d8139916ce8b485ae838c6ce6690b32365f993a2` |
| 28 | `lemma` | [discreteTopology_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/discretetopology-of-forall-lt--75737ff9e8fe0618458645fc.md) | 288 | `result-track:75737ff9e8fe0618458645fc6a6ac7b0bf506a9e08210e5454526ab680949fbe` |
| 29 | `theorem` | [isOpen_ball](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isopen-ball--f519e77ba49284d67bf90032.md) | 299 | `result-track:f519e77ba49284d67bf9003287ca7a4b1d718e7e3ee553f7c8d86db2bc190fd5` |
| 30 | `theorem` | [isClosed_ball](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclosed-ball--3e81f41ca7a96fbc560b29cf.md) | 311 | `result-track:3e81f41ca7a96fbc560b29cfe84a911c90b8234b99a41cd50c17e01a2a29821f` |
| 31 | `theorem` | [isClopen_ball](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclopen-ball--690acb15d8c7b29b3af8a218.md) | 320 | `result-track:690acb15d8c7b29b3af8a218c10ee29b70e31efda073583fb85bedb0fb7d62ef` |
| 32 | `theorem` | [isOpen_closedBall](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isopen-closedball--33f7f28b09925f2956bf8d51.md) | 326 | `result-track:33f7f28b09925f2956bf8d51b31bb4d46672508fd88ab5f0483213dc064adcb2` |
| 33 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclosed-closedball--1733558a14bf1d717da3ba9b.md) | 336 | `result-track:1733558a14bf1d717da3ba9b6dea8710ec26424eea9c3fc63bfb87440e27699a` |
| 34 | `theorem` | [isClopen_closedBall](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclopen-closedball--9fd820ad7e4247e07f5a1026.md) | 348 | `result-track:9fd820ad7e4247e07f5a10268129998532d11c2d01cfa41e02ebe21cdf185946` |
| 35 | `theorem` | [isClopen_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclopen-sphere--129f51481cc7b4e553ace637.md) | 354 | `result-track:129f51481cc7b4e553ace637b3f59c5dab9a1f8e8b2bf43ce124802d83563c97` |
| 36 | `theorem` | [isOpen_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isopen-sphere--e399275350295f917d08f016.md) | 364 | `result-track:e399275350295f917d08f016a501472033a08aaf8b7b7c5a6c42e33f404e1bed` |
| 37 | `theorem` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclosed-sphere--f6c87ed932bde98fd4fadc96.md) | 370 | `result-track:f6c87ed932bde98fd4fadc96a42872d6c04cf381dbcffca5cf732a483496ec18` |
| 38 | `theorem` | [isOpen_integer](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isopen-integer--e17d3c6e95b5f2a83843cb6e.md) | 379 | `result-track:e17d3c6e95b5f2a83843cb6e4b2f7257b47702a0a12cbe2d97e33e29d42ee7e7` |
| 39 | `theorem` | [isClosed_integer](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclosed-integer--f81e20bf7353bb6a26458572.md) | 386 | `result-track:f81e20bf7353bb6a26458572ff43b21d47b3eef6af50bed0463a4b9d048e895e` |
| 40 | `theorem` | [isClopen_integer](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclopen-integer--0753b213d73eeb2ba05052f0.md) | 393 | `result-track:0753b213d73eeb2ba05052f0fffdb058b06d6d837755a8952d55c1a1ba1f3218` |
| 41 | `theorem` | [isOpen_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isopen-valuationsubring--84fbce64cf518e5f0cc4743e.md) | 402 | `result-track:84fbce64cf518e5f0cc4743ea3b4081e066d76b79b712fac700c58d9158ceb7b` |
| 42 | `theorem` | [isClosed_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclosed-valuationsubring--1e17359661e8e871d9fff795.md) | 408 | `result-track:1e17359661e8e871d9fff795cd8552fa16279b33544f2ffca1d7744389d22d8f` |
| 43 | `theorem` | [isClopen_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/isclopen-valuationsubring--67b6b00566ebef983fbce38a.md) | 414 | `result-track:67b6b00566ebef983fbce38ad454ab71db9774a4bdef8fdec3d3ffce666106d5` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/instance--0eddac0074969b6b60dae4a7.md) | 429 | `declaration-track:0eddac0074969b6b60dae4a7ef0f721f738757f10bad908f2be3cc66f31be267` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/declarations/instance--97b045346f68e9a2f0b4952f.md) | 439 | `declaration-track:97b045346f68e9a2f0b4952f9f377befbb67b314c5b94b04d82f65ad3c48aaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
