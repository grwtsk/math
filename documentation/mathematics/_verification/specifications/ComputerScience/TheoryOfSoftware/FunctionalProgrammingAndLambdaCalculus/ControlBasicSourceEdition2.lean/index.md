# Verification target: Control Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f49ce26938516267618aa6740828c0bed4fcf503",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f49ce26938516267618aa6740828c0bed4fcf503`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Control.Combinators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.map_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/functor-map-map.md) | 24 | `result-track:8092719ead96ad02c892055b9436be72f51e4bc0594c76f7be9506a97741f0ef` |
| 2 | `def` | [zipWithM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/zipwithm.md) | 39 | `declaration-track:399d9190dcc79475f0a46fdb93dfddd7235bcbfaa38e300e17b7fa31e4478092` |
| 3 | `def` | [zipWithM'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/zipwithm-source-edition-2.md) | 45 | `declaration-track:3e73c9462fcf5906f112be9ae1c8681b37db556697c9224a2ec98903dae3f8ae` |
| 4 | `theorem` | [pure_id'_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/pure-id-seq.md) | 54 | `result-track:e79c36d059db95d284b0b91cf344952ed9dbc1f8048628f4cd88e150f727f569` |
| 5 | `theorem` | [seq_map_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/seq-map-assoc.md) | 59 | `result-track:64f5b6d1667e48fb85ce3cb12b9d6dee2799b4e8083596580540b616d469e412` |
| 6 | `theorem` | [map_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/map-seq.md) | 67 | `result-track:eaa64e85ced27571f5bf0d144f33189654036f93a396b78a763c64e2e04dccf8` |
| 7 | `def` | [List.partitionM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/list-partitionm.md) | 82 | `declaration-track:5e0307ec20fa116a30cc0c4c7f0f1175b26ef4a62800f96aa27ea65133482de8` |
| 8 | `theorem` | [map_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/map-bind.md) | 90 | `result-track:2af692a9bdf1b24d9ac065bb36df2a2e440280a3a74d94ec99857e47e8d3ad60` |
| 9 | `theorem` | [seq_bind_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/seq-bind-eq.md) | 95 | `result-track:5384ce57fa39f6789337918068fb65d04500227352eebdde59c185b305920ded` |
| 10 | `theorem` | [fish_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/fish-pure.md) | 105 | `result-track:bc4f4a7bdb14b4438988d09a1858277e1c5fadbef8753bed699b4fe457920e0c` |
| 11 | `theorem` | [fish_pipe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/fish-pipe.md) | 109 | `result-track:1d17811968d9082d3d15ac5a4253572fbd085e70fa78509fe9b4467600d1fd51` |
| 12 | `theorem` | [fish_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/fish-assoc.md) | 114 | `result-track:7e4e1ce1d49e970362f4c2f81bbeff8a4cae0eb10898cab31b5500b3797f1308` |
| 13 | `def` | [List.mapAccumRM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/list-mapaccumrm.md) | 125 | `declaration-track:0cc0fdcf68fdba26662c2eb6c07776d17445807769861592a9b7e221d85ae6af` |
| 14 | `def` | [List.mapAccumLM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/list-mapaccumlm.md) | 135 | `declaration-track:36aed61e88c89444749fd8d5dd0cb989beb3737cc5af3be3ef7b942ff54a3bf0` |
| 15 | `theorem` | [joinM_map_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/joinm-map-map.md) | 149 | `result-track:51524aad782fb95e53d6ce86734389670061a764bb04f0043ebc819cd01ec063` |
| 16 | `theorem` | [joinM_map_joinM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/joinm-map-joinm.md) | 154 | `result-track:a1591cc0b1ef0056b728837ce6c9381168ecbfb2b19e63125c519cf9dc5034f0` |
| 17 | `theorem` | [joinM_map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/joinm-map-pure.md) | 159 | `result-track:d1b540bec233aea4eaeb12de82097245b9ea339c4d912495558ce3f23dd0dde7` |
| 18 | `theorem` | [joinM_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/joinm-pure.md) | 164 | `result-track:33daf9af5d5b8ff1f6bb18932c8414fe0a8adf3c50412186007c45d9473ff392` |
| 19 | `def` | [succeeds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/succeeds.md) | 176 | `declaration-track:ef2d95a8db61445db7a076868175ce8fe42955abd4e26c41c623be90ca9f1b40` |
| 20 | `def` | [tryM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/trym.md) | 181 | `declaration-track:11a5a5db6883a5e4a903f054f1256120ba0495699407f9c439973de81d687b29` |
| 21 | `def` | [try?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/try.md) | 186 | `declaration-track:9f936d2cec71007fca17cb8872bc82d93a02682a0946287c964e37f4694a75d1` |
| 22 | `theorem` | [guard_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/guard-true.md) | 190 | `result-track:b781f58c65a4705b275bf1a6f99457a1a357188bb657ca5bda28c3d80eeedd0b` |
| 23 | `theorem` | [guard_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/guard-false.md) | 194 | `result-track:0a2a6dc8b8626e9ddb8f3a66dc017c59cc09b6c804053756692bf4ad180c5884` |
| 24 | `def` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/bind.md) | 205 | `declaration-track:aac1597387ed8a1f20a073ceb0c838abcb3e9f22581e489516402e86ffed30e8` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 211 | `declaration-track:4662e904b226c3ddf4f889a20d1ef7f75bea50575b2758960debb07fd543145f` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/instance.md) | 215 | `declaration-track:3a450ab3fcb7bc04ba18cbb0860accc05aa93e0bdda40fb0ad1b074598661f17` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 218 | `declaration-track:cf8a5c68fd89db790e5fd26b957a8a75675054f915b27f430a538b09c25b69cb` |
| 28 | `class` | [CommApplicative](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/commapplicative.md) | 245 | `declaration-track:69f44eba1aea3b71442f7262aff969134ade173a409008c536524fb2301e01bd` |
| 29 | `theorem` | [CommApplicative.commutative_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlBasicSourceEdition2.lean/declarations/commapplicative-commutative-map.md) | 256 | `result-track:87b382492dc308bc847410c07b16d335a99e7948bf6c82241ac477c874ca0323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f961105f2d513b681088213f7ebc8cf8510124ed367f300d357191246ddfa232 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6fa8e095aa7543dd8541dc093f223c1e737e6860ae73c4cfa8cc158b8adec5e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
