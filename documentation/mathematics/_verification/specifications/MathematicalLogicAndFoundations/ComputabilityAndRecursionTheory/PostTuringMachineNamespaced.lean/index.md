# Verification target: Post Turing Machine Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff3c8d98086c1766a674afbe0dba144815751274",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff3c8d98086c1766a674afbe0dba144815751274`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Tape` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Option` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/eval.md) | 84 | `declaration-track:059bceaa6f17293646cf893a3b5c3a7c1f9cf470e31e992f6b833e3cf592ed15` |
| 2 | `def` | [Reaches](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-source-edition-3.md) | 90 | `declaration-track:5b1bc39f4da9acf8f9bfa9cdb624db7aa9279e1875913c08d07b49c057f4717d` |
| 3 | `def` | [Reaches₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches.md) | 96 | `declaration-track:2149fc5a41fd0369d797694bc8b11836a2ba831b98dde93f8ad98d70758e688d` |
| 4 | `theorem` | [reaches₁_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-eq.md) | 99 | `result-track:a05fd71d2d6cac460bb773e8983f70d749f4156fec71ae1f4311bd57132e5e70` |
| 5 | `theorem` | [reaches_total](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-total.md) | 103 | `result-track:b7d2bedcfa02ae00f5a478cf7626910d075c2d70b9df2e3042f820d9fa5a8d26` |
| 6 | `theorem` | [reaches₁_fwd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-fwd.md) | 107 | `result-track:4f423ee3f3efe3e23c688dba35283444aea19f2c23ef6e2a1d3633f86916b8bf` |
| 7 | `def` | [Reaches₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-source-edition-4.md) | 115 | `declaration-track:dcdffdbe8183f1bc7fe0429d18f488b6d04066a6362d707e00fbc439269cd4fe` |
| 8 | `theorem` | [Reaches₀.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-trans.md) | 118 | `result-track:644919381bb800f665911cab4ff8f3c20b791e5c3c156d3658f9407f035efc86` |
| 9 | `theorem` | [Reaches₀.refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-refl.md) | 123 | `result-track:86cd0b637f35b413f7f77a8a25de25845ac1273768dcea7c33d46152f730dc33` |
| 10 | `theorem` | [Reaches₀.single](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-single.md) | 126 | `result-track:da2dfeec5df0cf422f53c2e3c9a18e201b461f772eff4b5e747903fc4e5b6166` |
| 11 | `theorem` | [Reaches₀.head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-head.md) | 129 | `result-track:7554b6adbc0664fa866c98bd1c9dc09efa19d0994f7c919888cc118753ca2257` |
| 12 | `theorem` | [Reaches₀.tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-tail-source-edition-2.md) | 133 | `result-track:954c6ea82b44600735f29eb272be83c671729b2acc006eaaec7dc2f04069b295` |
| 13 | `theorem` | [reaches₀_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-eq-source-edition-2.md) | 137 | `result-track:b9ec20f0520ff7a5d07f0d8034ff1b4f6dc1e9ff365d84626be0ac1a4918c602` |
| 14 | `theorem` | [Reaches₁.to₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-to.md) | 140 | `result-track:63dd228fdef4528747bd1c0674368e2a54519ecb1b80595ee09f6ba1541320b3` |
| 15 | `theorem` | [Reaches.to₀](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-to-source-edition-2.md) | 143 | `result-track:7e488568ac06817bc823fa3c8d5e8c561716889068006f7544d8da97e0735e53` |
| 16 | `theorem` | [Reaches₀.tail'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-tail.md) | 146 | `result-track:7aeda2c6c680d7de43fc980857252e4b1aa1725d4ac0128f1695706c65c99a15` |
| 17 | `def` | [evalInduction](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/evalinduction.md) | 155 | `declaration-track:a7bef868baf84e3ebe0e80ad92d16f671a65340839f2eba86f9b8a38424c3bb8` |
| 18 | `theorem` | [mem_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/mem-eval.md) | 160 | `result-track:88db1af2a92ea0ffc77b4f0404ce163e333443d03085161da1024b4242897034` |
| 19 | `theorem` | [eval_maximal₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/eval-maximal-source-edition-2.md) | 179 | `result-track:7d2f886cda1aec753f3ebb53f5f5e5e02172c84837e4ab057e115ce1f2cf2f43` |
| 20 | `theorem` | [eval_maximal](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/eval-maximal.md) | 185 | `result-track:54faa43868221419f0aaae15086ac721074c2d1a70ef1fbcd93ae6b5b2bf987c` |
| 21 | `theorem` | [reaches_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-eval.md) | 189 | `result-track:7ebc52153419e9c13201467510a06744a2e73d87482c77c94d517adb2ce57cdb` |
| 22 | `def` | [Respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/respects.md) | 202 | `declaration-track:04f34bc296ed8b9d806d2a820d8db51ae12b25059f564800706edd0a453277a8` |
| 23 | `theorem` | [tr_reaches₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-reaches.md) | 207 | `result-track:4156d4f2b429d13a119dcfcedc635b55fdadc0730d194d3e2b3846e62a4cca70` |
| 24 | `theorem` | [tr_reaches](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-reaches-source-edition-2.md) | 220 | `result-track:af610a0e4e38dcde2e9e002849ac3c2f49315ac975a283a00f7fc369f4b6151e` |
| 25 | `theorem` | [tr_reaches_rev](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-reaches-rev.md) | 227 | `result-track:569dea0bc3abed9e5dd8c660a7e12ed33f750193436ccc3af11a0cd1269514de` |
| 26 | `theorem` | [tr_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-eval-source-edition-2.md) | 247 | `result-track:4aeba8f4ca8c8b80634b15340ae51f4d1f3764252b03e0929b088c6aca4c2447` |
| 27 | `theorem` | [tr_eval_rev](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-eval-rev.md) | 254 | `result-track:5814a983083063e51969d59cb1dbad1a1b7ec19520b1d544c7ed2e93daf89b35` |
| 28 | `theorem` | [tr_eval_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-eval-dom.md) | 268 | `result-track:e3e50d334f5747fad53d5d80675fc4e2d68ab303825f518a9cb3e71ba1f740d0` |
| 29 | `def` | [FRespects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/frespects.md) | 278 | `declaration-track:24c60f083e1336c088bafe61404d36d74e48c531c566b35930bda58c062f078e` |
| 30 | `theorem` | [frespects_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/frespects-eq.md) | 282 | `result-track:eb3125384edf59b260c5e2809657031cfc5f2ffaceb690b0295033dc96aa9371` |
| 31 | `theorem` | [fun_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/fun-respects.md) | 287 | `result-track:90303d2a48f56e98f9c737e8031b259eb85e59a0435b50ee9503f20bc57702bb` |
| 32 | `theorem` | [tr_eval'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-eval.md) | 292 | `result-track:3d519ba2d104a9cfa873ff08f404bae43430250cf13023b349573e927bd3b074` |
| 33 | `inductive` | [Stmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmt-source-edition-2.md) | 340 | `declaration-track:7f704dbff7aa943ecbe3403e0c7c67a9b1212bf36dd6c6eb64601d6a6330e15c` |
| 34 | `instance` | [Stmt.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmt-inhabited.md) | 344 | `declaration-track:5b7a1afffe1ad19e3cd390354d0b5f915e297f52f971d99508fd10fcb466d919` |
| 35 | `def` | [Machine](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/machine.md) | 357 | `declaration-track:fb7d8b275f7386dcb5cbaf3a81355e79c2d16823be4c7562c88a541ada639bed` |
| 36 | `instance` | [Machine.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/machine-inhabited.md) | 360 | `declaration-track:d89af68d334e93979f72cd2c020107ac0297ecda19b2075671c60ea77c265e13` |
| 37 | `structure` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/cfg.md) | 368 | `declaration-track:5f92b71b7c0a1487ab65b86539a80776a33c8cc1ff291e2d7c02755d173ae4dd` |
| 38 | `instance` | [Cfg.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/cfg-inhabited-source-edition-2.md) | 380 | `declaration-track:64dcc738e884816a3236a570669b3cc7f98eaa8cdd4dbc2e19c6c1e0512462a7` |
| 39 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/step-source-edition-2.md) | 383 | `declaration-track:a65ec7679d0fa13e8c578b27b773f42af19f983967b711b0fc60d3f4d49487f3` |
| 40 | `def` | [Reaches](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/reaches-source-edition-2.md) | 390 | `declaration-track:2c5b913b67d05e1146e78623cc5fd924500e96517683cee917435a7c55c100a9` |
| 41 | `def` | [init](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/init.md) | 393 | `declaration-track:3280d5182fba873710b06d4fd912b3a3e8eb37645588126e7695e8ad0666b3b5` |
| 42 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/eval-source-edition-2.md) | 397 | `declaration-track:3694dac2e28ee0996a9ccb89c301e042ea2a1281014ace9385d90e7b85289bad` |
| 43 | `def` | [Supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supports.md) | 407 | `declaration-track:c1629f415f76faf2d80f57bec000238a412a5148fa7aa91c84564e01c2d6fa83` |
| 44 | `theorem` | [step_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/step-supports.md) | 410 | `result-track:054236610c2fc8918632d4040e905aeb727ece81b60530447915681305cb03d4` |
| 45 | `theorem` | [univ_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/univ-supports.md) | 418 | `result-track:cfbefc2f4b9c30d99b24411be6b231f4f0df21559998154264374b5fce8fea6d` |
| 46 | `def` | [Stmt.map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmt-map.md) | 432 | `declaration-track:a1a90eff07dd07c57015cbb145808217425aad6c55b7163a1c58ebcde49539cc` |
| 47 | `def` | [Cfg.map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/cfg-map.md) | 438 | `declaration-track:1fc73afcf0dec0f8b18ee8f667c6707d46d275a3ee8c52288aeae828ea104937` |
| 48 | `def` | [Machine.map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/machine-map.md) | 446 | `declaration-track:5e25d9b7b227fbf08eed9bce8911219ab85d9f7ff9f817a7df84e1e35490b243` |
| 49 | `theorem` | [Machine.map_step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/machine-map-step.md) | 449 | `result-track:e687c06e4fa30c22d69cc0c13fe91f6fd6ec72632cd423930a96f0e2c59fe3ee` |
| 50 | `theorem` | [map_init](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/map-init.md) | 462 | `result-track:c6b26c4fa07112290a26a16f508959ba24ca10f0e245ce7ec02a6a75e5f90899` |
| 51 | `theorem` | [Machine.map_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/machine-map-respects.md) | 465 | `result-track:7010fd3aaeff40829be375b37fe634554442af03e671d1e4b61f4b33888a3bbd` |
| 52 | `inductive` | [Stmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmt.md) | 536 | `declaration-track:3d4146617a18f1d17faf8da3a29bd6332b98b1ba35dcd8b836b4d343db90d3e4` |
| 53 | `instance` | [Stmt.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmt-inhabited-source-edition-2.md) | 546 | `declaration-track:da3db987bc7e5dd650862c691b884484ec09359455a25c990412f8043505dee2` |
| 54 | `structure` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/cfg-source-edition-2.md) | 550 | `declaration-track:b6b4cdc20f1c3604edf7b1805d90990f390ce70353c3c0e388cd27362a0d4b66` |
| 55 | `instance` | [Cfg.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/cfg-inhabited.md) | 558 | `declaration-track:02910877a86afba78d0e1ac4137d6e1341357a12b4c184480f7ba29144f8e641` |
| 56 | `def` | [stepAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stepaux.md) | 564 | `declaration-track:5147f25efb5dc43782f53a6f4606930df2d312306583d2e223e9a589a01b6e67` |
| 57 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/step.md) | 573 | `declaration-track:4e46c9b164c3c7b92320e6274f247d47b9f68023a48fc7406626235faef45c06` |
| 58 | `def` | [SupportsStmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supportsstmt.md) | 579 | `declaration-track:b927da5735c0bed96e55b149dc381bfc1002ac259c736624f6d67bf74d56dae1` |
| 59 | `def` | [stmts₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts.md) | 589 | `declaration-track:bc7c3ea42261aa3a4031485eed9fded9162e2b976c36fd6aee3079c223bdb3bc` |
| 60 | `theorem` | [stmts₁_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-self.md) | 596 | `result-track:750cec11d597b3c00150b8fc6641dbdeed3d953090eeb6e0e47187109a0b95ab` |
| 61 | `theorem` | [stmts₁_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-trans.md) | 599 | `result-track:50824e48747561c406c6979bc6883e9be0a997b0171d114eaa71805eed6f16ab` |
| 62 | `theorem` | [stmts₁_supportsStmt_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-supportsstmt-mono.md) | 618 | `result-track:540791c12bc2137f630203d1e06917d1e9b16f1275ef82354039ae4d2145833d` |
| 63 | `def` | [stmts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-source-edition-2.md) | 631 | `declaration-track:ce0486e072e8f190690703ceec1a1c6095a8024b613d92f9133d91e016e57ef5` |
| 64 | `theorem` | [stmts_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-trans-source-edition-2.md) | 634 | `result-track:b42f0a4d7fb2454fa9a99fcff9c26651e87cb12a1f80a027fb94755af4b8f005` |
| 65 | `def` | [Supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supports-source-edition-2.md) | 645 | `declaration-track:fc2b6f9c043d691e973c0560b1765d6568cf61900b7b76e08ab698c5bd11f2fb` |
| 66 | `theorem` | [stmts_supportsStmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stmts-supportsstmt.md) | 648 | `result-track:4bb4c0c3c79576408bc57bccaede0aaa8c22ccb8e8da18d76c6b239a39bfd208` |
| 67 | `theorem` | [step_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/step-supports-source-edition-2.md) | 656 | `result-track:d7198a53921f2037392b47f01f57e890e2bee3a3d574fb1cc21109ecb4395902` |
| 68 | `def` | [init](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/init-source-edition-2.md) | 674 | `declaration-track:694b6e1bd6becbc5f5ff34e8226cdbc30d2626c5ddee1387482371849b3e6d1d` |
| 69 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/eval-source-edition-3.md) | 679 | `declaration-track:f91678d1a5e2e9b36fba2da712dc7d662fd4d101873d7b55d62772b58c60ded9` |
| 70 | `def` | [Λ'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/anonymous-source-edition-3.md) | 720 | `declaration-track:b54adc0eb7f74d3c49f131fc752bfeb8a4ac62e29d1984e01d9c5a0f58f99046` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/instance-source-edition-3.md) | 723 | `declaration-track:f33cfa5375f7074c5cc792c1876da49fd3ee70cc00be4512b5b3d2b4d7873d90` |
| 72 | `def` | [trAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/traux.md) | 732 | `declaration-track:2c7b4d8bdea7b047cb0333f74bd0f9597dae71505b7f254b79b9166a566c81bb` |
| 73 | `def` | [tr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-source-edition-2.md) | 741 | `declaration-track:7fb7ea6c2bb692a8c4ba28c0196a07a023986d3b54509b8637a47755753e7f24` |
| 74 | `def` | [trCfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trcfg.md) | 746 | `declaration-track:19ec39103f4e9ea918d9b0dabce33b8bbb06ad63fc085dc48dfef49b1c71f42d` |
| 75 | `theorem` | [tr_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-respects-source-edition-2.md) | 749 | `result-track:a0c1b04c7600f1469391e439fc6e6a42f964d45c6bd301fcf73ada63d5d8063d` |
| 76 | `theorem` | [tr_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-eval-source-edition-3.md) | 766 | `result-track:4fc1160bdd98dd3a6548ab194932d7cf4cb879ceed3ab7931c7bedf5257fa62f` |
| 77 | `def` | [trStmts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trstmts.md) | 776 | `declaration-track:504e1b3b6d7ae20b73cc11a4499ea4c3347b28f7db9a7328aa9583fd44214b79` |
| 78 | `theorem` | [tr_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-supports.md) | 781 | `result-track:4d99187958ed77ec581126f4c6f998fdd6c79782809cd17592d197ee40bb4f6b` |
| 79 | `theorem` | [exists_enc_dec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/exists-enc-dec.md) | 857 | `result-track:bdb39b74417071aca6226ad0a36a3b8e42fb03f6ba1b5c1b475e63fb898b77cd` |
| 80 | `inductive` | [Λ'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/anonymous.md) | 873 | `declaration-track:4a4de5e0aafdb3de38d543e1dc7172a10e28741ace01eeb515a0dd5251003e2e` |
| 81 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/instance.md) | 879 | `declaration-track:7e13ebaef9e783c5caefe19df7ea3197fbb64505eb874c1a75165c783b857c83` |
| 82 | `def` | [readAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/readaux.md) | 883 | `declaration-track:7882762656539ff85355f666bbda6fd68b1c43582c4e3674a1937a8499e5b939` |
| 83 | `def` | [move](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/move.md) | 892 | `declaration-track:2448a1fc3350e7f8e070e4cac9fc5ad55815503b39af044e6882bf19e94cbac6` |
| 84 | `def` | [read](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/read.md) | 899 | `declaration-track:66666785e737c3ab3e28c6f7ade2bec9f9bf4cf4e367d863a4797a71d29d3bac` |
| 85 | `def` | [write](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/write.md) | 903 | `declaration-track:c0462a0810e5210f7241b613b08994f364d46cc81e1809ce16cdf037977c6889` |
| 86 | `def` | [trNormal](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trnormal.md) | 909 | `declaration-track:adc9cc8e848efdc82f5fd9ea4460f771a941c01a125015b53608fc4332739076` |
| 87 | `theorem` | [stepAux_move](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stepaux-move.md) | 918 | `result-track:71882b0a5ca24d325e170fd60ddcec1bdd76de3d6bca6a4e8f5c58dcba6dd533` |
| 88 | `theorem` | [supportsStmt_move](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supportsstmt-move.md) | 926 | `result-track:b7f135d914077cc7f947b718887ec1c47acb7a3b8c7e83db31a7c9d6590635c9` |
| 89 | `theorem` | [supportsStmt_write](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supportsstmt-write.md) | 931 | `result-track:4b45864c094587f333f736c90e2f8d5b0d3691ec780e5d8823ef59245161fe0d` |
| 90 | `theorem` | [supportsStmt_read](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/supportsstmt-read.md) | 935 | `result-track:9c67b54c998e2b7c8ab8858f7eb5e09c1c87f6c90bdd778691f5d13c3050bfdf` |
| 91 | `def` | [trTape'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trtape-source-edition-2.md) | 955 | `declaration-track:f2e3f6bc61fe238b16477d31f4400a0f1540e5369cb8d8e735aac4bdf35e5dfa` |
| 92 | `def` | [trTape](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trtape.md) | 963 | `declaration-track:d643a60c9a0a067fcfa1a449d51e403bbbb1a60896b139200f8cb69550909383` |
| 93 | `theorem` | [trTape_mk'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trtape-mk.md) | 966 | `result-track:265a5162db7e01a49ab7537847b2331de43cf33a58e54200e0a49f0a556bd2e5` |
| 94 | `def` | [tr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-source-edition-3.md) | 972 | `declaration-track:e370d1846bc56a59a34338fa8679ff46985654a773c9ec104f1d7686b7509b0e` |
| 95 | `def` | [trCfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trcfg-source-edition-3.md) | 977 | `declaration-track:f10c1a5094eb718f5a2bd822b0218ab352d014753ea2f10e9e542980f7c243c2` |
| 96 | `theorem` | [trTape'_move_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trtape-move-left.md) | 982 | `result-track:601f0e7405a4285a955584be6cd22a458403046b5561fb04eebc766bb25929b2` |
| 97 | `theorem` | [trTape'_move_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trtape-move-right.md) | 999 | `result-track:b7e6dfa465004778f391de83a1726d7d38f745f62c58ba43f800037191ad9de9` |
| 98 | `theorem` | [stepAux_write](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stepaux-write.md) | 1010 | `result-track:03bf3703cde43039a86b58f55989301e00a7648fda588a36661ca96ecad4ea53` |
| 99 | `theorem` | [stepAux_read](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/stepaux-read.md) | 1031 | `result-track:1d1a3657fbd4be874b1f30e0f4d16734d6fa6942120902b23bf5811538b86afe` |
| 100 | `theorem` | [tr_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-respects.md) | 1061 | `result-track:90a71392223e9dd39a1c3e3118318fe2d4ac5413cc4ba455805e2ff386e5f610` |
| 101 | `def` | [writes](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/writes.md) | 1109 | `declaration-track:6689504367184176dab30e1e7d0ed817b57ec1b94961bb2e6dfe9419dedcd31a` |
| 102 | `def` | [trSupp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trsupp.md) | 1120 | `declaration-track:7445d81397d3476d77b720bce45db50f640e66019f071ad981d991c56ff749a6` |
| 103 | `theorem` | [tr_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-supports-source-edition-2.md) | 1124 | `result-track:d79e08acb0e9a62aaf7c1bce39085a9156751eabb78d8dceacfc6080bced8c6f` |
| 104 | `inductive` | [Λ'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/anonymous-source-edition-2.md) | 1193 | `declaration-track:5718e52e2badd3137cd343bd51262f867faecf04c30069adf44977d2eb882388` |
| 105 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/instance-source-edition-2.md) | 1199 | `declaration-track:90f588eb452b91156b2e07966249599a330a80359c0a945658748041e370bfe6` |
| 106 | `def` | [tr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr.md) | 1207 | `declaration-track:60d78665484d95b1e6b102eb4d5c875a48facf2b223b22d52fd935547f9edc0f` |
| 107 | `def` | [trCfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/trcfg-source-edition-2.md) | 1217 | `declaration-track:dd15d1cce4c97c0d97ec2e1ace30b158b3ec4aad0d38d0e92019665eafe8bec6` |
| 108 | `theorem` | [tr_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachineNamespaced.lean/declarations/tr-respects-source-edition-3.md) | 1220 | `result-track:a147d5f7ccca30c671ca2c8ed94b2fe4caa0297d8915159dda825e31387da8b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08bcb94500f04035f0e70a6d2d2ecc503eefe678685cd58e7d04ee4b5820730d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
