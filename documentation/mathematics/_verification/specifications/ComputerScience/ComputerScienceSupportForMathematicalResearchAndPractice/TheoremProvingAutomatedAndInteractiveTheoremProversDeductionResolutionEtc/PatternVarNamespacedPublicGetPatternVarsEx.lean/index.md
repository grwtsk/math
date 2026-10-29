# Verification target: Pattern Var Namespaced Public Get Pattern Vars Ex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62d0945670f4878e8339765d21b96bc1fc653ef2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62d0945670f4878e8339765d21b96bc1fc653ef2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PatternVar` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Quotation` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getPatternVarsEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getpatternvarsex.md) | 34 | `declaration-track:1a2890dd47bcded0d7201e68ad87b3e8a526fa093e39fda669d3f6dd7b058c9e` |
| 2 | `def` | [getPatternsVarsEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getpatternsvarsex.md) | 39 | `declaration-track:84b4026be249391ac0cf1546efb874b64aead21c9ddb0cd367fd3ed9e4bddda9` |
| 3 | `def` | [getLetIdVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletidvars.md) | 44 | `declaration-track:621acd6cfc966e2e0b92d48f9e1cca227dccf318352e71580d64f1aea5bc1a2f` |
| 4 | `def` | [getLetIdDeclVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletiddeclvars.md) | 51 | `declaration-track:01997705fe3787ec937b3ea7b4ed64e70a9e06bf6013f40cb827d9679110e2fb` |
| 5 | `def` | [getLetPatDeclVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletpatdeclvars.md) | 57 | `declaration-track:86c8cd76c928f46fea02d82da52c69f1745e5fb33f8c00c268d0358216511271` |
| 6 | `def` | [getLetEqnsDeclVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getleteqnsdeclvars.md) | 61 | `declaration-track:c87af3793f3d987bfd8982949317a05ef14b493ec125fe770243d77889cd3f99` |
| 7 | `def` | [getLetDeclVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletdeclvars.md) | 67 | `declaration-track:f61a4953301a75690c782acdbd12d766fd2c3ca38ce45ca2a28ac532329328c3` |
| 8 | `def` | [getLetRecDeclVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletrecdeclvars.md) | 74 | `declaration-track:5cbd14fae07a4d5fc1039e31ef6f6ed60742bb1588c6b72ffb540cffd31ebdc3` |
| 9 | `def` | [getLetRecDeclsVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getletrecdeclsvars.md) | 78 | `declaration-track:dbd6ae36cee43962c99fc662034e5cf00b1ca4fed218624797f64df0816f677b` |
| 10 | `def` | [getExprPatternVarsEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternVarNamespacedPublicGetPatternVarsEx.lean/declarations/getexprpatternvarsex.md) | 87 | `declaration-track:f594d3804e67df4e25122a8fb4e359e84d1a68eb44174e17a7405a0be9bb5193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53f41a8955594ada2d9f818ca2230fed3b79951d10b45a63218b40b905aa1c2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variantabc3120e83fa72f0bdfbc7425d4073e424f2c4e263d4b1993f5bf0523aa6dcec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
