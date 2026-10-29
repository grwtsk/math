# Verification target: Data ULift Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91ce6cc8662b7bbe90fd1ca7adb0c6c2734feceb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant993c6b0869bb38c3d50580a5d481b02745c0f271d31dc0dfb3a284ebcb036224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91ce6cc8662b7bbe90fd1ca7adb0c6c2734feceb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant993c6b0869bb38c3d50580a5d481b02745c0f271d31dc0dfb3a284ebcb036224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant993c6b0869bb38c3d50580a5d481b02745c0f271d31dc0dfb3a284ebcb036224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance.md) | 34 | `declaration-track:03a12b7f13fe781b5cbfe247abe29b80640f220f8ab3c359e7d56a7a164d9906` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-8.md) | 37 | `declaration-track:c2035dea9c2e84ae7baa9902e7cf05416bf2a985b5d4f2cea32da5b872ddd3a1` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-7.md) | 40 | `declaration-track:a3098ce3217c6c8e51d5893afa51039c0ae7108f568ea4149f442db4e391b145` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-5.md) | 43 | `declaration-track:86ebda605d1e84671a08d4b98ba6f32bc904d9e6d0cfa6a2aaa0ddc4abe04df1` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-10.md) | 46 | `declaration-track:e4e7339851476ee87a5fdd39b06b2b147554610ad522d2f6ba2baf06f084a609` |
| 6 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-injective-source-edition-2.md) | 49 | `result-track:b06591fffb0e08b305109cab5ecad1693540a2eee92f07ebb60d758db8979fae` |
| 7 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-surjective.md) | 53 | `result-track:20a7cd6ed45e76ae32946409c40583ea4ed32484d2e3a67ade14ee948cb58e8a` |
| 8 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-bijective-source-edition-2.md) | 57 | `result-track:dd8dd48c2001701a1c8997d7d2428374c3c0afc8e203a4d911ea02271ca457cd` |
| 9 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-inj.md) | 62 | `result-track:80ecfae0a5381778c1535a98b5d22e5b3f6e0200ffeb84601c4fec85d84426db` |
| 10 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/down-surjective-source-edition-2.md) | 66 | `result-track:7a1385973b65fb7e1fa05d543593d45a94dbd277a1aa5f63d735a10176f03554` |
| 11 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/down-bijective-source-edition-2.md) | 70 | `result-track:9f75cfabc72a8e554ac5977e240a43e59e5e36d03d45d9075c7de762a5f98de9` |
| 12 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/forall-source-edition-2.md) | 75 | `result-track:f648253d53a0b830469a408ed3d84100989880f27de1da7a77f052766dbec4a3` |
| 13 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/exists.md) | 80 | `result-track:e2e4be1cefff907a7eb323d89116c60cc181ebfa2d2614030ea283304d9036b4` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-9.md) | 90 | `declaration-track:d909e22c85b774e4051494aed37ad79de8bafea21fa606257c0c497aec146455` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:818a34b51f019dc2a92201ddda57c2d3caaadba411656cba751f7f9224223612` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 96 | `declaration-track:7a470c5ecdb64771b6f52416c34baef8861a1c7e50be832bd4ee1fe88b04ee3f` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-6.md) | 99 | `declaration-track:98839c7501bd5003a92bb12ce20cadebfff7d3cc4ee58108b3c4280a2b32bac1` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 102 | `declaration-track:11330611d6d19fc43c653bd0678007ddd5094d4340e451e9125f4747c4923460` |
| 19 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-injective.md) | 105 | `result-track:4953e70cc1a3cf0922cafe39f113fc29bbfe76d8c9fb817a28e9ca832771a825` |
| 20 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-surjective-source-edition-2.md) | 109 | `result-track:fc5addf64ad4c4e764fb88066e390224488bd74503eb5a4321900fca7f72e4e7` |
| 21 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-bijective.md) | 113 | `result-track:9912f2b9568153e525222fbfb41172c36277508f54a7a78217f6393b06b9c306` |
| 22 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/up-inj-source-edition-2.md) | 118 | `result-track:ed00d18d318d6c1df5fe8f0a2c1a04f672e4b3afd8dc793966379b3a507c2281` |
| 23 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/down-surjective.md) | 122 | `result-track:102260936fef3fcc1a9c7b81fa662631c29ad55fccbc70bf4f7db56c54b86b60` |
| 24 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/down-bijective.md) | 126 | `result-track:3cca40553552f458c1e970952539454d36f08be58a0064a44ffc36203c5c39be` |
| 25 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/forall.md) | 131 | `result-track:4e2ec693540923ad374becbedf52d36090257bb6fd746fcbd0904d2ae47c9fb3` |
| 26 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/exists-source-edition-2.md) | 136 | `result-track:eb01afa54c996d29c696cf9f3c9bd8590464f702c9b20ba572e570343fb6c9ba` |
| 27 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/ext.md) | 141 | `result-track:9b34b443364233afa405ddb4d1f7bd75f63638727c96f0917f010fe4350b3929` |
| 28 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedExtIff.lean/declarations/ext-iff.md) | 145 | `result-track:bd0c6b5fde76a9e05932ade495627522b2e2ec5e028575712e926d70a772fd77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14ec0de54dd7357438ff4238fe8a3f2d4979ea23ef717a185afb74a6ab4cfad0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant993c6b0869bb38c3d50580a5d481b02745c0f271d31dc0dfb3a284ebcb036224.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variant993c6b0869bb38c3d50580a5d481b02745c0f271d31dc0dfb3a284ebcb036224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
