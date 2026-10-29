# Verification target: Alternative Monad Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dfe9e79059d31c1ef68e3f2f21b033267bc66d3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dfe9e79059d31c1ef68e3f2f21b033267bc66d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean.json)

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
| 1 | `class` | [AlternativeMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/alternativemonad.md) | 59 | `declaration-track:a1ad0a26d2b5243caccedf3d74944a38ee96c6d41d12a6c8a675bd1ee2e199f6` |
| 2 | `class` | [LawfulAlternative](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/lawfulalternative.md) | 65 | `declaration-track:b25cc2931dac7a16640db7af057a6b8d26753a4affb1b176865c5070832c3971` |
| 3 | `theorem` | [mapConst_failure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/mapconst-failure.md) | 86 | `result-track:c27823f19847e231370c6514b88c8f8ede9ad719a30e83a5b02b1df335a56cd3` |
| 4 | `theorem` | [mapConst_orElse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/mapconst-orelse.md) | 90 | `result-track:678df1eec6d00d5b896af14b6e8221bdc7a2bd2d217cfcdce2a34a85b305ca16` |
| 5 | `theorem` | [failure_seqLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/failure-seqleft.md) | 94 | `result-track:ba9fe3f01817f1a7538073d727ec66322ff6bff1c585bea740e2aadb9b269400` |
| 6 | `theorem` | [failure_seqRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/failure-seqright.md) | 98 | `result-track:6aa9660092ed5b43af4367ed0e68f5c292a92f8ac5b926402563e8045d9deaab` |
| 7 | `theorem` | [failure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/failure-bind.md) | 106 | `result-track:5a338d954ca7cd210100237430932a520eca799017fa1fd6b5e9a57966eee735` |
| 8 | `theorem` | [seq_failure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/seq-failure.md) | 114 | `result-track:f5a2fcc910acdd3f6f9ed3f679ae30db5e8d80e9b869256b7b9ae0731c51165b` |
| 9 | `class` | [LawfulAlternativeLift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/lawfulalternativelift.md) | 123 | `declaration-track:7b8db477e903471360aa9662d25f3bca53b2981146cdc5896cde34cac74660e7` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 135 | `declaration-track:418ed5066e4a451f9ea1b886bc45b3d60c8cbd9a2c3ceb4dc758dc957c5894cf` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 137 | `declaration-track:a790d845c5d12fac1fcfc4e4aca2e55f990c8757d29807b9cba996734568b652` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 149 | `declaration-track:6c17bd78d1cb1f96757338d10a74a514b3136e9e151e8bfbd775bfa856b72a7c` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 151 | `declaration-track:974a104b790648aabfb0fd41b4ea285740467ef1432ccca1500330b7c57ea53f` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 167 | `declaration-track:fc60a79f972c427e44a7cc81232f924c3ae33d74c213e7af7e10ecab9054e3c0` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 169 | `declaration-track:c964d2ced25c2f7d63fac699d0e959f867c7dbc8590ba7c0ed674d6e234e15a7` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 178 | `declaration-track:b6f8b8c093b30e5f1af48da071d95eb38d11e49b4dc042a9f5b450e81285fd44` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 187 | `declaration-track:aaf96e47589291387195e73b8f4dc7110151782687c8e9df711f6ddba96294f0` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 189 | `declaration-track:6275ad520deade3124a7a140e3ad1ac8081538783c1d3ba32f3cc4dd3822700d` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance.md) | 197 | `declaration-track:1a7b5bf9a6067e81f2fd503b1cf846f2e57c7d20b58bb2a098b3226105b01267` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:6b8070da58af3e49e2cd66b2e923e7e2127d121438cc6f04b7c58917ff8cc994` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 207 | `declaration-track:a010a515ee2be92ac026633ad7f4d5bb0d81fc39b0c8f35738b4f5ef29ecd649` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 211 | `declaration-track:f32a803adda2672e3f0ab064c8b76ea285c29c115c012c6fabe9f1685c935975` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 216 | `declaration-track:b8de1b94f7ca4d542e66c9ab8826b7a825ac867e018812e4056ce6053e061be7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f7878c37aa7461c11a8f064d0bf6b02fc343f553a4c5bfc9091d786d1815119 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variantd54dca846cf752bc4f3595c77005b5f32f07554e204777863ff0af0c2dad56fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
