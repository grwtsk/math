# Verification target: Facet Config Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ac71cfa024b68d6b7b1b8dcab458fa9bf91f46",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant29c45a7f6e6d67e05ad8c0e103d64fe779d14dffba8dbf031cc769eb05f09763.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ac71cfa024b68d6b7b1b8dcab458fa9bf91f46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant29c45a7f6e6d67e05ad8c0e103d64fe779d14dffba8dbf031cc769eb05f09763.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant29c45a7f6e6d67e05ad8c0e103d64fe779d14dffba8dbf031cc769eb05f09763.lean.json)

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
| 1 | `structure` | [FacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfig.md) | 15 | `declaration-track:8d3f032ffe6d83931d3cdd0d704cf207a3ad77cca299fc61463f23d28456dbbe` |
| 2 | `abbrev` | [FacetConfigMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfigmap.md) | 31 | `declaration-track:ab73eeb3848ed5b31397a9cb355d0d9b9da9cc9869d866d830410a8bb5d288a1` |
| 3 | `def` | [FacetConfigMap.get?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfigmap-get.md) | 37 | `declaration-track:f62c726d46b4b20d63cc17bcd6b54bc3a8b0e4f43c96eac8e8f11f1c0ad59f3d` |
| 4 | `def` | [FacetConfigMap.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfigmap-insert.md) | 41 | `declaration-track:c23657711957815c9c0c2d08f54618a2e9bcf31664d231b4f633e60e207a4bea` |
| 5 | `abbrev` | [FacetConfig.name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfig-name.md) | 44 | `declaration-track:a53ccafeb19c411c3c734cefe4db5e50241423cfa12785b44e3498b69cf2cd76` |
| 6 | `structure` | [KFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/kfacetconfig.md) | 46 | `declaration-track:528804950f174e81fba4c6100cbbc1a7532d57943f1587eb095538b8d8e05d0f` |
| 7 | `abbrev` | [FacetConfig.toKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfig-tokind.md) | 50 | `declaration-track:131e517a799353981f00094bc9f0cdb5e97523a984d2d3c7f520ee3c423dbc51` |
| 8 | `def` | [FacetConfig.toKind?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetconfig-tokind-source-edition-2.md) | 54 | `declaration-track:15d2e7ef4a7f2700bac5abca326d558112c55f2448c99d35864d62fae49e052b` |
| 9 | `def` | [KFacetConfig.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/kfacetconfig-run.md) | 61 | `declaration-track:4824164613e29cf1d9b049b3e4b1bd7571b7216a5a99385610c74c36f6dfd3ca` |
| 10 | `def` | [mkFacetJobConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/mkfacetjobconfig.md) | 69 | `declaration-track:523ac33891189dc012398507f4c421fb5739a26b24e8b9c0ae3aaaa76a0082cb` |
| 11 | `structure` | [NamedConfigDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/namedconfigdecl.md) | 83 | `declaration-track:036fa1c563b8d124557e657f735c78c2e519df7042467e95b12ac7397c666b66` |
| 12 | `abbrev` | [FacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/facetdecl.md) | 88 | `declaration-track:366eece4b6a67fdf0ec22044935117c0e59596be990428b20c9346417c20b208` |
| 13 | `abbrev` | [ModuleFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/modulefacetconfig.md) | 91 | `declaration-track:f0db04fd0c3681ba3749a20b840461504edc565a48fb097d8842b729d2837ffb` |
| 14 | `abbrev` | [ModuleFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/modulefacetdecl.md) | 94 | `declaration-track:3a015d26d49dbf01ce9d1f652581c7911477bc2f3a3c31ee67e163c5662231e3` |
| 15 | `abbrev` | [PackageFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/packagefacetconfig.md) | 97 | `declaration-track:bb8a3b6db82b860e9aaebfdeb0001d81194d7af44f4c94f73904fdc6648c58c3` |
| 16 | `abbrev` | [PackageFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/packagefacetdecl.md) | 100 | `declaration-track:51497bf907468b67c65a1ffa6b5c5ee84b78f576bdd1d8ef040abb51ed9bb19c` |
| 17 | `abbrev` | [LibraryFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/libraryfacetconfig.md) | 103 | `declaration-track:2c7649851e95d8fb2d724d2c509214ce54b61ac204fb434356d13c10adf710b4` |
| 18 | `abbrev` | [LibraryFacetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/libraryfacetdecl.md) | 106 | `declaration-track:c8ef3b339bd3fc210f937d6ee50e89946f8a1a283f5948b615d13bb9b94f0eb0` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:82660c1a224fa7caa7985409ff75cab46b2d8d5615fc9bbdb96bfd31c66634dd` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:4c82e17c53a85fe1250e520153e340ad13ac8d937beb0eae4f4e31816d110640` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/instance.md) | 110 | `declaration-track:28acb45bc40f6ab974f70c2eabeb1bef877fc9587ac284f61292d71fe6e48118` |
| 22 | `abbrev` | [LeanLibFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/leanlibfacetconfig.md) | 113 | `declaration-track:acddcae711ea5f7e32e169b0760d3b3481e0ffeba7f9845f018ed2f820ca348b` |
| 23 | `abbrev` | [LeanExeFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/leanexefacetconfig.md) | 116 | `declaration-track:d38948643431037a25ef4e18b2a41ea9f55ce25310822952e38bf0d301cbda91` |
| 24 | `abbrev` | [ExternLibFacetConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FacetConfigPublic.lean/declarations/externlibfacetconfig.md) | 119 | `declaration-track:09940a2220a21964735b11dcb89b49af6093794a01736212813a893996cb2d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c022419ab4dd55492b82fdea7dea5268f0cba4950a1d944a5585d1f834d0176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant29c45a7f6e6d67e05ad8c0e103d64fe779d14dffba8dbf031cc769eb05f09763.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FacetConfig/Variant29c45a7f6e6d67e05ad8c0e103d64fe779d14dffba8dbf031cc769eb05f09763.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
