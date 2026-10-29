# Verification target: Sampleable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39cd870e1eb3e56a5da79ebc5f319f66a5bbf16",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39cd870e1eb3e56a5da79ebc5f319f66a5bbf16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean.json)

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
| 1 | `class` | [SampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/sampleableext-source-edition-2.md) | 117 | `declaration-track:383c353fe75e307e5a8677d2700c288a395bb4079dbcfd703b72adb484497ada` |
| 2 | `instance` | [selfContained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/selfcontained.md) | 132 | `declaration-track:06c6b43c3c04946febefcaeef2f2dc43454d838be2d248805af610f843938087` |
| 3 | `def` | [mkSelfContained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/mkselfcontained.md) | 141 | `declaration-track:c0d0b606255268cc7c3e3f10dbe111dde6a1aba93fb3ed68c73f1236b07b6606` |
| 4 | `def` | [interpSample](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/interpsample.md) | 147 | `declaration-track:ce247e3a03d3e594084e23b06d4cee98c03805322f04abb9048e84ec7c6569b9` |
| 5 | `instance` | [arbitraryProxy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/arbitraryproxy.md) | 157 | `declaration-track:48821016c6aff5b58e49b46253eb6ccdaba3785ba9c437ed4416715af33f54aa` |
| 6 | `instance` | [Sum.SampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/sum-sampleableext.md) | 159 | `declaration-track:1ceec54c3c073af3062e30b26b2d64d9a680c5bb035bc75cfc89f4364fbee534` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/instance.md) | 167 | `declaration-track:a2ae7cec33d90bb24e0b1c96007691a7e32d7e99f5da6e859dc3de1df93372fd` |
| 8 | `instance` | [Option.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/option-sampleableext.md) | 172 | `declaration-track:3625708ba37aa26350bd9f83be4bade1f6f2fb7f6e46dee8487e5fb607b5a529` |
| 9 | `instance` | [Prod.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/prod-sampleableext.md) | 177 | `declaration-track:545864b68ce135ce84f02bcc0439806a5978172fd3e6cc0e0b7cfd5702955172` |
| 10 | `instance` | [Prop.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/prop-sampleableext.md) | 185 | `declaration-track:580d9cd489e1b222fc32f33a9d8f55f8bd90211df7cd3819121b6690bd57eb47` |
| 11 | `instance` | [List.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/list-sampleableext.md) | 192 | `declaration-track:4a11ba4059edf35304eea2d79dd60994648a4d1fcc11369f6dcacff36fd2b924` |
| 12 | `instance` | [ULift.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/ulift-sampleableext.md) | 197 | `declaration-track:82e54cc29fd12f5f2f0c643cd816c0327c7a1e5d9a62ee82602162d313ee8854` |
| 13 | `instance` | [Array.sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/array-sampleableext.md) | 202 | `declaration-track:0043ff2402f96e4603df279e915eb2829c3c119de782bb6beee2fb93d7df1a9a` |
| 14 | `def` | [NoShrink](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/noshrink.md) | 210 | `declaration-track:7c4d123672fe9106296033d2af1ae4dfe07f3a533e1fd2e65949d835fd24cbb5` |
| 15 | `def` | [mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/mk.md) | 216 | `declaration-track:1b4d75e66842e68d7c9b92e101894e6d1715ffbbd2ea16a4d25b6fa63193cf42` |
| 16 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/get.md) | 217 | `declaration-track:98b89fe1337620ea5fd8e8e1317f056ae92f79efae20b0e2e28c17a8b625340e` |
| 17 | `instance` | [inhabited](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/inhabited.md) | 219 | `declaration-track:b959e26cedc0ed50c366b474ae516959b390a6fe6c22545edce1ee8290dc891b` |
| 18 | `instance` | [repr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/repr.md) | 220 | `declaration-track:fa06a52db102991c64db60853a09a1e7b50f1088840fd92493680fd5cfa0444d` |
| 19 | `instance` | [shrinkable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/shrinkable.md) | 222 | `declaration-track:0e3b90025012ca9ca1b021d94143e310af57ea10c63e572b2abab1ff95ed9fec` |
| 20 | `instance` | [arbitrary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/arbitrary.md) | 225 | `declaration-track:3a0a69785b3031dfc7eaffdddc11e20ed541a76c578e5e44639441228aabaf73` |
| 21 | `instance` | [sampleableExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/sampleableext.md) | 227 | `declaration-track:04ac26e3cbf2ab981ee1299e8c0d5f300455f2a1ab997f8c6eac7e731db169e7` |
| 22 | `def` | [mkGenerator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/mkgenerator.md) | 243 | `declaration-track:7b761e005c78d2d6eaf559ff402b13d18ee935ce828f892c27c03d288ca1d1cd` |
| 23 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SampleableNamespacedPublic.lean/declarations/elab.md) | 295 | `declaration-track:2dc6317c2e47d61db4104b2f66d6c7fec75221f6b1a848a5bcf7a8f7d2751a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc561be644fd85638c72487f0f780e8eb7dec200265aa26d81723775a8953d14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
