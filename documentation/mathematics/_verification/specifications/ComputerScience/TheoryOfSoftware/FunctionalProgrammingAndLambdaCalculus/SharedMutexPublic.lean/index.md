# Verification target: Shared Mutex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86be0d7eadf0bb0b53165fe55994e758b895423",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variantd22cf41decc4893ba9b7ff4c2c4b13633d108825542c0b608a1bdd7158d350a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86be0d7eadf0bb0b53165fe55994e758b895423`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variantd22cf41decc4893ba9b7ff4c2c4b13633d108825542c0b608a1bdd7158d350a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variantd22cf41decc4893ba9b7ff4c2c4b13633d108825542c0b608a1bdd7158d350a4.lean.json)

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
| 1 | `opaque` | [SharedMutexImpl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmuteximpl.md) | 15 | `declaration-track:6540b0dd3af25670a3c68a80225ece1adb355aa874559641f958d57811a81e4b` |
| 2 | `def` | [BaseSharedMutex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex.md) | 22 | `declaration-track:f7f54d3bb33efd6d91c0fb8c91e9ee4a8a3f9d4603aa0327a3550ee48bcb21cc` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/instance.md) | 24 | `declaration-track:383f813763b5b60fb4dd5f9248814519a78785cfcb966540024196f9e6debec4` |
| 4 | `opaque` | [BaseSharedMutex.new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-new.md) | 28 | `declaration-track:a1305677efd253b2e170a00a25c52d7c80a410196541698ba5930a423acf5532` |
| 5 | `opaque` | [BaseSharedMutex.write](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-write.md) | 38 | `declaration-track:99045b67c1a12a92ccd27e878f1201e1ea82953532184ee2f3d258e45574825b` |
| 6 | `opaque` | [BaseSharedMutex.tryWrite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-trywrite.md) | 48 | `declaration-track:00dc678863632b65018e2e81d4ac9a86424e5734d48f8cbc1e8b702c097b3273` |
| 7 | `opaque` | [BaseSharedMutex.unlockWrite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-unlockwrite.md) | 57 | `declaration-track:939d29e9f0177aa09e612665d88158465eb60e01216aeac9f7bf42a25b0b04b3` |
| 8 | `opaque` | [BaseSharedMutex.read](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-read.md) | 68 | `declaration-track:c0645c0484b3c033f837561a674f528bb344e95cb75dcf16f533d5fee2c9a90b` |
| 9 | `opaque` | [BaseSharedMutex.tryRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-tryread.md) | 78 | `declaration-track:f1ff0a3d6b38759c37da02d8868670ad077bb7c3ea4cca6f8e0287c40ce1c2bd` |
| 10 | `opaque` | [BaseSharedMutex.unlockRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/basesharedmutex-unlockread.md) | 87 | `declaration-track:b8d7be397259e29722b1156db1e529b7eeaf11049a27893e7aae03c9c2b2a757` |
| 11 | `structure` | [SharedMutex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex.md) | 93 | `declaration-track:90d939a3475d6898da89fb41541d7ba4540d069bbb9874d6523b11b4d83c9048` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/instance-source-edition-2.md) | 98 | `declaration-track:bdbb288db9b2bbec602eb0445c856f85e5554ecc8e877c0aaa8ecf6ba28ebecd` |
| 13 | `def` | [SharedMutex.new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex-new.md) | 101 | `declaration-track:aa251fb7764c1f34cd58ac185456d157acbb8a2eaecbb023bbe53bd133776aa9` |
| 14 | `def` | [SharedMutex.atomically](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex-atomically.md) | 111 | `declaration-track:7e778bdf3fb2ebf5998110b331f89a373104b4b84a2787dd8468c284ca928c42` |
| 15 | `def` | [SharedMutex.tryAtomically](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex-tryatomically.md) | 127 | `declaration-track:bc0899191058476af8d16831d65b3cdf7cd8521968b59441776955d3d9708670` |
| 16 | `def` | [SharedMutex.atomicallyRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex-atomicallyread.md) | 144 | `declaration-track:2f6acdd0ae39f4502a1850b12528eaad9f10a0880c0a0562949848ea900b2a73` |
| 17 | `def` | [SharedMutex.tryAtomicallyRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SharedMutexPublic.lean/declarations/sharedmutex-tryatomicallyread.md) | 161 | `declaration-track:85b0aee088b0256ad18be090a9962baec82c4fad4370a0eba3410624f676d783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=186ae6ffe4a72397e79e3c92c23fa1d96ec802bb6d477782d3befa69b558ef6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variantd22cf41decc4893ba9b7ff4c2c4b13633d108825542c0b608a1bdd7158d350a4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SharedMutex/Variantd22cf41decc4893ba9b7ff4c2c4b13633d108825542c0b608a1bdd7158d350a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
