# Verification target: Height Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HeightBasicPublic.lean/index.md) · [Full source](../../../../NumberTheory/HeightBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509d6cc988e2f107bedb7dd54dee013acf099c31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FiniteSupport.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AdmissibleAbsValues](../../../../NumberTheory/HeightBasicPublic.lean/declarations/admissibleabsvalues.md) | 78 | `declaration-track:54cf30c53d9f9f87a01b78e3906773a4ec31d3172fff7d2513b0048e9e7f3fd6` |
| 2 | `def` | [totalWeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/totalweight.md) | 102 | `declaration-track:eee7e753be091c21d210f574e16397795e6714bd76e3dfe98ba380d18b8da245` |
| 3 | `def` | [mulHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-source-edition-2.md) | 114 | `declaration-track:ea345dbd0f61641dfaecb4e5c485a2ec0fa2c04ce0adc9d8b9e93319d94dff13` |
| 4 | `lemma` | [mulHeight₁_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-eq-source-edition-2.md) | 117 | `result-track:a2ecf947b2d88b44278bb7808b800626fc9e855230c45723f79726edd2686f42` |
| 5 | `lemma` | [mulHeight₁_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-zero.md) | 123 | `result-track:175d9dcb60fcb5f96f0d0bf9d5bd88f53fd3b28a4c310be755d0d2dce595bf46` |
| 6 | `lemma` | [mulHeight₁_one](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-one-source-edition-2.md) | 127 | `result-track:7b212fc95ae690d1dfd01d894efaff4cf04d0abe7aca4391abed9fb33c133892` |
| 7 | `lemma` | [one_le_mulHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/one-le-mulheight.md) | 131 | `result-track:0c2f920fd6c32a499ea05e0442d435380174c0a560aa427d4beb27904aad4ac1` |
| 8 | `lemma` | [mulHeight₁_pos](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-pos-source-edition-2.md) | 136 | `result-track:574d0b2433144e8401561f038b017710579b8c964bfc15bf531b4b824a19acf0` |
| 9 | `lemma` | [mulHeight₁_ne_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-ne-zero-source-edition-2.md) | 140 | `result-track:7d8c1027b6df4da57f32e71f4ea2ef8e0d12e42351dc4bfb3c1bd86ab7755148` |
| 10 | `lemma` | [mulHeight₁_nonneg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-nonneg.md) | 143 | `result-track:f13945800ee02989ae8b030870136c2e0df24f06192ac3a6d4d09e55482cf668` |
| 11 | `def` | [logHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight.md) | 147 | `declaration-track:2feff608495e956665bc54a008102b129eee044330bee48bea78e60fd63dcf58` |
| 12 | `lemma` | [logHeight₁_eq_log_mulHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq-log-mulheight.md) | 149 | `result-track:77e4297a59ce696c90d87ddef900504a49bbba18e554e3ad4dc4b15a744cf390` |
| 13 | `lemma` | [logHeight₁_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-zero.md) | 152 | `result-track:a1ac1de7cf19030696954996c25f2913155cc966825b25bb04221764702a9cb1` |
| 14 | `lemma` | [logHeight₁_one](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-one.md) | 156 | `result-track:1c1dd0bd8c36eadd9f8106ebe860e31a8aa4fdad3653e4ed317c823968b5275b` |
| 15 | `lemma` | [zero_le_logHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/zero-le-logheight.md) | 159 | `result-track:98ad72ede83e3cfda8aac0225baf95a96a0efa3031f85a53636afb5ce3910eed` |
| 16 | `lemma` | [logHeight₁_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq.md) | 164 | `result-track:8a2971c194d74144a36a84181a40118bf8a1d04ec900009a7c155827d305b577` |
| 17 | `def` | [evalMulHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/evalmulheight.md) | 191 | `declaration-track:0b3817b6091e102c9571e93dd1cc28849ebf4d3bd03a4511b86fa3cd700bb737` |
| 18 | `def` | [evalLogHeight₁](../../../../NumberTheory/HeightBasicPublic.lean/declarations/evallogheight.md) | 201 | `declaration-track:f61415e335c5af50aa9b988b50078d7bb22f6e05daca189ab86f9dd00be2e053` |
| 19 | `def` | [mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight.md) | 233 | `declaration-track:52b7ab1451ece3acf573c459ce4bdd0da28db2e8198f9060310d54e097bde6d6` |
| 20 | `lemma` | [mulHeight_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-eq.md) | 238 | `result-track:4d26cc677b90dbda7645833b241cabed25c05b0b0c5d12a77f7d3a40b9b18631` |
| 21 | `lemma` | [mulHeight_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-zero-source-edition-2.md) | 244 | `result-track:90c8ba5d5fa3e01e30688998eb77b40f8f5b452b8977fd9463777d77b16a2482` |
| 22 | `lemma` | [mulHeight_one](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-one.md) | 248 | `result-track:5420cb3215dfd687d53208f5bb54de3005db7c9a4bfee5c269388f7c0e91becf` |
| 23 | `lemma` | [mulHeight_comp_equiv](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-comp-equiv.md) | 256 | `result-track:93c43d808c4c5c9e4f7a3082fd486712b5a921144a89be5e44ed93547b2b4d09` |
| 24 | `lemma` | [mulHeight_swap](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-swap.md) | 266 | `result-track:9c95bcab4422519dd10ebaaf66a822cd3a8991414ad35e4d06d5c8d662387d46` |
| 25 | `def` | [logHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-source-edition-2.md) | 272 | `declaration-track:b78f5b1ecdbabeba14cec7cc938fe849a6537aa4e107f3556596675eced0568d` |
| 26 | `lemma` | [logHeight_eq_log_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq-log-mulheight-source-edition-2.md) | 274 | `result-track:dc4b381da9059a0f5e93aabb55205f1be618f373af469989f1b3d0a6bd829a28` |
| 27 | `lemma` | [logHeight_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-zero-source-edition-2.md) | 277 | `result-track:db1ac67b85a4241585ffac44a7ecc9bf104f4a552b8913c569ac1d7d39328342` |
| 28 | `lemma` | [logHeight_one](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-one-source-edition-2.md) | 281 | `result-track:2f1aaf3f84d4a16567451acd1a89b0527fc5da655c27a3ebc16961bb7450f367` |
| 29 | `lemma` | [logHeight_comp_equiv](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-comp-equiv.md) | 284 | `result-track:4c74951e4c6ee7e4909eb7e420b7d70d629e14a32493925c693910054a0a7681` |
| 30 | `lemma` | [logHeight_swap](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-swap.md) | 288 | `result-track:6d1d18b4242ae2695a0670cb3fcce9b72c4b210b397a0cc7230ccbe2cde884b5` |
| 31 | `def` | [_root_.Finsupp.mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/root-finsupp-mulheight.md) | 294 | `declaration-track:b96d4e005a662c100c77d58a1a5366d354440f54f8a50eeeff02863a7912527f` |
| 32 | `def` | [_root_.Finsupp.logHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/root-finsupp-logheight.md) | 298 | `declaration-track:ac7da925f5b68eb9c8082314bba07a29e3f66fa24f12d8b349d4784be6c6719b` |
| 33 | `lemma` | [_root_.Finsupp.logHeight_eq_log_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/root-finsupp-logheight-eq-log-mulheight.md) | 300 | `result-track:fe127c172310db9811137ef3163538d80f6ceb44f73764330d83f1334c92cafb` |
| 34 | `lemma` | [max_eq_iSup](../../../../NumberTheory/HeightBasicPublic.lean/declarations/max-eq-isup.md) | 307 | `result-track:f9c4c4902c0c938ce7ebebd0f5c1cb366b3bb96444911fe5a0f39f71b7f7ee0e` |
| 35 | `lemma` | [hasFiniteMulSupport_iSup_nonarchAbsVal](../../../../NumberTheory/HeightBasicPublic.lean/declarations/hasfinitemulsupport-isup-nonarchabsval.md) | 314 | `result-track:8ba5c93d997d5e33e9053d9a320de17b21a7904541662edec8f69591dbad9b97` |
| 36 | `lemma` | [hasFiniteMulSupport_max_nonarchAbsVal](../../../../NumberTheory/HeightBasicPublic.lean/declarations/hasfinitemulsupport-max-nonarchabsval.md) | 329 | `result-track:bd41ef9caa61af8bee3e4d30bfbf6cefa2cd736ee8129b5c105a7b7f5e9775e4` |
| 37 | `lemma` | [mulHeight_smul_eq_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-smul-eq-mulheight.md) | 336 | `result-track:7832aef3e1338e2bceba562c30b42320f7dfaa239d787666798f6b7eda6c741f` |
| 38 | `lemma` | [one_le_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/one-le-mulheight-source-edition-2.md) | 347 | `result-track:2abc4ae73608dfcd01659eb0cafe24d72032c2d27dca69b929ccd7ea03d6ad57` |
| 39 | `lemma` | [mulHeight_pos](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-pos.md) | 359 | `result-track:171e75436cf577f7aebea14b0218f89a108b49f0839ad9803fd51270ce3b2c2b` |
| 40 | `lemma` | [mulHeight_ne_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-ne-zero.md) | 362 | `result-track:7b49b0d5e8f2c9dad865668f0db9baba8661f6683c0f24e0a70609453a6b6893` |
| 41 | `lemma` | [logHeight_nonneg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-nonneg.md) | 365 | `result-track:e60c7acbca7ca6f56c29d58e4f859fb21b17bb50654cd23ffd61d80a6046f897` |
| 42 | `lemma` | [mulHeight_comp_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-comp-le.md) | 369 | `result-track:a30c30c863bda1d7d9659c4040772649862b1f669c6781e3e69e3567bb3bdf12` |
| 43 | `lemma` | [logHeight_comp_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-comp-le.md) | 389 | `result-track:410bd3585b9c4031d85fbfcf26d32389d80ae969b5ba6ecec297dbe1fbb2259e` |
| 44 | `lemma` | [mulHeight_sumElim_zero_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-sumelim-zero-eq.md) | 394 | `result-track:4ec7eb7ba5393da96be88a17cb83aa342b1988b307ab9e9de95e018788d327ef` |
| 45 | `lemma` | [logHeight_sumElim_zero_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-sumelim-zero-eq.md) | 412 | `result-track:cc95852bfa38bfbb9ab2de22f15b70f7f12fed295c30fe2317984126359b3603` |
| 46 | `lemma` | [mulHeight_eq_mulHeight_restrict_support](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-eq-mulheight-restrict-support.md) | 416 | `result-track:91c871841ec6d00bfca5022840eef844203abf5757a428cbf72b9e14c055dd87` |
| 47 | `lemma` | [logHeight_eq_logHeight_restrict_support](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq-logheight-restrict-support.md) | 429 | `result-track:dfa0af90ec9cf4b7af9fa6b2ec8408a53e942939fdbc119f5df0fe9d2b6fd892` |
| 48 | `lemma` | [mulHeight_eq_one_of_subsingleton](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-eq-one-of-subsingleton.md) | 434 | `result-track:c7afbae256140936420b58eb8671acd5b50144a135ad41c5be2aa33acc3ed2df` |
| 49 | `lemma` | [logHeight_eq_zero_of_subsingleton](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq-zero-of-subsingleton.md) | 446 | `result-track:82d0f72a7250dee20924a376901d049cc356c8b7c1c4d11150a23a5cb6b7ca3f` |
| 50 | `lemma` | [mulHeight_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-cons-zero.md) | 464 | `result-track:4316c625dc83c396ac0ccf3760bb62b8fac96723758e54732ef75d5661c2e83a` |
| 51 | `lemma` | [logHeight_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-cons-zero.md) | 475 | `result-track:808a4297600eaca659be223cb33a047e4f741b1fa6a6dd63bfd406db4d12b316` |
| 52 | `lemma` | [mulHeight_cons_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-cons-cons-zero.md) | 479 | `result-track:69d5bd81ff4278e5d54232142fe1b1f1c4939887131941f75e6846162a39e378` |
| 53 | `lemma` | [logHeight_cons_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-cons-cons-zero.md) | 484 | `result-track:9677783dbfc78e90942fce93d09fb54357dfdcb2fb75c42b1aecd0530528b099` |
| 54 | `lemma` | [mulHeight_cons_cons_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-cons-cons-cons-zero.md) | 488 | `result-track:b691c841c93f12ab4210b6eb34c8901aef0e9c54642af35014835bae37174f4a` |
| 55 | `lemma` | [logHeight_cons_cons_cons_zero](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-cons-cons-cons-zero.md) | 494 | `result-track:96467ba8ae297e527d2a03271e29e177d6594632a27ef2e14f1e0a8e05011c6b` |
| 56 | `def` | [evalMulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/evalmulheight-source-edition-2.md) | 512 | `declaration-track:4b988ab250419615a03fc4cc7d112b9cb8bef3945b9e3fa3c0dad32bc40fca78` |
| 57 | `def` | [evalLogHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/evallogheight-source-edition-2.md) | 526 | `declaration-track:f76dd6114687e01091c29c48e196e6350e0376ceb4d63646de0c4eaeaa80ad19` |
| 58 | `lemma` | [logHeight_smul_eq_logHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-smul-eq-logheight.md) | 551 | `result-track:48ef0e84a88c3e76fbb6ee5e9422b89074f68269aa977fd9f90e1d7c2d30e05a` |
| 59 | `lemma` | [mulHeight₁_eq_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-eq-mulheight.md) | 555 | `result-track:6925951c84ec0cb10e031d65087276639687af37dd517c0d3653f8ee677625f9` |
| 60 | `lemma` | [logHeight₁_eq_logHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-eq-logheight.md) | 562 | `result-track:dad70a8774aab8015aabdfd860aad74a17171f839ebce1fe4c71659b9c547978` |
| 61 | `lemma` | [mulHeight₁_div_eq_mulHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-div-eq-mulheight.md) | 565 | `result-track:ae46cb26c9a9bec80d917a57361028e0b1c62d7cf848ddd173ac437116b5f73a` |
| 62 | `lemma` | [logHeight₁_div_eq_logHeight](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-div-eq-logheight.md) | 572 | `result-track:91f11ef30ed78ff9afa2d2ba2105ecec78d7f627d32a59b9e29ffcb098c2ecc6` |
| 63 | `lemma` | [mulHeight_pow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-pow.md) | 578 | `result-track:5c0c1970bd57eea44203fd02b31fd8ab1e194eb6931aa7f155e4b08332b3924c` |
| 64 | `lemma` | [logHeight_pow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-pow.md) | 595 | `result-track:1b7e4b9bee28c068ceba33a336066fe232265e556bfb625b8709980869fd53c6` |
| 65 | `lemma` | [mulHeight₁_inv](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-inv.md) | 600 | `result-track:c6b770c9cf4f49100ab52d6939c9dbc7ed849b07e7a346fe9d74a01b05461f89` |
| 66 | `lemma` | [logHeight₁_inv](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-inv.md) | 609 | `result-track:0e478117ad758477cfbbe0489e22802a2848bd6ad46a5a8f9cfce5c2d3cee682` |
| 67 | `lemma` | [mulHeight₁_pow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-pow-source-edition-2.md) | 614 | `result-track:6dcc3c8b8fd2cfb4053680c19158e02b543314aeb91b5f1326d5e031f9274473` |
| 68 | `lemma` | [logHeight₁_pow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-pow-source-edition-2.md) | 622 | `result-track:3b607c189050b6f650b05fd69a0df10406cf5533f262c9181046334de1af3e6b` |
| 69 | `lemma` | [mulHeight₁_zpow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-zpow.md) | 627 | `result-track:50e350be519eddf69c9c48988e47af8e1f6ca25c084da56750c5e1d627c38ca4` |
| 70 | `lemma` | [logHeight₁_zpow](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-zpow.md) | 636 | `result-track:beeef0cc08128726dbb723d3ae7105935353640ab3f6ffe615e981b50276302d` |
| 71 | `lemma` | [mulHeight_fun_prod_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-fun-prod-eq.md) | 666 | `result-track:90391fc86cd8c2ed0f5263a6983ae62e78a82f2241738b0acd50a76c6a127bfe` |
| 72 | `lemma` | [logHeight_fun_prod_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-fun-prod-eq.md) | 683 | `result-track:61d43e2846be32b4ef0a2b8d133d40d69ec3e5985829c09355fcbc552fefdcc6` |
| 73 | `lemma` | [mulHeight_fun_mul_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-fun-mul-eq.md) | 703 | `result-track:d155738e27dcb2b31490bd90e59c3fd2fd08456ec3d874d431c61f0e16c16e4e` |
| 74 | `lemma` | [logHeight_fun_mul_eq](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-fun-mul-eq.md) | 719 | `result-track:174e5431ea7f97c3d09956322b5d97d0c3fab2b8b77437b9ed67728167370f41` |
| 75 | `lemma` | [mulHeight_neg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-neg-source-edition-2.md) | 736 | `result-track:e6bf4354448ba00cd945d48f5500ac4871a7c717a50cfc0b5aec9ef0fe951a00` |
| 76 | `lemma` | [logHeight_neg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-neg-source-edition-2.md) | 744 | `result-track:74c2f4474028fa47420587bb720f441646499069836e7a529f4edc34900c9a2c` |
| 77 | `lemma` | [mulHeight_mul_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-mul-le-source-edition-2.md) | 753 | `result-track:7723d42c6426dba1f56cae682adf09c8e80f543ee6c91566710b0ef1ca3fba2d` |
| 78 | `lemma` | [logHeight_mul_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-mul-le.md) | 767 | `result-track:2ffbfa79658f81a444acfef6821520caf4c0121a26d119a6dc86ffe195673ed3` |
| 79 | `lemma` | [mulHeight₁_mul_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-mul-le.md) | 776 | `result-track:65b4441899459ff66ea29da020face519f99d8e776ab3574fabc233dda37e148` |
| 80 | `lemma` | [logHeight₁_mul_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-mul-le-source-edition-2.md) | 784 | `result-track:7d034b2a63d67e52f6ab34fde128b97aa14077edc33495e5d7645bf6aab0bd0e` |
| 81 | `lemma` | [mulHeight₁_prod_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-prod-le.md) | 791 | `result-track:02567a314896070c47f0404d6fdcf82f5e9631f83cfd236a71132a34fa136d12` |
| 82 | `lemma` | [logHeight₁_prod_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-prod-le.md) | 804 | `result-track:9725b568379bdd5fe015c61f18ac6847edae1d5dbe2f147a1963ec0b2e7233fc` |
| 83 | `lemma` | [max_abv_sum_one_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/max-abv-sum-one-le.md) | 825 | `result-track:43ada747337130cad1af9d2a272c7c0702fada986f3f9a2e9f9e987456cb9e45` |
| 84 | `lemma` | [max_abv_sum_one_le_of_isNonarchimedean](../../../../NumberTheory/HeightBasicPublic.lean/declarations/max-abv-sum-one-le-of-isnonarchimedean.md) | 840 | `result-track:26c155b28cf5e9c982c8e884c8c36fd841f2f63264ddb407b68952e0108d85ab` |
| 85 | `lemma` | [mulHeight₁_sum_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-sum-le.md) | 861 | `result-track:0a73c11905edeea56726682ce2b7d4dc6fbc5c9f8f37d72301033045983aa414` |
| 86 | `lemma` | [logHeight₁_sum_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-sum-le.md) | 881 | `result-track:541a93b64f482ef05da75096e86b5cf75b0542f576078fc3939332aabd8d79b3` |
| 87 | `lemma` | [mulHeight₁_neg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-neg.md) | 893 | `result-track:93ebb0bc508e9631646fe84aa3fe4e46e2d4b0a979ab0677a152ab383de090f3` |
| 88 | `lemma` | [logHeight₁_neg](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-neg.md) | 898 | `result-track:02a65721dd5ad88fd0172db9f21dbf1a4bed1ea01c717b15a0cc3c4ecdea3bc0` |
| 89 | `lemma` | [mulHeight₁_add_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-add-le.md) | 903 | `result-track:be80d1b892755ff85c6b8fe8d59fd8dfcff3af2d14fd1c2597169bffabc727d1` |
| 90 | `lemma` | [logHeight₁_add_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-add-le.md) | 911 | `result-track:7cf070cf96180e142b0fa57bf7a00ab6976ed5dd8f02c9615aa80da7d1e748ed` |
| 91 | `lemma` | [mulHeight₁_sub_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/mulheight-sub-le.md) | 919 | `result-track:8a53388ec61944c61310d305df803546c0a506218ad32db65e4196e65502ce60` |
| 92 | `lemma` | [logHeight₁_sub_le](../../../../NumberTheory/HeightBasicPublic.lean/declarations/logheight-sub-le.md) | 926 | `result-track:4d2760430fe05e99309fdb4dd791fc78008447d6fe4417423bc232557e0e455e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6b9bc724dd5d3b4d2a97469187e0cc6a472d9bb19b4895bd8e3fc07a4c0648c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
