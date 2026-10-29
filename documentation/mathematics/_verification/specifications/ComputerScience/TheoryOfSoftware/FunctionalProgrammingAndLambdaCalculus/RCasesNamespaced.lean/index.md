# Verification target: RCases Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77ea0577850a57144aa89b9217bf41e1eed024a0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77ea0577850a57144aa89b9217bf41e1eed024a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Induction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Meta.FVarSubst.append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/lean-meta-fvarsubst-append.md) | 71 | `declaration-track:e9b478297a0f89c107b907f1ee2f833be6fa3973894e210dcb71e56f86494dc0` |
| 2 | `register_option` | [linter.unusedRCasesPattern](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/linter-unusedrcasespattern.md) | 81 | `declaration-track:7eed0c9283c1c2ed250975a0a328f92e8535c3e343c54769d2e4c1fb0f82c0df` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-2.md) | 89 | `declaration-track:3fa1a51c85c33f71b9e73f4c2e0abf4c51e5d1e0b2517191a988a045416e2365` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-9.md) | 91 | `declaration-track:be36a26f8ec4248adf2fabcc6d2fdd4504370a1aedd1461ccc3d5e6480c211df` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-3.md) | 93 | `declaration-track:6de62ff9a239dd637965f617c6ca243cab2b01dcb4bbab22488ec1918369ae6e` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax.md) | 95 | `declaration-track:151ed45f382bb2586819e5ded8b8f66f4dea1a107f156fa8f52e6cae08003f0e` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-6.md) | 97 | `declaration-track:8dbcee6523188e228d5a83d0b78f2545f11c8cbfd9a96f4669bca34fad7eb77f` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-4.md) | 102 | `declaration-track:7b04b5319c43fce30a1328a159fb7b7d1845c22206ed3cbfb96e654667061ba2` |
| 9 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-5.md) | 107 | `declaration-track:863df2cb2142207466ed222ea7fc701919acfa35695439a716c2ceff8b5753f6` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-7.md) | 109 | `declaration-track:91673380ab9458751cfc7dbe27a2d2d88d883e5f0552321a8db3928d56671f7e` |
| 11 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/syntax-source-edition-8.md) | 114 | `declaration-track:9475771824b0de6cfdf181f0aa138da5c2986f70fbc24138226e0c9c7a678ab3` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance-source-edition-3.md) | 121 | `declaration-track:360cb864b0b66ef9152c7f0b1d55e04343a6397d94e03984bc2dd04f56b1711f` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:1f6af0a4c3704841a9e1cb6f44276a96564b9b21cc0a6b536f205b1c5298679c` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance-source-edition-6.md) | 125 | `declaration-track:865472b4bc6645dbf358d8f10a669fe10266499166cced0b39a1380f04f6c027` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance-source-edition-5.md) | 127 | `declaration-track:80de28b85124febb8cbddaceada55ecda257c39c33e59e2400abd3d83cdd7500` |
| 16 | `inductive` | [RCasesPatt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rcasespatt.md) | 156 | `declaration-track:29541b2bd891b322b5fc6ad3b3f995e41ab35c377707ba4c1cfd62a3f2efe5d0` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance-source-edition-4.md) | 175 | `declaration-track:4f4f7e86e57c75a9f213598a8ad48c2e35a37f81a492b8b1a6871a6c859cb0e3` |
| 18 | `def` | [name?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/name.md) | 178 | `declaration-track:2176932f6ec28ae53b787604f5d9b086d554382629011e76a6fcce3d799ccf08` |
| 19 | `def` | [ref](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/ref.md) | 188 | `declaration-track:115610701e877c93c37940f116e72e43743d863670d249383a04d35adffb56eb` |
| 20 | `def` | [asTuple](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/astuple.md) | 200 | `declaration-track:fb213329c8f66582ce8af9fc74a5ea74fc9cbdce7343404abb512787c09076ae` |
| 21 | `def` | [asAlts](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/asalts.md) | 210 | `declaration-track:4dc60aa103cd368087eef63ba7dcd8acf38cb1329517b11b4eccd1e7cbb224bd` |
| 22 | `def` | [typed?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/typed.md) | 216 | `declaration-track:f65d739b68f21ae6124584272d1cae26967e4c1e5e39712fa4bd5633a6513b46` |
| 23 | `def` | [tuple'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/tuple.md) | 221 | `declaration-track:2486abd7216c89d94853358313c2f73b086bae7af6dbddd5d91bea1f1dbfab8e` |
| 24 | `def` | [alts'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/alts-source-edition-2.md) | 229 | `declaration-track:c93aa40e1593ef65ec93c527c050023948279a7c9e22bb9f095e4af97a40fc9f` |
| 25 | `def` | [tuple₁Core](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/tuple-core.md) | 242 | `declaration-track:9084cf2a02733dac6d9992a0fea8db96785212f47fa8d193c75671c5c761db78` |
| 26 | `def` | [tuple₁](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/tuple-source-edition-2.md) | 253 | `declaration-track:2e99fb9466fabcc83a4d5794b2ad309564fecaf83e371a35c8caca7a97d25c45` |
| 27 | `def` | [alts₁Core](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/alts-core.md) | 265 | `declaration-track:6cb7554f01913170b1087934b8c8c58771c12d11cc0781c9608e313bc2fcca6f` |
| 28 | `def` | [alts₁](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/alts.md) | 277 | `declaration-track:62dfe510a200449d7128639cd0cd91cf112c5b9f1fcb1ba41a59bb8f0491c7b9` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/instance.md) | 283 | `declaration-track:04ac0e1ac1fe97e2ee72fa5f7a5cc0b7462d985fc196a175a339ee077677bb7e` |
| 30 | `def` | [processConstructor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/processconstructor.md) | 306 | `declaration-track:4643b31998e57cf8b68a2c74da721935f8f20b1357daca6984a1e2e6cf6ca0ec` |
| 31 | `def` | [processConstructors](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/processconstructors.md) | 329 | `declaration-track:be8451ae6826eed53beda5a2b5a97742a6291eeb7257cd6420a21877df94082a` |
| 32 | `def` | [subst'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/subst.md) | 347 | `declaration-track:dc01f183072770efe3ecd4e955e21cbe5a94af3a02e73d72f631938d9d2f0514` |
| 33 | `def` | [rcasesCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rcasescore.md) | 390 | `declaration-track:96ca34fc57adef3ebeb939292e393056571784992989cf0ecf4eb89d1fffa2b7` |
| 34 | `def` | [rcasesContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rcasescontinue.md) | 473 | `declaration-track:0d5e709aec06f6e98e2131da7c5eda400bd2ddfcd40ce287b4ed82f7b0a96e68` |
| 35 | `def` | [tryClearMany'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/tryclearmany.md) | 485 | `declaration-track:efa4ff4b0eb16e054adf6b7bce80b4f84bb9b34fdc9255ec9e169f35849bd076` |
| 36 | `def` | [finish](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/finish.md) | 497 | `declaration-track:de4817e7ced1f42e3115b3c805ff520d639d49f8ca7787a6a2371332618fba8c` |
| 37 | `def` | [RCasesPatt.parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rcasespatt-parse.md) | 505 | `declaration-track:b306a4c6b03128e1767c9037df9d7ca47c4082fee9ccc632bd4cc0c87bf827b4` |
| 38 | `def` | [generalizeExceptFVar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/generalizeexceptfvar.md) | 520 | `declaration-track:b7692ff7265273f319fd6880e6ab3d8c5b7f421a259d251716ec0bcdae7fedfc` |
| 39 | `def` | [rcases](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rcases.md) | 538 | `declaration-track:f396f6dc1d91b61f784d5233387eaaeb48753a918812c9bffde2f43f0c80d9f6` |
| 40 | `def` | [obtainNone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/obtainnone.md) | 561 | `declaration-track:e013a0ddce55229c4382892c3fcfdd92a93930512c3f5ddd92c93065e6167fa2` |
| 41 | `def` | [expandRIntroPat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/expandrintropat.md) | 572 | `declaration-track:092723dc7dec5226b57646b282e56b7292f08b4387b03566d0f0ed5d46979f8b` |
| 42 | `def` | [expandRIntroPats](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/expandrintropats.md) | 583 | `declaration-track:3e8ace17babeb07719f94c3f75c8a83fa7458b210e152f2fdd7b532121f5e7ef` |
| 43 | `def` | [rintroCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rintrocore.md) | 596 | `declaration-track:9d5490e1feb67d1f41cff119430a3d206f605b93f3393510b6a73eb543edc3c6` |
| 44 | `def` | [rintroContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rintrocontinue.md) | 613 | `declaration-track:13f6faa1aa3d00c676036f5cbc761d1927fa20f39e4d221ec7d2ce1f5e6a751c` |
| 45 | `def` | [rintro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/rintro.md) | 630 | `declaration-track:a5b4a104412dd50a957f1ad2c1aca6d56032886b3f85d2e9b7521d8d6bdd9b21` |
| 46 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/elab-source-edition-3.md) | 692 | `declaration-track:93926626f7bf4a87468c1020b39c779c6954e2e05848fa0014097856b615c10d` |
| 47 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/elab.md) | 719 | `declaration-track:23bb73ab7125f41d2893c52fc976f784cfefbc899f73671e586071ffb6e4afff` |
| 48 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RCasesNamespaced.lean/declarations/elab-source-edition-2.md) | 757 | `declaration-track:68636508131f04fad35fabbda41647cee5e63eebb25fc2f25634834897f59ec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24ba0821441798a9e9dd6eae835cce9cace1a4522d608e266a563dc621cd5d5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant7aced9eec6fbfad41d5b8469e598701c9b232593963b4e85252cbde3d02b7c80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
