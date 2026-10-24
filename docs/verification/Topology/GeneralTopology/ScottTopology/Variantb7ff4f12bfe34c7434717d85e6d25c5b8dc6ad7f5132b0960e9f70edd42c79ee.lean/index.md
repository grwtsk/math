# Verification target: GRWTSK.Topology.GeneralTopology.ScottTopology.Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a6d170ab3f18670812898173cd0806c7ad333ea`.

Source path: `GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean.json)

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
| 1 | `def` | [scottHausdorff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scotthausdorff--e6c9218c20aa681eedf2d1ec.md) | 81 | `declaration-track:e6c9218c20aa681eedf2d1ec59758b35dad6ec4a7770f6395390ea302f5ea068` |
| 2 | `class` | [IsScottHausdorff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isscotthausdorff--e233c669cf359b593df8a90a.md) | 101 | `declaration-track:e233c669cf359b593df8a90ad7b63115bbf2b1e39b552a307ea99c034777030f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--7888e47fbdef64a94524d9e5.md) | 104 | `declaration-track:7888e47fbdef64a94524d9e523082aa888267090ea7a43d904f3a1a094a405f9` |
| 4 | `lemma` | [topology_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/topology-eq--5f401b437207860fcf2419ad.md) | 116 | `result-track:5f401b437207860fcf2419add59a128400f7b776dffec51946ccfcb727becada` |
| 5 | `lemma` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff--f1c8a8ad6ccc78a52d8716f2.md) | 118 | `result-track:f1c8a8ad6ccc78a52d8716f2e4f13e5b81a98eb24d5941ec53d947fe3ac5b549` |
| 6 | `lemma` | [dirSupInaccOn_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/dirsupinaccon-of-isopen--6d6e5d5d21a1150487d00b6b.md) | 123 | `result-track:6d6e5d5d21a1150487d00b6bace30d8b999a8371ec33a87059a80052e82a4e4f` |
| 7 | `lemma` | [dirSupClosedOn_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/dirsupclosedon-of-isclosed--8151e1fb7aef567dc52b3e9e.md) | 126 | `result-track:8151e1fb7aef567dc52b3e9e292c1004042fd6f6e87ae052d3034e256e5de3e5` |
| 8 | `theorem` | [isOpen_iff_dirSupInaccOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-dirsupinaccon--001b0a8c390a0bd70c88640f.md) | 129 | `result-track:001b0a8c390a0bd70c88640fb7e3e6cc8b5d721d80a462a15184656eb33f13fe` |
| 9 | `theorem` | [isClosed_iff_dirSupClosedOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isclosed-iff-dirsupclosedon--1be8c0242f41e7ff93e572be.md) | 132 | `result-track:1be8c0242f41e7ff93e572bee397aca93c45ec5b5c5e8a0940a249a39399bdf0` |
| 10 | `theorem` | [isOpen_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-of-islowerset--0509ba7c9a72684efaf71912.md) | 135 | `result-track:0509ba7c9a72684efaf71912ca82d71d6f2a562268c6a8bebe2f3bd8d74ee058` |
| 11 | `theorem` | [isClosed_of_isUpperSet](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isclosed-of-isupperset--bff14d521ebb15a4f8e493ab.md) | 138 | `result-track:bff14d521ebb15a4f8e493ab1ac45044bd82ebe7d120529e805e6cb8731cf457` |
| 12 | `theorem` | [isOpen_iff_dirSupInacc](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-dirsupinacc--590cde7a37cf4ec4e0757719.md) | 147 | `result-track:590cde7a37cf4ec4e0757719198928060669de0f6fa2bef1849872a482412acf` |
| 13 | `theorem` | [isClosed_iff_dirSupClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isclosed-iff-dirsupclosed--0c60b1ff3ec3cff36b0c1d9e.md) | 150 | `result-track:0c60b1ff3ec3cff36b0c1d9ea57f4d3730e6f3f329b662cf3ec61c285fce0b80` |
| 14 | `def` | [scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scott--b8697c488a8c308a95c4f035.md) | 165 | `declaration-track:b8697c488a8c308a95c4f0353aa0db07d2c1b46d9cd46f7b2d4d5fef8ffb1167` |
| 15 | `lemma` | [upperSet_le_scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/upperset-le-scott--24285af1f04ed9a099ed2916.md) | 168 | `result-track:24285af1f04ed9a099ed2916172049813609b423913efca541d6344995c12b6b` |
| 16 | `lemma` | [scottHausdorff_le_scott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scotthausdorff-le-scott--fc3192cbc4c86348fc1fc4e1.md) | 170 | `result-track:fc3192cbc4c86348fc1fc4e1e277a40e70d7be0c2286820c2bcea80359176a82` |
| 17 | `class` | [IsScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isscott--a163843bb351458d1282f1c8.md) | 178 | `declaration-track:a163843bb351458d1282f1c83efb996f8cbc15a17d5c84248d9d02c632121b97` |
| 18 | `lemma` | [topology_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/topology-eq--c4baf1a8339730c45e86dbaf.md) | 187 | `result-track:c4baf1a8339730c45e86dbafd6b431540198d4d80b2d24b8ef686324e9c8ca3d` |
| 19 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open--2cccf2bcc9242cac42ec4d1d.md) | 191 | `result-track:2cccf2bcc9242cac42ec4d1dfadce9581da8316e0a55cc0ab83486d7cf927782` |
| 20 | `lemma` | [isOpen_iff_isUpperSet_and_dirSupInaccOn](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-isupperset-and-dirsupinaccon--2def2d7ecc7502a915b3ceb7.md) | 194 | `result-track:2def2d7ecc7502a915b3ceb7fb403c1e9428ef1d33c56993f7dee8d409b3fdeb` |
| 21 | `lemma` | [isClosed_iff_isLowerSet_and_dirSupClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isclosed-iff-islowerset-and-dirsupclosed--9787dc701e87cbcdee87c32d.md) | 203 | `result-track:9787dc701e87cbcdee87c32dec1df0239531259b2574345ffda630d453fe93dd` |
| 22 | `lemma` | [isUpperSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isupperset-of-isopen--b2513102bb138f171910e751.md) | 208 | `result-track:b2513102bb138f171910e751ac5ea5ede638d93470088321681aa335f0f93983` |
| 23 | `lemma` | [isLowerSet_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/islowerset-of-isclosed--695d4717625da8f256fb0c82.md) | 211 | `result-track:695d4717625da8f256fb0c829ab32af83209ca2dd41b0c73cf50d988fcec5b2b` |
| 24 | `lemma` | [dirSupClosed_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/dirsupclosed-of-isclosed--8ba44ff0bdb377919dd60644.md) | 214 | `result-track:8ba44ff0bdb377919dd60644eaf1cd9555b89cd0f2c5a3c3044b5fe791b4db11` |
| 25 | `lemma` | [lowerClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/lowerclosure-subset-closure--fe8e8b67e6729a25766855c1.md) | 217 | `result-track:fe8e8b67e6729a25766855c1df9516d0badf1f72f76577f10f2fd3a53d9cec97` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--6fd6bae63f1799f4d7e60249.md) | 223 | `declaration-track:6fd6bae63f1799f4d7e6024977a64bbd18f440882e6bfb52c6a5a065b2ac50c6` |
| 27 | `lemma` | [closure_singleton](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/closure-singleton--3787169521411a6dfe465b2b.md) | 231 | `result-track:3787169521411a6dfe465b2bd6494d6c2f37c4a7a1321f21d96ab38ba3d96f7b` |
| 28 | `lemma` | [monotone_of_continuous](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/monotone-of-continuous--815866e7c773374ba46fe692.md) | 238 | `result-track:815866e7c773374ba46fe6929bdbed3e4032652a6e4e4199ff0f6066ccdb3714` |
| 29 | `lemma` | [scottContinuousOn_iff_continuous](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scottcontinuouson-iff-continuous--67cba9d02333aa01e35d52a5.md) | 243 | `result-track:67cba9d02333aa01e35d52a5e974c048c01cb91d97690aadaca9fa347e498d9e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--9777baf174a0f011188b91a4.md) | 272 | `declaration-track:9777baf174a0f011188b91a49d6c378cb70a31f7a5d21a681895fe1a8d26591a` |
| 31 | `lemma` | [isOpen_iff_Iic_compl_or_univ](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-iic-compl-or-univ--47e6cecbe379cd90c8d0be18.md) | 282 | `result-track:47e6cecbe379cd90c8d0be1809665788caee2d7d57f06b570b823f2e24213ad3` |
| 32 | `lemma` | [scott_eq_upper_of_completeLinearOrder](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scott-eq-upper-of-completelinearorder--e21ffd1102f048f886e53322.md) | 300 | `result-track:e21ffd1102f048f886e533221d549e225ef93ecf0116357de399273cf3f1be50` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--631496355ebed80e95517209.md) | 309 | `declaration-track:631496355ebed80e955172094ea08fc2507bbf1c7f5489b814a3d5f0cef18a76` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--52d687c3eee80023df15cf94.md) | 314 | `declaration-track:52d687c3eee80023df15cf94aad2a3ef5d8a4b0b9cb250d8306c5aed7a3a3c56` |
| 35 | `lemma` | [isOpen_iff_scottContinuous_mem](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-scottcontinuous-mem--3062567689e98f0bfaac190d.md) | 320 | `result-track:3062567689e98f0bfaac190d434b127a3bdd80fdbaebf5130a66abc62c64da85` |
| 36 | `def` | [WithScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/withscott--fdeb763b0f3324ea280b43de.md) | 330 | `declaration-track:fdeb763b0f3324ea280b43de86d091125467b80304b086aeebece585e1042f7d` |
| 37 | `def` | [toScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/toscott--0e8c3543eddbd91f01d0c899.md) | 335 | `declaration-track:0e8c3543eddbd91f01d0c899f9123a583f5dbf63589ce21468cd4e82447167e7` |
| 38 | `def` | [ofScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/ofscott--7e893c740e5c724a07a8f17d.md) | 338 | `declaration-track:7e893c740e5c724a07a8f17da3b3131de7a231434e03effdee6ba6d471a33f2c` |
| 39 | `lemma` | [toScott_symm_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/toscott-symm-eq--eda9f2c25656b98384b75fda.md) | 340 | `result-track:eda9f2c25656b98384b75fdadbba98a9eb118dc323f3100139994c43541e6522` |
| 40 | `lemma` | [ofScott_symm_eq](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/ofscott-symm-eq--4ca1e1c736d2fec1a5c84725.md) | 341 | `result-track:4ca1e1c736d2fec1a5c84725a6bbb41c764ba696ca76141951f133d0fac583e0` |
| 41 | `lemma` | [toScott_ofScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/toscott-ofscott--494f7cd91ce47a8b0a5a2dc4.md) | 342 | `result-track:494f7cd91ce47a8b0a5a2dc48c10580c522f906d03c0b1baf3e8a108355da466` |
| 42 | `lemma` | [ofScott_toScott](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/ofscott-toscott--08bc370bcbdf161a5debacbe.md) | 343 | `result-track:08bc370bcbdf161a5debacbeae4ba89b09334ae421fa819d610e1dd0b5d2c781` |
| 43 | `lemma` | [toScott_inj](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/toscott-inj--cbea459d80368b4f45f01377.md) | 345 | `result-track:cbea459d80368b4f45f013777ea685f854439dedb3d3bf753d0368b980bb22c2` |
| 44 | `lemma` | [ofScott_inj](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/ofscott-inj--f0d885970cf432b87139dcc9.md) | 347 | `result-track:f0d885970cf432b87139dcc9c2fd73d611659087606a8d6eeac45c58d7724c92` |
| 45 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/rec--aa1ede024e55acf9e5054fcd.md) | 350 | `declaration-track:aa1ede024e55acf9e5054fcdab026b82bfc957216b5635e632a94b55ab7b225f` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--a217921a51fe5b4db80523e4.md) | 353 | `declaration-track:a217921a51fe5b4db80523e473628a3c381707d13813f938a2788c99b6944223` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--ea3f8cbce183e9c6cdb9c8d1.md) | 354 | `declaration-track:ea3f8cbce183e9c6cdb9c8d15075b331da1934f6f72ed4a6f39ffc7e647f8a2b` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--7fcd8a7257347f222de39c5f.md) | 358 | `declaration-track:7fcd8a7257347f222de39c5f708efdf2fc62e1725171861ba5cbda089690a7a2` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--96d6b36993f3b333de1b9435.md) | 360 | `declaration-track:96d6b36993f3b333de1b9435375b1105dbd7c825d8cc62b84028447bc74f6c0b` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/instance--63ff96665d3d33b605ace959.md) | 365 | `declaration-track:63ff96665d3d33b605ace9591cd0cc14bf79d8c51d1b6b1910c031b18d33b601` |
| 51 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open'](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isopen-iff-isupperset-and-scotthausdorff-open--18e8c34efb8ed98f2847d3e3.md) | 367 | `result-track:18e8c34efb8ed98f2847d3e39ff98887974af1eb78f5f114d8e10b19edd6425f` |
| 52 | `lemma` | [scottHausdorff_le_lower](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/scotthausdorff-le-lower--6aa9e1fd354d5d5bab533b47.md) | 375 | `result-track:6aa9e1fd354d5d5bab533b471d838bd58337b910e09b5eea0eb39badbb71eb9a` |
| 53 | `def` | [IsScott.withScottHomeomorph](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isscott-withscotthomeomorph--3cebaeee851779b9069bb03e.md) | 384 | `declaration-track:3cebaeee851779b9069bb03e445d38295521018596ba769e942e96c96be28ebb` |
| 54 | `lemma` | [IsScott.scottHausdorff_le](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/isscott-scotthausdorff-le--3a6cd06f7c44ff88f406dfbe.md) | 387 | `result-track:3a6cd06f7c44ff88f406dfbe3b82fca674604757ba06e9690d32cd5130aa663e` |
| 55 | `lemma` | [IsLower.scottHausdorff_le](../../../../../mathematics/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/declarations/islower-scotthausdorff-le--dc3128be9f31f8a9326b6e42.md) | 391 | `result-track:dc3128be9f31f8a9326b6e42db56c020cd07183c0e0dbc75ddb9c874f66afd5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
