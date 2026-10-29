# Verification target: String Diagram Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28c2655184e172fc1233be0e59108baaf6724c07",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28c2655184e172fc1233be0e59108baaf6724c07`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Component.PenroseDiagram` — import line 11; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 13; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.HtmlDisplay` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Normalize` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Normalize` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/initialize.md) | 78 | `declaration-track:640a2e8222f730f377db060c8db2d15b9f95209ef51061eead3a8853f31745fa` |
| 2 | `structure` | [AtomNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/atomnode.md) | 83 | `declaration-track:a0be62cbc40de248f01c9247456221e0ad390f0a3042cb5b34218f8167b21048` |
| 3 | `structure` | [IdNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/idnode.md) | 94 | `declaration-track:57118fb089f1180dec334ea251367f2a9491d6a55d8f5a50d3145a4888659d9c` |
| 4 | `inductive` | [Node](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node.md) | 105 | `declaration-track:3427f952319d43ffddadaf60c5491348948f1f86ca52d2faff235f075ad4f92e` |
| 5 | `def` | [Node.e](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-e.md) | 110 | `declaration-track:6ea5739aae3e4c742b7e54185ca23f4969bbb2d2cdca07a467750487d2181ed5` |
| 6 | `def` | [Node.srcList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-srclist.md) | 116 | `declaration-track:233009cb0ec8af40d2294839f5dba027d26837a375d5588be1fdf827448269d6` |
| 7 | `def` | [Node.tarList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-tarlist.md) | 122 | `declaration-track:4f7dbdcf070f10dd14016f4cabe18b5dd2c053e909506caf5fb9e70631d86b82` |
| 8 | `def` | [Node.vPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-vpos.md) | 127 | `declaration-track:298822b3baf9981fe77b9e8584aefdd19c5fd6ea507018059f129376b49f850c` |
| 9 | `def` | [Node.hPosSrc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-hpossrc.md) | 132 | `declaration-track:1abf2578261c0068afdb8e59ff3f6185e950a841551776a6473b24ba81fae871` |
| 10 | `def` | [Node.hPosTar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-hpostar.md) | 137 | `declaration-track:1901e8de77726c2b9e779e98193773c776cb028c211f0cb7a5a37f806b827a49` |
| 11 | `structure` | [Strand](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/strand.md) | 142 | `declaration-track:61c72ce0000d9609a009b8761f4e008db606c3ddfa7ba7d896b6fe696243a5d6` |
| 12 | `def` | [Strand.vPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/strand-vpos.md) | 153 | `declaration-track:562f99638610a3c547c444e3898290c4ea340f18a3154d2d7313b28673cbd780` |
| 13 | `def` | [WhiskerRight.nodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/whiskerright-nodes.md) | 164 | `declaration-track:bf45d04b164d2c2a8965daad9a576b99d1055b7df27956ffa4f5275ec84e6478` |
| 14 | `def` | [HorizontalComp.nodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/horizontalcomp-nodes.md) | 175 | `declaration-track:45c4b416ac5fa6a9ae5e182e20c3235b530197edda5491ea87879b74ea45727f` |
| 15 | `def` | [WhiskerLeft.nodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/whiskerleft-nodes.md) | 186 | `declaration-track:ffa2faca571a049017c68e642303c571e19f8af47aeb7b9e117a1c98a6bfa914` |
| 16 | `def` | [topNodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/topnodes.md) | 196 | `declaration-track:609a6d39e3cfb029f4c60c6ee2234a0fdc3ce09d4c607487d5e41c00675094cc` |
| 17 | `def` | [NormalExpr.nodesAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/normalexpr-nodesaux.md) | 201 | `declaration-track:1a33b6abbff7c55c2944415396187e0f7273900f748403bf53df1edecc43ea38` |
| 18 | `def` | [NormalExpr.nodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/normalexpr-nodes.md) | 209 | `declaration-track:1b9649550d76df270049f2b1a344e539cce6d15f11db2fa2e3dc2291c8c9632a` |
| 19 | `def` | [pairs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/pairs.md) | 215 | `declaration-track:4ea08652bef4a130d0bd058d55147a25843666006c49767bf9934f38647669a9` |
| 20 | `def` | [NormalExpr.strands](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/normalexpr-strands.md) | 219 | `declaration-track:32f9aee23428063f1e843d1c7368dddea16cfb9c169c14cc19aeef842124b1f8` |
| 21 | `structure` | [PenroseVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/penrosevar.md) | 235 | `declaration-track:24d380c96f9afa7956279e532cd73f8b2f0183664b93e51ca297559484f49bfb` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/instance.md) | 243 | `declaration-track:6c0d81fb485ed510d200402ca853e2ec4b74776845e620b17896363d2d923458` |
| 23 | `def` | [Node.toPenroseVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/node-topenrosevar.md) | 247 | `declaration-track:921c96f219daa1addda6006d00ed05c1a9a6b8616adaa99b1c99acac9e7d2791` |
| 24 | `def` | [Strand.toPenroseVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/strand-topenrosevar.md) | 251 | `declaration-track:2375c91759b95441d36049ce1f7ea477238aaa4154236cbd2189bb9b09d431a2` |
| 25 | `def` | [addPenroseVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/addpenrosevar.md) | 260 | `declaration-track:3f14b458667f9ae4e06babfeb9b0477c33aee6efacc2a2f7020764ab86bc2c12` |
| 26 | `def` | [addConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/addconstructor.md) | 266 | `declaration-track:e2c616f4d7c2d926e036ca80b056040258cb029b3ddaafaaa16601248ca44a35` |
| 27 | `def` | [mkStringDiagram](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/mkstringdiagram.md) | 274 | `declaration-track:958a9fff3d971925872a878f8e9ec832a612fc392a6101e316bb24fb4d540f6a` |
| 28 | `def` | [dsl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/dsl.md) | 297 | `declaration-track:97cd47e314141601a7eedb728e5bd34fce498cc8dca799e43d970bc99c7333e0` |
| 29 | `def` | [sty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/sty.md) | 301 | `declaration-track:acb44469a9af97b269b501364dbf3aa3bc51293b0d54a0dbb545c4d1779ce2ed` |
| 30 | `inductive` | [Kind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/kind.md) | 305 | `declaration-track:56c5f5954c4fbea36e1059c0aa05f463b3534bdd4070d082a46f379ca8560065` |
| 31 | `def` | [Kind.name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/kind-name.md) | 311 | `declaration-track:f144e4bf364100871d001e1f07307304b63bf640c832d2173c13f81e6a4a7871` |
| 32 | `def` | [mkKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/mkkind.md) | 317 | `declaration-track:f69519cb350a013ffe4157fb4f6c3829eab054527ed67292372eaa136dd1cbb8` |
| 33 | `def` | [stringM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/stringm.md) | 333 | `declaration-track:de8129afc419bd37906b098d95d7be63f4e552cce2b794adfb6c72a032c0ee10` |
| 34 | `def` | [mkEqHtml](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/mkeqhtml.md) | 360 | `declaration-track:5df4a3d3fe973caed1e5db848df19b1b4e7f6c1b94c3872d3b957c601e53afe5` |
| 35 | `def` | [stringEqM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/stringeqm.md) | 376 | `declaration-track:8c505761ed2fac24f7ecc396cffba18d5c63ed22ecd3b91ae8b1821b0ec56ddb` |
| 36 | `def` | [stringMorOrEqM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/stringmororeqm.md) | 385 | `declaration-track:38ce71d18c224f430167d4745cc973068438420ef433f47658b0f53c32f96829` |
| 37 | `def` | [stringPresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/stringpresenter.md) | 396 | `declaration-track:0064e8c11133b286f6b759cde8aec293ac85bec5dae59bf07e76bb6537e2a4aa` |
| 38 | `def` | [rpc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/rpc.md) | 407 | `declaration-track:841630448ec9ca616b9ddd4501af4f7f411b4684bb44dc4db8271696d2bbac5e` |
| 39 | `def` | [StringDiagram](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/stringdiagram.md) | 427 | `declaration-track:f2904a60fda869ccfb5b33f7afd0c3b55d9a1208f7f8d7bf0b313e30ca634f68` |
| 40 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/syntax.md) | 445 | `declaration-track:1a88c0d904037c78148b87868153608769d72518ec618ac6faaad579a1129b59` |
| 41 | `def` | [elabStringDiagramCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StringDiagramNamespaced.lean/declarations/elabstringdiagramcmd.md) | 448 | `declaration-track:a2e71a227aa545cafde36026a75511307f20be87681eabe41986c7bf9b2e4dd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d66ec077589f09439c43a04d2c0eccd7d9dfaf45f9e59d52f1471a8e56c83deb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variant711c797d0a6fc1ec7a634d811980ae59266c9f2e5f7524d00b3e8e38fa590868.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
