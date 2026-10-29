# Verification target: Multiplication

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34dec25f964853a34aa6a75b2e028953923aded2",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34dec25f964853a34aa6a75b2e028953923aded2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Hydra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Surreal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P1](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p1.md) | 73 | `declaration-track:90b476d68054f8c8df93acaea5327d7cea2e28dbccbb2e713413e786bb31b019` |
| 2 | `def` | [P2](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p2.md) | 77 | `declaration-track:c9796f2c5cfebb7e5dc371dd3d7b2fc796eaeb166c28ae0e16a12a65be7cdfc0` |
| 3 | `def` | [P3](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3.md) | 80 | `declaration-track:056493cdf6fecc8621882823175779714df20b25530feef71635e90148fafa1a` |
| 4 | `def` | [P4](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p4.md) | 86 | `declaration-track:aa930e94af2cd9f3dd9c682ddcc5d3086b2bbd18b4471613766f75264ae5eb48` |
| 5 | `def` | [P24](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p24-source-edition-2.md) | 90 | `declaration-track:48f8de4cbc6ec9f0db4faa9de821312a379bec43dbd4c0a3fa87ff05d3312782` |
| 6 | `lemma` | [P3_comm](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-comm.md) | 96 | `result-track:a9db9c3b57ce0be027e1d91b0f93f3e7a4b36b46f73f1569fe7fe7ca09d4a11f` |
| 7 | `lemma` | [P3.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-trans.md) | 100 | `result-track:a808649d114c0d50b1b2ab3e3279681b12d8c300f54c8db364963c37cb41df14` |
| 8 | `lemma` | [P3_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-neg.md) | 105 | `result-track:81a58c5b26a3245f40844c8ca2cf6ef7d5e8e647405d30e5175385e4894b4ce8` |
| 9 | `lemma` | [P2_neg_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p2-neg-left.md) | 110 | `result-track:a7c7352c09fd26248d90e35b5331c45e527fc1d665f1e27cd0d0b3b95c2ad968` |
| 10 | `lemma` | [P2_neg_right](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p2-neg-right.md) | 118 | `result-track:9bdefe097f2367374f90ff08bda2fbf122190d010b247d4d40182fb651b8d7f3` |
| 11 | `lemma` | [P4_neg_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p4-neg-left.md) | 121 | `result-track:f0b76d007bcd6b4e3e9606339f22826d945de56dbe113c7358d9ca053bd01ec2` |
| 12 | `lemma` | [P4_neg_right](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p4-neg-right.md) | 124 | `result-track:1630a7b796bacca9dda8618afd693364ada066596dc9a1ff5407ec2682d3ece9` |
| 13 | `lemma` | [P24_neg_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p24-neg-left.md) | 127 | `result-track:3a3cbb32e9c19e5b10ea2198d510859aecd4e2dc3060a976c821b11aec8ad7c1` |
| 14 | `lemma` | [P24_neg_right](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p24-neg-right.md) | 128 | `result-track:baaa90bd80a275cf5e47562b68f6e6c4f6747f55f2995b607ed88c22fca3d97e` |
| 15 | `lemma` | [mulOption_lt_iff_P1](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloption-lt-iff-p1.md) | 132 | `result-track:24114cd31507e26c506ee46887eb403dd82b8248263f3dad39b00584eb4bc016` |
| 16 | `lemma` | [mulOption_lt_mul_iff_P3](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloption-lt-mul-iff-p3.md) | 138 | `result-track:0f271bb61fc6a7df6b4484c2734ee59b5a62eadc865a7ffccaee61ca3adbd925` |
| 17 | `lemma` | [P1_of_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p1-of-eq.md) | 143 | `result-track:d08fcd079bd6c9090b630b355c4b0bfcfed25babb78d9bdfc3046561276de639` |
| 18 | `lemma` | [P1_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p1-of-lt.md) | 148 | `result-track:f9d76b6d1a7188b5414073ac0356922369784d30d1ac9d676b0c652032ccefab` |
| 19 | `inductive` | [Args](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/args.md) | 153 | `declaration-track:a1f4e73a3caceeafd9bfc8f6ab2b3774cc9b1cd63bd13383f70665896d9db0e9` |
| 20 | `def` | [Args.toMultiset](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/args-tomultiset.md) | 158 | `declaration-track:e882a9e907ff67ef5549a7ab123f29a76760a6a568ee4b89741224743ca9422d` |
| 21 | `def` | [Args.Numeric](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/args-numeric.md) | 163 | `declaration-track:d3077300d671ca2318493267b80b2b62bd3a3a1e758fe2fd33886d1c78b6ffb2` |
| 22 | `lemma` | [Args.numeric_P1](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/args-numeric-p1.md) | 165 | `result-track:9fd9a3bef2de7b00c7fb0799d305a1fca82f50698e1844e2376476441415d362` |
| 23 | `lemma` | [Args.numeric_P24](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/args-numeric-p24.md) | 168 | `result-track:c14f3fd6c9335b5e31cba6cd12b850520c4be9101f63ef0446450312b8898d9f` |
| 24 | `def` | [ArgsRel](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/argsrel.md) | 177 | `declaration-track:e46367da2307e25ee2363738c069d89adeed578b76acd26df80ad72d3b905aad` |
| 25 | `theorem` | [argsRel_wf](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/argsrel-wf.md) | 180 | `result-track:19664bcb939bb8d16cf756ce3f26eb56010834bc5812fbe7f96cc2e292a276fe` |
| 26 | `def` | [P124](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p124.md) | 183 | `declaration-track:1b13d97c42016d430a108e4d53096d44c04f0066b6fa4a76218be9864ad4c2e9` |
| 27 | `lemma` | [ArgsRel.numeric_closed](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/argsrel-numeric-closed.md) | 188 | `result-track:cccf9fd78920aef30ac8b9005ea8be7c98a5200326c5b2a5b69e46abbe6ff304` |
| 28 | `def` | [IH1](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih1-source-edition-2.md) | 192 | `declaration-track:effd7a5957344db33c046381d0c46001b9b6ae5c418887bfd8c9407f02c42d74` |
| 29 | `lemma` | [ih1_neg_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih1-neg-left.md) | 197 | `result-track:221f1e8a5a62710155606aa1c7a37a2ed036925f562e24b16ae514faaf8e6e06` |
| 30 | `lemma` | [ih1_neg_right](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih1-neg-right.md) | 202 | `result-track:2fb2172ed6f87c34dfbe58e87d08d8e3f0d50506b47fdb20e41e08d82106182b` |
| 31 | `lemma` | [numeric_option_mul](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-option-mul.md) | 209 | `result-track:c7f5fe67fd5225c566a8134706416c997c94d40a0cfcc65d3f9d8bc973d3e16c` |
| 32 | `lemma` | [numeric_mul_option](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-mul-option.md) | 213 | `result-track:5b23b2a6ad07ff2f488184e4f7514ecd6011fd3f73bde1699351c97a643c02d2` |
| 33 | `lemma` | [numeric_option_mul_option](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-option-mul-option.md) | 217 | `result-track:f3f0fcf92da67f26be5cb40e9e3d0548e0e0363812b24397c82600b7c26552fe` |
| 34 | `lemma` | [ih1](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih1.md) | 221 | `result-track:3a94e376f1cbaba657e83858a418e0bf8b8da932fc208b1a4c3b9852bc9dc2ca` |
| 35 | `lemma` | [ih1_swap](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih1-swap.md) | 226 | `result-track:f1ea18e512d2b9f6c52923ee83618551db0bfc0a9d75b6f1d871ffdc40e10a22` |
| 36 | `lemma` | [P3_of_ih](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-of-ih.md) | 230 | `result-track:ec65ca241d2bb56c19e47e4b3212dd6457f27f89bc1197ef22e830d6ec651115` |
| 37 | `lemma` | [P24_of_ih](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p24-of-ih.md) | 235 | `result-track:c92d02d50feff896801391493daefa25b5d61e102795733f2b72fbe0bdc82c6f` |
| 38 | `lemma` | [mulOption_lt_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloption-lt-of-lt.md) | 240 | `result-track:ce68167bf78d499acb38a607c88c71e7e420da7d80037735662e56d361a19c7d` |
| 39 | `lemma` | [mulOption_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloption-lt.md) | 245 | `result-track:49a5c1f589ac9fde2d4e8c0b996f96a0869f3ead4515e3cbec0debd3082354f4` |
| 40 | `theorem` | [P1_of_ih](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p1-of-ih.md) | 258 | `result-track:d717cf698893b508dfd29afbc650d49e588646afc01986eef33127f7e6e4a084` |
| 41 | `def` | [IH24](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih24.md) | 284 | `declaration-track:dd25bb3990f527bfb772eef47cd5bdb35b71c41dea70b0d383cf4fcf0738aa91` |
| 42 | `def` | [IH4](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih4-source-edition-2.md) | 288 | `declaration-track:b4653e031cac9b6a8aee677bb95e73edab8938cc8a0becd2a9d51a10431ec901` |
| 43 | `lemma` | [ih₁₂](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih-source-edition-2.md) | 293 | `result-track:db25e6680baaf06495edc770ee640b64dc3792f2444359dfce5a484a0848c756` |
| 44 | `lemma` | [ih₂₁](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih.md) | 301 | `result-track:1151edfa6b637abd20aaee5fdaa3311d053d9dba386cbf79ed06fb31f1321f5a` |
| 45 | `lemma` | [ih4](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih4.md) | 307 | `result-track:a4139ab0972a165da90655c4b994a91f2f7b1b19ba1c9e0b901a915911bbce80` |
| 46 | `lemma` | [numeric_of_ih](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-of-ih.md) | 316 | `result-track:559803507a497a37bd892c2c7eaf309791d4ba6ebed6e05637a3aca4ea038734` |
| 47 | `lemma` | [ih24_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih24-neg.md) | 323 | `result-track:af89d5c15dbe558415421c5860544164fffb2bde790aa0f5a945d8e04bf60b18` |
| 48 | `lemma` | [ih4_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih4-neg.md) | 333 | `result-track:5930fe938b45a53a99d784d21b70494839fd153ce10a2bea90713512049e3e71` |
| 49 | `lemma` | [mulOption_lt_mul_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloption-lt-mul-of-equiv.md) | 339 | `result-track:aa812007c8e1b90032570e40926f7258a154c4b8d1d516a9241b5eb94b39e6a7` |
| 50 | `theorem` | [mul_right_le_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/mul-right-le-of-equiv.md) | 348 | `result-track:758a56cef0f1b75f3a57e6370b37c598174cef33342e103de2fc1f3dafa8b764` |
| 51 | `def` | [MulOptionsLTMul](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloptionsltmul.md) | 364 | `declaration-track:eab121f2d314547a0ed084e1fe9d6fcf53e275ddf5f9161b7a11748b0e0f6200` |
| 52 | `lemma` | [mulOptionsLTMul_of_numeric](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/muloptionsltmul-of-numeric.md) | 370 | `result-track:3daf59240daa521982f7d35aea3c8c2323ef4302e46179deaf82f535a0154732` |
| 53 | `def` | [IH3](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih3.md) | 393 | `declaration-track:7568f2fa21f7c67a5391c961747aa88ea6d184666f3fa0aa83702ae1589078a6` |
| 54 | `lemma` | [ih3_of_ih](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/ih3-of-ih.md) | 396 | `result-track:0c7ec415a52824bfd76443c7f09e97fac2615f8c95652083d5fcd35930a12b64` |
| 55 | `lemma` | [P3_of_le_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-of-le-left.md) | 402 | `result-track:bbff421d4a3f83f588f34450a73238e238db288b1cee8b30763381cca5abfadd` |
| 56 | `theorem` | [P3_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-of-lt.md) | 411 | `result-track:c799ade3d33c65003a695df2cb70bbf70317427b00e360641c042856fb29990e` |
| 57 | `theorem` | [main](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/main.md) | 420 | `result-track:66965796d664c94e42d538b7ae20067bfdc5b129f6ff251fb9450ebb938fa11a` |
| 58 | `theorem` | [Numeric.mul](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-mul.md) | 455 | `result-track:18f372ecf641a5a9b4b1c904e8fd6ba888580c84a66d4f20a24102d044ff71df` |
| 59 | `theorem` | [P24](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p24.md) | 458 | `result-track:47bd704c80db2b807887b6837fd071e1cc11c47531664116d7c7d8ed175c9e95` |
| 60 | `theorem` | [Equiv.mul_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/equiv-mul-congr-left.md) | 461 | `result-track:6e376f468d1b810677dd82f250912e994df4f9ed44f3f2a9766efe8b8784bfc1` |
| 61 | `theorem` | [Equiv.mul_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/equiv-mul-congr-right.md) | 465 | `result-track:2d13aa6423ae85c45d7aae00dc389aa9b0083486de4a6cd802194734590c4c54` |
| 62 | `theorem` | [Equiv.mul_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/equiv-mul-congr.md) | 469 | `result-track:fb610020e06f55b7944c12e1f6d965fdc50af560341a1828bc58022d9b38369b` |
| 63 | `theorem` | [P3_of_lt_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/p3-of-lt-of-lt.md) | 476 | `result-track:2a6ff98d7f27e311b32e05b468a14cf20ba64b14906fb55cade56e5870d10513` |
| 64 | `theorem` | [Numeric.mul_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/numeric-mul-pos.md) | 493 | `result-track:a3ed674b8dbcbd9fb01559eca798cb22e5029868ee8b866110a19700b42c8498` |
| 65 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/instance-source-edition-3.md) | 506 | `declaration-track:ab526c7e86f2c0c76d0de4c565aeeb47ccc6d0aa30b01e532e09009177f44693` |
| 66 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/instance-source-edition-4.md) | 520 | `declaration-track:fd3ca7f7c144b07a66ada0368a5cabbfc158a93f6c98aaf2303c59775bffebe6` |
| 67 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/instance-source-edition-2.md) | 523 | `declaration-track:6bb50f9a221bbd201d6695e87b5485b93196e703e9f5dad28fe95ea44f39824e` |
| 68 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Multiplication.lean/declarations/instance.md) | 526 | `declaration-track:307f5bd9af2839f127cfd1ed0d06323a9a3f25ee294ca67e9b2fdeef756a32cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f34de32dfb57ee63ed024fc941ed2435f2180813527b692850d08c894802a8f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant89b71c888994171a86351456798d90d26b28e201c92fb260dc5e6a78334465bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
