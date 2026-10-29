# Verification target: Lemmas Lemmas Namespaced Public Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cc52e9d7905801b59dcddc26fc3ac65b89950c6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cc52e9d7905801b59dcddc26fc3ac65b89950c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.monotone_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/functor-monotone-map.md) | 57 | `result-track:b470f7eb4410488fe7e0ff36d9127cd9c8733bee1cc1fc740c115242965d6a59` |
| 2 | `theorem` | [Seq.monotone_seq](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/seq-monotone-seq.md) | 64 | `result-track:6bb1481135b6921f24a9af16b4e00fc92b1758ff1a5baf0972a140dc90050709` |
| 3 | `theorem` | [SeqLeft.monotone_seqLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/seqleft-monotone-seqleft.md) | 76 | `result-track:6b68403c880dd645050c26ba5890f6a5fe5981d662efcea221f18e275c5b6035` |
| 4 | `theorem` | [SeqRight.monotone_seqRight](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/seqright-monotone-seqright.md) | 86 | `result-track:39d6e8fcdcce6aef52ff93a4bdd1e5acbc09e34fd7abd172a8913e88c4bd4cfa` |
| 5 | `theorem` | [monotone_bindM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-bindm.md) | 99 | `result-track:81e6e587ae2b15d0189a72d45684e6ebed52485425883add9df2115ba5c55951` |
| 6 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-mapm-source-edition-3.md) | 106 | `result-track:bab1ba79029ac994616bf34de34fd147b926e2d509e4aeba84d4ef18b0478033` |
| 7 | `theorem` | [monotone_elimM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-elimm.md) | 116 | `result-track:88d9b71f7372535d3170921891027620e9d4324dee0e929d7d07504bfc980fb9` |
| 8 | `theorem` | [monotone_getDM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-getdm.md) | 132 | `result-track:4fa1bf24dd9cf1e05c837e4f40f34bb4d85594c59f68d944b89375b8c39f0b68` |
| 9 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-mapm-source-edition-2.md) | 144 | `result-track:5c77953298b08e06f2303374550ad95170b4a925d7990807819f117b24c34862` |
| 10 | `theorem` | [monotone_forM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-form.md) | 166 | `result-track:e3cc4a113a14d74eb709b57793ee6e6e32a37a1d391a55db2f3b1e4d23e9a194` |
| 11 | `theorem` | [monotone_filterAuxM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-filterauxm.md) | 179 | `result-track:9fe2ff5897af61bb4830d0251787398adddbabb072a8ce7175dad4588ae4bafc` |
| 12 | `theorem` | [monotone_filterM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-filterm.md) | 194 | `result-track:beda7796eeddc435e6c3a7383643a7be06b514069d91453062a289150c912e26` |
| 13 | `theorem` | [monotone_filterRevM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-filterrevm.md) | 203 | `result-track:9ba4cbfa4ce171669e016c4af9e87cdc7d90234afcdb4e855ca429da90e2a087` |
| 14 | `theorem` | [monotone_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldlm-source-edition-2.md) | 210 | `result-track:929bcc4de60919cca1a8ec24bdc3ceda82474dbec0df9c0c8cc129bdb4b650f4` |
| 15 | `theorem` | [monotone_foldrM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldrm.md) | 225 | `result-track:0061adec6e583a602b6148ff1c1eeecb104d21929076202e80944a57aa22af12` |
| 16 | `theorem` | [monotone_anyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-anym-source-edition-2.md) | 238 | `result-track:ed5ef6db82f7c55b49be12d61e0ed2ac638818727514be398b7e2534ee951972` |
| 17 | `theorem` | [monotone_allM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-allm.md) | 255 | `result-track:379f69a7b99b81f96d2dc666c3cce9fed4c46e072a14460e51e2266ed668bf58` |
| 18 | `theorem` | [monotone_findM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findm.md) | 272 | `result-track:33425573432c4ed2d5bf41439287a6da9fd34d1a0ad3cc9df4c9ec478662c2fa` |
| 19 | `theorem` | [monotone_findSomeM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findsomem-source-edition-2.md) | 289 | `result-track:e48f585a58d439297d9df931b025e76eb914e78c9a465e98d01295ec5218ffa7` |
| 20 | `theorem` | [monotone_forIn'_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin-loop.md) | 305 | `result-track:2b9468db01fe55bc94f711b32dea1233ee459b7d33d7ded50c6a7a0c078840c0` |
| 21 | `theorem` | [monotone_forIn'](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin-source-edition-4.md) | 324 | `result-track:d47298cf8cb201b997460766fe05aec79af48b5a1f11aa731cce13136d07669f` |
| 22 | `theorem` | [monotone_forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin-source-edition-2.md) | 331 | `result-track:6a5bbcdbde149d1af76b6e0aafc9818b42f43b837f0342e61b3a1bf1d48f51e2` |
| 23 | `theorem` | [monotone_modifyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-modifym.md) | 347 | `result-track:19c019ade067e713df6e88e460e4168553c8c00cde3961f1c99f940255fda3bc` |
| 24 | `theorem` | [monotone_forIn'_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin-loop-source-edition-2.md) | 358 | `result-track:d1e2881dae15f5c32a1d055252f0e119f880849c2f3e84f55d9fed06f720be12` |
| 25 | `theorem` | [monotone_forIn'](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin.md) | 377 | `result-track:0c6a039fa7732a8f36c14f0f26eb6323c0443ff0019bdee181c3c215897b56de` |
| 26 | `theorem` | [monotone_forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-forin-source-edition-3.md) | 385 | `result-track:aa54be1618a79e2791d759ba79f97d6ab925b2ee8a23ea3d8ea9642ec24eb794` |
| 27 | `theorem` | [monotone_foldlM_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldlm-loop.md) | 397 | `result-track:ef9ce0d406062da5ca0bb33a142c7ba1c50904af29f5f54ddab03b57685dc004` |
| 28 | `theorem` | [monotone_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldlm.md) | 418 | `result-track:873ba5ca02976cbbb86068645c0b785089978922d0db91c1e860a1adaf552352` |
| 29 | `theorem` | [monotone_foldrM_fold](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldrm-fold.md) | 425 | `result-track:d57ca2d911cc69bb5f790a31e217b63aa6e816af457de705112083a47242e9fa` |
| 30 | `theorem` | [monotone_foldrM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-foldrm-source-edition-2.md) | 449 | `result-track:a0bd7d3f5a0556d268505dc581b4b029e6e116065519282c97a1bf754948206f` |
| 31 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-mapm.md) | 462 | `result-track:0c44d113f80aa3e3c2eb773fc323f3367a538d29b162695552ba6f591cc033ea` |
| 32 | `theorem` | [monotone_mapFinIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-mapfinidxm.md) | 482 | `result-track:87c99f30e8de93f86ff6baae9db36fb78b23e5afce34a5446a3ac910dd724f38` |
| 33 | `theorem` | [monotone_findSomeM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findsomem.md) | 500 | `result-track:9ccdfb53e7023db2962a48377ab878dd018e26f10a49a677847c25dc13ddd132` |
| 34 | `theorem` | [monotone_findM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findm-source-edition-2.md) | 517 | `result-track:62869a5e4973644ee1fd371924a6069338f6d564a22aa5b55f647019ce0059be` |
| 35 | `theorem` | [monotone_findIdxM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findidxm.md) | 535 | `result-track:84c2bc4fa9a025296c922b0d79bbd51153e43556f470d4c8b5c53ef33f113b83` |
| 36 | `theorem` | [monotone_anyM_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-anym-loop.md) | 553 | `result-track:054b6e0d2d9b2aece9bfaedffa5f8f9a7a25d85bd92d72b1ff37471fcde244a3` |
| 37 | `theorem` | [monotone_anyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-anym.md) | 575 | `result-track:a7bae263b08eac114ae6f532131eb28c8393dc9df949b182614ba230455a05f1` |
| 38 | `theorem` | [monotone_allM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-allm-source-edition-2.md) | 587 | `result-track:d4d881db16f770e3ed71286fff455638d2e9ee745a18855ef57c6f2945d44929` |
| 39 | `theorem` | [monotone_findSomeRevM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findsomerevm.md) | 603 | `result-track:b054f7f8464b15346dd6290b3a4a9de091034b18cce26f6bec97a81044ad95e4` |
| 40 | `theorem` | [monotone_findRevM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-findrevm.md) | 625 | `result-track:e6814e5307544a23cfad9ef349978b1701ef5c17ceac4246ad475b0304da0a93` |
| 41 | `theorem` | [monotone_array_forM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-array-form.md) | 639 | `result-track:93b08caf821c8f2f9c41ced2556f53b98634de9d93dd1077df355ec99f911beb` |
| 42 | `theorem` | [monotone_array_forRevM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-array-forrevm.md) | 649 | `result-track:a5b591f8da220247652f44c980b607cfc849909602daadd91e08ae8ef339ba46` |
| 43 | `theorem` | [monotone_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-flatmapm.md) | 662 | `result-track:9ebeb8f92648037836784dfd62253aa0ce73c8fe5317c39ecd2915456e7000bc` |
| 44 | `theorem` | [monotone_array_filterMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasNamespacedPublicFunctor.lean/declarations/monotone-array-filtermapm.md) | 678 | `result-track:6b41337ca0d14235caa6c3e4a1fc5b4b182dcf165b584bfc8074ca1a06696af6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e48fd9c26759321e43e1f345e65c53bbc0446ca4424c39e5ed91d75c00032b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant676fa7e467028680b42a717ae988244e5d9bc933cdae9c60d9b3068c3d2ddc8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
