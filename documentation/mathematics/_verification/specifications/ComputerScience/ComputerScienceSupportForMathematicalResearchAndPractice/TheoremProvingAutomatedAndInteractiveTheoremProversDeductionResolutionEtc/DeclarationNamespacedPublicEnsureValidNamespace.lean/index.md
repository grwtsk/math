# Verification target: Declaration Namespaced Public Ensure Valid Namespace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.ExternAttr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ensureValidNamespace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/ensurevalidnamespace.md) | 26 | `declaration-track:0672edd71cd1e8211b1573cc359a0b2b219ea67a6502171c417016952a92f341` |
| 2 | `def` | [setDeclIdName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/setdeclidname.md) | 35 | `declaration-track:8a4235aa348aee6a822f875b30ce5a47f6b36dca31da3c3e7cc6baaee15b0ee0` |
| 3 | `def` | [isNamedDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/isnameddecl.md) | 46 | `declaration-track:2c4af2c6f43a9fd128f7fbc29db3fe1974bc9b408dfc424ee9227eefe0c1918e` |
| 4 | `def` | [isInstanceDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/isinstancedecl.md) | 62 | `declaration-track:4be08ec9fff92e5a5ec703bf5ac2a5d647b5e53187a2ee655d711b62479002b2` |
| 5 | `def` | [getDeclName?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/getdeclname.md) | 67 | `declaration-track:421529470237ba86444230dad5db0fb86c94bcd641b7c5cf6d568c26c4b195bd` |
| 6 | `def` | [setDeclName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/setdeclname.md) | 84 | `declaration-track:52b27280be9690cc36b777d3eb0584bebd349e81b41902486345e9ec8bfe40aa` |
| 7 | `def` | [expandDeclNamespace?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/expanddeclnamespace.md) | 98 | `declaration-track:ec61da706fe0fb886d9fe7d209763db9200f1c9774eef375aa3fd327a9ede425` |
| 8 | `def` | [elabAxiom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/elabaxiom.md) | 109 | `declaration-track:c8b04d8b4eab20e11da7f72137f4075848af7196691ecde8fb470f08fe761c60` |
| 9 | `def` | [expandNamespacedDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/expandnamespaceddeclaration.md) | 158 | `declaration-track:a17ce5b93493b831d2354e5bff7cb1a41264ec1c533200b64ede009eb0298fd1` |
| 10 | `def` | [elabDeclaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/elabdeclaration.md) | 169 | `declaration-track:8b838f682fa0482fc14fa2a61d14414a03207647da9b22653c4c3e0abfb1866f` |
| 11 | `def` | [isMutualDefLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/ismutualdeflike.md) | 196 | `declaration-track:32005e099290b5c747e431b623abd177cc603c61335d8c669dce74e27fd309dc` |
| 12 | `def` | [isMutualPreambleCommand](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/ismutualpreamblecommand.md) | 201 | `declaration-track:13a40fb2b580ae80fa7a53889fae0bbe135530c005a12990993c82a5afa008b4` |
| 13 | `def` | [splitMutualPreamble](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/splitmutualpreamble.md) | 209 | `declaration-track:44a4d0030deaba81bb96a2b044bd31ee75f326857d7e059af651c0dec243f29a` |
| 14 | `def` | [findCommonPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/findcommonprefix.md) | 230 | `declaration-track:349d7d53a9944b02a4dc2094a34dbb32a76aebda2c3215b24087be6e05723f7c` |
| 15 | `def` | [expandMutualNamespace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/expandmutualnamespace.md) | 248 | `declaration-track:ba76ab67a67f656a17496b9ff542d64645b6a3d26538790aec9384f9d71352ef` |
| 16 | `def` | [expandMutualElement](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/expandmutualelement.md) | 266 | `declaration-track:bc4362b54f042e72e96f331a4d64137c8e9b3d1876560548e467ef9a5af27739` |
| 17 | `def` | [expandMutualPreamble](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/expandmutualpreamble.md) | 287 | `declaration-track:6affe803f3038ec90c7cab56017d0f188c5eace667dd28f66a332d4057c66b1e` |
| 18 | `def` | [elabMutual](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/elabmutual.md) | 297 | `declaration-track:b60452893c74934a85f430e710efadf3236fcdf893b3cad346a04799e93c52db` |
| 19 | `def` | [elabAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/elabattr.md) | 309 | `declaration-track:a00bc7f25e864039f0c651162a36e246a449960e71afe830d52cf1429a1b7c28` |
| 20 | `def` | [elabInitialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/elabinitialize.md) | 350 | `declaration-track:483f9de2d93b7b2599ef8005538bd12828689e4ddc300f4afbe678435104fcae` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationNamespacedPublicEnsureValidNamespace.lean/declarations/builtin-initialize.md) | 377 | `declaration-track:1118568fabe0dacce8bc947b835e021ea9d268b6825774655d0498c5c8579e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0308ebc12714e01f6eae7bd2c55b3ff991957f95469c852aade42b529c337aa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
