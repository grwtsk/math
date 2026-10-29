# Verification target: Matrix Normed Normed Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/seminormedaddcommgroup.md) | 87 | `declaration-track:881c19d1360488c79fb4c1bfea7b0caa45fc4f493da4d68c6da2a1c112cc7d04` |
| 2 | `theorem` | [norm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-def.md) | 92 | `result-track:a64e814087333cda330defbb51cd7ea0abe1e9d40d2f4f6f0e24f7d339a75597` |
| 3 | `lemma` | [norm_eq_sup_sup_nnnorm](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-eq-sup-sup-nnnorm.md) | 95 | `result-track:d18b338503a4ec6b7acdd9aedaf8d00821f82e22eb31b195616eab4ab049e35b` |
| 4 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-def.md) | 99 | `result-track:2963ab95d2014f8fb79c81f7bce6ea7cae706192cbce1f7f4d80697679456644` |
| 5 | `theorem` | [norm_le_iff](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-le-iff.md) | 101 | `result-track:bd19b6f2f9f18193f36c07a892abc6048a387709f67f4ee7802321b5aee96fc5` |
| 6 | `theorem` | [nnnorm_le_iff](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-le-iff.md) | 104 | `result-track:ca5330f40cf56d6f6987aa15af7f05cb142b62a0b923e73b6d12895e7bd81e48` |
| 7 | `theorem` | [norm_lt_iff](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-lt-iff.md) | 107 | `result-track:88b2066e8f625f6e2b5e2f74d4b884c4ea731b4db3c3a3ecf829e9d041bd21bb` |
| 8 | `theorem` | [nnnorm_lt_iff](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-lt-iff.md) | 110 | `result-track:20c1f0b60f53545ff8aee2b8b1b4cf662c72388b51a355eccaf8653cc6204fd4` |
| 9 | `theorem` | [norm_entry_le_entrywise_sup_norm](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-entry-le-entrywise-sup-norm.md) | 114 | `result-track:6b19c57ffcdfa0bb13fc45a0119134c65c3e9cdfc5cb387e0108a8190f38224d` |
| 10 | `theorem` | [nnnorm_entry_le_entrywise_sup_nnnorm](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-entry-le-entrywise-sup-nnnorm.md) | 117 | `result-track:a7dea897a79f2e025ce728e451a9f19115afa05570185b3ceead9660a3d4e5ca` |
| 11 | `theorem` | [nnnorm_map_eq](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-map-eq.md) | 121 | `result-track:48743257694b90200567df91ea4ba943f14604917d151fceb9f3de838ecb711d` |
| 12 | `theorem` | [norm_map_eq](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-map-eq.md) | 126 | `result-track:7d023edd8120863810063c685353aa507e20b12f2c4781492eab2fda8c7a0337` |
| 13 | `theorem` | [nnnorm_transpose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-transpose.md) | 130 | `result-track:141ee021c3cc3517652bb063e2ec86bd6f5f966493b6b562775c764f9a4587d8` |
| 14 | `theorem` | [norm_transpose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-transpose.md) | 134 | `result-track:5e60825c69efca8534ee4ed86b6c327229cf5c96cd85c9cdae9e14866f19bb15` |
| 15 | `theorem` | [nnnorm_conjTranspose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-conjtranspose.md) | 138 | `result-track:f8a16ed51a4262e5c0f03715cf832f982dc61a88734683cacf0ddfe14ff05363` |
| 16 | `theorem` | [norm_conjTranspose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-conjtranspose.md) | 143 | `result-track:2b14d57a347977de04a20173b3a744398a14a275ec982f0296e51893a42290b7` |
| 17 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/instance.md) | 146 | `declaration-track:0922a6b1e6fb18b9ddde801ed9be9afa975b8b7b37a7265d7c6d63158e48038f` |
| 18 | `theorem` | [nnnorm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-replicatecol.md) | 150 | `result-track:a3c8e79c117bb32d4425881079992ea1b3a6ac62d8d6dc3acfc1f03fc112e610` |
| 19 | `theorem` | [norm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-replicatecol.md) | 154 | `result-track:0c7dea33e50d293f0a97bfa451cf62937412f67fe6de3dc1c934e2b9ef94232b` |
| 20 | `theorem` | [nnnorm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-replicaterow.md) | 158 | `result-track:979b94c39d5cf707a7081a9152430135a240b721e7ba39e5d3ac9471f7104315` |
| 21 | `theorem` | [norm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-replicaterow.md) | 162 | `result-track:20503d7e0950d079e57e95ad7d40f0f1ce04e26a4528564158a1e191b6ca9974` |
| 22 | `theorem` | [nnnorm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/nnnorm-diagonal.md) | 166 | `result-track:3571ecc07ddf463825f5e91c253dd6993e6c7081eb3101f191af739001dd43fb` |
| 23 | `theorem` | [norm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-diagonal.md) | 177 | `result-track:e38d642ce8dc71a7b1e464899ac3695680bdf5b1411ea63e57a78d80dde550de` |
| 24 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 181 | `declaration-track:3c3054b35a0344e1948f404c969f24d1bf6fc2841882cd3a3c112704fd29b56d` |
| 25 | `def` | [normedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/normedaddcommgroup.md) | 190 | `declaration-track:0d9c2f062212b1e815e52535254b3fefac597368987b5d7d8f209d2a884be693` |
| 26 | `theorem` | [isBoundedSMul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/isboundedsmul.md) | 198 | `result-track:f3fb74a43b707960d4d1bccc5926a6fd9e113cc79c52eba475b86de987717c08` |
| 27 | `theorem` | [normSMulClass](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/normsmulclass.md) | 203 | `result-track:50fcf0f64ad36ed81863ef73259b3e71a1a73bf475e9ab8024e98d1a3a7c05eb` |
| 28 | `def` | [normedSpace](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/normedspace.md) | 213 | `declaration-track:53553ddfb391dff8f8405c3c829688b743056e29bd79a84d1b22bf2a77bbecc7` |
| 29 | `def` | [linftyOpSeminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopseminormedaddcommgroup.md) | 246 | `declaration-track:6b2ffb4515708e7d45c36df1247ab1889260baef385e5140d5b1f6ca341afcbb` |
| 30 | `def` | [linftyOpNormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnormedaddcommgroup.md) | 255 | `declaration-track:a2afa5cc22b94f4f7a1b39884e42737c904b71290e8e3de4f483c602d6e7c177` |
| 31 | `theorem` | [linftyOpIsBoundedSMul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopisboundedsmul.md) | 262 | `result-track:29d549b3bc80affd91cbbe359a1d118aa14c140d28d711b16e74a0ac471496a1` |
| 32 | `theorem` | [linftyOpNormSMulClass](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnormsmulclass.md) | 271 | `result-track:7bec1a6a757023dbfa6262045ee624c1554b139a88c0babe5d69396c8bb80980` |
| 33 | `def` | [linftyOpNormedSpace](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnormedspace.md) | 282 | `declaration-track:6539983d3e2af1a70e4f7f3336863e46f937e980875babbf6757469e25b8e295` |
| 34 | `theorem` | [linfty_opNorm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-def.md) | 292 | `result-track:5953a7ef051b2bf550ef3041cf8b51739c48eb0c4c0a1a54a5b61f45613e7f09` |
| 35 | `theorem` | [linfty_opNNNorm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-def.md) | 297 | `result-track:31c87916ddc5240ee96892d3142d16d5904b2fc7e477908046a3092b4c776bfb` |
| 36 | `theorem` | [linfty_opNNNorm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-replicatecol.md) | 302 | `result-track:8e880fd45e2feda84b2734903e34a9e1a5d72a42b645f2f8d35890a121f9cb25` |
| 37 | `theorem` | [linfty_opNorm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-replicatecol.md) | 307 | `result-track:8c0848089744d7ca0cc61f488af37e70733f59cd9078a7249ef3bfb4ca55cb09` |
| 38 | `theorem` | [linfty_opNNNorm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-replicaterow.md) | 311 | `result-track:fa64937abbdcccad1dc8bc7352399348cfb18bc4cb0d242eb89627aa675a39ea` |
| 39 | `theorem` | [linfty_opNorm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-replicaterow.md) | 315 | `result-track:0584af8733ed7c55eb5132bd4d4288419407744f00405c88208546713a9622d2` |
| 40 | `theorem` | [linfty_opNNNorm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-diagonal.md) | 319 | `result-track:b80a55c2c51a7a9ba12d6a9b12d932648867b0c0b598e1d52af880f0d946b8bd` |
| 41 | `theorem` | [linfty_opNorm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-diagonal.md) | 327 | `result-track:ef65f4c19994919c16b05d5a68ea0c6aef5b8faa02476c98478f3059b94ebae0` |
| 42 | `theorem` | [linfty_opNNNorm_blockDiagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-blockdiagonal.md) | 331 | `result-track:b5a67303b3aca6f1960da136b3633f20625ad0e4fdaa6878eed31dde9114ead7` |
| 43 | `theorem` | [linfty_opNorm_blockDiagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-blockdiagonal.md) | 337 | `result-track:11a600cb409b88cc55fac6aa44e86804de133778a43fec15f8d8348a987a6067` |
| 44 | `theorem` | [linfty_opNNNorm_mul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-mul.md) | 347 | `result-track:02904c10cee078c4af632d137d50a5b7b5dfe61a3a4f43630f7d8252ad15e650` |
| 45 | `theorem` | [linfty_opNorm_mul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-mul.md) | 364 | `result-track:6d0f1526f056ceaae2f8204faf24fcca6c7367f3ac6287d6ef877aa70087376f` |
| 46 | `theorem` | [linfty_opNNNorm_mulVec](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-mulvec.md) | 367 | `result-track:ed80edf7e884dc03b5acdd78ca7e7079ce25dd6694b13ee00dd79e5ad8e13f25` |
| 47 | `theorem` | [linfty_opNorm_mulVec](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-mulvec.md) | 372 | `result-track:e0cb4e8a5822884a26ea40ea3b906996e1f6ac310a58175741d049e60b0adbef` |
| 48 | `def` | [linftyOpNonUnitalSemiNormedRing](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnonunitalseminormedring.md) | 381 | `declaration-track:0ff545fddf1a9c5f418e13dbe713a4b08c5aa69744fbbf9955761c6487adb7b6` |
| 49 | `instance` | [linfty_opNormOneClass](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnormoneclass.md) | 388 | `declaration-track:cf4a02773fb662c19eda6faf85b757e37114bd60ed5c86147725b7074ffc26e0` |
| 50 | `def` | [linftyOpSemiNormedRing](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopseminormedring.md) | 395 | `declaration-track:48b29d79f31b74ad59adb3c30f27a83ca5df6b69dfc010451e0e0af19ff2a4fb` |
| 51 | `def` | [linftyOpNonUnitalNormedRing](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnonunitalnormedring.md) | 403 | `declaration-track:b4802221fb773faaf15613f54cb64f7e07a164d36611ff53a858135baaec1418` |
| 52 | `def` | [linftyOpNormedRing](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnormedring.md) | 412 | `declaration-track:cc21a80990e902edb4a317d5200541caf1aef8ee7d1b4cedc8a92192ae409380` |
| 53 | `def` | [linftyOpNormedAlgebra](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linftyopnormedalgebra.md) | 420 | `declaration-track:f7be3ef69ab42ca65f015bffe0eb5a39f39d3ef28da9350fa256b216e564c3df` |
| 54 | `def` | [unitOf](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/unitof.md) | 429 | `declaration-track:08d772da5bb478a07a38e01ad6e1d8608d6e54bea0f755f28fcae1a1ec1b38d6` |
| 55 | `theorem` | [norm_unitOf](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/norm-unitof.md) | 431 | `result-track:e81f4002b98e54a2e951572a8cfb19d2864b6030b42bceb4f3a35f9614f5bae6` |
| 56 | `theorem` | [mul_unitOf](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/mul-unitof.md) | 438 | `result-track:b31fa3ec5d7b4b320688576aff33f6875070e44f44d2e5f58a3500d6cd9cde84` |
| 57 | `lemma` | [linfty_opNNNorm_eq_opNNNorm](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-eq-opnnnorm.md) | 453 | `result-track:b2dd689da1bc340821af95a79fb1d88ce4c9e906051f7bda89ce73b4d44bf389` |
| 58 | `lemma` | [linfty_opNorm_eq_opNorm](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-eq-opnorm.md) | 471 | `result-track:84ea246390767256a8403910999698db3b03d76b19ba848ab657bb33241d291d` |
| 59 | `lemma` | [linfty_opNNNorm_toMatrix](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnnnorm-tomatrix.md) | 477 | `result-track:42f5105979df78baf23d83b39ab669e65baf7dab12c32a6433a0febdd8f75d24` |
| 60 | `lemma` | [linfty_opNorm_toMatrix](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/linfty-opnorm-tomatrix.md) | 482 | `result-track:3e8409181714ff4401c6b00248397680181b4260d6b91c5a1c0d0fd85beef40f` |
| 61 | `def` | [frobeniusSeminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusseminormedaddcommgroup.md) | 519 | `declaration-track:c6f97f148e3d666f5c9044f88ca5ec46c54d9a941ea6dd2a3002de62ae5ea8b1` |
| 62 | `def` | [frobeniusNormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusnormedaddcommgroup.md) | 528 | `declaration-track:907ed91ede8b2cd8d01c4bb069f759f1d993568046551da64125e5e4b5a6651f` |
| 63 | `theorem` | [frobeniusIsBoundedSMul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusisboundedsmul.md) | 533 | `result-track:1a8dd6ae084bf3deb1623bb32742e829e2da4629e4a3135750dd32292027b708` |
| 64 | `theorem` | [frobeniusNormSMulClass](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusnormsmulclass.md) | 542 | `result-track:4d562f56aff04ca1faa4ffee28051f589516ad6a961b156e00af4dbfc61bfa1f` |
| 65 | `def` | [frobeniusNormedSpace](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusnormedspace.md) | 553 | `declaration-track:2b1341f6e456ed76a1b026f971084227a1950c1db3074322d923b83889aef4ac` |
| 66 | `theorem` | [frobenius_nnnorm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-def.md) | 564 | `result-track:32b53f08619207e6f5338358f2cc662e7afd4303535d97dfdfece6d7eb9d2a3f` |
| 67 | `theorem` | [frobenius_norm_def](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-def.md) | 569 | `result-track:aa5ac79fa034ff2d5b9bc5ab0aa9e627ec7d0df43e396e1aad94069ef5c61784` |
| 68 | `theorem` | [frobenius_nnnorm_map_eq](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-map-eq.md) | 574 | `result-track:49892178ea0eaddfa82a0b59c2f61fcada24dd52de3955e5e0219f2b2463f709` |
| 69 | `theorem` | [frobenius_norm_map_eq](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-map-eq.md) | 578 | `result-track:86fc1766b2a55e85052f200fac6b252f9c528374bd9a4a2a458428e6deb4fd76` |
| 70 | `theorem` | [frobenius_nnnorm_transpose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-transpose.md) | 583 | `result-track:8de18d4f1d0264f36266932b6a05c1b13540c0313dc2ad30f266752b81e9601f` |
| 71 | `theorem` | [frobenius_norm_transpose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-transpose.md) | 588 | `result-track:d786db67c03a996c92d34e9382473e1e449ca33d2335cb2e4eaf6122cda82a43` |
| 72 | `theorem` | [frobenius_nnnorm_conjTranspose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-conjtranspose.md) | 592 | `result-track:99849f7afb042f8f440e7851e176971b725ae23b4eaba566e8e634a6d2750ba5` |
| 73 | `theorem` | [frobenius_norm_conjTranspose](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-conjtranspose.md) | 597 | `result-track:1064e86c73afcf2403a0db61527636a059354f90a4cd6388c7bf11d0e43a055e` |
| 74 | `instance` | [frobenius_normedStarGroup](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-normedstargroup.md) | 601 | `declaration-track:42b596d22dc8972c4c412966f30eb0dc3f164232b643f43fb9eb6b3ccb06d7af` |
| 75 | `lemma` | [frobenius_norm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-replicaterow.md) | 606 | `result-track:717f518536def676d63b59300090fa21c35efd6d015aa3579a966c4935b12023` |
| 76 | `lemma` | [frobenius_nnnorm_replicateRow](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-replicaterow.md) | 611 | `result-track:5bd2e0af145e63c68582c2b2b5eaf8b23239915b271fb8ae5e9468a2908ca483` |
| 77 | `lemma` | [frobenius_norm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-replicatecol.md) | 615 | `result-track:894ad15aa085d68f2e862c8894494f6be72c74f64c863950ed3789c786c5bdcd` |
| 78 | `lemma` | [frobenius_nnnorm_replicateCol](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-replicatecol.md) | 619 | `result-track:8daf32537dc8fd4d8199a48d90548dae9370a2224f16f4664442ce2a7bc941b4` |
| 79 | `lemma` | [frobenius_nnnorm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-diagonal.md) | 624 | `result-track:c60f7ea3466d14b9a0a6cfe45ed3aeade3613bb4a815010c538654b9531083e2` |
| 80 | `lemma` | [frobenius_norm_diagonal](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-diagonal.md) | 637 | `result-track:9868f6fc8c99576a025622e6d1cd92f377ccb69d99299175251c73be1c4c1944` |
| 81 | `theorem` | [frobenius_nnnorm_one](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-one.md) | 642 | `result-track:0fd42dc2644925524fda7e509250749e3006e031afdd3e7e3c477a19954df029` |
| 82 | `theorem` | [frobenius_nnnorm_mul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-nnnorm-mul.md) | 655 | `result-track:08a82696b51623246883eab1987818fd795e4e3b83e32db9dde6d66b76c2286c` |
| 83 | `theorem` | [frobenius_norm_mul](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobenius-norm-mul.md) | 665 | `result-track:7a5decb83daf0e4555ed3d30248d27da250e05029b5269825255ef5f13136d12` |
| 84 | `def` | [frobeniusNormedRing](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusnormedring.md) | 672 | `declaration-track:a63c7a24966cb96c218cf9a2b9e8e3645498f094b0b7867251c293ad26c93477` |
| 85 | `def` | [frobeniusNormedAlgebra](../../../../FunctionalAnalysis/MatrixNormedNormedNamespacedPublic.lean/declarations/frobeniusnormedalgebra.md) | 681 | `declaration-track:8d352ae477c91953cee6faa484dadf0ca47e9888ab1341934530be9f9f967a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=816e94e5eb3a57a2f94a6dfadaa9198f9c243bdea6760875ee78765bde610e62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
