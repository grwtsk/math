# Verification target: Ring Theory Finiteness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb25c1f587e0789132022a89807a5d56e9f23c2",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb25c1f587e0789132022a89807a5d56e9f23c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg.md) | 46 | `declaration-track:cd85f6ca7fcf1006199a165363f3fe2b31db64d4c1803dbeb603018a491fc141` |
| 2 | `theorem` | [fg_def](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-def.md) | 50 | `result-track:a80ed9cf03dbfd2ffb6f7cdb08394dd52b6ac7a7ec7b9c51c3f9c8e391747b9b` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-iff-addsubmonoid-fg.md) | 57 | `result-track:a13d35db86b271c26ad41a7a3ba1d8ef36221e031cb612b63f5d4ff73c04236e` |
| 4 | `theorem` | [fg_iff_add_subgroup_fg](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-iff-add-subgroup-fg.md) | 62 | `result-track:473d5c63f1eb078dae3a9ee798a6e5de95a8bc782d153b55d44ee82e26fdb1dd` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-iff-exists-fin-generating-family.md) | 68 | `result-track:aa8b03e4e5b0fe61b826fcd61d4bfad7badea63105d2cb49ed935da4532eb642` |
| 6 | `theorem` | [exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/exists-sub-one-mem-and-smul-eq-zero-of-fg-of-le-smul.md) | 81 | `result-track:5824b70c1beb2b4ca6144b9065e262e4da3c1c6537ceeb81d63fd96a94b70b6a` |
| 7 | `theorem` | [exists_mem_and_smul_eq_self_of_fg_of_le_smul](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/exists-mem-and-smul-eq-self-of-fg-of-le-smul.md) | 136 | `result-track:b4f0b7f8db6669e138f66b6402af140966a1b4edd3cda598ac8b77c99d5fdfd2` |
| 8 | `theorem` | [fg_bot](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-bot.md) | 143 | `result-track:744dc7387770c7a619f83743430a1f1f0933025ad4c83196a0328986a42d97fb` |
| 9 | `theorem` | [_root_.Subalgebra.fg_bot_toSubmodule](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/root-subalgebra-fg-bot-tosubmodule.md) | 147 | `result-track:aa587b940d86ff7f535afbedd0faf13cdd0cfc688ad0f8640dd009a8d5c0f837` |
| 10 | `theorem` | [fg_unit](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-unit.md) | 152 | `result-track:5f613bcb79372fce8e028c1ab55e0ba57be2eee4e6e560a0d972bae212a24e32` |
| 11 | `theorem` | [fg_of_isUnit](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-of-isunit.md) | 166 | `result-track:cc956273bd9731a239a1acc1e75d9e8a3accc1b7e0f88b903ffaca98993da58d` |
| 12 | `theorem` | [fg_span](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-span.md) | 171 | `result-track:0ccff9721557573272f8a0019cedb2cffcdf762849de2c761d86156809beb082` |
| 13 | `theorem` | [fg_span_singleton](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-span-singleton.md) | 175 | `result-track:9e17e6341a291da5c5e73a5b58576122f682af5dc0efada6c2e69cc8eb91b693` |
| 14 | `theorem` | [FG.sup](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-sup.md) | 179 | `result-track:b4570cccef6c1a890982471d9c19f129a8d4d78ed08b259abd960b806cb549e4` |
| 15 | `theorem` | [fg_finset_sup](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-finset-sup.md) | 185 | `result-track:2713f69765d868c75f5b60144948ae9450a4df8995ffb6d092c3ead2ad1fb457` |
| 16 | `theorem` | [fg_biSup](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-bisup.md) | 190 | `result-track:24db512839d8ff5c6c62e3867d03dffadd59cd1a85409f17f35cb932e3dce1ce` |
| 17 | `theorem` | [fg_iSup](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-isup.md) | 194 | `result-track:2dc7810a8833b9bcc1d8c64a80dd8902b38a82c5593b5b0fbee08d014886930a` |
| 18 | `theorem` | [FG.map](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-map.md) | 204 | `result-track:34236c8db2ca819ab2a6deab116564c89ebb5adb46c4c0bad6dc741361ef04a9` |
| 19 | `theorem` | [fg_of_fg_map_injective](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-of-fg-map-injective.md) | 211 | `result-track:7476f8adbb78ccdee2c84db94dc5adf84a1a45243b24df01ba582a7404f3b74c` |
| 20 | `theorem` | [fg_of_fg_map](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-of-fg-map.md) | 222 | `result-track:bfa253f1f453b657281e63bc0b1ef8d9aed51bf2256ce6c5b0d24c565c18ea3c` |
| 21 | `theorem` | [fg_top](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-top.md) | 229 | `result-track:cd3ba6453b50ec6ab7e6a4d986017309b6184a58edabe8ec8bdfe0077abeccd2` |
| 22 | `theorem` | [fg_of_linearEquiv](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-of-linearequiv.md) | 234 | `result-track:c6d6ba58970b0eb2bc63b9339b522e9d154eea9403363f2650a1b4c3dbf66be6` |
| 23 | `theorem` | [FG.prod](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-prod.md) | 238 | `result-track:34cbdf9ebfd2e5b4f8861a69fbf08c136e5fca336937d119dadd35aac2e2f493` |
| 24 | `theorem` | [fg_pi](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-pi.md) | 247 | `result-track:1a93e387d2950bee08777aa745578fab0fb8520408c7f0b63c405606136e009e` |
| 25 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-of-fg-map-of-fg-inf-ker.md) | 261 | `result-track:a32b9993eac216c0081adb152f0bdb2d66e4e0b43bfc59711d71450fef74a60d` |
| 26 | `theorem` | [fg_induction](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-induction.md) | 335 | `result-track:1c77397247c07987cb653046bdca4e0cf7e113c78663d64fa11acb22286aaae5` |
| 27 | `theorem` | [fg_ker_comp](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-ker-comp-source-edition-2.md) | 349 | `result-track:a727733b244c6e22ad31d14d0f9fe474364915367148341c4ef0c6f95d86750e` |
| 28 | `theorem` | [fg_restrictScalars](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-restrictscalars.md) | 360 | `result-track:ef611235de0504a75fe4616f467cbfeb113535cd657d0d49fafcf942f36e8a7f` |
| 29 | `theorem` | [FG.stablizes_of_iSup_eq](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-stablizes-of-isup-eq.md) | 369 | `result-track:3dc6fc09db958271fb8417fbc2f3cda7cad33f730e0d74c203cbf61647cae957` |
| 30 | `theorem` | [fg_iff_compact](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-iff-compact.md) | 389 | `result-track:de1337cb45f0ee5520bc09ae0ebc3de50ab3e9091f2e1b4f67a4d7194ff22790` |
| 31 | `theorem` | [FG.map₂](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-map-source-edition-2.md) | 431 | `result-track:53d0facea3e78763bdef1061d95ed3d804e7508018ebc38c23e0ab45d0991226` |
| 32 | `theorem` | [FG.mul](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-mul.md) | 448 | `result-track:9e0ea9ce77083572bac79ab8a0f1a9c5a4ad2b497e9a1ca3ec442306f276291e` |
| 33 | `theorem` | [FG.pow](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-pow.md) | 452 | `result-track:c2e04912dcb4dc992cdf65670d8e6df813630a48b7fae33506c2b9073231ef91` |
| 34 | `def` | [FG](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-source-edition-2.md) | 467 | `declaration-track:e3cdb655072b450efb95ec4f89e46230753fae89b75357b4d2e5e1900160c287` |
| 35 | `theorem` | [FG.map](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-map-source-edition-3.md) | 474 | `result-track:da318ff1f74b5484a4446d3d73fa34d38fe0d61b1e8423dc8ad1582f68173a5b` |
| 36 | `theorem` | [fg_ker_comp](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/fg-ker-comp.md) | 482 | `result-track:4e3e4d238c4035232a396fbd474f97b9edf81fbce32882aa65c5372116ae8709` |
| 37 | `theorem` | [exists_radical_pow_le_of_fg](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/exists-radical-pow-le-of-fg.md) | 494 | `result-track:27b0d7b8fe3aafc3737ea36c5ea6ba4122992326433319866223c60198669c71` |
| 38 | `class` | [Module.Finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/module-finite.md) | 522 | `declaration-track:806288deeb50e6253413438b59c7e982f3e00182df8e9de55d2fa543398b0d44` |
| 39 | `theorem` | [finite_def](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/finite-def.md) | 532 | `result-track:515acabe7fdb8eea8efb70dec52be1da6138562e5b71c8b68497eb5442685826` |
| 40 | `theorem` | [iff_addMonoid_fg](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/iff-addmonoid-fg.md) | 541 | `result-track:6f72754907b721ebc5bc924a4de245de38a40856eee12733b11d867ce9d6d77a` |
| 41 | `theorem` | [iff_addGroup_fg](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/iff-addgroup-fg.md) | 546 | `result-track:387c6092c3f2942d53e933fea98d133df7e24551528e7e03d8fbdd1a7f99a456` |
| 42 | `theorem` | [exists_fin](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/exists-fin.md) | 553 | `result-track:53dfc0a6f4d61767c254807e360323e26a845257423a1401b4305da2695434c1` |
| 43 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-surjective-source-edition-2.md) | 557 | `result-track:3312c31376c4f6326a87fd10083e64af2318b018498682ae22baf2436ade2878` |
| 44 | `instance` | [range](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/range.md) | 564 | `declaration-track:e5d69268505f3ea80ad33d1164479c12ae344f2325a15973b6d77c800c9c43dd` |
| 45 | `instance` | [map](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/map.md) | 569 | `declaration-track:1c3ec08ef8e7a6676a5409de28b1596062cc8f042def1d4794a31ce10aec6feb` |
| 46 | `instance` | [self](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/self.md) | 576 | `declaration-track:c393248e2dcd45b0a0a39d480a7cbbabcd948963645d036bb34e5ade82600ecf` |
| 47 | `theorem` | [of_restrictScalars_finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-restrictscalars-finite.md) | 582 | `result-track:7498ed2e3e04d5d9b0e1f2b925b53a1a6a220b8ed30fc43e8ac3b5e7ffcd52f6` |
| 48 | `instance` | [prod](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/prod.md) | 595 | `declaration-track:fdb55376f0120e65fad8479b9732394711886d82c969e66e8a6fd862c836b529` |
| 49 | `instance` | [pi](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/pi.md) | 601 | `declaration-track:ec8eb7d416f3404d121e03e5fb52bd968e694229929aba63629df06a27cd1717` |
| 50 | `theorem` | [equiv](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/equiv.md) | 608 | `result-track:ad05ce2f74399a003e78d7ab24b3e369740535896772e6195ec7f44a8edda001` |
| 51 | `theorem` | [trans](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/trans.md) | 614 | `result-track:a2f990c912e34fb85e22ea74c19f76e467e03e73f47265d8b79bd58ace22de73` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/instance.md) | 632 | `declaration-track:8f15c04770849ba7698e400729424578195fe5ae271ffaa1dd64cddecd333fb2` |
| 53 | `instance` | [Module.Finite.base_change](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/module-finite-base-change.md) | 637 | `declaration-track:027425c7f4261e1ebe7b3ca4c731880a0a687ff858a2466b05bd1f7ee8d9112f` |
| 54 | `instance` | [Module.Finite.tensorProduct](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/module-finite-tensorproduct.md) | 655 | `declaration-track:8848587447f1cd9a7c500d9ba372bb61d8caef82c9de3f3722b9354a689db8f7` |
| 55 | `def` | [Finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/finite.md) | 668 | `declaration-track:a6a8a9b6640e2e0a171678fad124272c83c3a9013c7526e6fbc7343871cf66c9` |
| 56 | `theorem` | [id](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/id-source-edition-2.md) | 677 | `result-track:b4e20df62bc2e58cf2388ffc5dda5acef6a326095e0f5b50a64a6d4d5580cb84` |
| 57 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-surjective.md) | 683 | `result-track:1f6736f8bf4e5ae7400202fa4d3f8058f440a828b3712385a4ddcb70b8d83859` |
| 58 | `theorem` | [comp](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/comp-source-edition-2.md) | 688 | `result-track:e538eb601f656cd2eecb3c246be0f520033d01c2fc0e5bcb2ecc363d4041a10d` |
| 59 | `theorem` | [of_comp_finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-comp-finite-source-edition-2.md) | 698 | `result-track:607e061803d4faae1071f003d3746eac7e2934f28ecc62edd47e27cea5b0e578` |
| 60 | `def` | [Finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/finite-source-edition-2.md) | 721 | `declaration-track:ee414f456ee3e8de2579c7048a54901320748783a3d058b20cc0f04bbf8f22c8` |
| 61 | `theorem` | [id](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/id.md) | 729 | `result-track:08e0cd566a61bc73b5b85113212f949de14ba9b6b39adb8e993062051d91381a` |
| 62 | `theorem` | [comp](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/comp.md) | 735 | `result-track:cb4b8e567d5f9fcec4fce1144fd49095155e95db20e01e724f44ad37bb975882` |
| 63 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-surjective-source-edition-3.md) | 739 | `result-track:7e32b3ceef002696c5b0972cf0002452eaf1bdbd5aa3e681302add6a6aef45d1` |
| 64 | `theorem` | [of_comp_finite](../../../../CommutativeAlgebra/RingTheoryFiniteness.lean/declarations/of-comp-finite.md) | 743 | `result-track:49b73ff9203d7e0718c4b14579d7e6babb8c79d0c9f51dc4de26af53dd6f5b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faa4a8f4c7ab40f2cf250c0b3934c729dabdd8ba77332748489897ef62132790 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Finiteness/Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
