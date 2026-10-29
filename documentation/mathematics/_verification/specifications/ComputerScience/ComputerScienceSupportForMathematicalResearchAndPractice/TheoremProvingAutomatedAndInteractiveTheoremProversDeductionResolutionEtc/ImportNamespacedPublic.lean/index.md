# Verification target: Import Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a61a128c6776e9e4a45dcd160e7ab85b12e210c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a61a128c6776e9e4a45dcd160e7ab85b12e210c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.ModPkgExt` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HeaderSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headersyntax.md) | 29 | `declaration-track:df0a819e5b0e65c5282c75f974a0100f45d53a8eb76c9c4b50a8a93d5f0f7a1b` |
| 2 | `def` | [HeaderSyntax.startPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headersyntax-startpos.md) | 31 | `declaration-track:7734c16ace5a077a9ec5a0a2fdf3fda8bf883299ee45967b1a07299bc44156f3` |
| 3 | `def` | [HeaderSyntax.isModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headersyntax-ismodule.md) | 34 | `declaration-track:1091c31b69320dfef22bc8289d3aea5f9e5fe4b854008947cdbd3607d454b910` |
| 4 | `def` | [HeaderSyntax.imports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headersyntax-imports.md) | 37 | `declaration-track:0db2dcb78d6fdfaa81c91dbc831488aaf224fefe788784ad5b07dd8a9c2e3517` |
| 5 | `def` | [HeaderSyntax.toModuleHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headersyntax-tomoduleheader.md) | 51 | `declaration-track:0456130ee3b02bce4f7a56d533f0eca681bd3919fa1f1f48707dcb80e0bd74c1` |
| 6 | `abbrev` | [headerToImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/headertoimports.md) | 55 | `declaration-track:31f03794813cf3a529cdba298be0dda5fada20899963d492537a4935ad525e71` |
| 7 | `def` | [checkDeprecatedImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/checkdeprecatedimports.md) | 69 | `declaration-track:3bbb6851781f2f232bc8754404ab9016bc9a4f2607365a644479011348fa412b` |
| 8 | `def` | [osForbiddenChars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/osforbiddenchars.md) | 109 | `declaration-track:fb94b00d4795ffb588417143d68880ee7f63b90a3dee239115ab4f4cbe30c4ae` |
| 9 | `def` | [osForbiddenNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/osforbiddennames.md) | 112 | `declaration-track:471636aec47418cbb420e843b1d9efcc52146417610a4e40149b8afe61074f39` |
| 10 | `def` | [checkComponentPortability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/checkcomponentportability.md) | 119 | `declaration-track:bbe06c52429d0582a2991b9253166f9c241ce4d6df5fe042c412642da80ec918` |
| 11 | `def` | [checkModuleNamePortability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/checkmodulenameportability.md) | 127 | `declaration-track:a5522cad7c3670a412b2829dd1b0afa645a72d8e574215a6bddfecbfe8232e2a` |
| 12 | `def` | [processHeaderCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/processheadercore.md) | 146 | `declaration-track:bb2303a07501bc80323896446c1114a788ce9674153e85ff0c0ea6b504f428e0` |
| 13 | `def` | [processHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/processheader.md) | 182 | `declaration-track:0009ccb67268d46642725e016bd0eeb6330818169dbd2ca7ee0b94f5a648c6c3` |
| 14 | `def` | [parseImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/parseimports.md) | 192 | `declaration-track:0651869c62c48d59340bb1868b381310a90df0456126a54696bed7742bb30cb9` |
| 15 | `def` | [printImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/printimports.md) | 198 | `declaration-track:e0197afa7de5b95591e83a06735f8849f05386b41a190adaadeb2a15c33eaf4f` |
| 16 | `def` | [printImportSrcs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportNamespacedPublic.lean/declarations/printimportsrcs.md) | 204 | `declaration-track:84d0b14341dfbd29d00038fb269b60a30b3227ed9a57e809269f40e30d007edd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27281091fd32b78b965eb8aed310c732ef93a5f2fecbe12388f0a0d3f5c6851c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
