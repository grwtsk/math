# Verification target: Parser Namespaced Public Hex Char

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e2ad72c375aab7d1e80e5e8adf7b9122fc666f4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e2ad72c375aab7d1e80e5e8adf7b9122fc666f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hexChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/hexchar.md) | 28 | `declaration-track:b5ee1a39ff9b84059608c25222355f1ffd3d6f3f08ab64b64012fd2e0efb4ca3` |
| 2 | `def` | [finishSurrogatePair](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/finishsurrogatepair.md) | 39 | `declaration-track:2ccb258dcf936eba1ec2167255f920509070d44ea7b8c8603591c8f838b82538` |
| 3 | `def` | [escapedChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/escapedchar.md) | 55 | `declaration-track:3a593b0b7bfd3359eb71b6c85954f745d6d8327c27dc532c40d4ffde889026b8` |
| 4 | `def` | [strCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/strcore.md) | 83 | `declaration-track:2d02c0e2fcf403bb36f38b3d98415599c89a6cb68a51c1ce2440d0e74682d48b` |
| 5 | `def` | [str](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/str.md) | 100 | `declaration-track:f589c634fba205369dabd16a913b4d0a3e9b91edfc6f92a1df72553e74d46900` |
| 6 | `def` | [natCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/natcore.md) | 102 | `declaration-track:afc84554f44f500e00ee6bf3d90ef601bba4b95093aefd993cd29f6afb1b4ade` |
| 7 | `def` | [natCoreNumDigits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/natcorenumdigits.md) | 114 | `declaration-track:535ce49ff48cfe8be51529f4d50ef29a2a9e96f371600ed2d1acdd047d7c89d4` |
| 8 | `def` | [lookahead](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/lookahead.md) | 127 | `declaration-track:f2a59094ec8ab304a44a9ed6c03ab4c66ca01059dad557c4fa128aaecf2c22de` |
| 9 | `def` | [natNonZero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/natnonzero.md) | 135 | `declaration-track:be67822072b86f5f8a03caafd06bbde1d93893285b5acd3f9c39ba5128b015d8` |
| 10 | `def` | [natNumDigits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/natnumdigits.md) | 140 | `declaration-track:42e0173b66f5f9116a89f75cd64ba0a8422ab496f4ee965e76f81531eadbaf8f` |
| 11 | `def` | [natMaybeZero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/natmaybezero.md) | 145 | `declaration-track:950226ae430f3805332f34e0ea614cd5dd3d7942f801899e81e84848697a27f6` |
| 12 | `def` | [numSign](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/numsign.md) | 150 | `declaration-track:08a14ea568d018d83906c712fde6032386fd4059a0d2bac1037880b4798e36e5` |
| 13 | `def` | [nat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/nat.md) | 159 | `declaration-track:cb00284144df468ee0738abef60de3ecafe63352baea2fe8d996cd5eebcbb17a` |
| 14 | `def` | [numWithDecimals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/numwithdecimals.md) | 168 | `declaration-track:4109638ceb045affb7caa0fb928ef358562e1583efde2170a8fd92c84391c8ee` |
| 15 | `def` | [exponent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/exponent.md) | 186 | `declaration-track:b143118a058a04bb703ea69728afcd919c2fbe72f9c848a97aa49d2edff61924` |
| 16 | `def` | [num](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/num.md) | 206 | `declaration-track:6c90f628e96f219a824b43c2b6b2c6a7b19acfe15ee47e61b4b5e61f4d4f89f3` |
| 17 | `def` | [arrayCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/arraycore.md) | 212 | `declaration-track:c2b0996f4ef202f10c11f0cfd46d4f9e8bdf6d31435d4dbd9b9c1fc2b4830085` |
| 18 | `def` | [objectCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/objectcore.md) | 225 | `declaration-track:db99006fc6865bf406ce043fee3f74fcf0a98786208f827d6a7b3a6804c34b0a` |
| 19 | `def` | [anyCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/anycore.md) | 241 | `declaration-track:b9eef57c9f9b49532dd87a6e53a2b2c6c255a78877a3a4b833cd7f1da797008e` |
| 20 | `def` | [any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/any.md) | 284 | `declaration-track:cbe8e62b741ae4d842f71fbf5c8b670ea493e71fc099f00a38c4169bcfb2db38` |
| 21 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParserNamespacedPublicHexChar.lean/declarations/parse.md) | 294 | `declaration-track:9563df2edc57765fc4c3081cac8fca7c5b223ccfbd0c985891b34d0a7b5b8269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=324d4f84552c8f2c509dab6ecc2fa0a835a094447fbfc901a12998f3017bf294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant3f49d2fc23c9255f47d44151a5af4cf28230531580c7f23650acf6f43c37ef4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
