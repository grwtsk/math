# Verification target: Ref Vec Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccda6e5309c5ee6482133e8366b69051553b998f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccda6e5309c5ee6482133e8366b69051553b998f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/empty.md) | 25 | `declaration-track:ee4dfdae613c06870904ded4b13bbad1cfdb02dab7249cc1927579638067138c` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/emptywithcapacity.md) | 29 | `declaration-track:d12ba5f4534e0713f52c1f01f37fa418852f61095ebbfe8925a936b7fab6765b` |
| 3 | `theorem` | [emptyWithCapacity_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/emptywithcapacity-eq.md) | 34 | `result-track:040350f7f4b9344fff70e5b3de7ba8af52c2168adefa5d1820de58c948425d15` |
| 4 | `def` | [cast'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/cast-source-edition-2.md) | 38 | `declaration-track:84c3158a89edc3843560d315c03aee745ffddbc14bdade7a22af63fe8b7d977e` |
| 5 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/cast.md) | 52 | `declaration-track:2c631cc609d4bf91a6f7b0d11aafea42fda68b1e0775c65f7388db11ff644ffa` |
| 6 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get.md) | 60 | `declaration-track:2583974e8d8f155e2e302aa120d7dea62e52de685bddb17bc1a0547241f91dd0` |
| 7 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/push.md) | 66 | `declaration-track:78c55b55cdc9678daee95e8e422776d6d0c661499092bfadf0eed5efef675f44` |
| 8 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/cast-cast.md) | 79 | `result-track:da48f26b799b11654c09f4183e1ecefbe0c29abf85061397ce02f0dffd037385` |
| 9 | `theorem` | [get_push_ref_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-push-ref-eq.md) | 84 | `result-track:9c17e720b6bbb0b4dd544a3160dbd6467c18453a8287956de9be103aae355633` |
| 10 | `theorem` | [get_push_ref_eq'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-push-ref-eq-source-edition-2.md) | 89 | `result-track:b7bd7055e24a2a4f2edaaeafd1978ed317bd44b532a458f879dfd173a1e4cb60` |
| 11 | `theorem` | [get_push_ref_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-push-ref-lt.md) | 94 | `result-track:d9a56192c49594f4d10fb14c3cba4477e512a127be8012103204c61086e2c95f` |
| 12 | `theorem` | [get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-cast.md) | 105 | `result-track:66b796462774c9fe7808fffbfe5e0efaa287e7fce18ce57a358ba6eb0b87fc00` |
| 13 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/append.md) | 113 | `declaration-track:d919865bf1f09b5855f91fc59a57eda8ac14cf997bebcb161d1bed1a166b79d7` |
| 14 | `theorem` | [get_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-append.md) | 129 | `result-track:03ec084bed66ec4fe590d919ca62a125b90605da885aa1854c5dc24337c7b07d` |
| 15 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/getd.md) | 149 | `declaration-track:471cb4899149f5d8e944269b2b78ac2442065f660e981f9aff104fb3a21e9337` |
| 16 | `theorem` | [get_in_bound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-in-bound.md) | 155 | `result-track:ff783546e480dcd17c1cde75fd2e79acbfb5f22e998265efd6f69d0e31384d8b` |
| 17 | `theorem` | [get_out_bound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/get-out-bound.md) | 160 | `result-track:2961fdfe48b0b89f75041d8c32a7605bfa3c05c129f06427bec9f52f590d69a0` |
| 18 | `def` | [countKnown](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/countknown.md) | 167 | `declaration-track:8cefac007392f7430bc01a36380d62c95c887d87a6989176f2b19e476695f728` |
| 19 | `structure` | [BinaryRefVec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/binaryrefvec.md) | 182 | `declaration-track:545a014249a07cd2fc1d81fa845356cd173d6e897a3912826be693852c37d34e` |
| 20 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/cast-source-edition-3.md) | 189 | `declaration-track:f6f5950cd6de15f29e22ed58752046a6fd5b69a3d3067864fc6981427e2c9e02` |
| 21 | `theorem` | [lhs_get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/lhs-get-cast.md) | 196 | `result-track:2864051784de71af21a4eadf40443b6039cdf16c5a591ae090282b81597c998c` |
| 22 | `theorem` | [rhs_get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecPublic.lean/declarations/rhs-get-cast.md) | 204 | `result-track:f1fd198d1a296ac0c0f41a76c8714e8a2bf416b97868a6c507ca1021808f93a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6f90d0348bb4fffe0f7548ffedeed5348c0c7367750e16b1fd3a21ddf223553 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variant9d490909820c5c78c95a6c881be935d29b0138524ff343aac1387c48ea3ba463.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
