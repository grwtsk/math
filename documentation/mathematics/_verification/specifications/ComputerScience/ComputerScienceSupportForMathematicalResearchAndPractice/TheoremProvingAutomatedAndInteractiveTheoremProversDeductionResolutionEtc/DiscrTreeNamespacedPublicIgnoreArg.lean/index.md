# Verification target: Discr Tree Namespaced Public Ignore Arg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "554dcba4247b58a289e1ca45c09b0f3c2cc0fd71",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `554dcba4247b58a289e1ca45c09b0f3c2cc0fd71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Offset` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Eta` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ignoreArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/ignorearg.md) | 59 | `declaration-track:02924b662d8ba4a527f1889f5a48f26d3e242251462027641cc54c146bf57b0e` |
| 2 | `def` | [pushAllArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/pushallargs.md) | 67 | `declaration-track:7a8addfb2108e4086cd57303683dbd26cfd81e8e34e51c72b4f27333095f7f88` |
| 3 | `def` | [pushArgsUsingInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/pushargsusinginfo.md) | 76 | `declaration-track:63765eaa8a34321969dcbaa7649184a15dfcaa29de6885a2ac9df8e5c78eda81` |
| 4 | `def` | [pushArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/pushargs.md) | 91 | `declaration-track:eba423b34a317c9423ed37f1ec09cd51461673581dad3d9d49305b2e1734be08` |
| 5 | `def` | [mkPathAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/mkpathaux.md) | 117 | `declaration-track:c98caef62faf34a5c25bcbe9eb5e9be20156be139187ea9d476cdf2503e10831` |
| 6 | `def` | [initCapacity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/initcapacity.md) | 126 | `declaration-track:bce981004dfef4629ae47a0bb29f78019ceb70e8b96b8378282e69f11634e8ef` |
| 7 | `def` | [Pattern.mkDiscrTreeKeys](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/pattern-mkdiscrtreekeys.md) | 129 | `declaration-track:c8f0e1e745b744c91cea69512834cad9aa40a5336e5b321af8454de263892c4f` |
| 8 | `def` | [insertPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/insertpattern.md) | 135 | `declaration-track:01f81d00f5e926735f8574b1648c1596dd8b3da000a7e99c861234e2e9d611b1` |
| 9 | `abbrev` | [findKey?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/findkey.md) | 139 | `declaration-track:e0322426dc9cb6e95675451c7bb2133ee66ad7ac03348312302e96e15ce78d47` |
| 10 | `def` | [getKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/getkey.md) | 142 | `declaration-track:40183fd080adfe4b9b54e65eb3398a39986f3c253da17500df1e87f685387bca` |
| 11 | `def` | [pushArgsTodo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/pushargstodo.md) | 151 | `declaration-track:535c5f5ea85449e8d49ce253ba269db83a5f1288f53336281e706d770648b874` |
| 12 | `def` | [getMatchLoop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/getmatchloop.md) | 157 | `declaration-track:d213b23c788df29d58e58e3a64d6bfd26fd89a2e61339c307015d743dee2a87c` |
| 13 | `def` | [getMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/getmatch.md) | 192 | `declaration-track:42b911f692f325e877d06e12da55557da87b04b3a3261b83f62289525d12e2ea` |
| 14 | `def` | [getMatchWithExtra](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreeNamespacedPublicIgnoreArg.lean/declarations/getmatchwithextra.md) | 208 | `declaration-track:7e592180a671ba57bf86f23a64b2cc686d054ff5b9f01a6773bb48e52f97989a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d54abdeeaf112b57417c7a36c88e84ce4e10bd868a7ea4f2494c1d1580348ed2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variantb97a16d822008b98c3aef1d1119a16627e543216a9ce10dd10f259955f228edb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
