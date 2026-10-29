# Verification target: Analysis Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2a0150214ad911435fb45c236d4a235c1bd65a3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant71532daaf468921da9046cdfb5634becc7d5666ce935a9dbdff23dc4dac53a4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2a0150214ad911435fb45c236d4a235c1bd65a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant71532daaf468921da9046cdfb5634becc7d5666ce935a9dbdff23dc4dac53a4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant71532daaf468921da9046cdfb5634becc7d5666ce935a9dbdff23dc4dac53a4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ctop](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ctop.md) | 45 | `declaration-track:1a14a296a9042137ad9d4d65f046bc04ea32581d239b83ff33e6839365386130` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/instance.md) | 55 | `declaration-track:31902cbdf1d197cb2ba7b0a822a90934bd7c58cb5cdd15e40df1a02eb31c392e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:f913602696257847f29dbf9e149c975ef20bc57425ebb3636093b71dd48fc672` |
| 4 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/coe-mk.md) | 72 | `result-track:8e119caa006c55b602d91600e349358b536416554f26912f3e9cda6c65e91688` |
| 5 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ofequiv-source-edition-2.md) | 75 | `declaration-track:d4f46cb8e3dec9438b52e38d5f30591e1072ed838c925295ed566ac6bea19f18` |
| 6 | `theorem` | [ofEquiv_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ofequiv-val.md) | 85 | `result-track:1edd1b0c4dd52aef470d77dcb39e48ff986c2e38ace483b9b7900449eac73ba6` |
| 7 | `def` | [toTopsp](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/totopsp.md) | 92 | `declaration-track:797be643d72571d7d1e2dbc858b62f1e2c064482bbb143b4cd1f6fa5606d3779` |
| 8 | `theorem` | [toTopsp_isTopologicalBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/totopsp-istopologicalbasis.md) | 94 | `result-track:0f53990a167a1c29c0852d19943109e35daafea648da9eab388dc647cec04262` |
| 9 | `theorem` | [mem_nhds_toTopsp](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/mem-nhds-totopsp.md) | 102 | `result-track:5198a4a7f0214c509b8f1455c98c392f18e717e2802a01fc486ed7c136e61e9e` |
| 10 | `structure` | [Ctop.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ctop-realizer.md) | 112 | `declaration-track:2a1bd6f2c6e8acc10fa39de0b0319a19355b805545cffc0c0a297b23bd459367` |
| 11 | `def` | [Ctop.toRealizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ctop-torealizer.md) | 120 | `declaration-track:e2d9375fdd6d9d1e242dc5ccb11dc383f1f2107d67ef63c37d475069a0cae8af` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:dabe8efd10145fb8bb9ba0373c190be31adaffa627c542b98d5970a5854a73c6` |
| 13 | `theorem` | [is_basis](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/is-basis.md) | 128 | `result-track:6e2f1426ca6d4a8d5d8f55ba5517832c756361b3eb1a9a49cafee144e005c86b` |
| 14 | `theorem` | [mem_nhds](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/mem-nhds.md) | 132 | `result-track:0961dc7bad3be9ef68e1281e00a1120957692faa1416ebe4a1fca04bb002e4bd` |
| 15 | `theorem` | [isOpen_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/isopen-iff.md) | 136 | `result-track:83d2c2558529a729ecb29b3c816822a91de0aba601c6fa323fa6928cd128f537` |
| 16 | `theorem` | [isClosed_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/isclosed-iff.md) | 140 | `result-track:98617c355dc7c319c14c5a2ad59427ce2e6c40fa986bc3ffb635a41a34f5ef76` |
| 17 | `theorem` | [mem_interior_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/mem-interior-iff.md) | 149 | `result-track:1958583c313300e09168f753b845046d6871b8adc048e767cc4cdf1756d3a779` |
| 18 | `theorem` | [isOpen](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/isopen.md) | 153 | `result-track:99cd93624b7d5924386d30d6485a0f582e3062acb1327b2c2d75b4a3fa59864d` |
| 19 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ext.md) | 156 | `result-track:29b407e33ab2b0c0233b9d81c20473a24136098cb3ef28234ed2b16c8a1cb790` |
| 20 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 162 | `result-track:6e434e07004dc98ea0a2e75d5c60ca25aef0349342554de26970951dbdbd017c` |
| 21 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/id.md) | 169 | `declaration-track:f14caa71ec30455b1c83e2b5ecf460456af07d9e0e04a9ef3c88dc2c10a9a821` |
| 22 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ofequiv.md) | 182 | `declaration-track:7bf3ca09e50a31d3192240cf802350ba25c643d2c23439f9d8d8c23562f25f99` |
| 23 | `theorem` | [ofEquiv_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ofequiv-source-edition-3.md) | 189 | `result-track:d71a57f231f7a414ec428fd96e28c006dc6646d3da92565691da0ce6c9440c57` |
| 24 | `theorem` | [ofEquiv_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/ofequiv-f.md) | 192 | `result-track:ae6440ba524633a5b599ef2886f164feb68d4ca26fc219d5bad88f109e1caf4f` |
| 25 | `def` | [nhds](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/nhds-source-edition-2.md) | 196 | `declaration-track:d6338ff5a781e74cbc0ac1817a78ae4250de055d7a3654dccbc2324915601287` |
| 26 | `theorem` | [nhds_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/nhds.md) | 210 | `result-track:123172c124dd6d21324b98bbceaf9c9023a8b625209b04d41ac83ee11b52ffa2` |
| 27 | `theorem` | [nhds_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/nhds-f.md) | 213 | `result-track:4f7e926a2ce271b286823c0febe8ca5995a0b6e6f5ae1c1aab0d45f9f8efd6cf` |
| 28 | `theorem` | [tendsto_nhds_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/tendsto-nhds-iff.md) | 215 | `result-track:c849a46239dbd7e4673e3179d6eed428022d05e9ad29d6e8511b2e257b87face` |
| 29 | `structure` | [LocallyFinite.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/locallyfinite-realizer.md) | 224 | `declaration-track:02a705b4a18b19bc2de2fc8e8c449d307d98ff735d159f986e6ceb5c15882c2e` |
| 30 | `theorem` | [LocallyFinite.Realizer.to_locallyFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/locallyfinite-realizer-to-locallyfinite.md) | 228 | `result-track:42b19bdcae2b00710124ae5159915094d681920d129e91e73588ed51744c3376` |
| 31 | `theorem` | [locallyFinite_iff_exists_realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/locallyfinite-iff-exists-realizer.md) | 232 | `result-track:e8913337dff3f3bf649c61f94908d266b2468d73a6317f665e2b7a19fac102aa` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 247 | `declaration-track:53fea368bbda99c605f8105739d5809aee246826c757b6571259f1ac0eb502c6` |
| 33 | `def` | [Compact.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/compact-realizer.md) | 253 | `declaration-track:31216f88bb78bcaa70ed5348d2a495af969ebe73c67e4e18e6f93477a5d3fee6` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 256 | `declaration-track:515e6958af589c6a0e1117203a5fd7f7b7105e713260f0046e888af410b68844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9093f70456c0d0d61f63ca0fba9fe9def2fb504415f7d65a1e680fa4af80f93e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant71532daaf468921da9046cdfb5634becc7d5666ce935a9dbdff23dc4dac53a4c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant71532daaf468921da9046cdfb5634becc7d5666ce935a9dbdff23dc4dac53a4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
