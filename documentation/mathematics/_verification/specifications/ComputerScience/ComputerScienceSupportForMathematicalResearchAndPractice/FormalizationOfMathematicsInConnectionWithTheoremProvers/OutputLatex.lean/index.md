# Verification target: Output Latex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17229d2dc36df2d75a13cdb161ad31da4a4e4ac4",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17229d2dc36df2d75a13cdb161ad31da4a4e4ac4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect.CollectUsed` — import line 1; external provider; requires a separately pinned dependency.
- `Architect.Content` — import line 2; external provider; requires a separately pinned dependency.
- `Architect.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Latex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/latex.md) | 16 | `declaration-track:d91658095e372befa30dc6017c7507eae68a9de06c4b8822dea51331fc0b8ee8` |
| 2 | `def` | [Latex.input](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/latex-input.md) | 36 | `declaration-track:864b956090bb3f174b669c854764385403ea91296132b2ef8ecd95bab09618be` |
| 3 | `def` | [preprocessLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/preprocesslatex.md) | 43 | `declaration-track:2593445b72d9caf96276d930b22ad1d91154a3be6bf2a614679ebbebc39544d3` |
| 4 | `structure` | [InferredUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/inferreduses.md) | 46 | `declaration-track:fc1c9ec3814e3274cdee0bf4964be4288238e49adec1e115b72f0f656d8585c8` |
| 5 | `def` | [InferredUses.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/inferreduses-empty.md) | 50 | `declaration-track:69a6285e9dff08f5746aebdca74ddfa56acbd5b08e5d2cfbad2a46ea13a36509` |
| 6 | `def` | [InferredUses.merge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/inferreduses-merge.md) | 52 | `declaration-track:d0c0fc75fa7846abd3004752a0d3561067403cef875bfb874a6d31f56015191c` |
| 7 | `def` | [NodePart.inferUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/nodepart-inferuses.md) | 55 | `declaration-track:1c5350639ac2478dd94783c748d9afd91b4283d1db670f4d890818754eee2dd7` |
| 8 | `def` | [Node.inferUses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/node-inferuses.md) | 65 | `declaration-track:55d6be1306daa371685a3f9c4531db4e2fb873bcec1773581c630c40ddce94b7` |
| 9 | `def` | [NodePart.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/nodepart-tolatex.md) | 79 | `declaration-track:8d1ec985acf3ae1ae476d16077b9719a8b328a3f15de5d5b202a9c92c65d98ab` |
| 10 | `def` | [isMathlibOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/ismathlibok.md) | 107 | `declaration-track:152cca81f2460d729090c5129e81b5930b842ff6977549363e44ed62df199717` |
| 11 | `def` | [NodeWithPos.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/nodewithpos-tolatex.md) | 112 | `declaration-track:77058ed011438991b35d2214da547dc9e0bd5466a681cda6a9e78e434553ab9d` |
| 12 | `structure` | [LatexArtifact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/latexartifact.md) | 149 | `declaration-track:283fa6b5bda844be7fd275f74f54b3ba74109b20e4647aae22ee21e862571ba5` |
| 13 | `structure` | [LatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/latexoutput.md) | 154 | `declaration-track:be08f29ee240f9058774ce5e02d07126427b2366dfb5882c3fd0f08cebf597ad` |
| 14 | `def` | [NodeWithPos.toLatexArtifact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/nodewithpos-tolatexartifact.md) | 159 | `declaration-track:e0bb287054ef4d6b9ed914c3adbd9d21b627a7c076b3f3338c493fd05b96e0cd` |
| 15 | `def` | [BlueprintContent.toLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/blueprintcontent-tolatex.md) | 162 | `declaration-track:07c30519e9647e40782444d190633d5462b7d92bd8978283c3e9853c4c93765a` |
| 16 | `def` | [latexPreamble](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/latexpreamble.md) | 166 | `declaration-track:b13e411fb0a23ad34a03dae5ef2568445e5da6ce2d940a5036e525d08eb4d144` |
| 17 | `def` | [dedupContentsByLatexLabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/dedupcontentsbylatexlabel.md) | 191 | `declaration-track:589ae8372238271e0a1dec73947ad96fd2f76b215d278d1c2ff7f8f290dec175` |
| 18 | `def` | [moduleToLatexOutputAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/moduletolatexoutputaux.md) | 206 | `declaration-track:c18ae784c3deccc0e58d5de3a4a87ef45550f54cf0ef87da25650c4c97e99b0d` |
| 19 | `def` | [moduleToLatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/moduletolatexoutput.md) | 223 | `declaration-track:dcf17b56d354f125da9118c32a05b03dd0f7b67963537b49557653fe89fb2062` |
| 20 | `def` | [mainModuleToLatexOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/mainmoduletolatexoutput.md) | 228 | `declaration-track:4458cd1a2ad362d19e763fbf7cb87b78da713171678f47c13a31883aaa59bce3` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/syntax-source-edition-2.md) | 234 | `declaration-track:f7770e18150251e66455a12598400a98bf020621bd80f765fb085fb44bb2b3e8` |
| 22 | `def` | [elabShowBlueprint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/elabshowblueprint.md) | 237 | `declaration-track:8909749b087d6d4c583ee32d9b05a40f038bbd13a4b6d87bc92cb9d000cd6d0a` |
| 23 | `def` | [rangeToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/rangetojson.md) | 259 | `declaration-track:b04ec638ef1c6c3659bf0b77b2b4f0e1cd7cb5519254adfeadc542de602007f8` |
| 24 | `def` | [locationToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/locationtojson.md) | 265 | `declaration-track:63ffad606cfc2ff8810887b6900f9b68339115bd045f30fe5a3b8921034e1067` |
| 25 | `def` | [NodeWithPos.toJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/nodewithpos-tojson.md) | 271 | `declaration-track:76556a1e967b23203fc531dbc298969942c6874ac006b4ebe97bd45d435b277b` |
| 26 | `def` | [BlueprintContent.toJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/blueprintcontent-tojson.md) | 285 | `declaration-track:b311ca2e7aa056b968450668267603ea60032936940759518779ac64a6e7bd54` |
| 27 | `def` | [moduleToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/moduletojson.md) | 289 | `declaration-track:7b90a261498a19500f6296851a0a9ef1107c2f9acb79edc53fbce7508716f82a` |
| 28 | `def` | [mainModuleToJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/mainmoduletojson.md) | 293 | `declaration-track:4f03c14a7edc64600c4a68720d8133f19bd6b24d26d81bdd4ca31ae6eb23249a` |
| 29 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/syntax.md) | 299 | `declaration-track:b79957daaf4f6b4e07d630e7f4bd65ad1998a457b5998f19a54cd4255c76d0bf` |
| 30 | `def` | [elabShowBlueprintJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/elabshowblueprintjson.md) | 302 | `declaration-track:42fd2ee7bedd623e06f4396044f0954b26f43889d50f4f528c3c563fac7cc0bb` |
| 31 | `def` | [moduleToRelPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/moduletorelpath.md) | 323 | `declaration-track:40b91d98259641024dc88681f48e1994b793b21fb57bf8a2822c6a093e379b9c` |
| 32 | `def` | [libraryToRelPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/librarytorelpath.md) | 326 | `declaration-track:fab6e47298c9f88773a69089140925f3a115c384b19d7e6384be833ef7fcb5fc` |
| 33 | `def` | [outputLatexResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/outputlatexresults.md) | 330 | `declaration-track:8e20d19d1abdbad9740025cd8769b9c829be0e8e7f1a9dcb517d6338dafa47d8` |
| 34 | `def` | [outputJsonResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/outputjsonresults.md) | 343 | `declaration-track:d265735ecf6c0133d11843d56d2180f2fa1ab5fc5576c526e5b428f08eef30a0` |
| 35 | `def` | [outputLibraryLatex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/outputlibrarylatex.md) | 349 | `declaration-track:acfd735f7d8101cf68f1a2e9db1cc309696fe3114631b945b9f50b72757b3d37` |
| 36 | `def` | [outputLibraryJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/OutputLatex.lean/declarations/outputlibraryjson.md) | 358 | `declaration-track:40fc3b2f5c66e40e9fa53fed59b447e2dda65226688842897bc95a7a8d496c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d658445cf11fd14c0b3bf5ef27019de1c2e8fc9c6e70615426da06057692ff90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant18e1bd78e7fae2252f063733e6f138a38210877d8d98215cf7a4c144090b1045.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
