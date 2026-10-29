# Verification target: Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Measurable.lean/index.md) · [Full source](../../../../RealFunctions/Measurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1991cad6d5de38ffa61622884de5bbed9981ac1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_apply₂](../../../../RealFunctions/Measurable.lean/declarations/measurable-apply.md) | 93 | `result-track:f23ea6f76edcbbe7e768089b28c12e6346f97ecbe499d0f3af64b24893ccfd3d` |
| 2 | `def` | [A](../../../../RealFunctions/Measurable.lean/declarations/a.md) | 112 | `declaration-track:c916a288a9603729ce6c029678b07fa02b3d3766a100b5b05eb751438374cfab` |
| 3 | `def` | [B](../../../../RealFunctions/Measurable.lean/declarations/b.md) | 118 | `declaration-track:46ced2e2a44d4eadd3c6137316d2e53c8b4dc523165ede9e899c50f1104dc0f6` |
| 4 | `def` | [D](../../../../RealFunctions/Measurable.lean/declarations/d.md) | 124 | `declaration-track:a85200fd5ee381d6b5a69f74d02232d9cc7530ff4ac6944dbc65c014687ba869` |
| 5 | `theorem` | [isOpen_A](../../../../RealFunctions/Measurable.lean/declarations/isopen-a.md) | 127 | `result-track:5975f51afa4dda5cbaff1ac2e6cfea203b0e304c666e2f6495a1a9a8cf7f00b4` |
| 6 | `theorem` | [isOpen_B](../../../../RealFunctions/Measurable.lean/declarations/isopen-b.md) | 137 | `result-track:fca074155b26d5d6a0f4cbb45e3c36e702ad2fa72773f0ad527656dee5821748` |
| 7 | `theorem` | [A_mono](../../../../RealFunctions/Measurable.lean/declarations/a-mono-source-edition-2.md) | 140 | `result-track:f30117c02c44646b36cb6fa6c24833dbe4faab0d92feef3034396f1b56eff9a6` |
| 8 | `theorem` | [le_of_mem_A](../../../../RealFunctions/Measurable.lean/declarations/le-of-mem-a.md) | 145 | `result-track:11253ec1cd5957c39e52c0c5bf973e614c8faefebc49b27c2fa7314d473b465d` |
| 9 | `theorem` | [mem_A_of_differentiable](../../../../RealFunctions/Measurable.lean/declarations/mem-a-of-differentiable.md) | 152 | `result-track:10688654a187e5b71ca538b1940059371314a47262d9c9fabaab59ce6e07c2b8` |
| 10 | `theorem` | [norm_sub_le_of_mem_A](../../../../RealFunctions/Measurable.lean/declarations/norm-sub-le-of-mem-a-source-edition-2.md) | 173 | `result-track:e45382ee02756af75feac3c0cfb18e20ed76ad58fad175e8957d553ee851a00d` |
| 11 | `theorem` | [differentiable_set_subset_D](../../../../RealFunctions/Measurable.lean/declarations/differentiable-set-subset-d-source-edition-2.md) | 195 | `result-track:7ced657aeed09dd2653630661832a50a05c84e1fbebcb8110c36ddb6ae8dbfad` |
| 12 | `theorem` | [D_subset_differentiable_set](../../../../RealFunctions/Measurable.lean/declarations/d-subset-differentiable-set-source-edition-2.md) | 210 | `result-track:c371cb6d5de3a6176a618a653bafef8a135ba196c16f9ac317fde94b9559ae26` |
| 13 | `theorem` | [differentiable_set_eq_D](../../../../RealFunctions/Measurable.lean/declarations/differentiable-set-eq-d.md) | 346 | `result-track:70833e0ed87efad30460bc8ff4b44df12081bd43125f930be20fea79507f7146` |
| 14 | `theorem` | [measurableSet_of_differentiableAt_of_isComplete](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiableat-of-iscomplete.md) | 359 | `result-track:bd2a872d17a23ca9b0efb57e1b60904881b0657cddd1a83403435480214c3763` |
| 15 | `theorem` | [measurableSet_of_differentiableAt](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiableat.md) | 372 | `result-track:b65cc41c1c58953104ffbe0704a650c7a8e0b32a6bdd64edd35b06ad6dd60dc5` |
| 16 | `theorem` | [measurable_fderiv](../../../../RealFunctions/Measurable.lean/declarations/measurable-fderiv.md) | 378 | `result-track:a287da270c336c78df6eba532a9f5969848c33010fd375c52a5dd472245e4610` |
| 17 | `theorem` | [measurable_fderiv_apply_const](../../../../RealFunctions/Measurable.lean/declarations/measurable-fderiv-apply-const.md) | 391 | `result-track:d735443565666a60b4d9a31f4d8cb90c9e8a485230cac8713e67c2fb4f307a97` |
| 18 | `theorem` | [measurable_deriv](../../../../RealFunctions/Measurable.lean/declarations/measurable-deriv.md) | 398 | `result-track:77dcc7ee93789f7e42be75aa855dcd2267470df068e9298599e6e53ae5357d3d` |
| 19 | `theorem` | [stronglyMeasurable_deriv](../../../../RealFunctions/Measurable.lean/declarations/stronglymeasurable-deriv.md) | 402 | `result-track:d72d226d21f3999e40f1d6509066216ecc605224ef641b968eddefa158724312` |
| 20 | `theorem` | [aemeasurable_deriv](../../../../RealFunctions/Measurable.lean/declarations/aemeasurable-deriv.md) | 410 | `result-track:fe09bd0f29522227d99d4e3a9edbf31cf99890966b4c047eaa260dd3e8224bbd` |
| 21 | `theorem` | [aestronglyMeasurable_deriv](../../../../RealFunctions/Measurable.lean/declarations/aestronglymeasurable-deriv.md) | 414 | `result-track:c39e7668a678ff644ac273e492be48f513252010a27971ca543fdf9e143a027d` |
| 22 | `def` | [A](../../../../RealFunctions/Measurable.lean/declarations/a-source-edition-2.md) | 431 | `declaration-track:dfc31a23be6d533e047ceedf25acf56eab6ebceb35e9827d7c34da319093d86d` |
| 23 | `def` | [B](../../../../RealFunctions/Measurable.lean/declarations/b-source-edition-2.md) | 438 | `declaration-track:4f30073923bfa016a0b5b5b9f5b43eac5bc8b755cc7e74ae0e86faae3e8b741a` |
| 24 | `def` | [D](../../../../RealFunctions/Measurable.lean/declarations/d-source-edition-2.md) | 444 | `declaration-track:ae760882a3d6aa8d9ae579d1aec63941772dec49db3db0dabd3042d8c4411a33` |
| 25 | `theorem` | [A_mem_nhdsGT](../../../../RealFunctions/Measurable.lean/declarations/a-mem-nhdsgt.md) | 447 | `result-track:cc34be095a4aa6c0802aab531531d54c4b44539a2571f8ee91207bd8b3439a6a` |
| 26 | `theorem` | [B_mem_nhdsGT](../../../../RealFunctions/Measurable.lean/declarations/b-mem-nhdsgt.md) | 459 | `result-track:605d229ef7285de6840809160b6f055bf70c73dbf44df6ca1600836058881d09` |
| 27 | `theorem` | [measurableSet_B](../../../../RealFunctions/Measurable.lean/declarations/measurableset-b.md) | 467 | `result-track:a93fc3bc0d2fee03e89f7f6d1f5dadad4f8391dd088a7318927aad000c5a8552` |
| 28 | `theorem` | [A_mono](../../../../RealFunctions/Measurable.lean/declarations/a-mono.md) | 470 | `result-track:6d8e2545b8c624847d8cddba49c8209aadf7cb6a29ab2ef44f666d56dfb54927` |
| 29 | `theorem` | [le_of_mem_A](../../../../RealFunctions/Measurable.lean/declarations/le-of-mem-a-source-edition-2.md) | 475 | `result-track:c9792b0669e5ee3130e5cd3aaaccd91c4255867c7fddd76177f761214e906da8` |
| 30 | `theorem` | [mem_A_of_differentiable](../../../../RealFunctions/Measurable.lean/declarations/mem-a-of-differentiable-source-edition-2.md) | 482 | `result-track:5935c8103c85e51888f593f3d2fcdd5c6dc5b3f97a0c8a2a7e36d357fc5ba7ea` |
| 31 | `theorem` | [norm_sub_le_of_mem_A](../../../../RealFunctions/Measurable.lean/declarations/norm-sub-le-of-mem-a.md) | 509 | `result-track:49252284d7fb5fce2dc276bd3a5472eb4253124a030e946bf66f54378c4e62f4` |
| 32 | `theorem` | [differentiable_set_subset_D](../../../../RealFunctions/Measurable.lean/declarations/differentiable-set-subset-d.md) | 528 | `result-track:1f2a71f6b9314d5cc3fc6d8040678d14c3792d7b33390cd0dbfbb4354e79a911` |
| 33 | `theorem` | [D_subset_differentiable_set](../../../../RealFunctions/Measurable.lean/declarations/d-subset-differentiable-set.md) | 543 | `result-track:5bcc6e68fac5de2319c455cffc89a53e09613f9f7a7180e0d9b300ec20d01f69` |
| 34 | `theorem` | [differentiable_set_eq_D](../../../../RealFunctions/Measurable.lean/declarations/differentiable-set-eq-d-source-edition-2.md) | 677 | `result-track:cd5191ab6af5a1b51b081476d682d491682a5b24884928418ede5cd143fe70e5` |
| 35 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici_of_isComplete](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiablewithinat-ici-of-iscomplete.md) | 689 | `result-track:eadf71d4c1537ba9cf3bbfe6e64595f7fbf82194d51af376b61f1b3ae54ae538` |
| 36 | `theorem` | [measurableSet_of_differentiableWithinAt_Ici](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiablewithinat-ici.md) | 701 | `result-track:2c54d27a945f19de60acf998bdad8bf9bcc1a269f2d352493d92ffc9fbd7bf35` |
| 37 | `theorem` | [measurable_derivWithin_Ici](../../../../RealFunctions/Measurable.lean/declarations/measurable-derivwithin-ici.md) | 708 | `result-track:170927b9864aaf0e12b24ac54a74f2c60f90b66fad016745f7f92877881b8960` |
| 38 | `theorem` | [stronglyMeasurable_derivWithin_Ici](../../../../RealFunctions/Measurable.lean/declarations/stronglymeasurable-derivwithin-ici.md) | 721 | `result-track:a07614cdf37b730bd3dfcc467f6cbf20a986d06da86069121a339f17a9639bb3` |
| 39 | `theorem` | [aemeasurable_derivWithin_Ici](../../../../RealFunctions/Measurable.lean/declarations/aemeasurable-derivwithin-ici.md) | 741 | `result-track:b33dcdd249eb81c9c52af39d1069a5b26241cbca768da5fb9cdc3ad3762e3679` |
| 40 | `theorem` | [aestronglyMeasurable_derivWithin_Ici](../../../../RealFunctions/Measurable.lean/declarations/aestronglymeasurable-derivwithin-ici.md) | 745 | `result-track:09f9a99217015917f82a704de10b6fb9837fc22396cfcd107a0e925fd9d7b6b4` |
| 41 | `theorem` | [measurableSet_of_differentiableWithinAt_Ioi](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiablewithinat-ioi.md) | 751 | `result-track:049be5991c40fe03e02920a6ea6da27aa76c04114baba70eff6a4f4edfb71dad` |
| 42 | `theorem` | [measurable_derivWithin_Ioi](../../../../RealFunctions/Measurable.lean/declarations/measurable-derivwithin-ioi.md) | 756 | `result-track:27265355a4f0ff21b153611a6d3240cf94c60a6c36cbad1065345a6d8084752e` |
| 43 | `theorem` | [stronglyMeasurable_derivWithin_Ioi](../../../../RealFunctions/Measurable.lean/declarations/stronglymeasurable-derivwithin-ioi.md) | 760 | `result-track:39ac8cd1ddde6a1a1e76813bf4c17673fe1182d8611798524bd4a664963b993e` |
| 44 | `theorem` | [aemeasurable_derivWithin_Ioi](../../../../RealFunctions/Measurable.lean/declarations/aemeasurable-derivwithin-ioi.md) | 764 | `result-track:ccd8024a2ea5a6ceb942f8034f3fd5997f6ccde40a7e289ea4da405c717565dc` |
| 45 | `theorem` | [aestronglyMeasurable_derivWithin_Ioi](../../../../RealFunctions/Measurable.lean/declarations/aestronglymeasurable-derivwithin-ioi.md) | 768 | `result-track:27a9ca1ec03f33e50462f128122a595d9b0ec013a8ec189dd8459a5f4b151094` |
| 46 | `lemma` | [isOpen_A_with_param](../../../../RealFunctions/Measurable.lean/declarations/isopen-a-with-param.md) | 793 | `result-track:f783d2df67c573b476e54db660b716ad8d105194ef938c9b144b79fa4960fdee` |
| 47 | `lemma` | [isOpen_B_with_param](../../../../RealFunctions/Measurable.lean/declarations/isopen-b-with-param.md) | 859 | `result-track:61103485a8d829e05b627d80b52e5b3dde075bb4da1062eb47030dfd0dd51ef1` |
| 48 | `theorem` | [measurableSet_of_differentiableAt_of_isComplete_with_param](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiableat-of-iscomplete-with-param.md) | 873 | `result-track:afdbdc21f7efabbe4aabe6e5bb9fc2754f6a53f7a2c3807dc36022733a793ad9` |
| 49 | `theorem` | [measurableSet_of_differentiableAt_with_param](../../../../RealFunctions/Measurable.lean/declarations/measurableset-of-differentiableat-with-param.md) | 895 | `result-track:69bb9ea1f614ad727660d1d9fb6c60975653072990a7ba224c88a4c43241276b` |
| 50 | `theorem` | [measurable_fderiv_with_param](../../../../RealFunctions/Measurable.lean/declarations/measurable-fderiv-with-param.md) | 901 | `result-track:30439ca82aa968ae11c06c593b6226b7993d7f2f5de28c3d172fa3f7486ae838` |
| 51 | `theorem` | [measurable_fderiv_apply_const_with_param](../../../../RealFunctions/Measurable.lean/declarations/measurable-fderiv-apply-const-with-param.md) | 914 | `result-track:23f14dcdec19d510db88ef01439148c04d6b1532d49a3afa999c48267e7e06e4` |
| 52 | `theorem` | [measurable_deriv_with_param](../../../../RealFunctions/Measurable.lean/declarations/measurable-deriv-with-param.md) | 921 | `result-track:74d7d08347fdf9c7061aef4b03a3d66c780b116420140f0b6fe154c0afaeeff8` |
| 53 | `theorem` | [stronglyMeasurable_deriv_with_param](../../../../RealFunctions/Measurable.lean/declarations/stronglymeasurable-deriv-with-param.md) | 927 | `result-track:808990d29d0e81e0a7f231b887fefadad9aaab2f021cda88ebd95b6d4113919a` |
| 54 | `theorem` | [aemeasurable_deriv_with_param](../../../../RealFunctions/Measurable.lean/declarations/aemeasurable-deriv-with-param.md) | 948 | `result-track:d970782f7c47b4e58f4569b09f54803ad1c58d71e45cea6a996fc854213f601e` |
| 55 | `theorem` | [aestronglyMeasurable_deriv_with_param](../../../../RealFunctions/Measurable.lean/declarations/aestronglymeasurable-deriv-with-param.md) | 954 | `result-track:eaf115b3db625ff759d773b075c34d5a375ee27d0a703e29835164d68ca58cec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa412ff3cb53ee74c32a3c36c4bd93e9b93a245d2c82b0ea8c87667814b4e5a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
