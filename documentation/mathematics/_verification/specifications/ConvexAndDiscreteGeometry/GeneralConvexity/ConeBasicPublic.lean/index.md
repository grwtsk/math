# Verification target: Cone Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af5e9d4a43af76a837820dca45d6506750f8dcac",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af5e9d4a43af76a837820dca45d6506750f8dcac`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean.json)

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
| 1 | `abbrev` | [ProperCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/propercone.md) | 61 | `declaration-track:8c3747f8334519fc8b1543c07f22312b70d3bbe4eb4848e8144d76d082f5bfa2` |
| 2 | `abbrev` | [toPointedCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/topointedcone.md) | 70 | `declaration-track:f3ad7b0540c36aea4e3f8d121fdbe39cd7c38cc559274b184f323141af8f572d` |
| 3 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/instance.md) | 72 | `declaration-track:6f9a87e6548e2e61055dd339a093b82e1cc63cec5a8c74b2523858f96017f1bc` |
| 4 | `lemma` | [toPointedCone_injective](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/topointedcone-injective.md) | 74 | `result-track:55d4dc7e79985b3ad9df2fe4854f2b4228515bc0c9b2574851ac35ef44b14425` |
| 5 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:ba7b2954b8aa0e1736de69c4990e3401ff9ccf6fdafe4a0c233bf49ead56cf39` |
| 6 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:e8e202fa885d499fd8de1783a2b8f06bb8018a32e8431137c6711ebee79bc430` |
| 7 | `lemma` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/ext.md) | 84 | `result-track:fa9355d000667f5f8f555783b83e2bc6e42ea94c104d1a171d07d5caef64fb7d` |
| 8 | `lemma` | [mem_toPointedCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/mem-topointedcone.md) | 86 | `result-track:c9cae1d31e0fb5bde6e8920d1e0ef886538365865efab46a2a6750afa8067683` |
| 9 | `lemma` | [pointed_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/pointed-toconvexcone.md) | 88 | `result-track:ca14c18c120532d6e1909eed986b0a6a8b862d9ba4ff92c9e813f1a305f0a5f9` |
| 10 | `lemma` | [nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/nonempty.md) | 91 | `result-track:5de3799ba1a4d8efbef2e6c47d8ddeaa45e7bc0c06dce157d8029047fbbb030e` |
| 11 | `lemma` | [isClosed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/isclosed.md) | 92 | `result-track:5d7529d858cc5d30763289003ec793b3ea1eda682c71eea15073132a6b41d088` |
| 12 | `lemma` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/convex.md) | 93 | `result-track:229b28899ba961772fa5226ff256433195adb0aa8089dc9cc1c6fee260509eda` |
| 13 | `lemma` | [smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/smul-mem.md) | 95 | `result-track:4d5a969cb9ce9e7a838dd1e5faa2eaae664b1e1afef149e4b8afd50e6cca76bf` |
| 14 | `lemma` | [mem_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/mem-bot.md) | 101 | `result-track:2c2dec459042511857c4c3ce855d01caefc3722b7c63f79c1df133650e62425e` |
| 15 | `lemma` | [coe_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/coe-bot.md) | 103 | `result-track:ae36b590105fc2254fb16eaed64929266ef7e48faa1e464e03e2e02449bc423a` |
| 16 | `lemma` | [toPointedCone_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/topointedcone-bot.md) | 104 | `result-track:57fb2d8d97d8ef9176907e9186c411dc3a5f8a092b1bc7f9e22ed38dc96fdee4` |
| 17 | `abbrev` | [comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/comap.md) | 110 | `declaration-track:445d70571261557732369418c5aa4c3881d569662f10bde7bccad65de2697410` |
| 18 | `lemma` | [comap_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/comap-id.md) | 113 | `result-track:7e18cd5ff7fc3b0864f0336ae617fd044bc57cbe93db50575098f8a4d40e4c71` |
| 19 | `lemma` | [coe_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/coe-comap.md) | 115 | `result-track:deb4454bf1c70782aed61ba186adb5cfda732148e26ab07588657ce6081b4d62` |
| 20 | `lemma` | [comap_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/comap-comap.md) | 117 | `result-track:7778d8a400dc2381067941102af5c10b244f3ee41b5675c26f32c8e93457780c` |
| 21 | `lemma` | [mem_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/mem-comap.md) | 120 | `result-track:bcad35e5cf705b89415474d05bc77522a4d02e055f28baf57e08880628904b55` |
| 22 | `abbrev` | [map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/map.md) | 127 | `declaration-track:b16c8b305d4fb107d880d01b20e191d2373bf7a5537adb676af81645c20a231b` |
| 23 | `lemma` | [map_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/map-id.md) | 130 | `result-track:6732871738631fcb9b596d02523be0c0c56434ccc735d9eaa931c622a16fb42b` |
| 24 | `lemma` | [coe_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/coe-map.md) | 133 | `result-track:77724b2c08485cd746c8f3372440bca5e64b35f96567869e4e01efd84f617004` |
| 25 | `lemma` | [mem_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/mem-map.md) | 137 | `result-track:746bec46c090642c98b254794d51167e23b8893c5d91aa4f233b2412cb50a1c5` |
| 26 | `def` | [positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/positive.md) | 149 | `declaration-track:4aebfeb0a069377678c1572cfc2197bbbe4d0b6ac099d40d0655e8c81e644691` |
| 27 | `lemma` | [mem_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/mem-positive.md) | 153 | `result-track:a227c846474bbba55a6ec5fbfe4d189c0daf3bb317a85af883e6b0dba92bb0e5` |
| 28 | `lemma` | [toPointedCone_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/topointedcone-positive.md) | 154 | `result-track:887f553eb5ada794e9bbcb2f0df1ea8550b4a2fad4b18c6b6d8f804556adc5eb` |
| 29 | `lemma` | [Pointed.of_nonempty_of_isClosed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/pointed-of-nonempty-of-isclosed.md) | 171 | `result-track:5c1ccd7b4fde7e808ff34efd1dae636b4714cdab544e5c9dc5bc77897c28eacc` |
| 30 | `instance` | [canLift](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicPublic.lean/declarations/canlift.md) | 185 | `declaration-track:642b9ff45f2f8da1ee8fae5e1dd88672e62e069faa65245e1525d4c402699319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98c73e9c66b61b627aa331441c5c67f03201992b1a6700f2b77360c28dbac4e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
