# Verification target: Directory Dependency Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61f54db22b5a978f4338feb1a68be8e7b643821d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61f54db22b5a978f4338feb1a68be8e7b643821d`.

Source path: `GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Name.findPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/lean-name-findprefix.md) | 24 | `declaration-track:275b60c0de4fa8437a3e1abaab53f754f8b268f2f56538cfb88179deb0f1d26f` |
| 2 | `def` | [Lean.Name.prefixes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/lean-name-prefixes.md) | 31 | `declaration-track:1e09a2b7ae6586708806ddfb4be16407fe576daac6cad2a2a855d7ef61e3b0ee` |
| 3 | `def` | [Lean.Name.collectPrefixes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/lean-name-collectprefixes.md) | 38 | `declaration-track:756f5d563dc7306d96ab793216f4a143d30cb866d2479dfa6cb972b80c7dc08e` |
| 4 | `def` | [Lean.Name.prefixToName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/lean-name-prefixtoname.md) | 42 | `declaration-track:987129ae52b0cea08dd2817e8b4fffa01ea8e68845a817b76387207362c2dd34` |
| 5 | `def` | [Lean.Environment.importPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/lean-environment-importpath.md) | 50 | `declaration-track:f9eb26961583a96c996735fb1709e83fb291a3cf06dc489af3ffe4d18af4ed51` |
| 6 | `register_option` | [linter.directoryDependency](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/linter-directorydependency.md) | 70 | `declaration-track:f93f5681595f42798bd27f65ec9efd47ef7e95186ca59853ab061ef41d756671` |
| 7 | `def` | [NamePrefixRel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/nameprefixrel.md) | 85 | `declaration-track:2fdc87148db51da607111fa6c5858f0653e7f175a4972b5dd24b650f0d5af701` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/instance.md) | 89 | `declaration-track:450bd0f7e7f1a4c76fd46469d13c2c1dde6adc86e327a52d4ace2a3cf940e994` |
| 9 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/insert.md) | 92 | `declaration-track:db4b67c8af503d197fe1da34b7d5462f86c72df445099528b7d72e5e4c1d3092` |
| 10 | `def` | [ofArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/ofarray.md) | 98 | `declaration-track:0f083fb8ae6603b3bd4861e905796ba5124ba9e7809d7ae45eb3fa16874de208` |
| 11 | `def` | [find](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/find.md) | 103 | `declaration-track:759679eba173416b1e9a2370aed2c78d677c4a7027e67858a40f0a894ab6047d` |
| 12 | `def` | [findAny](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/findany.md) | 117 | `declaration-track:07b410af0aaef86110f7c1f0c9a54e512c46ed459916f958faea26197ad390ec` |
| 13 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/contains.md) | 129 | `declaration-track:d73e84503cac7e30ae38b363c19b7ae6b6149e7e9387b52f20eddde478a3adeb` |
| 14 | `def` | [forbiddenImportDirs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/forbiddenimportdirs.md) | 142 | `declaration-track:81910418e4293e9d3608ea97549d1f6ec67929e2e412e452cb4863c12bdc05d7` |
| 15 | `def` | [overrideAllowedImportDirs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/overrideallowedimportdirs.md) | 472 | `declaration-track:eac2cdcaab2fcec5ed3257078e18b63899379ca8616a18842da08b1f4de42a5f` |
| 16 | `def` | [directoryDependencyCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DirectoryDependencyNamespaced.lean/declarations/directorydependencycheck.md) | 484 | `declaration-track:ffb4fcca71d8ecbaf453b922a00f6644b63c3313593a6a7a97b9ca23ba3d5cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16060252276428ebaf22dd77ea39b8051582b022db88029573769d22cd97750c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean","GRWTSK/_verification/specifications/Algebra/DirectoryDependency/Variantf80f4f351005737c1360d8e320b40420ec88752261fbe337670827bfd9f5def2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
