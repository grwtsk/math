# Verification target: Autolabel MAXLABELS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "330bea7382d1db0b2a29460b16fccf0ac01eaf92",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `330bea7382d1db0b2a29460b16fccf0ac01eaf92`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Cli.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MAX_LABELS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/max-labels.md) | 58 | `declaration-track:905a4eba592b74ece85df105294b1e338efccefe0c86ded3d40fc98c53d7e606` |
| 2 | `inductive` | [Label](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/label.md) | 61 | `declaration-track:74c4e58afd33afe7dd121a1b0e0048472648c74643dbd135799886bcd04d7ea0` |
| 3 | `def` | [mathlibLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/mathliblabels.md) | 92 | `declaration-track:059ab05d18a92012a94da52ee793bd2ede6b122bbbc6bd3e5b7c4be83f7282a8` |
| 4 | `def` | [Label.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/label-tostring.md) | 101 | `declaration-track:f3b4761cca61dbb5ac79d36b83f898f808836b599d4a71d7720178d9d24fdb3d` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/instance.md) | 130 | `declaration-track:241c6db67d61f77613fa6913c93b7f96b414803cd68311658e1dea337b6de3ea` |
| 6 | `structure` | [LabelData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/labeldata.md) | 161 | `declaration-track:465c871ece3511ff844edbbb096877e8da7ec4e50afdde92e8b0176164e7514b` |
| 7 | `def` | [mathlibLabelData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/mathliblabeldata.md) | 178 | `declaration-track:121e36fe4d900eaf31f93242b3186d5b2c9f0dfbc3cc1bc05c6d6024d54b2f77` |
| 8 | `def` | [mathlibUnlabelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/mathlibunlabelled.md) | 276 | `declaration-track:6b76db871d5c5cbd6a6055647abd7eed510981201ab2e65b0ed238690ec14f63` |
| 9 | `def` | [_root_.System.FilePath.isPrefixOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/root-system-filepath-isprefixof.md) | 283 | `declaration-track:bc8421fb10636b2bb43ad94ce8a04b6cb28fd040a773afa13a40181a02b646d2` |
| 10 | `def` | [getMatchingLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/getmatchinglabels.md) | 293 | `declaration-track:2b8cb8404774135e8f76666b64d2849d521b2797b6fc8ad7c32e3457c345f3a0` |
| 11 | `def` | [collectLabelsAndDependentLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/collectlabelsanddependentlabels.md) | 305 | `declaration-track:ff7646293e6899760a48d08073c359c4b2303411db48364d33ea318b1f47d7ee` |
| 12 | `def` | [dropDependentLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/dropdependentlabels.md) | 311 | `declaration-track:a006078b0ef3d94c2e152552a9542fa0934132a7612d107103e625a4e838986e` |
| 13 | `def` | [findUncoveredPaths](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/finduncoveredpaths.md) | 349 | `declaration-track:398f3800a34bf113650100fb5da9ee7b7b4dcb6f2ed888ff3ecd21d48ca8b91b` |
| 14 | `def` | [githubAnnotation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/githubannotation.md) | 382 | `declaration-track:7f14556d4380ecb69c07c439cd9a5ba5c983a7ef778648d4ef92d866071b81ef` |
| 15 | `inductive` | [GithubInteraction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/githubinteraction.md) | 386 | `declaration-track:c15d5ef041c34055e75f12666b119bd416afb77508082c22394b2a5a71eeb3b6` |
| 16 | `def` | [autoLabelCli](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/autolabelcli.md) | 395 | `declaration-track:a8858a06be940454fa7ce3dc0484a586e89afd3e21f89325619152b70a04bbcb` |
| 17 | `def` | [autolabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/autolabel.md) | 492 | `declaration-track:67ffd1503057ae80fcf4715924f9353d43431e623d5a836ba068f02c908682d2` |
| 18 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelMAXLABELS.lean/declarations/main.md) | 516 | `declaration-track:eacaab195677690720546f372eac7ead301bf84ee0da44a68a4c7ff22de341dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=256225a3c69170c0e3f45236a02be2de55db116714c86dc2f1978d2b69c6d7e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
