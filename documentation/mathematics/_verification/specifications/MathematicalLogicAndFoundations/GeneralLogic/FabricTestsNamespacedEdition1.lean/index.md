# Verification target: Fabric Tests Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b5f35fc3d8806ad6eff9cf1322688a2a2ecbafb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant089c7f923ae550ac01a8bf5fc56a62ffe0560ddda2134fe3765c4737e40f23ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b5f35fc3d8806ad6eff9cf1322688a2a2ecbafb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant089c7f923ae550ac01a8bf5fc56a62ffe0560ddda2134fe3765c4737e40f23ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FabricTests/Variant089c7f923ae550ac01a8bf5fc56a62ffe0560ddda2134fe3765c4737e40f23ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Core` — import line 6; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Adapters.Fabric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/unitsystem.md) | 28 | `declaration-track:034b49bb16364e07481fbf068282aa9812406b0453ccba591c110f1576d6473c` |
| 2 | `def` | [unitPresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/unitpresentation.md) | 37 | `declaration-track:19f43d2bd9b5ce83d41736550fd91f2ebe5f3865304b3bef18d04bef133c462c` |
| 3 | `def` | [constantPresentedFabric](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/constantpresentedfabric.md) | 45 | `declaration-track:81793bffa7c6881afeb444083186e683311fc8733f7b3399dc6db25c282713fd` |
| 4 | `def` | [oneSimplexShape](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/onesimplexshape.md) | 56 | `declaration-track:dd8e03ba0bcb552150f285cd31b2f7c52b625b27cbb5e121c86fc1c103b42d64` |
| 5 | `def` | [canonicalEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/canonicaledge.md) | 60 | `declaration-track:60bd0ec76b23b9fb837749c9ff5f62ca575520d08f66cb658ada9a6a6365299e` |
| 6 | `def` | [oneSimplexFabric](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/onesimplexfabric.md) | 63 | `declaration-track:1f0fb237e044fd9d8913e9e700e55afb4dbc985f683b694c365e725f7dc916ca` |
| 7 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example-source-edition-4.md) | 66 | `declaration-track:5a0065c3f3490fb5b53c431369485ec7585d9924bf1d501e5e9623c897274ddf` |
| 8 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example-source-edition-6.md) | 71 | `declaration-track:faab2bcabe28e3d5e5ee2336117ef93fb1e038de8a4b543517e274fface3151a` |
| 9 | `def` | [triangleShape](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/triangleshape.md) | 77 | `declaration-track:ea769eb464d55fe3ad60a2509fd1e0b073fc921a008f4c3a4c07175f7d661137` |
| 10 | `def` | [canonicalTriangle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/canonicaltriangle.md) | 81 | `declaration-track:c99e6f7f38c0b6e833961c853547975000b1df061b4e7ef5c31eebbfbfa9c3b6` |
| 11 | `def` | [triangleFabric](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/trianglefabric.md) | 84 | `declaration-track:3fb147e3ffa34f01186efac6de531c59cfb37117d7adfcd7dbb2b213449b3a07` |
| 12 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example-source-edition-5.md) | 88 | `declaration-track:8db773de75c4b20b86bff6240ebfa2900ea14bf4e700a673f35d953d79a23c89` |
| 13 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example.md) | 96 | `declaration-track:04b37b5e171df740e3a953db277d4cc06eb59ea8ff899b16e3b6f4606a04e007` |
| 14 | `def` | [canonicalVertex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/canonicalvertex.md) | 109 | `declaration-track:6192f45ef431fd3ddbc3fdfc8d6c81235f3bc0cd78bd9d3e95c7425f6f4b2c9c` |
| 15 | `def` | [degenerateEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/degenerateedge.md) | 114 | `declaration-track:db2dbd4ea998ca1f45cf9f83aa948dca4ffe589b2fe2c253f81bf9fff012d2c1` |
| 16 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example-source-edition-3.md) | 117 | `declaration-track:55395c80b47f4a447d03f888b3fbe674739ad890a96fb051d6a840c00bfe5b59` |
| 17 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FabricTestsNamespacedEdition1.lean/declarations/example-source-edition-2.md) | 124 | `declaration-track:2e71ca297af5bf4a090733642761a7a3ce8b6d0a75c2c26b1d0345a85a5d70a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6677f01771c882cd74fd7abc8c8f91f860ce299d98ac6dd477d0cf6ddd746518 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant089c7f923ae550ac01a8bf5fc56a62ffe0560ddda2134fe3765c4737e40f23ad.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/FabricTests/Variant089c7f923ae550ac01a8bf5fc56a62ffe0560ddda2134fe3765c4737e40f23ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
