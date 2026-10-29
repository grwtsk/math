# Verification target: Tactic Basic Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbca46bcccb325a5d4615732ab6c12e5fd04450",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbca46bcccb325a5d4615732ab6c12e5fd04450`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.OldObtain` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simproc.ExistsAndEq` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/syntax-source-edition-2.md) | 40 | `declaration-track:6d533194cf3ff551363a603d0132fcb70873d61f2911536d5f2a46f4ca20efe3` |
| 2 | `def` | [elabVariables](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/elabvariables.md) | 44 | `declaration-track:f4fc5c1497011556319d16da759e923b718bed25272177032d9d087c166275b3` |
| 3 | `def` | [pushFVarAliasInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/pushfvaraliasinfo.md) | 56 | `declaration-track:96d444f1c92423379b43a407095e5bdae6d377a721b900a456890a3ccc7d79c6` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/syntax.md) | 95 | `declaration-track:3c91b665cbae47adf8c7429cb0c39d833c5cfd7266be0c24e9cca75568c8fc6b` |
| 5 | `def` | [evalIntrov](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/evalintrov.md) | 96 | `declaration-track:67e794b7687a4db0fac14b981da587afd2e85b2956bac70de54f262e09bda542` |
| 6 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/macro.md) | 119 | `declaration-track:eb0fe11490c01edbd31cd988bcb29e7747881a0928acd944790363e5067a1d3f` |
| 7 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/elab-source-edition-3.md) | 121 | `declaration-track:f08fa073777189826cdac94fea65a7f50cd4fa3eb387e1d7e372d2d95fb8329f` |
| 8 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/elab-source-edition-2.md) | 128 | `declaration-track:a71a91b44ad91d412ab79868e2c4349ca79a38cdffcc0017185ef8724c882194` |
| 9 | `def` | [Tactic Basic Namespaced Edition1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-pushf.md) | 137 | `declaration-track:538a0cbeb4561c3cead44df9cc809dd567d4694fd5b8aac6dab3be4ebd722d09` |
| 10 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticBasicNamespacedEdition1.lean/declarations/elab.md) | 160 | `declaration-track:46f1c11fdd82f8efe2ae45c724e875828b3fd0f6898f58b48ba39efc8a3666b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba6cceb08495520dbf6ca2158131f7efecf08e2b968c90d1a7ffc6fa761ac064 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
