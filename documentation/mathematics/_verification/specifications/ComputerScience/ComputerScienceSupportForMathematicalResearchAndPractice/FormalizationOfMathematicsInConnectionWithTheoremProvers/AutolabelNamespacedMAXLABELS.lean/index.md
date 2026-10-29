# Verification target: Autolabel Namespaced MAXLABELS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d48cba7cf8b858e47f5dd0cf4ae37c63e1d6ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Cli.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MAX_LABELS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/max-labels.md) | 66 | `declaration-track:cfa15d8e7f6090ac3f5e03eed207c0475234ee6c58bafee8dcb5e1abbf7a3cd5` |
| 2 | `inductive` | [Label](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/label.md) | 69 | `declaration-track:5cb3fc2851b8ffc588e2c08ee06a625cf7c58e5d2b2cf5023e8afffa7cae4585` |
| 3 | `def` | [mathlibLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/mathliblabels.md) | 100 | `declaration-track:018f6921abb6535a567c38d81eee0d82ff49173ccf2c1cb370e0bda49dc0986b` |
| 4 | `def` | [Label.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/label-tostring.md) | 109 | `declaration-track:7a2274345b6f42e8eb95759fe03e6abc5b0dfd710d6ee604d3d597f19e5b2351` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/instance.md) | 138 | `declaration-track:c6b918c1098f8228c1f2117dd4a95cf68f59c0466d0a580c7d3de0b382fea037` |
| 6 | `structure` | [LabelData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/labeldata.md) | 169 | `declaration-track:2c07312c5647bcafbffbb1ddf4f2993aa7826b0b69188f62380877ecd2395e45` |
| 7 | `def` | [mathlibLabelData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/mathliblabeldata.md) | 186 | `declaration-track:3f3d169ee29711daa687240cfca3c11f0920e63cf47a57830403e0b63d222db8` |
| 8 | `def` | [mathlibUnlabelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/mathlibunlabelled.md) | 284 | `declaration-track:cfa607cf78c12ba0ce82b1346c329793d1fed06a6e60e41d8a5d251ef8f24ecd` |
| 9 | `def` | [Autolabel Namespaced MAXLABELS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-label.md) | 291 | `declaration-track:107690ed31ee4d1a6f7e0c667330f1e1157e5da3901ffc3d6ba881023d8db40c` |
| 10 | `def` | [getMatchingLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/getmatchinglabels.md) | 301 | `declaration-track:301fe12fc5b6ae2743b1737f0ee62e2c0ef8a92dc032146c23d98a6597e46a0c` |
| 11 | `def` | [collectLabelsAndDependentLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/collectlabelsanddependentlabels.md) | 313 | `declaration-track:77b2e0cc26977875430a7fe8894bd7290e0873d11eabf7c9ca26a1b5b0d3091d` |
| 12 | `def` | [dropDependentLabels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/dropdependentlabels.md) | 319 | `declaration-track:3c5c4acbaab7c01dfda232b26f209a17723697173bc939c723a336541fb66c80` |
| 13 | `def` | [findUncoveredPaths](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/finduncoveredpaths.md) | 357 | `declaration-track:2992ef34c382e2a8314161e17eb2f7d5435049b0dcf25ebec2d73053b4428466` |
| 14 | `def` | [githubAnnotation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/githubannotation.md) | 390 | `declaration-track:bae44c9eab2f7bd11b45c2c2285a79beab6ea8804d653f9d71a4e4d65565eeeb` |
| 15 | `inductive` | [GithubInteraction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/githubinteraction.md) | 394 | `declaration-track:92c5607e0efb7ddfcea5f9ac9ec949c8bd1ca5f4ed354c358d10d426fc9833ab` |
| 16 | `def` | [autoLabelCli](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/autolabelcli.md) | 403 | `declaration-track:b0532db95ba76a29f901686f196d592b77a2a5e9a616cb822956fc33418081c7` |
| 17 | `def` | [autolabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/autolabel.md) | 500 | `declaration-track:3aa8e2469d60e6bf585e2856a64bd0e4197973c48c6eae33db18c2a0b7e560c5` |
| 18 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AutolabelNamespacedMAXLABELS.lean/declarations/main.md) | 524 | `declaration-track:7d512e17ea7fbf739937c577cbb71d1a5ee3b270871e10f89d6ee50fef9886b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8edc17665814ae73c7a7436e52f150689afc2c4fee88946919f12ce4bff3d077 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variante5d262f01c8cd7b98436718b1ddc6931152ee6a4743576c9f4654a9ab9e2d738.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
