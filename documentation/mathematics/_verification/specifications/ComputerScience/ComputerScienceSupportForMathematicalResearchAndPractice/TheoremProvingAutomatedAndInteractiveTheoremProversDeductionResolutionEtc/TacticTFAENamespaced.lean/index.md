# Verification target: Tactic TFAENamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9755fa2ce543d1c9ad31196d4687ee52043a181a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9755fa2ce543d1c9ad31196d4687ee52043a181a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [impTo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/impto.md) | 40 | `declaration-track:2923080530e4fccd364ec735695d72ba0a15a275fe2acaf01eabdf63f3cfbcb9` |
| 2 | `def` | [impFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/impfrom.md) | 41 | `declaration-track:36e99c947c596d3c8be783e02a3a4f9856cda05e7be930b45dde14e2965cb60c` |
| 3 | `def` | [impIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/impiff.md) | 42 | `declaration-track:b91b2bdfb8b25a5de6039ae6a63da4423cdf9e737533a743d43eea9f6cf466b9` |
| 4 | `def` | [impArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/imparrow.md) | 43 | `declaration-track:b6848f4959cc23c28131ad844b249f93fbf234d589040c22ab8715195b2b7a10` |
| 5 | `def` | [tfaeType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaetype.md) | 47 | `declaration-track:7a52e6284dfb0f3331771b53c671f422ed23ca8b74b0e0d3bc8f6ffc139d0291` |
| 6 | `def` | [binder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/binder.md) | 59 | `declaration-track:f8c484d2cd796ece742bdbe8de240acc1be4493901dc7679df731b9c2de3a636` |
| 7 | `def` | [tfaeHaveIdLhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaehaveidlhs.md) | 64 | `declaration-track:093df2c2279104f8fb105fccaaa472be710adb3a1b264dd8f33a2c21e0f47760` |
| 8 | `def` | [tfaeHaveIdDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaehaveiddecl.md) | 67 | `declaration-track:5c815abe22125720147a8f352b2b20acab3b95b1cca19ae9e103bb2a249adc68` |
| 9 | `def` | [tfaeHaveEqnsDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaehaveeqnsdecl.md) | 70 | `declaration-track:bf12c699ebfb9383cf9feafc96313cc7fb76919f69c4ae23c9b9574809e36137` |
| 10 | `def` | [tfaeHavePatDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaehavepatdecl.md) | 73 | `declaration-track:901c832182ee25ee78f0a12ae55eefb1426ec576c3ed03fde6f3855b5371e56f` |
| 11 | `def` | [tfaeHaveDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/tfaehavedecl.md) | 76 | `declaration-track:093cefb6a5811085cd82a43d6c2ab1850c3b7e4c645dd94d327925df6f988e7e` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/syntax-source-edition-2.md) | 130 | `declaration-track:d64660f3c769cdba01e6494ea18ce9f73bd28fb3c1ca14dd7cbe6807b48cc854` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/syntax-source-edition-3.md) | 147 | `declaration-track:dc79aab914a0bd44b67083f288063bfe4a7f75ea17762c507e5463365c482673` |
| 14 | `def` | [getTFAEList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/gettfaelist.md) | 156 | `declaration-track:252a0d13a5ea7bf357df434fbdefa6b23423757c315f3e800efdc468f3ee3e0c` |
| 15 | `def` | [dfs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/dfs.md) | 175 | `declaration-track:8d5741485ac2a79b77f14861c9081f1698c6801f33bac9749eef23a6f3845608` |
| 16 | `def` | [proveImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/proveimpl.md) | 188 | `declaration-track:6ee0e88b6f2eb0da870c3a62de6138c286bb1fe9c83260a4b593a9283b0da2fa` |
| 17 | `def` | [proveChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/provechain.md) | 197 | `declaration-track:95f1a29b7a51fde1700857944804e27e6840b9c40b01f546f513c63a3c134b42` |
| 18 | `def` | [proveGetLastDImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/provegetlastdimpl.md) | 209 | `declaration-track:f4325ae638d5ea19c4945cdc1a0ae34035a90c524d692b374e2da15031668319` |
| 19 | `def` | [proveTFAE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/provetfae.md) | 219 | `declaration-track:5669f0db48c068fb1bc478bf88a1f716d05a5340af05190f8fa90d61686231d0` |
| 20 | `def` | [mkTFAEId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/mktfaeid.md) | 233 | `declaration-track:4a6e11e5f79a1a8b7a816825a93fe656160f0a55da986f07a41cdfee45077abd` |
| 21 | `def` | [elabIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/elabindex.md) | 245 | `declaration-track:91ff84a43599b43927c3d0ee1dcb8d12cbff68c0bcfd6fef1a399a4f9aa34aa0` |
| 22 | `def` | [elabTFAEType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/elabtfaetype.md) | 255 | `declaration-track:ad02f0a489325ac7484bef9aa7f89e2fc2d22b269899fb1eb456a27e5b8040a1` |
| 23 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/macro-rules.md) | 276 | `declaration-track:d96a8f3c5fa61685d84ded1b1f64ab04de52a4bd125a5b891c68582b7fa3f9d3` |
| 24 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/elab-rules-source-edition-2.md) | 286 | `declaration-track:7cc89674d78f918ad81454ceb1ed6896b0b0e9da4fa5be1865db52f5c2e61a35` |
| 25 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/elab-rules-source-edition-3.md) | 303 | `declaration-track:d2b6bbcf86ac01d13e8d1ae02c8ce616563e7e7d2983f4e6d01fd5c53a0594be` |
| 26 | `register_option` | [Mathlib.Tactic.TFAE.useDeprecated](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/mathlib-tactic-tfae-usedeprecated.md) | 336 | `declaration-track:49c18efbd20730d297ec888c34b649e67819bf984f8b3088ac3e1c80c25496a7` |
| 27 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/syntax.md) | 346 | `declaration-track:74349f280ed6d690f42d34bbec6f53c1ed01217b837062a30523ec33b81eb21b` |
| 28 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAENamespaced.lean/declarations/elab-rules.md) | 353 | `declaration-track:79f5c4750658422e81c0ba3f3453ee19233ab984f1ed872b03799e14e0fba68f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdf9b086b108de4a33c3e7e980b54820b464b28818776f4aebabeb7af5df0b71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
