# Verification target: Filtration Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac2e16ead92b9e0089e3519533e2e9e54a210049",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FiltrationAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FiltrationAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac2e16ead92b9e0089e3519533e2e9e54a210049`.

Source path: `GRWTSK/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.LocalRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ReesAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Module` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ideal.Filtration](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-filtration.md) | 54 | `declaration-track:3dc8c73a9e52982650e3d23cb491227144e88a9de8521af5a3a588e107d149f9` |
| 2 | `theorem` | [pow_smul_le](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/pow-smul-le.md) | 64 | `result-track:fda5588feb4e0e5e6dc7e661d1c68331bb2d0edc38f2c842e49249196abf1ad9` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/pow-smul-le-pow-smul.md) | 71 | `result-track:c8d1d3b258ebc737819491bfb9fe65c7eaad3b12ae38e0e4376733dffe139ada` |
| 4 | `theorem` | [antitone](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/antitone.md) | 76 | `result-track:f345cf4631dd84abe79e7e29eabb8a41f128f62661a8ce9fef958a9db48aed95` |
| 5 | `def` | [_root_.Ideal.trivialFiltration](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/root-ideal-trivialfiltration.md) | 82 | `declaration-track:3930ce056ec29a27fb2c9ecfc0ca86cbe4e5a71b7b910f4245a536e4edb82712` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:299112ce622a3f6756d2a2013ca8ed16a4e2fe480f25e92cb8e37a5cb71e566e` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:2409fdcde394e05940c02bcddd5c20dc75902bb3fba36ed7802b219c77a7b098` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:36caf2f704966a811516f8ccdaaa4282004e6fd4075c1a599402ad985605b417` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-5.md) | 115 | `declaration-track:458234d5e524d3055314834353dfe7339c2d941e92ef340458a7256e4ff9b8da` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-6.md) | 129 | `declaration-track:97f75a75c5f6c0fd2071427543a894b0a2ea6e6b8da4480d25f5550ab8b47e3c` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-7.md) | 132 | `declaration-track:cf61c8e73cd7d6769d26ed4d760ff9565d3ecc302f2c6c0fcd07f92b2d5292cf` |
| 12 | `theorem` | [sup_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/sup-n.md) | 136 | `result-track:01782c46cf864ffde679acc12641726a940214c4e6e2dbcca2f54d102f546656` |
| 13 | `theorem` | [sSup_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ssup-n.md) | 142 | `result-track:6cf9fb15173c2f1ccb8f2499d53472be9a3b49f7fd7e63257376266a84ef29c6` |
| 14 | `theorem` | [inf_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/inf-n.md) | 148 | `result-track:f37d8ad6557b9d95ae5d555af86d46bb6dd2acc400a6035c3b41990997e04a3b` |
| 15 | `theorem` | [sInf_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/sinf-n.md) | 154 | `result-track:16e0cd7ca509629c828e7d21f0ec5710c4dfda630a41a1e4237f84dd599be846` |
| 16 | `theorem` | [top_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/top-n.md) | 160 | `result-track:a24e48f8c195c1d41c59c04535336ea8db8b189be37e90e32f849d96eaba741f` |
| 17 | `theorem` | [bot_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/bot-n.md) | 166 | `result-track:a8d88bd98939584d136f4d1fe58a37e2cbbf352f95f41356c00c58cd34a923b0` |
| 18 | `theorem` | [iSup_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/isup-n.md) | 172 | `result-track:047b6dcb52743d15ea7dfe6fd66c959a2ed26269c8b1d7a0a81dff4ee4411543` |
| 19 | `theorem` | [iInf_N](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/iinf-n.md) | 178 | `result-track:718385b13c6f59769504288558ed7f4be511d6d71aea6f01953c2a29f0d5a077` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance.md) | 183 | `declaration-track:0afa496d2ee57c36728f89e4d3d5024e0972eda774ed8a28110e248e8c3ffbbc` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/instance-source-edition-8.md) | 187 | `declaration-track:fabbeb783a67a64f097b39b462317c48e554a185feef4f17e9c963ef78bcd216` |
| 22 | `def` | [Stable](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable.md) | 191 | `declaration-track:1fd7f00304d68f48ccf0b0815cc0a7632294624cb5f80b5a7d78e2abb66317c1` |
| 23 | `def` | [_root_.Ideal.stableFiltration](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/root-ideal-stablefiltration.md) | 197 | `declaration-track:353c8d617a2cc2d13457c4b0cca537490f86060c37361076c5fbf4b387f1c701` |
| 24 | `theorem` | [_root_.Ideal.stableFiltration_stable](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/root-ideal-stablefiltration-stable.md) | 203 | `result-track:6c19f91ba4322cce790ba38c258d46bb1a2c8f27eaa195a06040850e86fe9459` |
| 25 | `theorem` | [Stable.exists_pow_smul_eq](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-exists-pow-smul-eq.md) | 213 | `result-track:5ed2ef26e163829da45c7bfb2f66467b7e13b3291108580df4b87a520f9eb0b7` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-exists-pow-smul-eq-of-ge.md) | 223 | `result-track:947e5bb56a35effb99749693b0187d87ec7feb0023cbd32069a6a2c84ed63a12` |
| 27 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge.md) | 231 | `result-track:1bb6a70e09d4151311771e2cdb95195876ff511ffef1d44b33fff1ca4a10b166` |
| 28 | `theorem` | [Stable.exists_forall_le](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-exists-forall-le.md) | 238 | `result-track:6df14cc2d68381c753904bec7a7438c3dc5bf9317eddfd07157ff015b1ab1f32` |
| 29 | `theorem` | [Stable.bounded_difference](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-bounded-difference.md) | 250 | `result-track:a1227891749823d9e631fed928c675f3acff3fef505b8d83a5e574b53c001db1` |
| 30 | `def` | [submodule](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submodule.md) | 264 | `declaration-track:601a117cdde419ecc350c9a4e30f6eb115b4ce57effde38ac5de0b12b11646a7` |
| 31 | `theorem` | [mem_submodule](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/mem-submodule.md) | 278 | `result-track:b9bc8fd1a50376e2859668c472131d2e30cf6857c35e8d8def4f593c970a43fa` |
| 32 | `theorem` | [inf_submodule](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/inf-submodule.md) | 282 | `result-track:c972a0edf86833dd5ec2fce94a094f940707184b674cd7d9c684122356674c34` |
| 33 | `def` | [submoduleInfHom](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submoduleinfhom.md) | 290 | `declaration-track:7b67f06562c14190b3563a7132991e6af6b29b4f0860b4f11c9aa0c082b9fad9` |
| 34 | `theorem` | [submodule_closure_single](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submodule-closure-single.md) | 298 | `result-track:84fbddff464edebec74156b05f7c912522c9353ae5ee5264bcb1b1726dcc2d1f` |
| 35 | `theorem` | [submodule_span_single](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submodule-span-single.md) | 314 | `result-track:fd560197021be4f45c5b26ae8707d1f9d3c28b22ca893819cf659d7168d8d1f7` |
| 36 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submodule-eq-span-le-iff-stable-ge.md) | 320 | `result-track:7716e52f8b49eb23bfdf019faecf26ce980254eb7dc225c2f0aa963748c41cfc` |
| 37 | `theorem` | [submodule_fg_iff_stable](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/submodule-fg-iff-stable.md) | 368 | `result-track:ad08a4b21ef4c8933aca61c99858ffbd31adec7052b29d1247f1e4fdee15798b` |
| 38 | `theorem` | [Stable.of_le](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-of-le.md) | 405 | `result-track:e04d0e5de780d33166bb9435ff6c2df42bdf57ee9b72fa2ae2680cc31d5aef25` |
| 39 | `theorem` | [Stable.inter_right](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-inter-right.md) | 415 | `result-track:8e103ae97473bf0494fe3e2d478d93551956754e188ad44260c3dab3d8bfd63d` |
| 40 | `theorem` | [Stable.inter_left](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/stable-inter-left.md) | 420 | `result-track:f6280e15815e9c6b7333884df0ef4d3ec5219b41886736dba55e96b49d296a93` |
| 41 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-exists-pow-inf-eq-pow-smul.md) | 430 | `result-track:5ad39436486031694bf6405219508d3ca154e39b3e2d4ad6ac5594650ad25bfc` |
| 42 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff.md) | 435 | `result-track:3859f02dd0ba16f48bcc90badb23935cdd5022cf975b45d68afd3acd8775101e` |
| 43 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_localRing](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-localring.md) | 459 | `result-track:8ff002e9a8e97c9389cd31057848316aae97cf8a7a03a83975a4133b55261b5c` |
| 44 | `theorem` | [Ideal.iInf_pow_eq_bot_of_localRing](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-iinf-pow-eq-bot-of-localring.md) | 470 | `result-track:5ffeb616bb655907b81e96139b45683ab22f00a457e8fbea5a5a47f5e743347e` |
| 45 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../CommutativeAlgebra/FiltrationAligned.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain.md) | 478 | `result-track:2a1dec0e86abb36004a9bed9630a1a13e32a8188af728c09284603f6fdd5a98a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f65b4ddeaea2a058784816e577d299c933a348efdfbc4aa4f80eff4772eebd86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean","GRWTSK/_verification/specifications/Algebra/Filtration/Variant4882004953ecf7df8345d1388bd2f1075176e8f79a65775ed99c9d927def7ea6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
