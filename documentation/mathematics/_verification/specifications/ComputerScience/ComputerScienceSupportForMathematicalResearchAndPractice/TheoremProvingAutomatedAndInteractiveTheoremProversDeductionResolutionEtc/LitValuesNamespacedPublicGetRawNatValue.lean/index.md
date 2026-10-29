# Verification target: Lit Values Namespaced Public Get Raw Nat Value

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16bd158560248fde3c9ac6915e49a8356e934a39",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16bd158560248fde3c9ac6915e49a8356e934a39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getRawNatValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getrawnatvalue.md) | 32 | `declaration-track:81a84209aa65084a1cfca71ac1a5ddd41094626496f92b9ae2f58e2826b60091` |
| 2 | `def` | [getOfNatValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getofnatvalue.md) | 38 | `declaration-track:f3f7eec5c2d8469cbfea76a843107eb63cafc0a1fbf0897d7fb37559610abb8a` |
| 3 | `def` | [getNatValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getnatvalue.md) | 46 | `declaration-track:6213ffc34c1c09c45c923365b5cfc8ef8e9391c847a8386e344eb84f25f8b3fd` |
| 4 | `def` | [getIntValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getintvalue.md) | 54 | `declaration-track:f51f0fa3dfe366ba19caed568596d0a527bb29d4127dcb6977d65e59308c3c99` |
| 5 | `def` | [getRatValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getratvalue.md) | 65 | `declaration-track:b1bf2f8718590bc5ca3a78bd5d04b770e9c2c7c44d0486a24cedff887d58c9d6` |
| 6 | `def` | [getCharValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getcharvalue.md) | 81 | `declaration-track:c333b1c006a60355654bbcbada09680df38e98c86328e16ee2a0bc3eb7d95cc5` |
| 7 | `def` | [getStringValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getstringvalue.md) | 87 | `declaration-track:3b42babfaea4d8be7b135342228de07f7ca1fdf925e42256e681c3217e25c94c` |
| 8 | `def` | [getFinValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getfinvalue.md) | 93 | `declaration-track:552dd0ea63252002b67e6fdc6fb7ec1a8a38749a669d8625037dbe314a14cc34` |
| 9 | `def` | [getBitVecValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getbitvecvalue.md) | 107 | `declaration-track:887c0e36330bdbd1bbe8866d7c32064ba1ad31d2e30165efbae41dcdccaf4d43` |
| 10 | `def` | [getUInt8Value?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getuint8value.md) | 123 | `declaration-track:092df84dc404480b7aa3786cf6cde64cf42907d51a68cd065bfa0f03023fe662` |
| 11 | `def` | [getUInt16Value?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getuint16value.md) | 128 | `declaration-track:792402a77946bb349310f2f4ba12e821a60f11d69c07ff83f4144d6a90f40541` |
| 12 | `def` | [getUInt32Value?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getuint32value.md) | 133 | `declaration-track:94845ded65abceb64f578e1a2bcaa628f0b3b801f3fdc77751be344425471307` |
| 13 | `def` | [getUInt64Value?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getuint64value.md) | 138 | `declaration-track:f0796df4edb65ce3702e2b9eff2b3b0ebfe2a98359afb17afce8f58a7a1bad40` |
| 14 | `def` | [getBoolLit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getboollit.md) | 143 | `declaration-track:c67691bad830536576646561a4d188465491323e6e9a9c4f31254c029322bf67` |
| 15 | `def` | [getFloatLit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getfloatlit.md) | 150 | `declaration-track:520913a059625c071db72162db6ab1fbf32aab8eb04b65726b7e4f19e2da15fb` |
| 16 | `def` | [getFloatValue?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getfloatvalue.md) | 164 | `declaration-track:4ecbffcf038d5d2ac12e7cba527b3ae676751b3cb92bc9fd0a95fa9e9a909451` |
| 17 | `def` | [getFloat32Lit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getfloat32lit.md) | 171 | `declaration-track:25ec22454852b23fc5bb5654bf4adcac534cd3980e4ddfefd22b565d09b26d37` |
| 18 | `def` | [getFloat32Value?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getfloat32value.md) | 185 | `declaration-track:128eebc5bb07e55d0626b4410380da2464c7c4aadebebf6b8c151aa264641505` |
| 19 | `def` | [normLitValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/normlitvalue.md) | 197 | `declaration-track:a372a40e668c0524edbd5af91082a77bb3e2b188621af3ab1702d25f1962abb8` |
| 20 | `def` | [isLitValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/islitvalue.md) | 216 | `declaration-track:6ddb0e2c39191e965af2fb38028a8839fed309b054dca359bcecf6befdba50cb` |
| 21 | `def` | [litToCtor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/littoctor.md) | 237 | `declaration-track:1eea6afb65aed698f4e3537f7d09a2797a77ccac5f627a666972bc82a104c270` |
| 22 | `def` | [getListLitOf?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getlistlitof.md) | 265 | `declaration-track:d256d30e67686128a900a5c123b7bb24a7832e8c41a0b062e44125a5f1452561` |
| 23 | `def` | [getListLit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getlistlit.md) | 282 | `declaration-track:73058eb1d3bf180d606c08d52486eec14ebd8712122d34399c1cedc28ceca0db` |
| 24 | `def` | [getArrayLitOf?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getarraylitof.md) | 290 | `declaration-track:2514c6945dc45333cfe346a171cc38c190784fd11a4ca2120b3d3ede3db2572f` |
| 25 | `def` | [getArrayLit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LitValuesNamespacedPublicGetRawNatValue.lean/declarations/getarraylit.md) | 301 | `declaration-track:68bdb7c7ed541654852105e3e09caf4bfc7f2115ff83537fbd158c8d95017e4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65a1bc2b36ed8b9a95969ef31e386f34fc3392671a3e4ad6ce495fc2b4d23298 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
