# Verification target: Reflect Public And Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22dc6e6fb703045003dd9f025f0aefc837bcc544",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variant912d52f783dde28ca43460dbd6a0bc009c0c4276b674ef0b816eba6dbba60650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22dc6e6fb703045003dd9f025f0aefc837bcc544`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variant912d52f783dde28ca43460dbd6a0bc009c0c4276b674ef0b816eba6dbba60650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variant912d52f783dde28ca43460dbd6a0bc009c0c4276b674ef0b816eba6dbba60650.lean.json)

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
| 1 | `theorem` | [and_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/and-congr-source-edition-2.md) | 27 | `result-track:c3a34bc3f6db7660ae15efa1151c5c914929b8b3dc8bddab02d58730d684b0d6` |
| 2 | `theorem` | [or_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/or-congr-source-edition-2.md) | 31 | `result-track:99660156b14444917c184cf3ae75a0b14f65472c40273303bc7123c5a509c692` |
| 3 | `theorem` | [xor_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/xor-congr.md) | 35 | `result-track:b426961e6c4633763aae466b73a11109be47b865e19619cf7d4134f9d1fb0690` |
| 4 | `theorem` | [not_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/not-congr.md) | 39 | `result-track:1698a12e9f73711650a65ff5f40c0947ac7283af419f09c1e4b06226def49e42` |
| 5 | `theorem` | [shiftLeft_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/shiftleft-congr.md) | 42 | `result-track:3670a73374620acfec31c61d1fd116b394e9a2e350f4455e4bb18b0b137a798d` |
| 6 | `theorem` | [shiftRight_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/shiftright-congr.md) | 47 | `result-track:9cb3e23d2f927981c5f8447013211e9008038210c94acaa83b871830cac8c59f` |
| 7 | `theorem` | [arithShiftRightNat_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/arithshiftrightnat-congr.md) | 52 | `result-track:1432d9a8961d19fdf6573d30f2389ae088fb3f142dc01a99c2665d2a87ed8f8c` |
| 8 | `theorem` | [arithShiftRight_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/arithshiftright-congr.md) | 56 | `result-track:59dc2ea4c6265df060c0a6d998e0921d6438d3d08a95023a4556aaedae3705ac` |
| 9 | `theorem` | [add_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/add-congr.md) | 61 | `result-track:3cad416859f46affbac0c848397e2f3355ee289cdc9c7f7043fbda7de9938bf8` |
| 10 | `theorem` | [append_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/append-congr.md) | 65 | `result-track:d35cd6a543807a5867a04f42a6ab1ca03e0d24f396f3bacc5e2704a7de854e1a` |
| 11 | `theorem` | [replicate_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/replicate-congr.md) | 70 | `result-track:84f95f3d163449168e65a95061e30236614d561377ccc26c050b942236e18343` |
| 12 | `theorem` | [extract_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/extract-congr.md) | 74 | `result-track:50dc621e0fb09a8f97418192228f4261bc43145656814f1a641fc6267e41c6fa` |
| 13 | `theorem` | [rotateLeft_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/rotateleft-congr.md) | 78 | `result-track:e18f1fbdcc91db230e7b2e1dfba995e906a57d0008658a38e8849a677f151a21` |
| 14 | `theorem` | [rotateRight_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/rotateright-congr.md) | 82 | `result-track:4f7b40c5d518a06fb946e2b3d18f5dc1725e322cf248053b3ed2bc07e859a112` |
| 15 | `theorem` | [mul_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/mul-congr.md) | 86 | `result-track:55b8a34d198da591db15106341bfeb34961f80256dbf60131b35461d72078f4a` |
| 16 | `theorem` | [beq_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/beq-congr-source-edition-2.md) | 90 | `result-track:ce70b1321961f89530fa5ec7c6bf26ab503341f6d2e56446d96ed220d33c9965` |
| 17 | `theorem` | [ult_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/ult-congr.md) | 94 | `result-track:f530243c632a51a1a23d552f167bb58541fcd46d26daf5536548083e0ce8e19d` |
| 18 | `theorem` | [getLsbD_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/getlsbd-congr.md) | 98 | `result-track:93f7705d1d62a91246a038cf6beda73eddccd5a733ae081a7e48f04fc56040bf` |
| 19 | `theorem` | [ofBool_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/ofbool-congr.md) | 102 | `result-track:244c271bb4327326963e01d39ef8b051a4b57c7c5a99cfe731c2a7b31a81aa00` |
| 20 | `theorem` | [udiv_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/udiv-congr.md) | 105 | `result-track:80f7258a91e021dec66286eab83bd88ec815eb8c28d1060a5ded401eef2900e3` |
| 21 | `theorem` | [umod_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/umod-congr.md) | 109 | `result-track:e83f221e404cf0a259fcb229c7eb16ab8c43dfb0d900d15e705f04dd8cce56fa` |
| 22 | `theorem` | [cond_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/cond-true.md) | 113 | `result-track:7202fe0bf7bc40a53fd97fbc30063e857d0325a12d940261ad01716e561a0456` |
| 23 | `theorem` | [cond_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/cond-false.md) | 117 | `result-track:8b6fa7093a81f5691a74c57f0a54f0aa6db328cd6a4349c5bd69d84025da4cb1` |
| 24 | `theorem` | [reverse_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/reverse-congr.md) | 121 | `result-track:b40301f756d3953dc55cb9cdc8d71831da0737fbb4b55bdfefa576ad71eeb261` |
| 25 | `theorem` | [clz_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/clz-congr.md) | 125 | `result-track:599477fff741fe1b0566a3eef9737a9630e9c4cb9450e8d23f01434affccab54` |
| 26 | `theorem` | [cpop_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/cpop-congr.md) | 129 | `result-track:88fe6dd8f50321d598ad72c948d1aaf531ab447385b3456000fdcfa3724a42c9` |
| 27 | `theorem` | [not_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/not-congr-source-edition-2.md) | 137 | `result-track:ba7b9a07580b6fdf3c7f26548bff1fb089132ccab888fd7cd114cd8372d48ce0` |
| 28 | `theorem` | [and_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/and-congr.md) | 140 | `result-track:8c0073632cd5d5940b29a485a30238b0b3f208eb0715435b1bb3ced3eda14804` |
| 29 | `theorem` | [xor_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/xor-congr-source-edition-2.md) | 144 | `result-track:bc937a3ff300ac83f0bda31a29b3b40fc9cdb75c99ed3e841fa20c0885f4dd84` |
| 30 | `theorem` | [beq_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/beq-congr.md) | 148 | `result-track:aedc69859c4a89deda7d7f629a0b23b53794e5ab123117194c2b677bf15ecb10` |
| 31 | `theorem` | [or_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/or-congr.md) | 152 | `result-track:7052e43540a4236a386a236b72247969b51fd66b43aee1fb11782606772422ff` |
| 32 | `theorem` | [cond_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/cond-congr.md) | 156 | `result-track:dc66a7fc04d429425dbad676b6fc4ee49bc09c08d130ff58890a8d7a931eda43` |
| 33 | `theorem` | [false_of_eq_true_of_eq_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/false-of-eq-true-of-eq-false.md) | 161 | `result-track:6edc7fa0c7570de8b8f79f95f4ccc71da5e6a2df2e16a54a1249cf60191fbabf` |
| 34 | `theorem` | [lemma_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/lemma-congr.md) | 164 | `result-track:cc79bbbc15dd2ddd8ea4cb0425068c8ce90151fc106cdf2d1a9f2db9c4f64fc8` |
| 35 | `def` | [verifyCert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/verifycert.md) | 174 | `declaration-track:cac2c773447c925d4760347bf41fe6b8f63ad190acd2e01064d9d7534e905286` |
| 36 | `theorem` | [verifyCert_correct](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/verifycert-correct.md) | 179 | `result-track:0a594efd11ce20b65e21734e45e95cd4ed995774562f593c20183e95656481ab` |
| 37 | `def` | [verifyBVExpr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/verifybvexpr.md) | 190 | `declaration-track:c66daed8053b6571dab4c43606d66df329882faab6c6241d769f13edfa2c83b0` |
| 38 | `theorem` | [unsat_of_verifyBVExpr_eq_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ReflectPublicAndCongr.lean/declarations/unsat-of-verifybvexpr-eq-true.md) | 193 | `result-track:5c371645787cd4575b1a96440f412a008fb48a33c0dc8619b6d0aa6026a54a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ee851def64eb80f8412b3f9ac813c570c6cd9fa03c1d3ccc14f566b251fbd78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variant912d52f783dde28ca43460dbd6a0bc009c0c4276b674ef0b816eba6dbba60650.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reflect/Variant912d52f783dde28ca43460dbd6a0bc009c0c4276b674ef0b816eba6dbba60650.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
