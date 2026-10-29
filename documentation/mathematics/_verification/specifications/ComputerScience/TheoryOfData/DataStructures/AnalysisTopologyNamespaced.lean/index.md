# Verification target: Analysis Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2251d09b09a36a70efdcfbf2966429ba6d15f0b4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant04983d7abb0ad03999bd501b5734d8a0dc7daa990407b261f8ad99931f709055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2251d09b09a36a70efdcfbf2966429ba6d15f0b4`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant04983d7abb0ad03999bd501b5734d8a0dc7daa990407b261f8ad99931f709055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant04983d7abb0ad03999bd501b5734d8a0dc7daa990407b261f8ad99931f709055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Analysis.Filter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ctop](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ctop.md) | 41 | `declaration-track:3facf6613aa457dd999be239ff2ff3d6809520a8def9d4ef5ab4d5acf422638c` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/instance.md) | 51 | `declaration-track:4feb4ba32ddd0af15974c700757acc3e96ee8c0f70db9d0b53a2a448cf41eeca` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:caf01fb42c15c82ce307bbec84221463ada9f9ff171a45536cd9f1bc720027de` |
| 4 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/coe-mk.md) | 68 | `result-track:c5e9ae0e551ead40208ba95bccc1d12e75bad581bf80f429caba29d233d03c27` |
| 5 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ofequiv.md) | 71 | `declaration-track:75760edf72022c48f61601d06d0d9fd3d11b664e92983c4fd6182b1ffda434a0` |
| 6 | `theorem` | [ofEquiv_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ofequiv-val.md) | 81 | `result-track:3efc400814efc37e4625b518fdaf1fe27e5111b4c85b4b92d2f7cabc2b311d11` |
| 7 | `def` | [toTopsp](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/totopsp.md) | 87 | `declaration-track:70664863c087e678906e767dd18b2053322a5d38d6ac8b0ef91f48f526f63c07` |
| 8 | `theorem` | [toTopsp_isTopologicalBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/totopsp-istopologicalbasis.md) | 89 | `result-track:3377804c91de934c1927ac704befe853d5ecec390b51f94ec019c1e5dcccbee5` |
| 9 | `theorem` | [mem_nhds_toTopsp](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/mem-nhds-totopsp.md) | 97 | `result-track:fefb086f0095b7ac7f95eaab3e9168727de1574abf34b1700d0ced1c143fdd41` |
| 10 | `structure` | [Ctop.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ctop-realizer.md) | 107 | `declaration-track:8c246769a286eec4c883c9fe361a37c9ddc2e3704f95152d3993baae84a159c7` |
| 11 | `def` | [Ctop.toRealizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ctop-torealizer.md) | 115 | `declaration-track:2639d0a71940e6c0d6ed9d5e212983a338fba5ea6034c331ed760de0ecc1ff72` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:b459103c52964722801bd2cef54689675cc6f6b0b65fa423e1dde99014952129` |
| 13 | `theorem` | [is_basis](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/is-basis.md) | 123 | `result-track:fa7a9f351536c1808d51d4667d91eca352f36b7dde31dd454e373bb2a54f0442` |
| 14 | `theorem` | [mem_nhds](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/mem-nhds.md) | 127 | `result-track:58f738e503040b4959a4e7d38a1501ec59729d3929175f6f12df9cf4a1cec96b` |
| 15 | `theorem` | [isOpen_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/isopen-iff.md) | 131 | `result-track:49180b2f14e6a2efe1568d25730f0a60f788c7a6de4c5e2747ebdc8ee5ea260c` |
| 16 | `theorem` | [isClosed_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/isclosed-iff.md) | 135 | `result-track:9276c0e3457de9850b5abc05cb9e45ba201ad2a554cd4e7a7620b0782e867346` |
| 17 | `theorem` | [mem_interior_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/mem-interior-iff.md) | 144 | `result-track:ff65c9d128d909347f6c852e8c653e2360e94f97140f1fcbd54e2434945e74ae` |
| 18 | `theorem` | [isOpen](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/isopen.md) | 148 | `result-track:eb9be4bf897ccc45ddc02f80ec66c68b225da3bbab31997a4199cdce41d1ecf4` |
| 19 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ext.md) | 151 | `result-track:326fc29d7e1af54ce7e63a5826de214f6f153fc373ae5bd8304c5fda6f0598ee` |
| 20 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ext-source-edition-2.md) | 157 | `result-track:e16fbe4dffd65027d616f10b161c8384ffc0abdc5faf313f4495427b7eca687d` |
| 21 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/id.md) | 164 | `declaration-track:5c5e76001635128cd16a3407d09a98e1608624c78b6b3466a80244f2c195e6d3` |
| 22 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ofequiv-source-edition-3.md) | 177 | `declaration-track:d630c97fb4129bcd0c3f3c29f7b3950e3001f5ffb9b66d563d6a4936bf1a1176` |
| 23 | `theorem` | [ofEquiv_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ofequiv-source-edition-2.md) | 184 | `result-track:76ac6a5777972d9a883e5badfcdaa527fbdda7442551b4fc578f32e49fe28efb` |
| 24 | `theorem` | [ofEquiv_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/ofequiv-f.md) | 187 | `result-track:aaf7998c7a8827305683654d4d5836361b6a65e125892001f8e1c704223deb26` |
| 25 | `def` | [nhds](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/nhds.md) | 191 | `declaration-track:ca0ad728401e3d1c847e5b72a8c873d6f52aa736e8eb0bbf89e707e8368c094a` |
| 26 | `theorem` | [nhds_σ](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/nhds-source-edition-2.md) | 205 | `result-track:f70fb30588784df3d37dcffa135584cdcbc22bf895312f628cb9f05366916d96` |
| 27 | `theorem` | [nhds_F](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/nhds-f.md) | 208 | `result-track:d50435a006df8bde55e50e3046f3a4e9ca5772b9baf72463afb44804da984c9d` |
| 28 | `theorem` | [tendsto_nhds_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/tendsto-nhds-iff.md) | 210 | `result-track:e52026a95e80dbd0da8a1348b7276b42b31321c721237ebf5c944259bcdb9b6d` |
| 29 | `structure` | [LocallyFinite.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/locallyfinite-realizer.md) | 219 | `declaration-track:a67eedc5c867026fcaf458b17e605d710a10b2a39cb08c17b918e66c9668309c` |
| 30 | `theorem` | [LocallyFinite.Realizer.to_locallyFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/locallyfinite-realizer-to-locallyfinite.md) | 223 | `result-track:bc6330bd7d8b1c7e001a6ae6ffdc42465c900063192ffa8c4358e11735abe1d0` |
| 31 | `theorem` | [locallyFinite_iff_exists_realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/locallyfinite-iff-exists-realizer.md) | 227 | `result-track:1a645d1c4a7d95000f38372885654a220e5fb89e9684bce76455f1f617c897d3` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/instance-source-edition-2.md) | 242 | `declaration-track:917438d7725f3faa7af218536a4e4301d66b58a2934d27d260dbbf7e27a36748` |
| 33 | `def` | [Compact.Realizer](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/compact-realizer.md) | 248 | `declaration-track:edc56686991ca172023f9f8af99f28419778608ac3b6782ada84be185e202fa9` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/AnalysisTopologyNamespaced.lean/declarations/instance-source-edition-5.md) | 251 | `declaration-track:f10bde57a60a9493fa33907b5d244a3393447a82ca90cbd440093fa9c539a5ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2622f247f1d0ab9debea8e80970f27c1a45557a72a99c31ce0c8707bf12adbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant04983d7abb0ad03999bd501b5734d8a0dc7daa990407b261f8ad99931f709055.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant04983d7abb0ad03999bd501b5734d8a0dc7daa990407b261f8ad99931f709055.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
