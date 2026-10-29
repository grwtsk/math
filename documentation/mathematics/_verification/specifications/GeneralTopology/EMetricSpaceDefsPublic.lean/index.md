# Verification target: EMetric Space Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e1adc511024766f5e38859b9c7daf25e454da0e",
  "lexical_observation_count": 143,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e1adc511024766f5e38859b9c7daf25e454da0e`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean.json)

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
| 1 | `theorem` | [uniformity_dist_of_mem_uniformity](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-dist-of-mem-uniformity.md) | 44 | `result-track:af886e8e1b2f9ecb2a2537b106809d3f826980a26984395ac929799d102e319f` |
| 2 | `class` | [EDist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist.md) | 53 | `declaration-track:a5e18bc70edf42cab6ff9514889c9a513c9a6e3fc1374daa128826ceb5980e1b` |
| 3 | `def` | [eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball.md) | 64 | `declaration-track:be316d24f7a82f4c6568eca2cb4af4f099a7ee2037da5540667423ed5d5609a8` |
| 4 | `theorem` | [mem_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-eball.md) | 67 | `result-track:9c424a06af665ee2ca40c60f1b575c76f5b1530e0d177c070fa125605dc9c2ec` |
| 5 | `theorem` | [eball_subset_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-subset-eball.md) | 70 | `result-track:45ad6ca9ce0f4dcfb15d5b93d294fdc351d1bd1dd3cc74c7cddde29c36d6ead2` |
| 6 | `def` | [uniformSpaceOfEDist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformspaceofedist.md) | 77 | `declaration-track:5820b7fcd6287d86115cc32c0c3af2e7c4647ae4810bf41fffa471767e22ecbd` |
| 7 | `def` | [uniformSpaceOfEDistOfHasBasis](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformspaceofedistofhasbasis.md) | 88 | `declaration-track:604e14c4a7dc910f6326763b6333ae42b495b24a1089cb79d5d28dcfd28774c6` |
| 8 | `class` | [PseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace.md) | 115 | `declaration-track:02458c8ebbf36f92acb0deb080da9b0a3b10c369ae80dc3252461d9868a779ec` |
| 9 | `theorem` | [PseudoEMetricSpace.ext](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-ext.md) | 129 | `result-track:fc193ce245a284c532d6de23d7c9b763f855a2dd9f43ef4bf6bd4adfc29c7baa` |
| 10 | `theorem` | [uniformity_pseudoedist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-pseudoedist.md) | 145 | `result-track:ed722d78cf60df88314c8f7ad786dcca9ab2fca28afe22f4ae09b39605edbcdd` |
| 11 | `theorem` | [uniformSpace_edist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformspace-edist.md) | 148 | `result-track:af75ad66948734aa2641c692baa3b81f005fc5ae34349c1aacc5cecf5b8f163d` |
| 12 | `theorem` | [uniformity_basis_edist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist.md) | 154 | `result-track:0895760c539dc4b4e6a3259c351cfef3e349d748c7ec96e906e2b6cfaf5bf708` |
| 13 | `theorem` | [Metric.nhds_basis_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/metric-nhds-basis-eball.md) | 158 | `result-track:dc5e4302d0b6bcf9e3cc364ed295d5a5e062eddcf792c86cf2b5bb659dda0080` |
| 14 | `theorem` | [mem_uniformity_edist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-uniformity-edist.md) | 162 | `result-track:9cdc819b9351a3ce56a3de053741ebb9ed15c59ceaec5bb98465918600df3426` |
| 15 | `theorem` | [EMetric.nhds_eq](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-nhds-eq.md) | 166 | `result-track:f7e08bd1fa461beed966574c24ad207c49896f9ebec48c0581665f0362616aef` |
| 16 | `theorem` | [EMetric.mem_nhds_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-mem-nhds-iff.md) | 169 | `result-track:46619d92a22b9c482bf9419198c4cd3ed1056ce628d81e3e92516ddb6e412f92` |
| 17 | `theorem` | [Metric.nhdsWithin_basis_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/metric-nhdswithin-basis-eball.md) | 172 | `result-track:3c35044bc9645c638def81a8c3742ba2d26951881ae5868207999be243ec54dd` |
| 18 | `theorem` | [EMetric.mem_nhdsWithin_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-mem-nhdswithin-iff.md) | 176 | `result-track:214acc7e1fb5c78239c9dd3c6422ca61859d71863e6835d055b0f5b72648653a` |
| 19 | `theorem` | [EMetric.isOpen_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-isopen-iff.md) | 179 | `result-track:79f3223113b1b236174407f115c92a549fe481017e614e7a8b6b5cef4eeffa43` |
| 20 | `theorem` | [Metric.isOpen_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/metric-isopen-eball.md) | 182 | `result-track:d23e3d843e654e2e664a566bb2b4c23c5491e554629960abc4f9f95d4bd445f7` |
| 21 | `class` | [WeakPseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakpseudoemetricspace.md) | 198 | `declaration-track:f73cd242ae92532761b223b058c0c8550149da896c95b6ca47030e31ef5c35ba` |
| 22 | `theorem` | [WeakPseudoEMetricSpace.ext](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakpseudoemetricspace-ext.md) | 211 | `result-track:5d4706694436fc6d29b7d3d9288b674a0ed9c106557d7d097f0f616568e6a8ba` |
| 23 | `instance` | [PseudoEMetricSpace.toWeakPseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-toweakpseudoemetricspace.md) | 218 | `declaration-track:217e6d31124f490d981d62d17c9dc9542300aa036210a0f6da8cbed37520a777` |
| 24 | `theorem` | [edist_triangle_left](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-triangle-left.md) | 235 | `result-track:108b7087b4b26f3667ff14feb1a069c9ecf904211896abbac51e0f30600ed5a6` |
| 25 | `theorem` | [edist_triangle_right](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-triangle-right.md) | 238 | `result-track:e3bc27a82e42b4ea151bff9751cde4e7fd56b228abf4ccc384a7c1ae22c9b727` |
| 26 | `theorem` | [edist_congr_right](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-congr-right.md) | 241 | `result-track:32eeb9212eff3df8343ff0702affa07eba44b3f8f06700e5df0ec4b65855abd6` |
| 27 | `theorem` | [edist_congr_left](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-congr-left.md) | 249 | `result-track:bf52260d1055e6642e3c9596687f11e05cd7bd2578c120ca1954fb214f47fbe0` |
| 28 | `theorem` | [edist_congr](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-congr.md) | 253 | `result-track:8e48ff14dc18e04d9bd2b2fcf2dd8097364f9f5548e68e14561399caddbbcde9` |
| 29 | `theorem` | [edist_triangle4](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-triangle4.md) | 257 | `result-track:e08f5a51610cc6f8085bcc90cff73a2f393b7cbc5aea84ef3c47914c9e6bb5de` |
| 30 | `abbrev` | [PseudoEMetricSpace.ofEDist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-ofedist.md) | 263 | `declaration-track:fd905c48005a57b46792f7cb47ee5307f60308b6d4698965b674495560ccb31b` |
| 31 | `theorem` | [EMetric.toUniformSpace_ofEDist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-touniformspace-ofedist.md) | 274 | `result-track:9bf3c0aa7c73a80f6a13237d689bbc6f9031e2a90521754b52224de4d9c2291b` |
| 32 | `theorem` | [EMetric.mk_uniformity_basis](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-mk-uniformity-basis.md) | 291 | `result-track:cb63a8a34e55301c479a77e47aa1ee0e74553cc7e30d9aa367c79b5373d13241` |
| 33 | `theorem` | [EMetric.mk_uniformity_basis_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetric-mk-uniformity-basis-le.md) | 305 | `result-track:938caea9979c513e2715ce1c0ece2805c0e7f2771b36e54f7a898330aa635b49` |
| 34 | `theorem` | [uniformity_basis_edist_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-le.md) | 316 | `result-track:2d39370d84019282d7397c5248c85d1e9bc85fd40171ca45e77524d1db55c163` |
| 35 | `theorem` | [uniformity_basis_edist'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-source-edition-2.md) | 320 | `result-track:65327d947a7505eaeccb362066acad24aadd4bc442ca69bb9bbaa3830bf8154e` |
| 36 | `theorem` | [uniformity_basis_edist_le'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-le-source-edition-2.md) | 326 | `result-track:73c7bbf5d928b3b5b4e5c49b386086715cc8ab0c1d38dc4ab3f28993d419efb0` |
| 37 | `theorem` | [uniformity_basis_edist_nnreal](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-nnreal.md) | 332 | `result-track:0fb7fc028af3ff31c7df9e6a4990ee0845708bbab76d6b83be98c56a5cd40c33` |
| 38 | `theorem` | [uniformity_basis_edist_nnreal_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-nnreal-le.md) | 338 | `result-track:9fef789ef1af356dbe18a7328a1ce955af361b296d682e1a4f28366d867ed071` |
| 39 | `theorem` | [uniformity_basis_edist_inv_nat](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-inv-nat.md) | 344 | `result-track:3febe40a87b5e98c29763bf8d95878cfa9a277e9e9b153c36fdc2e1bcc4cdcc0` |
| 40 | `theorem` | [uniformity_basis_edist_inv_two_pow](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-basis-edist-inv-two-pow.md) | 350 | `result-track:fe03f14f8d5a51b1d1e0a2a55d2d8fb3dfad1a1210488f8009952e54755997c0` |
| 41 | `theorem` | [edist_mem_uniformity](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-mem-uniformity.md) | 358 | `result-track:d6d2d48c064d4a7dec8889d0a421fccd547309ef0b578cee814a40fc4ec2e111` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-6.md) | 363 | `declaration-track:6aee51b6279d1f9a3fcb0d918555fa86e45d1a3289180d6fac703d466f8ac491` |
| 43 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformcontinuouson-iff.md) | 367 | `result-track:6f9f62382f0ebd8bdfe9f9f2c527a421571e54b166b687e8b7e09e779ebfcf4a` |
| 44 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformcontinuous-iff.md) | 373 | `result-track:d74fc24dc9c0b0ad307bd59a910b313a2468299ddfa59bef7a295bd052d9e166` |
| 45 | `theorem` | [uniformContinuousOn_iff_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformcontinuouson-iff-le.md) | 378 | `result-track:d23df168f9189d15a6376e28a148aa7974b480b6f45701052512fc618b4581ce` |
| 46 | `theorem` | [uniformContinuous_iff_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformcontinuous-iff-le.md) | 384 | `result-track:3ffb8269077c4946d55934039c8d0117eae3b6a108dd6357a3ca73f9769de942` |
| 47 | `abbrev` | [PseudoEMetricSpace.replaceUniformity](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-replaceuniformity.md) | 401 | `declaration-track:f020f76e7a57b1ddc08c6e2810eed8a6cce07a8b4533aa3e0763fa6d3060ba00` |
| 48 | `abbrev` | [PseudoEMetricSpace.induced](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-induced.md) | 412 | `declaration-track:177809d13b7f1b53f8e697b347aa49ddb08c6e6bd59b99469e0d8b51f18429d6` |
| 49 | `abbrev` | [WeakPseudoEMetricSpace.IsInducing](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakpseudoemetricspace-isinducing.md) | 422 | `declaration-track:9148951ca70e32adb3621252339b006bfc69a007bf11c21122f9bf02b784b3ba` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-13.md) | 448 | `declaration-track:b398d037a3d0566cd639229e0afb1801e019a57ab9f514c0b55f8483f772bd7a` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-4.md) | 453 | `declaration-track:6332b443c24e311ffa2eea098485902e9cb2115800d5c6acd25ae0e8bb938f2e` |
| 52 | `theorem` | [Subtype.edist_eq](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/subtype-edist-eq.md) | 462 | `result-track:e308d19b7602e8e7d983b29a0a5df6155c536b6e2a0ac6969469ec84a159405a` |
| 53 | `theorem` | [Subtype.edist_mk_mk](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/subtype-edist-mk-mk.md) | 467 | `result-track:f41c3df7f8a53ef95be698b1a452e8ad3854d83970729cbb4e1c43d406411892` |
| 54 | `def` | [PseudoEMetricSpace.ofEDistOfTopology](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pseudoemetricspace-ofedistoftopology.md) | 474 | `declaration-track:829cc338858770a1a631f77c086de09662662bffb012a07d2e3d84ef6afd6a62` |
| 55 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-11.md) | 492 | `declaration-track:876168094cf4356fdf38e3f40e74d49a37c866c02ddfa726e8db120dc43a72e6` |
| 56 | `theorem` | [ULift.edist_eq](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/ulift-edist-eq.md) | 495 | `result-track:1f50eb02b2a014cbb595c215e5780f69014283769d15daafe3619a8706dc2667` |
| 57 | `theorem` | [ULift.edist_up_up](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/ulift-edist-up-up.md) | 498 | `result-track:17ade6d9f0e9128b9337452460a0dc87ba2e0fa6ca6bcda6a0de1aa6c42673b1` |
| 58 | `instance` | [Prod.pseudoEMetricSpaceMax](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/prod-pseudoemetricspacemax.md) | 505 | `declaration-track:b6df19200b64d64019ff501c89e49ba1c80aa30d733b2fa935860f2f675aea4a` |
| 59 | `theorem` | [Prod.edist_eq](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/prod-edist-eq.md) | 517 | `result-track:6574d1d308634a3b1bfb4de1e9c00793b51119bf196d8f13cba3a49631cb1e4c` |
| 60 | `theorem` | [mem_eball'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-eball-source-edition-2.md) | 526 | `result-track:f8c5c78d8b2639c17c0eb9454dd3ff882a75ada1cb8dec5d57b9360aca4d9e99` |
| 61 | `def` | [closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/closedeball.md) | 529 | `declaration-track:975f7f8e7ab41803d3b9161dcc54e2af15235340fc4761e6c6d4276bae0c732e` |
| 62 | `theorem` | [mem_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-closedeball.md) | 532 | `result-track:06a1587bcf10167110ab9cb8f6aedb6d3c1f181b6694265121857512c8252630` |
| 63 | `theorem` | [mem_closedEBall'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-closedeball-source-edition-2.md) | 535 | `result-track:53c2e0049077fa7647f07d21d6e7e3534c073a99354c50a1b34831261b7890ba` |
| 64 | `theorem` | [closedEBall_top](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/closedeball-top.md) | 539 | `result-track:c6b3f9c5bfe1cb1e489da6b75c2c449e64fb0211b9930776b1b4b4c955bcaed1` |
| 65 | `theorem` | [eball_subset_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-subset-closedeball.md) | 542 | `result-track:4c06e14ee8ced7a84fb455f1843591f281c9bc7a7456d33ac1855c2f2e346081` |
| 66 | `theorem` | [pos_of_mem_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/pos-of-mem-eball.md) | 545 | `result-track:7e7a5a3867174a2676facc47e7b6d2b57140c609d10ec0a09fa7de8bf6b2084d` |
| 67 | `theorem` | [mem_eball_self](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-eball-self.md) | 548 | `result-track:8c73d51e1d7a5ee9684ee2d35584ad481f2404e34fd7c6386232d7b9484e909a` |
| 68 | `theorem` | [mem_closedEBall_self](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-closedeball-self.md) | 551 | `result-track:bcdbd2bd55f9c90f577f41e4ff7c1561d89fbc593058cc309354d955e29c6395` |
| 69 | `theorem` | [mem_eball_comm](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-eball-comm.md) | 554 | `result-track:0f2062b05f885fef21fa2963be48f743f163da45a8eb9d5df4d2fe34472ee3f5` |
| 70 | `theorem` | [mem_closedEBall_comm](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-closedeball-comm.md) | 556 | `result-track:5ea11eadf2cc95469683805e852bba500032a8dc9e4ef6b64fe42ebb4dd273a4` |
| 71 | `theorem` | [closedEBall_subset_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/closedeball-subset-closedeball.md) | 560 | `result-track:4d59e26b41e9a36c7962536e97748af5ec3a0f2ab836717ca94f2e54e355eab5` |
| 72 | `theorem` | [eball_disjoint](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-disjoint.md) | 564 | `result-track:71ac20e809b0ac2d03e72782fefa7a731bc6566e299fd513e47bf8ad550fbad3` |
| 73 | `theorem` | [eball_subset](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-subset.md) | 568 | `result-track:3a5d1dcdc9e824b6bc3136308db2a2b220b8ecbdded809c89b6314acb6cb7cee` |
| 74 | `theorem` | [exists_eball_subset_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/exists-eball-subset-eball.md) | 576 | `result-track:4bf5c481e2875acb5a7e277f3e9fd805cfdc4a9b0f476e2ba32c0be9ca691d37` |
| 75 | `theorem` | [eball_eq_empty_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-eq-empty-iff.md) | 581 | `result-track:c4956d1301f8b8b734646fb09de1634862f81f275d0b43d571a4eb29f1d95e3d` |
| 76 | `theorem` | [ordConnected_setOfPred_closedEBall_subset](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/ordconnected-setofpred-closedeball-subset.md) | 586 | `result-track:b73c8bc459b2ad656b34ef1ccaa92f12ff9d10ef182c6bf4de0eae3840cb369c` |
| 77 | `theorem` | [ordConnected_setOfPred_eball_subset](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/ordconnected-setofpred-eball-subset.md) | 593 | `result-track:0de2afa38c38c89daf08ac18a49796f1693b6cc305940b291838add86fc0915d` |
| 78 | `def` | [edistLtTopSetoid](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edistlttopsetoid.md) | 602 | `declaration-track:f9299e1ac0279409b93cda339f70411c0c037344ebe382610ffe586d61485cb8` |
| 79 | `theorem` | [eball_zero](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-zero.md) | 610 | `result-track:8e317402ff4c499b8a5d1a8c6e15d4d2bffa9f83fb14ea4277d47b1ba50449e4` |
| 80 | `theorem` | [nhds_basis_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/nhds-basis-closedeball.md) | 614 | `result-track:2362d6655ea0c2e765b8ea04f3ca5fd36c41221c98829968ebd9030afa21a329` |
| 81 | `theorem` | [nhdsWithin_basis_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/nhdswithin-basis-closedeball.md) | 618 | `result-track:4afc4f920c003dcb6b7b0c1da0aceddfec797b1f23215f4e726cbb67a8e7b248` |
| 82 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/mem-closure-iff.md) | 630 | `result-track:4c354b8dd718f1999f3d9e431e5ea1f6258678214824da3e3c5fdf2eb7e34b83` |
| 83 | `lemma` | [dense_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/dense-iff.md) | 633 | `result-track:987a216efbad9a18256c7d31f83044d66e5eb1141d68cb7dfd4e59bdaa894180` |
| 84 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/tendsto-nhds.md) | 637 | `result-track:b855cffc18412aff3f029172e02d22c3dbf6a94e755b4711ebc11f0be7746a36` |
| 85 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/tendsto-attop.md) | 641 | `result-track:05c815c69676f225048bad877de9e6d38f8192de503552ad89f26249e74ac275` |
| 86 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 650 | `result-track:f26c7dc31e5acdbdd6957a441b845415497f12796b8bdb503dff0e4b1c752e12` |
| 87 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/tendsto-nhdswithin-nhds.md) | 657 | `result-track:3dd24550b500c0aa734535aaa925782ce4f8a20082ac7071c24b47a134947c67` |
| 88 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/tendsto-nhds-nhds.md) | 663 | `result-track:b5b4e89c369ba9a9a3eff9d5a8a6ed60547945953cf80803dc3e7c2fac55f519` |
| 89 | `theorem` | [continuousAt_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuousat-iff.md) | 667 | `result-track:563f2943586126961cee69dd27b8948a48fcd0f080f1fbf4b2525e50c45dd775` |
| 90 | `theorem` | [continuousWithinAt_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuouswithinat-iff.md) | 671 | `result-track:91af029f698d55d6a1f5140d5b7312220482c7501f2b3ea08e762a21611c4820` |
| 91 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuouson-iff-source-edition-2.md) | 676 | `result-track:d3ef8257b22347f5a1e5f24793cd548a69ed847b9a01006230e400e71f82f749` |
| 92 | `theorem` | [continuous_iff](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuous-iff-source-edition-2.md) | 681 | `result-track:52325e0236c0f6891292da25f9b83d9d02c6ae39fbb5b199437389488416d31f` |
| 93 | `theorem` | [continuousAt_iff'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuousat-iff-source-edition-2.md) | 691 | `result-track:db55f1b6cec3fb8d4eb3677404190e301f661afa2ef82a50cd709ab9445e3863` |
| 94 | `theorem` | [continuousWithinAt_iff'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuouswithinat-iff-source-edition-2.md) | 695 | `result-track:9938c340716fbbcd21920acf1c05110fbe6a6c3159524f9797b5e09274b94684` |
| 95 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuouson-iff.md) | 699 | `result-track:1834196353b30fbf1bf5f1b2a01526ffcc276d627882e83d158cc6a72e6deaf0` |
| 96 | `theorem` | [continuous_iff'](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/continuous-iff.md) | 703 | `result-track:33ed9e1d799cf131a212482ee6e9e44e34346253cbfd77dd1a27ea4848e98750` |
| 97 | `theorem` | [isClosed_eball_top](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/isclosed-eball-top.md) | 714 | `result-track:7a05a9919bdcf66bfde5b0b5b669b6b7c0019cea57e7ca8da43071782183d381` |
| 98 | `theorem` | [eball_mem_nhds](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-mem-nhds.md) | 721 | `result-track:b668dc88e7f2a9e3bc3ad46607e56c2b6b7f8dcc5dd90a4583152a146653d629` |
| 99 | `theorem` | [closedEBall_mem_nhds](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/closedeball-mem-nhds.md) | 724 | `result-track:ce864f1f800de68fb3912962a0ad3bbfe0cceec7f35fb44c140297257e6869a4` |
| 100 | `theorem` | [eball_prod_same](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eball-prod-same.md) | 727 | `result-track:bdb61ebebd30dece627767b7862af4e56c1f565aee906da2eeb7a772e475fa42` |
| 101 | `theorem` | [closedEBall_prod_same](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/closedeball-prod-same.md) | 731 | `result-track:c9f567dcdeab97cf0d067dcfba7c926c48e5bb16ab6c2bd3930c2319cb47c510` |
| 102 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-7.md) | 741 | `declaration-track:76fe0648bd77df90356cc54f426d7b80823a48de382976b9ecc7d0f3f61f3092` |
| 103 | `theorem` | [preimage_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/preimage-eball.md) | 747 | `result-track:6f93cac662f563cbb90748c25ad75eb2e32537c09862fdd8e8f7ae6ffae4aa64` |
| 104 | `theorem` | [preimage_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/preimage-closedeball.md) | 752 | `result-track:4ef7be5a62c926908d22faa82e33ac4a5f4dc4575730f2f11df35358dcbdad46` |
| 105 | `theorem` | [image_eball](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/image-eball.md) | 757 | `result-track:265977d7960c823df71fd60383ae5e915e4d78fd5cdb9e64776b62e106be9569` |
| 106 | `theorem` | [image_closedEBall](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/image-closedeball.md) | 762 | `result-track:8991b2fe6d1c02b2737ca8db4b089437bc8bda56f2bcd16caf465fa7423a28fd` |
| 107 | `class` | [EMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace.md) | 783 | `declaration-track:ab3c360767357fbddba093bcddec73a24c0d7e4ba95b49f3f9ae1a3508ae5d67` |
| 108 | `theorem` | [EMetricSpace.ext](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace-ext.md) | 787 | `result-track:a080143ffed8ea64e71dbc6ec92c8ab292374dfa2d25cc46da426f282bb1e7f6` |
| 109 | `class` | [WeakEMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakemetricspace.md) | 797 | `declaration-track:2437710e8a3eab3b8b2de96e1d6a67a1641c4e16c30cc7364eca6339916ddeab` |
| 110 | `theorem` | [WeakEMetricSpace.ext](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakemetricspace-ext.md) | 802 | `result-track:ddf9c36d6bbaf5cf34252af75c1c645ad9a89f54c026aa532711a01ee030e080` |
| 111 | `instance` | [EMetricSpace.toWeakEMetricSpace](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace-toweakemetricspace.md) | 813 | `declaration-track:c9a54fd161d1472c605a9a9cf2240a629f83905e54554275628ca09279ef0be6` |
| 112 | `theorem` | [edist_eq_zero](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-eq-zero.md) | 823 | `result-track:053060eb8954cce67fe449c953e234b450b219c4e094406f1a4861de80008465` |
| 113 | `theorem` | [zero_eq_edist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/zero-eq-edist.md) | 827 | `result-track:54a66020f7e5faaad54df614425fcb406aff8aed998fc6902f5e62fb62b63bfb` |
| 114 | `theorem` | [edist_le_zero](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-le-zero.md) | 829 | `result-track:5c834fe281a06161b12cf060e271cdc8a8aaf652c872b0f225191514eae2a412` |
| 115 | `theorem` | [edist_pos](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-pos.md) | 833 | `result-track:c25661cf2d6d0ecb12efe165cba5f2c26b690fd01a42ced06f4ff815c5a1ecaa` |
| 116 | `lemma` | [Metric.closedEBall_zero](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/metric-closedeball-zero.md) | 835 | `result-track:fde49613b2e8b0a0319ee447733b3f66b5d99b314464faa0c1a6e452bf4ad395` |
| 117 | `theorem` | [eq_of_forall_edist_le](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/eq-of-forall-edist-le.md) | 838 | `result-track:3c61cfea48be82dd9b711026d8ac14bce12934f0ab4df9478c60f3cb4e63fe12` |
| 118 | `abbrev` | [EMetricSpace.replaceUniformity](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace-replaceuniformity.md) | 848 | `declaration-track:797f1f96d17d60240ca2877c7ab46a8f4999e7ef01b2f90250419d8f92abae1f` |
| 119 | `abbrev` | [EMetricSpace.replaceTopology](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace-replacetopology.md) | 865 | `declaration-track:0f2ab3c3bdac68feeb1daf0e8456ce13039488380b5afefb2ce36471f574f191` |
| 120 | `abbrev` | [EMetricSpace.induced](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/emetricspace-induced.md) | 877 | `declaration-track:fbe41dac467e93c6be2361a863ff1701730e9ee61f8ab318da2955ce6dc0e7a0` |
| 121 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-16.md) | 883 | `declaration-track:d4ff114bb09af47d6d4322bbd83e3b4169128112148667335b0e3da4c9b88995` |
| 122 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-12.md) | 888 | `declaration-track:9f7ced8ce764625188d0c61fc4023519a71a3f29d38426262c02d456927174f4` |
| 123 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-3.md) | 891 | `declaration-track:41243e94609fc05f8c7dfa35f523dd48fc68d38115416bef29f5d87d79714885` |
| 124 | `theorem` | [uniformity_edist](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/uniformity-edist.md) | 895 | `result-track:13a2d3158bb393984c19a0f74038678a6d688439c6becfdffdd8190571230a80` |
| 125 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-8.md) | 912 | `declaration-track:78967d86513da535cc25b41b87c2ee11345f825e4f70ee7eef6a5311299e52e4` |
| 126 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-14.md) | 913 | `declaration-track:b581f942d1ab0f798132d42558e82658d90edbafd2f285a20220f34d91944de2` |
| 127 | `theorem` | [edist_ofMul](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-ofmul.md) | 916 | `result-track:2c4cf2a7497ef4e2f214700810e1a77bcdf0a98845bff000c14946dd0e2444af` |
| 128 | `theorem` | [edist_ofAdd](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-ofadd.md) | 920 | `result-track:c6e5b4f22e49bfe531e03ae83675ca01485df64c12cf5f5ac12c4dd086a5f54e` |
| 129 | `theorem` | [edist_toMul](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-tomul.md) | 924 | `result-track:a4a0e1c8a28bd68c05be9627cabe3e4b489a6ec469b780cc546923032835fe11` |
| 130 | `theorem` | [edist_toAdd](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-toadd.md) | 928 | `result-track:f7690258c5f8546dabb6c8e537df1c0a2196dd33fd560a3f575296e9aaa20c8a` |
| 131 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-9.md) | 933 | `declaration-track:7b63df6d373222151fd45d71bca02e961d774faa8fbe67565f1fdf0cc77b1abc` |
| 132 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-18.md) | 934 | `declaration-track:f72a7e6f01739da839cda397b9e67b52d63a615ef365951ee767bf3f630cc801` |
| 133 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-15.md) | 935 | `declaration-track:c3721dcdb104f3afa8d9bd8a7b87dc98d8d300b7aea45a8c79cf3f733c4f9942` |
| 134 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-17.md) | 936 | `declaration-track:dba069d4aff02af6ae1e58c74f9e5359849451fb19d1d0a76d8f9a1a03b07939` |
| 135 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance.md) | 951 | `declaration-track:02379e6550bb49484a7f7133ddd2d48973e334d1a629c66f362a4d12fd181076` |
| 136 | `theorem` | [edist_toDual](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-todual.md) | 954 | `result-track:4720484a207b236910ef2f57e546e43799a27c326e4d958962720ebbad32a4e1` |
| 137 | `theorem` | [edist_ofDual](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/edist-ofdual.md) | 958 | `result-track:8985e26eaff1ef13a21b6d5d1d7c6c142345d9313f3ce259ac78238e8e6629fa` |
| 138 | `abbrev` | [WeakEMetricSpace.induced](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/weakemetricspace-induced.md) | 966 | `declaration-track:305cf7c334ec1d93dbac6aea71fdf3930855791df1fe8313f8e86d406d14a5dd` |
| 139 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-5.md) | 975 | `declaration-track:670a174c890413f699012040c9731cf4e50bd6e3e65a5aa238f05fa6b1d8cd70` |
| 140 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-2.md) | 981 | `declaration-track:29088725a8e554012fb37db864df2db1572744f08d0401393d9121a80384b47d` |
| 141 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-10.md) | 983 | `declaration-track:823f1ffa6a090600342d8261914361475154fa2b363fa351745b39e8a43f3b85` |
| 142 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-19.md) | 985 | `declaration-track:fd00fd9851485ee69ab70c524721566307a0d627f57300ed41c7583d481634cf` |
| 143 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceDefsPublic.lean/declarations/instance-source-edition-20.md) | 987 | `declaration-track:ff5b2b6961f4a3a45250ec8c8010ab8e1ffe23ae9ef7f83f4e4deac9f64e6d78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=147488a35e7e78fd762ba16b05f5128f124ea08eb25d33d84dde0ea6a55353bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
