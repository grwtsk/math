# Verification target: Output Namespaced Latex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2dd41557991459c33bf1547f751b0f92a286c7a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2dd41557991459c33bf1547f751b0f92a286c7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect.CollectUsed` — import line 6; external provider; requires a separately pinned dependency.
- `Architect.Content` — import line 7; external provider; requires a separately pinned dependency.
- `Architect.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Latex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/latex.md) | 24 | `declaration-track:d2c804872d8b6a09fbafa0038509364b4399db0e45621f84249ba39b7b2b80fd` |
| 2 | `def` | [Latex.input](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/latex-input.md) | 44 | `declaration-track:3f81095785069664bada859d15894ceb6d5652d0e6ab38425b54154bf34a7c6c` |
| 3 | `def` | [preprocessLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/preprocesslatex.md) | 51 | `declaration-track:0f36260e1bb317d69a7cfba36ea9ece180349b5a99810d72ebe213275d872be1` |
| 4 | `structure` | [InferredUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/inferreduses.md) | 54 | `declaration-track:aa83df14512130da5e6390f9c5e86a49455517cb68c9349c64acb204ecb5027e` |
| 5 | `def` | [InferredUses.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/inferreduses-empty.md) | 58 | `declaration-track:9c16661862f79449a3a94be624a51bb2701947da2c41712308772441b22c4eb0` |
| 6 | `def` | [InferredUses.merge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/inferreduses-merge.md) | 60 | `declaration-track:8ce06aa9d1d4bed4409cfa4304a239846488a02bee1bd10098f7a682618148b7` |
| 7 | `def` | [NodePart.inferUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/nodepart-inferuses.md) | 63 | `declaration-track:707334cdd46da5363659c189c15b465c9eecc87aced59c1ca86c086cdd53b295` |
| 8 | `def` | [Node.inferUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/node-inferuses.md) | 73 | `declaration-track:b4c4bfc79ae2cd557fe6110e2f3b59b0783dd04d4a772e0c188032d699c0450b` |
| 9 | `def` | [NodePart.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/nodepart-tolatex.md) | 87 | `declaration-track:8246c437da81b1a21283c75fdef8a5498d5b71d56215b4180c93cb4cac68e0f6` |
| 10 | `def` | [isMathlibOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/ismathlibok.md) | 115 | `declaration-track:81f20c42de877e30159c4e673f7cb8d0e50c3389c0f3cccd6d5ee19b54f55774` |
| 11 | `def` | [NodeWithPos.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/nodewithpos-tolatex.md) | 120 | `declaration-track:d00357b25fec8ceea620a68d3a5f4100a6fc941564277b0ad00f6a552dd97a71` |
| 12 | `structure` | [LatexArtifact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/latexartifact.md) | 157 | `declaration-track:8c4ba6894cab531765e64cf6f5f55d36aa99ab0409f0d4aa2e207fdb1098b432` |
| 13 | `structure` | [LatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/latexoutput.md) | 162 | `declaration-track:195f9a02d03ec31875d568c396024a5872767013f85d5f5e08d13bb2529a6f87` |
| 14 | `def` | [NodeWithPos.toLatexArtifact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/nodewithpos-tolatexartifact.md) | 167 | `declaration-track:67522fa8f3e9cebde591f5e1e12c52519178c7b6cd4e7b38c1c95b5fa56795e6` |
| 15 | `def` | [BlueprintContent.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/blueprintcontent-tolatex.md) | 170 | `declaration-track:1f4f9f83f3e52ec05e7bcbf52ff4ea60ef6c0bed8da7c7ed710213b14a877f15` |
| 16 | `def` | [latexPreamble](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/latexpreamble.md) | 174 | `declaration-track:5b191c518857f85203d2faab5fd7eb04a23ab7e9520c2c5b3a01509d974d13dd` |
| 17 | `def` | [dedupContentsByLatexLabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/dedupcontentsbylatexlabel.md) | 199 | `declaration-track:f47dc36caf865bf4999d2f6b24280204096429cc57bebc1f04ea7400f83051ca` |
| 18 | `def` | [moduleToLatexOutputAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/moduletolatexoutputaux.md) | 214 | `declaration-track:55719ad392c136a3446c6083d0bcc14ba626ff52ee9ff43870e39443b622b1ce` |
| 19 | `def` | [moduleToLatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/moduletolatexoutput.md) | 231 | `declaration-track:a3e5a054ed3663de684a58441c3319301a41bae532dbabef4b7b33f4644a82e5` |
| 20 | `def` | [mainModuleToLatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/mainmoduletolatexoutput.md) | 236 | `declaration-track:2cc58e7571d445c78ab7dda35dab0453a24000d1bab34f699fba30669200b1fe` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/syntax.md) | 242 | `declaration-track:999585ad8b923d06b27947f0774e95440d78cffca22686f5cbf3e069d1516e9e` |
| 22 | `def` | [elabShowBlueprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/elabshowblueprint.md) | 245 | `declaration-track:7614b6ba7846da739507255fdf16f1588b6de1828d02cddfb440a2bda628b7d9` |
| 23 | `def` | [rangeToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/rangetojson.md) | 267 | `declaration-track:d05b08dff3b185072ef8dc2192524bcbef4bcd3d57e776d19b67e388df3a173e` |
| 24 | `def` | [locationToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/locationtojson.md) | 273 | `declaration-track:313ce678e3260e7377356430a4a3c07914a1d96a82340b42e25d28b7437924cb` |
| 25 | `def` | [NodeWithPos.toJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/nodewithpos-tojson.md) | 279 | `declaration-track:14e77b79c95ce2774b6fdb84d3bd3998707164c6255ba2f2daa0d6a789c5a70b` |
| 26 | `def` | [BlueprintContent.toJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/blueprintcontent-tojson.md) | 293 | `declaration-track:9b5de7780d47d6178275a63ae181440bbab74e99c03d6b418ab89e683680116d` |
| 27 | `def` | [moduleToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/moduletojson.md) | 297 | `declaration-track:322ac9d48a9569b4a3e8e9b35165f51ef0ee62e76cd83bf79dbf744749bc740b` |
| 28 | `def` | [mainModuleToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/mainmoduletojson.md) | 301 | `declaration-track:9de4c82af8b240d3a3c63a19df8e5b44c546bcd772d79a1affdd5f41ef690cfd` |
| 29 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/syntax-source-edition-2.md) | 307 | `declaration-track:ad543cf01a5d87f2af6a603c2749833105cc10fc65f09c430e436b4b199194f9` |
| 30 | `def` | [elabShowBlueprintJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/elabshowblueprintjson.md) | 310 | `declaration-track:eefa922bc428128327ec987158e96cb50b167d375dc50e741e9357a2144433c4` |
| 31 | `def` | [moduleToRelPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/moduletorelpath.md) | 331 | `declaration-track:f0c4219cfe8202fe2ed4f7bede1d247074e009db66912a3bf853b057493b6501` |
| 32 | `def` | [libraryToRelPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/librarytorelpath.md) | 334 | `declaration-track:7f3f894fcca88c54651ab995e4f840c6e8b2e6ef1abaa8b8ab5b06518f6ea4e7` |
| 33 | `def` | [outputLatexResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/outputlatexresults.md) | 338 | `declaration-track:fe814ab3736039e54fd0cb9200d51791c06799b4ad5e61b3ef92451a332efe1c` |
| 34 | `def` | [outputJsonResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/outputjsonresults.md) | 351 | `declaration-track:64f8db3f78835b2b403fc3d04fe9d17cca0310e74b57d0679db8cdfe454531e8` |
| 35 | `def` | [outputLibraryLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/outputlibrarylatex.md) | 357 | `declaration-track:874582a5c400661b4b569d5148d59757fb3de754e2db83d5ac850f29a9aa211c` |
| 36 | `def` | [outputLibraryJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputNamespacedLatex.lean/declarations/outputlibraryjson.md) | 366 | `declaration-track:fca113501c08cca3a7f5a6978d495239276d598173b8a7c057ca93a2f0abb2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b006973aa636120ea82468296e7a36eb601e7ebdd92daa04237ecbb03887e301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
