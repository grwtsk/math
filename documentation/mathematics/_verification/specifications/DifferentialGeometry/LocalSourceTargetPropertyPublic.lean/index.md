# Verification target: Local Source Target Property Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72df890c93d70eb2965f0bd7ec30aded4a9b5cfd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72df890c93d70eb2965f0bd7ec30aded4a9b5cfd`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean.json)

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
| 1 | `structure` | [IsLocalSourceTargetProperty](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/islocalsourcetargetproperty.md) | 65 | `declaration-track:3e0ef8c7a941485b6aef3580951ceb41876f2ad8383c1dd514cf8e81828034c2` |
| 2 | `structure` | [LocalPresentationAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/localpresentationat-source-edition-2.md) | 76 | `declaration-track:9aee95669833dadbb8d3a95ae98bf7dbd6660a96110f9c5bf8f4e6ca3d56932b` |
| 3 | `def` | [LiftSourceTargetPropertyAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/liftsourcetargetpropertyat.md) | 101 | `declaration-track:31f8c9a96dad55b81963a79197df6e22063f4e90b55c981022b38762303c74f5` |
| 4 | `lemma` | [mapsto_domChart_source_codChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/mapsto-domchart-source-codchart-source.md) | 110 | `result-track:f4142f33961f51fc980fd7813c3f53f4f381cfafeb44868c1ed078a35324cfbd` |
| 5 | `def` | [localPresentationAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/localpresentationat.md) | 122 | `declaration-track:2250aea6aeccaa4b7042bb4ebf7866797c739850a7a91b03ca54436eebbd30c8` |
| 6 | `def` | [domChart](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/domchart.md) | 129 | `declaration-track:07c7941e0c875a9442db7842d0b3564faf6743ff859875c963ae44af19297add` |
| 7 | `def` | [codChart](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/codchart.md) | 136 | `declaration-track:ba0841d4269d06020007c7346f304fe383a3ab081106bd864d97cb2cf7d24002` |
| 8 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/mem-domchart-source.md) | 140 | `result-track:bc2b1817fb37c75be5fdd4ea9eec4ccca0a834e48a1c292a35fd0bb4bc4dc970` |
| 9 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/mem-codchart-source.md) | 144 | `result-track:2fc94451e58868263f3769280c8037ae7a0555f4d9e24f49be3c3618638641c3` |
| 10 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/domchart-mem-maximalatlas.md) | 148 | `result-track:d04bfc531353a6f074456cfab0061a43b660d8d174e75e805d9630224f458846` |
| 11 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/codchart-mem-maximalatlas.md) | 152 | `result-track:2cdc9982693c43edf632e4af0e8a6735e20173b58abbced67ec0d699b29a302c` |
| 12 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/source-subset-preimage-source.md) | 156 | `result-track:7775bfe9f1299dc1b1de63792ff0c30ebf2f4fd93c1c2eb64e60c0c38071a833` |
| 13 | `lemma` | [property](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/property.md) | 160 | `result-track:d1671969181bac82712ab9402e59382f2131a08f696374d900368e31e0176071` |
| 14 | `lemma` | [congr_iff](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/congr-iff.md) | 164 | `result-track:90da88e267413a74c4a7083aea5e14a5fecc29871037debf19e4c5c827570288` |
| 15 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/mk-of-continuousat.md) | 172 | `result-track:71864bf660978af4bf6065fcd270be614e91252966e47d699dc478b085055198` |
| 16 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/congr-of-eventuallyeq.md) | 188 | `result-track:e830b7f84d3da7da6d2024d509a7a644554c4d75c6d028bc618dd9c3556ceb59` |
| 17 | `lemma` | [congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/congr-iff-of-eventuallyeq.md) | 207 | `result-track:015212963782c2147f38a5ff2fcf940dfbd5f362d1aeefbe0986006e62d51c53` |
| 18 | `lemma` | [_root_.IsOpen.liftSourceTargetPropertyAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/root-isopen-liftsourcetargetpropertyat.md) | 212 | `result-track:39cf434c3be05b9d8b1224cb53c3dedf3da414c56eea2ea2218272ea4cd54c28` |
| 19 | `lemma` | [prodMap](../../../../DifferentialGeometry/LocalSourceTargetPropertyPublic.lean/declarations/prodmap.md) | 224 | `result-track:454b281aa67694321fbde0979bf5ec38b1d0d40ccd17955778a74c2b8698e106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db4f7b15275f871d45daa163c83dc8a24a9412f7094f59689900199b1fc475f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
