# Verification target: Pell Matiyasevic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fe391edb82f046c93f46e5ed92026abf639d998",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PellMatiyasevic.lean/index.md) · [Full source](../../../../NumberTheory/PellMatiyasevic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fe391edb82f046c93f46e5ed92026abf639d998`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPell](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell.md) | 62 | `declaration-track:1f122704aa83f7bb93964bf82ce206464e8d0c6f7bdb06322457679f4097fd0a` |
| 2 | `theorem` | [isPell_norm](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-norm.md) | 65 | `result-track:557b167b76baf9ef8838f42612490c1effd31bffbb66b58a08ee9175fe0190f3` |
| 3 | `theorem` | [isPell_iff_mem_unitary](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-iff-mem-unitary.md) | 68 | `result-track:d3bec49fb699db4af7615f204700b84f36c9761a8a19d07844be08d0868905b7` |
| 4 | `theorem` | [isPell_mul](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-mul.md) | 71 | `result-track:51f1b3879e708affce34d08609c1bf5f1d7ae32e32e86600daa9a6deb1bbf8d9` |
| 5 | `theorem` | [isPell_star](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-star.md) | 75 | `result-track:1613af97f0d86a6b5edd0dc86f94f3c087c32b088337de5f8449f73234fa653e` |
| 6 | `def` | [d](../../../../NumberTheory/PellMatiyasevic.lean/declarations/d.md) | 84 | `declaration-track:df5b0e61c0edd20e449ec86c8f8a33a00970a604a91a7a51ae0bc8184eb0cd0e` |
| 7 | `theorem` | [d_pos](../../../../NumberTheory/PellMatiyasevic.lean/declarations/d-pos.md) | 88 | `result-track:5aae19c3f407fe47e08f3aeaed34bc18c77b4ad6b2edf6b2212e2d397adb1240` |
| 8 | `def` | [pell](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pell.md) | 95 | `declaration-track:9a68cac7f56bdbcc8f181e4db2ba57b7bd692f0cb6b88f04cccf0d3753acffca` |
| 9 | `def` | [xn](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn.md) | 100 | `declaration-track:e9ff98f149572a5841c019114dc780f70522260894f7d4d67a3de3f2a37945b3` |
| 10 | `def` | [yn](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn.md) | 104 | `declaration-track:9ac25539c0c72112f970f085e6a043486adae2e7b189b7a30f67569a153168b1` |
| 11 | `theorem` | [pell_val](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pell-val.md) | 108 | `result-track:1ae1972d608f6a790a7eb99f436b918dbe737b3fe209524716944f3c307f2deb` |
| 12 | `theorem` | [xn_zero](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-zero.md) | 114 | `result-track:b2354deb1159a7bb7b0b93fb312db9778876af641938ee4599c71a8e1d6a3de5` |
| 13 | `theorem` | [yn_zero](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-zero.md) | 118 | `result-track:0c3a3a04ecc6f0d3410fb713f630888fc25662d4c44ffab204afb6b71faa3873` |
| 14 | `theorem` | [xn_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-succ.md) | 122 | `result-track:4d7739beb183f928b57c1f849e722ae53346c8e6542434a554528615ad2cc8f0` |
| 15 | `theorem` | [yn_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-succ.md) | 126 | `result-track:0a765b1b26c022b64b57c2492c88d3e5ba5b2278fec4db9e9ed050243a5343dc` |
| 16 | `theorem` | [xn_one](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-one.md) | 129 | `result-track:1fa536be6ec14e7eb316976095a306af67546ebc1b862cc5eacec25e9c373381` |
| 17 | `theorem` | [yn_one](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-one.md) | 131 | `result-track:ff06cccea82dbf82da028d0d15243fd57ed7dd08222a1ade6113d9b64edd4859` |
| 18 | `def` | [xz](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xz.md) | 134 | `declaration-track:8b5a6e9409758234b0018611efe700474b535f8fe6b7f12e403ebe49ed17ffa4` |
| 19 | `def` | [yz](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yz.md) | 138 | `declaration-track:13dbf60c7e41239aef065966145b3ede5ea066d878f2ca28adf3ef0f4d11e285` |
| 20 | `def` | [az](../../../../NumberTheory/PellMatiyasevic.lean/declarations/az.md) | 144 | `declaration-track:38651ecd092742991ba287e1f7d920f446ca857eedc37b73ddec999b9ec85bbd` |
| 21 | `theorem` | [asq_pos](../../../../NumberTheory/PellMatiyasevic.lean/declarations/asq-pos.md) | 150 | `result-track:adf92851d30f97481d399345284a196f904c0bc01b93ef7327a75dc8d85d6910` |
| 22 | `theorem` | [dz_val](../../../../NumberTheory/PellMatiyasevic.lean/declarations/dz-val.md) | 154 | `result-track:4d28634ecf0230b913b8a6cbe18cf243bd1977785a271d5c70bf8aa4c1260be7` |
| 23 | `theorem` | [xz_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xz-succ.md) | 159 | `result-track:cc8c662c457d746f2df13e8b4b9488d65d5d0c79f31d1607124e97208f9e0af4` |
| 24 | `theorem` | [yz_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yz-succ.md) | 163 | `result-track:eced215c3d452dd0191015284ebb547c8ddb2e250ae3bf42018dce656c14ea95` |
| 25 | `def` | [pellZd](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd.md) | 167 | `declaration-track:4c17ea41df3ed896736732b51ca2334c5286b5e6302cbf093aac68a57c0f0346` |
| 26 | `theorem` | [pellZd_re](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-re.md) | 171 | `result-track:c12252ebf4c06595ade9cf02553d910ac41fc0b0b94b8afcf2250d66719a8413` |
| 27 | `theorem` | [pellZd_im](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-im.md) | 175 | `result-track:23d36cb9fe3635f082cd8af8aadf6106c99209eaace087e47ff4c278a3791cdd` |
| 28 | `theorem` | [isPell_nat](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-nat.md) | 178 | `result-track:b9e5dea81c7951f17030cf05b4fe03d69038e8d8ca7279f5e6605402ab8886b9` |
| 29 | `theorem` | [pellZd_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-succ.md) | 187 | `result-track:65c26f4dc0535e7b8007f4ff9654c97c266a8019f5c01645933ca7d9f161a395` |
| 30 | `theorem` | [isPell_one](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-one.md) | 189 | `result-track:fd3658158e9c26a7449286059b74077617bdffc6c16971f8d396d76de0feaacc` |
| 31 | `theorem` | [isPell_pellZd](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ispell-pellzd.md) | 192 | `result-track:c4763ea2a1f1abeaeffca26d7adcff57a8ce1fa4b7c9d49ff7961b9230be6cd9` |
| 32 | `theorem` | [pell_eqz](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pell-eqz.md) | 199 | `result-track:6c7b5f1bd41c6110f5569e3695000e1e196989cb49a2163fbcc97dacfa37e645` |
| 33 | `theorem` | [pell_eq](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pell-eq.md) | 203 | `result-track:e6358a7f9ada41e585c04e5ebb7c48b4cdaa9a0aa535f5e551ec2e798dc872b0` |
| 34 | `instance` | [dnsq](../../../../NumberTheory/PellMatiyasevic.lean/declarations/dnsq.md) | 211 | `declaration-track:39f8f3fb10031dd98851a32e673a19618d2761608703e3f5c5bf027a6a42e65e` |
| 35 | `theorem` | [xn_ge_a_pow](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-ge-a-pow.md) | 221 | `result-track:9e29ddb6cef9e5660d5e4d759f1bddd5090bb0663344b1b81418a52cce3b7ab5` |
| 36 | `theorem` | [n_lt_xn](../../../../NumberTheory/PellMatiyasevic.lean/declarations/n-lt-xn.md) | 227 | `result-track:42062fb9c7901299e4420259e74463edebb8d056572724551b3ebfebd26adbf0` |
| 37 | `theorem` | [x_pos](../../../../NumberTheory/PellMatiyasevic.lean/declarations/x-pos.md) | 230 | `result-track:e6765e04b0f87603df87d5923b26a27549de4705c9fada0313787bf9f36f362d` |
| 38 | `theorem` | [eq_pell_lem](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-pell-lem.md) | 233 | `result-track:51b9ad6c72eb110f0feb8cdbc9f48d7eb4daa353d66ab7753315f4d09bd4cab0` |
| 39 | `theorem` | [eq_pellZd](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-pellzd.md) | 280 | `result-track:e43efaf66b30d0501b483f6a29ddc249453b2b1b48a8fd004dc47f46dbeebbac` |
| 40 | `theorem` | [eq_pell](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-pell.md) | 291 | `result-track:71b9f8971627abdba173fe6779005ec3309824858e2a1342b5788d76b44da420` |
| 41 | `theorem` | [pellZd_add](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-add.md) | 302 | `result-track:50e2ca6382291606f5d8d8b20df5c66a4b0df452801e3e53383497cd08d9e12a` |
| 42 | `theorem` | [xn_add](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-add.md) | 306 | `result-track:4943b2c8d9ce444ed2e4688ce7cc9cacd51dd9f230101724133f131c09de1442` |
| 43 | `theorem` | [yn_add](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-add.md) | 312 | `result-track:6a7d8a99855606fc645375d6da9eef06e7a76346c488cbf1137a5e16558610c5` |
| 44 | `theorem` | [pellZd_sub](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-sub.md) | 318 | `result-track:f42970edaf6f678b5df49e1608d8a24e14d5423d390a1f763fb28eceda898c6c` |
| 45 | `theorem` | [xz_sub](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xz-sub.md) | 323 | `result-track:1bd9d34348268d6a4b2674958e0587af7c627d8f5e3790a7290ea4989cbbe6d2` |
| 46 | `theorem` | [yz_sub](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yz-sub.md) | 328 | `result-track:04c7e01bd162a8be5300e28283fe0465759b0248bd7468adf1cf9450517da726` |
| 47 | `theorem` | [xy_coprime](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xy-coprime.md) | 332 | `result-track:43c24f0f5084464482c763c485f8a12604a4749522b531f019dd6e97e31c8d66` |
| 48 | `theorem` | [strictMono_y](../../../../NumberTheory/PellMatiyasevic.lean/declarations/strictmono-y.md) | 338 | `result-track:2d7ecd37d46c26943f68f33c20d938eed6be84b828526b15216eae941c27a7b6` |
| 49 | `theorem` | [strictMono_x](../../../../NumberTheory/PellMatiyasevic.lean/declarations/strictmono-x.md) | 348 | `result-track:509127e493b51f784b1095310ba110dd93d17d645262a5ab460a82d587ec241d` |
| 50 | `theorem` | [yn_ge_n](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-ge-n.md) | 359 | `result-track:a41318288288ec915c4213ded0974fa832e970673cd409755f7fdc0cb515ecce` |
| 51 | `theorem` | [y_mul_dvd](../../../../NumberTheory/PellMatiyasevic.lean/declarations/y-mul-dvd.md) | 364 | `result-track:4e2dbda419471a95d4764437d1c571ce44edfca255c5ab36dc98809df47f1696` |
| 52 | `theorem` | [y_dvd_iff](../../../../NumberTheory/PellMatiyasevic.lean/declarations/y-dvd-iff.md) | 369 | `result-track:43f26bf193d4a71c1fc134c98d2bf0e9b773fec8ada6b7c20fd19b5c036f6e04` |
| 53 | `theorem` | [xy_modEq_yn](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xy-modeq-yn.md) | 387 | `result-track:5ac3134b747d1a0c56df68bdc471bc53eaf5ff77ef5916d9c99ac401ceb5a439` |
| 54 | `theorem` | [ysq_dvd_yy](../../../../NumberTheory/PellMatiyasevic.lean/declarations/ysq-dvd-yy.md) | 419 | `result-track:d0def5b70e407611ae53b9e83c4dc16afa11568bc7db12031e496aa6dc11f655` |
| 55 | `theorem` | [dvd_of_ysq_dvd](../../../../NumberTheory/PellMatiyasevic.lean/declarations/dvd-of-ysq-dvd.md) | 424 | `result-track:0b847d729b1cc5557999f8936bbf7fe8553d251c9c56705b6a149e4e46ad81d5` |
| 56 | `theorem` | [pellZd_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/pellzd-succ-succ.md) | 436 | `result-track:8b7232bbc0994fa375dc6042392c7a4dd9ef81de1d1ab8a1dbccac69be9af411` |
| 57 | `theorem` | [xy_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xy-succ-succ.md) | 446 | `result-track:f84c4d8999b4f197a8a64def0c8bdfce944a6948cfec7aa30da5cf253cc5ba17` |
| 58 | `theorem` | [xn_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-succ-succ.md) | 454 | `result-track:b252789668ff68352fb01c7917aa4ee779773ca96823e3bb402db58aeecec81f` |
| 59 | `theorem` | [yn_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-succ-succ.md) | 457 | `result-track:d1bc4e9718ea6a1083dd32cecabee33c7f80e7ed145dab21869796bf0669fdcf` |
| 60 | `theorem` | [xz_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xz-succ-succ.md) | 460 | `result-track:b190d52136dc169c50f7337d074f16a3da01a72f62f88a4c9f835a8243b99d74` |
| 61 | `theorem` | [yz_succ_succ](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yz-succ-succ.md) | 463 | `result-track:60c1794fb1b2876520e999e2d0fbf2ddc09259fcdb49df4bf44b4634991d2c4d` |
| 62 | `theorem` | [yn_modEq_a_sub_one](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-modeq-a-sub-one.md) | 466 | `result-track:05e5c2212dbd4d2e422cf3cd89884f200dcbdafc7bae757396f4afbc8f76ed9b` |
| 63 | `theorem` | [yn_modEq_two](../../../../NumberTheory/PellMatiyasevic.lean/declarations/yn-modeq-two.md) | 474 | `result-track:1e35bc0f1106c7c3d2c55434f5b43a91a11f01f8e8cbf7d4102f90a23f980160` |
| 64 | `theorem` | [x_sub_y_dvd_pow_lem](../../../../NumberTheory/PellMatiyasevic.lean/declarations/x-sub-y-dvd-pow-lem.md) | 484 | `result-track:70461348d2b40512f0874ac1be5ef17032c31589f009531c93fd0482b26641d9` |
| 65 | `theorem` | [x_sub_y_dvd_pow](../../../../NumberTheory/PellMatiyasevic.lean/declarations/x-sub-y-dvd-pow.md) | 491 | `result-track:5c8eaeaf03b4c848e4cb32182a0ce5b0998a92c4974e507942d95943e3e67195` |
| 66 | `theorem` | [xn_modEq_x2n_add_lem](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x2n-add-lem.md) | 505 | `result-track:66aced93693f40cf0ce6139ba83440e25b0e2eb679a9d6e142961b279c769b21` |
| 67 | `theorem` | [xn_modEq_x2n_add](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x2n-add.md) | 514 | `result-track:c85646e3e691c3a0ff201cf6adae8309112c4cb45b5a8d8a20e51b5f33ef083e` |
| 68 | `theorem` | [xn_modEq_x2n_sub_lem](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x2n-sub-lem.md) | 521 | `result-track:3b864c5d73ceb9c9e0b7181c89a1ab139137710bc8abfc4c53234e906b0f0971` |
| 69 | `theorem` | [xn_modEq_x2n_sub](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x2n-sub.md) | 536 | `result-track:7e6cafab5966235c0491b831e4b002af2988569720599bcbd55d7d8b8d98afe9` |
| 70 | `theorem` | [xn_modEq_x4n_add](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x4n-add.md) | 543 | `result-track:3bd546fdfb680f29cf01dab82d920c8310d038638ddcc3fda3bfc1208a817bbf` |
| 71 | `theorem` | [xn_modEq_x4n_sub](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xn-modeq-x4n-sub.md) | 549 | `result-track:bee241114cf7cb280b48270fceaa2070352f7f475bcde73739bb8bf8f6f4feef` |
| 72 | `theorem` | [eq_of_xn_modEq_lem1](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq-lem1.md) | 556 | `result-track:fedc7e6b2a35212715a7acf646157e54e51bca45f89fb73098e1dab428cd6381` |
| 73 | `theorem` | [eq_of_xn_modEq_lem2](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq-lem2.md) | 567 | `result-track:1b9b8715bd343ebac2ff0b45f08798ee3fe261345436eaa5e84595ace38fe90d` |
| 74 | `theorem` | [eq_of_xn_modEq_lem3](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq-lem3.md) | 577 | `result-track:862f42049f636334cf493fe705adb3d96adeebf93749ce683a67b42d52dbdc07` |
| 75 | `theorem` | [eq_of_xn_modEq_le](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq-le.md) | 654 | `result-track:c3023661d544c6011696bc72a17bd4c2368f125b4b5f541aab1e61766f42601e` |
| 76 | `theorem` | [eq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq.md) | 676 | `result-track:08f8abbc3cf9c704cafbebf4e9d12e9cabe363ea6b381f67ae4dd0ff6510e9c0` |
| 77 | `theorem` | [eq_of_xn_modEq'](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-of-xn-modeq-source-edition-2.md) | 684 | `result-track:918e20aa06e88638dddad09222738ad3efe2527f7ec30cafbe7ef2a3b6e91b6a` |
| 78 | `theorem` | [modEq_of_xn_modEq](../../../../NumberTheory/PellMatiyasevic.lean/declarations/modeq-of-xn-modeq.md) | 701 | `result-track:c252fe9e78875244d3f194b959ec76d2e5ac0578cf0f6e05289b72369b253259` |
| 79 | `theorem` | [xy_modEq_of_modEq](../../../../NumberTheory/PellMatiyasevic.lean/declarations/xy-modeq-of-modeq.md) | 726 | `result-track:16b2b87a29e0b5f0ec8f6395c40c15b2b97f56d0dbcb62e9988ca443dc528ae1` |
| 80 | `theorem` | [matiyasevic](../../../../NumberTheory/PellMatiyasevic.lean/declarations/matiyasevic.md) | 738 | `result-track:f196133af8c5323935621c208d63b08026f10a9c1701fc92cb5937636bd3a855` |
| 81 | `theorem` | [eq_pow_of_pell_lem](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-pow-of-pell-lem.md) | 827 | `result-track:9db5e13cda9f0f6df0d30c5eb39c14b3b03aa36e6083aa1bebaf2c7c9ce58633` |
| 82 | `theorem` | [eq_pow_of_pell](../../../../NumberTheory/PellMatiyasevic.lean/declarations/eq-pow-of-pell.md) | 842 | `result-track:f3cc640b026678eda357923a4e474d0843b2d64062225e84c1e3c48557f16a10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ff39d3529133f7b4582e9b339bfee835b18f181da892676f56af25b714e355c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean","GRWTSK/_verification/specifications/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
