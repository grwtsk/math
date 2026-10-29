# Verification target: Ref Vec Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bc4e42f6a401b13175fe5d315f499adbf670e0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bc4e42f6a401b13175fe5d315f499adbf670e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/empty.md) | 33 | `declaration-track:e597ee371cf96b8a955df13331fe4614fa8149fb5ea04424fcf7e820605fa85d` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/emptywithcapacity.md) | 37 | `declaration-track:f938d65b350c0bce5e5d9819b314e4dc25d2eb526216a9b5a7203a68b56ae80e` |
| 3 | `theorem` | [emptyWithCapacity_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/emptywithcapacity-eq.md) | 42 | `result-track:5968ba430f36c5b78ba1c622fc1e8cd909db40c5c98cd47023f95346dfb30335` |
| 4 | `def` | [cast'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/cast.md) | 46 | `declaration-track:61165ea69947caa0924c641d411d3bdbe77a46df33c1144d8b9466f05ad01dd5` |
| 5 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/cast-source-edition-2.md) | 60 | `declaration-track:690c07abb158d8e82031d8e4488499f3a7326d60b8221a6547669d6c1b6784d3` |
| 6 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get.md) | 68 | `declaration-track:775e1d4464a0f7e55c8a529b1202ae63e26d89e79c5ce4b732fd5534e98e9664` |
| 7 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/push.md) | 74 | `declaration-track:6ad932e42da9485eb7a1ca7ebd376af5eaabde5d639462272214aa8c0025815e` |
| 8 | `theorem` | [cast_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/cast-cast.md) | 87 | `result-track:f63a218f8a4f66d4f78fc709494a2b29685c80ab39d24cb13338b4affba54d9e` |
| 9 | `theorem` | [get_push_ref_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-push-ref-eq-source-edition-2.md) | 92 | `result-track:3f5398fc26050942ee498002a02dc1f2610f4904c94c2db93183abacecf71c78` |
| 10 | `theorem` | [get_push_ref_eq'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-push-ref-eq.md) | 97 | `result-track:162a098ea0d9bcdf5d4b01c56538de475c1da391f88ff7d08c965a7bc73ed9f4` |
| 11 | `theorem` | [get_push_ref_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-push-ref-lt.md) | 102 | `result-track:eff590e1ecbaa0bfaa465843ae59f2b76cbaf566384b752420494d93968365df` |
| 12 | `theorem` | [get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-cast.md) | 113 | `result-track:0335129dff4731354f7edf4fd005810c56a7f1774cbedc45e071a834676cfc5b` |
| 13 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/append.md) | 121 | `declaration-track:2002cc7df246963dd1da5ae832ddc2ce73e49de81459c92502e7a0920b66aaef` |
| 14 | `theorem` | [get_append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-append.md) | 137 | `result-track:c236c03be4256203bbde4110cbfec30727bfcab47fd9ff4b560cd93b5031f9b8` |
| 15 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/getd.md) | 157 | `declaration-track:883013ad81f5d35c9aab5c294b0ecdad64e0a8f178479254dfbde8755f92a760` |
| 16 | `theorem` | [get_in_bound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-in-bound.md) | 163 | `result-track:9117b3ae21423f2c795614ac1cba57898c5a02b3f6d870046c02d5272d8249e0` |
| 17 | `theorem` | [get_out_bound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/get-out-bound.md) | 168 | `result-track:a5c390685c5c2a3853189a53ca082c1ba02f1fc783e08aaa655582eaeb7cf37b` |
| 18 | `def` | [countKnown](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/countknown.md) | 175 | `declaration-track:32f394ff35b51ef90a1ea2b2416ebfdad0059ddf22c7725301693c9de5c98940` |
| 19 | `structure` | [BinaryRefVec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/binaryrefvec.md) | 190 | `declaration-track:bc50a64dc6b02d46f9a1722ec260378f9252cf4edcae75147a7bfd91cf809b06` |
| 20 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/cast-source-edition-3.md) | 197 | `declaration-track:8b2f00453c1b3a922e557f9ad81cd07788d353533749175f58c6b4f49bef4f11` |
| 21 | `theorem` | [lhs_get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/lhs-get-cast.md) | 204 | `result-track:800eba1568175295fbbd9eeafa8492415ec96f3f1d93ad4a9cccdc10ded94508` |
| 22 | `theorem` | [rhs_get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RefVecNamespacedPublic.lean/declarations/rhs-get-cast.md) | 212 | `result-track:70a9b21b9c6fded88faa80ba856645f4d2b8593cc30c0d40ace09c1ccdba2e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4296292bf42445ebea9bd89c18b3e611eaa01a08636827962b9627f82cf73f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefVec/Variantfcd8e6929cfb198a0c35702f6bb946c333e61a499756e03c144dd852ef8373b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
