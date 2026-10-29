# Verification target: Lucas Lehmer Namespaced Mersenne Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/index.md) · [Full source](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2`.

Source path: `GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Fintype` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mersenne.md) | 50 | `declaration-track:287d4417f7afc462f8a0f1a39bcad00a21e8b734eb4ae51d1230954bf5f3bc78` |
| 2 | `theorem` | [mersenne_pos](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mersenne-pos.md) | 54 | `result-track:23dc88be49919be9c4b1a0a695ddaa761fe825be91a0b7930b6a0ad35861ea4c` |
| 3 | `theorem` | [one_lt_mersenne](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/one-lt-mersenne.md) | 61 | `result-track:15fc709d134787a4e757a77f99ee7c02b39698bcaa7017594037b98927be9d4b` |
| 4 | `theorem` | [succ_mersenne](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/succ-mersenne.md) | 67 | `result-track:7ce257d455923c185ffbe77b4c3fee3de9ddc834d170c2627cb5dc4d7aa85a3a` |
| 5 | `def` | [s](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/s.md) | 88 | `declaration-track:4443c9e97234670eec3ef2c1fce7be5cfb7232112a392c46c5ed0f3411f63f94` |
| 6 | `def` | [sZMod](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/szmod.md) | 94 | `declaration-track:c608b6aa1dccbd137cd35667a4fb5eaeff406529e9dadb997279b05ce5020f21` |
| 7 | `def` | [sMod](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod-source-edition-2.md) | 100 | `declaration-track:b573ef4904b38d1661f252af073933662baf16480ca6e60c650c701016761434` |
| 8 | `theorem` | [mersenne_int_pos](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mersenne-int-pos.md) | 105 | `result-track:21551fe607b4732732ce766c08dba22dfc1f165882dc97ace6adba2423d2dc66` |
| 9 | `theorem` | [mersenne_int_ne_zero](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mersenne-int-ne-zero.md) | 108 | `result-track:e5b3217ef861508afd6cbee609a4a592b38d215d5b47a1ed102e3bd88718b28e` |
| 10 | `theorem` | [sMod_nonneg](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod-nonneg.md) | 112 | `result-track:3162a7cf31153619aefa9e8e8074a33fada892002bd71bd276167c0f08a4dbd9` |
| 11 | `theorem` | [sMod_mod](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod-mod.md) | 119 | `result-track:7277d30ba70b41692cee64b11b706d1e34a9fd0e39d222c0f9f6555f57d4c23d` |
| 12 | `theorem` | [sMod_lt](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod-lt.md) | 122 | `result-track:e383735d2c29abd2d24af51c47284bd8857d6aef7523cb2b183d869b4fdbc817` |
| 13 | `theorem` | [sZMod_eq_s](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/szmod-eq-s.md) | 128 | `result-track:d9d782f5b07a07f7d5f2ed6203bf26640d70843fb22f439b48626b36418baae5` |
| 14 | `theorem` | [Int.coe_nat_pow_pred](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/int-coe-nat-pow-pred.md) | 136 | `result-track:5ef01769b8578cad30a3fda5e726c8e0f75649575985047bcfd4a08eee38a10d` |
| 15 | `theorem` | [Int.coe_nat_two_pow_pred](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/int-coe-nat-two-pow-pred.md) | 141 | `result-track:5babd2cf179d153fe33f1388439f37330683b0807676c67c7a3e4a5768d95b45` |
| 16 | `theorem` | [sZMod_eq_sMod](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/szmod-eq-smod.md) | 145 | `result-track:f3d5662d7b5306b0ac0797315b82921877aeece5ceac3033fea7e3b2c88adf6b` |
| 17 | `def` | [lucasLehmerResidue](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/lucaslehmerresidue.md) | 150 | `declaration-track:40a9664919b0c8d39412e2de5d49180032ffc44ab38a4b67b36181e59112c9c3` |
| 18 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/residue-eq-zero-iff-smod-eq-zero.md) | 154 | `result-track:3a5340cfe85bcbf0b9cd9c4993ecad87503ec455f20cf3c176bbc4415eab3ce5` |
| 19 | `def` | [LucasLehmerTest](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/lucaslehmertest.md) | 174 | `declaration-track:1812e432e1d467ada0671359af08dd1d062a211dbbff91ea65008fb48099cd0c` |
| 20 | `def` | [q](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/q.md) | 186 | `declaration-track:409d66e22a9741724d466b1bf541f2de697751e04351ecbcfac23b137a1ad2eb` |
| 21 | `def` | [X](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/x.md) | 196 | `declaration-track:e7ed90f6ca4702bc7c5f90c255b1e3b0e3bd2fbe1d665dd7a0193dc3adcbeaf7` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-8.md) | 205 | `declaration-track:8fe0bc129f40a1918d8ff0a6c08fda7c243e0a73214dffa45b5b767f1a22ffd6` |
| 23 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-7.md) | 206 | `declaration-track:84d855a298d6a486180724c5320e921e67972bb7932dc09b677d12a64e758908` |
| 24 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-6.md) | 207 | `declaration-track:6a9d02d32e879bd4c05d45a6bb137b47a8ba580c388a6a4e0d556527b571db5b` |
| 25 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-9.md) | 208 | `declaration-track:a1cf908a2b7cc71942fda4df2a3a1b7bd7f672b723a3aa756a6f792e9c63d8c8` |
| 26 | `theorem` | [ext](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/ext.md) | 211 | `result-track:784ae43aa24d192bcb9e43850076209ce1e6082cdd1249cc9d814f716b0813b5` |
| 27 | `theorem` | [zero_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/zero-fst.md) | 216 | `result-track:7846fa56d6c48894c493267f3c8a9099d62907f4b10d1b2b5d6d31ba0bc22812` |
| 28 | `theorem` | [zero_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/zero-snd.md) | 217 | `result-track:a538b361f654336039ddd25892c93367c5ce10d4f7650a7c1c1a14d6ad4376a5` |
| 29 | `theorem` | [add_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/add-fst.md) | 220 | `result-track:b93177b1d8d12b3d19cb85b9aa1bec79cd714deca4367c079590ffcf412e2ca4` |
| 30 | `theorem` | [add_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/add-snd.md) | 226 | `result-track:6f2863a802ae29713b4885b9e2474d818edd8e4bf512fc4bec75efb412690d01` |
| 31 | `theorem` | [neg_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/neg-fst.md) | 232 | `result-track:3f67761924223e143ec29e00b1884e95fc4d45b64f65508d1acf60f729d0b330` |
| 32 | `theorem` | [neg_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/neg-snd.md) | 238 | `result-track:eb3d8dc4c91fb2c16dc59bd0a46712754dc895b9f807af68843814bee5480f84` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-10.md) | 243 | `declaration-track:cfff2bb9c7eb50c4397ef10938857473962c3f7cbf772083ddb70283297fe1b6` |
| 34 | `theorem` | [mul_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mul-fst.md) | 246 | `result-track:0b6cfcfe54b9a02085b5fd1dc9e0e7cc62d5d8c2b73d70b50183746580c8cbf9` |
| 35 | `theorem` | [mul_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mul-snd.md) | 252 | `result-track:eb4243cfd07e2babf06e52d29ad54553821be36a65c597bd0b15fd13e53278bb` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-11.md) | 257 | `declaration-track:d42efc7822a35462b5b27e40cc6e1cdfa04a413ab1b3459403803076af669a1d` |
| 37 | `theorem` | [one_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/one-fst.md) | 260 | `result-track:09c68ec8d01b771a2023cf78db1570bc3775028f18fb19229a84b59e6edf559e` |
| 38 | `theorem` | [one_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/one-snd.md) | 266 | `result-track:a4fc0cfd7468c2e6fc982030c978f98798eeffcbd5adffea730e903f4f407401` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-4.md) | 276 | `declaration-track:2cfe0fdec04eb359714d5f04f622cd1ad0d1566d5941abd048255b65e781a17c` |
| 40 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-12.md) | 282 | `declaration-track:d70a75bf9f009ad9d0e23aae0f8561ea0becedf9eab8b5b09033a4fda69e4c34` |
| 41 | `theorem` | [nat_coe_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/nat-coe-fst.md) | 285 | `result-track:3e23884a6833e04f15ed862de2cdee41c0aa2063e411e734f0a153d937ac8f2b` |
| 42 | `theorem` | [nat_coe_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/nat-coe-snd.md) | 289 | `result-track:e2e29d9a6bfb308707d6054ee14a05e56cce64783edb365f04a06850acced749` |
| 43 | `theorem` | [ofNat_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/ofnat-fst.md) | 293 | `result-track:b5dd2fdcc049df0cbbfbc81e597f93e901053ee13bb38c96d4da2c1a68d09a4a` |
| 44 | `theorem` | [ofNat_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/ofnat-snd.md) | 297 | `result-track:55715843c8d53f0e52b5f45ff94a0eb6edb6ce059f24d1296da1748af27b07eb` |
| 45 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-5.md) | 301 | `declaration-track:4f77c80c0d574487bdbd9b60f9d583ae2ce6d78fefbaa1cec083fafadb9a962e` |
| 46 | `theorem` | [left_distrib](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/left-distrib.md) | 310 | `result-track:4eae076670fce68dae58fa6b38eeaee90dc26e871332e2a404cbe9c76b8d52ca` |
| 47 | `theorem` | [right_distrib](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/right-distrib.md) | 315 | `result-track:ebfabe6bcf3f8c1fc84c0a7514f86e0ea0a31df24cfb49e873bec3280219e0be` |
| 48 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance.md) | 320 | `declaration-track:0d47323abceb2e76bd14b810cfb6038502902ac2139264853720fe30f2462430` |
| 49 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-3.md) | 328 | `declaration-track:1d7308589f572a7353cf2d41c1ab40788e16d8eef1c2facc9cc24c1ffbdbe6d7` |
| 50 | `instance` | [(anonymous)](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/instance-source-edition-2.md) | 332 | `declaration-track:0f9cea1ccc13c186993eb2a77cdea4f1ea3401692d683c1076271287c709aaa0` |
| 51 | `theorem` | [int_coe_fst](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/int-coe-fst.md) | 336 | `result-track:2e9befde6144df84a9aa1447464b6f29ce09a1a0d33bae14e1a290ac5c07cf8f` |
| 52 | `theorem` | [int_coe_snd](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/int-coe-snd.md) | 342 | `result-track:85866b8f5e5fef139c0c94a929a3a65162b807dd644ff56d6fe5e646380fc100` |
| 53 | `theorem` | [coe_mul](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/coe-mul.md) | 348 | `result-track:f01746c6479918efb879616ce9e0da74737ba2df9f6cbbfcf249a2192d11477b` |
| 54 | `theorem` | [coe_nat](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/coe-nat.md) | 353 | `result-track:4e207b0035de7dc3c869b1715a723a9744ef3c1862160a4a2b60b7a3830d7941` |
| 55 | `theorem` | [card_eq](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/card-eq.md) | 358 | `result-track:683aa5e390925d560d4bbd9218ce60615cb7855962d7496b2b9f2f0e65c9786c` |
| 56 | `theorem` | [card_units_lt](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/card-units-lt.md) | 365 | `result-track:8d84eb4975d6fc330b8a68fd24ab8d5267423988e0da6c32ed10ea4364e969a2` |
| 57 | `def` | [ω](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/anonymous.md) | 373 | `declaration-track:1303df2f30b8fc38ae0d7837db9ec4446b84c0d9bf22df8dec46ae14b37d5fb2` |
| 58 | `def` | [ωb](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/b.md) | 378 | `declaration-track:5bd0bc1cbdc328f41e4b30a9bdfac9b2dd6ac6189a1358720b090797a02186e0` |
| 59 | `theorem` | [ω_mul_ωb](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mul-b.md) | 382 | `result-track:08c3bddc2a7972bd6eee4da0e82018944c0e00f0a46c5743756b6a0ed6125d87` |
| 60 | `theorem` | [ωb_mul_ω](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/b-mul.md) | 388 | `result-track:c55a52e77a3b8cacaa0567abb021bc25f2b81257ebc7d8a0c4d768541a65527f` |
| 61 | `theorem` | [closed_form](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/closed-form.md) | 394 | `result-track:8063ee34448b571403f96c5b2b617b90e8d1bfffb6b93ab72e248d3abfc0d960` |
| 62 | `theorem` | [two_lt_q](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/two-lt-q.md) | 418 | `result-track:0a6f324d19dc6948299b961e97c0769061cd757d2382cbcf0a9508980eb85128` |
| 63 | `theorem` | [ω_pow_formula](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/pow-formula.md) | 425 | `result-track:8eada0298b41f5beaff910dbc540a52b0c2beea2694afef655608b3ab4b64c3b` |
| 64 | `theorem` | [mersenne_coe_X](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/mersenne-coe-x.md) | 450 | `result-track:0dbe2623a126885d8d01931398f36f10b3b89bec03c41582bb97fb08d757dedb` |
| 65 | `theorem` | [ω_pow_eq_neg_one](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/pow-eq-neg-one.md) | 456 | `result-track:798b9073d2d4f0a22634a100f7040615955bbe9b740f1f287bcd306c0a8468d8` |
| 66 | `theorem` | [ω_pow_eq_one](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/pow-eq-one.md) | 463 | `result-track:fd431c3225540a4e27ba2dbf21897b1b40276754f8e9e5826220fa46bfc5a929` |
| 67 | `def` | [ωUnit](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/unit.md) | 473 | `declaration-track:e70a1b46f201903380fdbe95e069a76447dee1d4ff24aba6a814596b615ca61f` |
| 68 | `theorem` | [ωUnit_coe](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/unit-coe.md) | 481 | `result-track:b50dee62bd7e1a9a42aba804cc92af546209d301a68597bf9f68c2a92bb75667` |
| 69 | `theorem` | [order_ω](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/order.md) | 486 | `result-track:48d58dd0715ebdd0d272a0d32668bf71c93fef57a4cb89d7a5695d5ea0c0585a` |
| 70 | `theorem` | [order_ineq](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/order-ineq.md) | 506 | `result-track:66f97bd6c69cdb2a7f0231778327515ac379f26ac9287797090e6eb1d1e88612` |
| 71 | `theorem` | [lucas_lehmer_sufficiency](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/lucas-lehmer-sufficiency.md) | 520 | `result-track:7a1d243871b60e4a7beb5032c76da8cf31a450413f3951012c01c3c4e5efb9ee` |
| 72 | `def` | [sMod'](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod.md) | 554 | `declaration-track:313c276dff65b257e620a85753fa41037ad4bd399b1d3f9d6882525091fb2972` |
| 73 | `theorem` | [sMod'_eq_sMod](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/smod-eq-smod.md) | 558 | `result-track:db5766e0c6dc8c5bcd3723d035725743bdc3a70a02abe459d1b51e7a6a3e31a3` |
| 74 | `lemma` | [testTrueHelper](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/testtruehelper.md) | 578 | `result-track:cabd638e4c342351a46194bd61f4d95f90ebfe5f114fbb1286b53f1857934d5b` |
| 75 | `lemma` | [testFalseHelper](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/testfalsehelper.md) | 584 | `result-track:a01207c774afa7a9e68b25ffd15a1b3e376133c9c26a4adace76e02d31086a68` |
| 76 | `theorem` | [isNat_lucasLehmerTest](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/isnat-lucaslehmertest.md) | 591 | `result-track:a6fad651bd9c562cfad33da567a64a9aafd7babfd331c5cbf3ec866dbe48ac5a` |
| 77 | `theorem` | [isNat_not_lucasLehmerTest](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/isnat-not-lucaslehmertest.md) | 595 | `result-track:b41e954806eb92bf0665637107080aafbc0c412194c66dc9c7804a37eb615ed6` |
| 78 | `def` | [evalLucasLehmerTest](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/evallucaslehmertest.md) | 602 | `declaration-track:6224f1a45ce4003d950278e21fb674f5a94f1f08aae75d6a9eb4ccd98efb5d50` |
| 79 | `theorem` | [modEq_mersenne](../../../../NumberTheory/LucasLehmerNamespacedMersennePos.lean/declarations/modeq-mersenne.md) | 642 | `result-track:ad731f59e4e1057c1cb59152d4644f8a7e62978d28382a6d7f2cfc736dd558aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b7dd31c30052ef5e2e5a29c400270c26cff1614123024bc86b219ebf59e9e9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean","GRWTSK/_verification/specifications/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
