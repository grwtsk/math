# Verification target: Int GCDNamespaced Xgcd Aux Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c7494905d6e18db54c4226491e8f402297ece2e",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c7494905d6e18db54c4226491e8f402297ece2e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.GCD.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Dvd.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux.md) | 49 | `declaration-track:8ce64b97817e0639b966baad5523552e57062e381879a625f391a806e797eb3f` |
| 2 | `theorem` | [xgcdAux_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-zero.md) | 59 | `result-track:3e9899d94f829dc4021077826304b2548f2ce7c09a67b913a7cf733926e50574` |
| 3 | `theorem` | [xgcdAux_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-succ.md) | 61 | `result-track:748315700b82ab598052b4ad4b32dfd4d30f051f88bbb80236b2eb82eaf1bf1d` |
| 4 | `theorem` | [xgcd_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcd-zero-left.md) | 65 | `result-track:9862aa336eebd23eb1713deda5f30b13d40f7f0d03a83a09dd388fad57224f2b` |
| 5 | `theorem` | [xgcdAux_rec](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-rec.md) | 68 | `result-track:bb95c0d2e88146dd6d2ae295bd8a285b99a979ab21559c36e96abd5611877b56` |
| 6 | `def` | [xgcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcd.md) | 76 | `declaration-track:0d92de177064108b27ca3e25a181981bc54f17e7aa5bd8e0f91e620041ad2f41` |
| 7 | `def` | [gcdA](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcda.md) | 81 | `declaration-track:12480b0884e9b6075b3ea293b931821247a19f55e179d95ebab323519502937d` |
| 8 | `def` | [gcdB](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcdb-source-edition-2.md) | 86 | `declaration-track:c526142cfd040b4efbb3838b653a9353957376e194425dd948a293c6599da2fc` |
| 9 | `theorem` | [gcdA_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcda-zero-left.md) | 91 | `result-track:7c6c15f2cf80bd8d3a2eb4054cb2e0095d974cff9a07cd958ae7b809d0ca747f` |
| 10 | `theorem` | [gcdB_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcdb-zero-left.md) | 97 | `result-track:9912bacca07be4eb998b7a6ff9650c6cb69f6992206ebae90ac905fa8b5e67ee` |
| 11 | `theorem` | [gcdA_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcda-zero-right.md) | 103 | `result-track:a06452debf56f26ec64765a81b6f01d6b17a94a395b3881599725ebd71ea5c20` |
| 12 | `theorem` | [gcdB_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcdb-zero-right.md) | 113 | `result-track:1d61993d6eda99d8bd5b4efab9632aa5ac077b5b63d74cbf8266ac80760df68d` |
| 13 | `theorem` | [xgcdAux_fst](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-fst.md) | 123 | `result-track:c34e7eb90b29f6b5d226f1b74a265bbbcdd624b9534efc63478bed0ed3b41ad1` |
| 14 | `theorem` | [xgcdAux_val](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-val.md) | 129 | `result-track:8e725852bf038b942eb6b8a9bf2aa4c1ff1f5d4524bac266354628e87575bd55` |
| 15 | `theorem` | [xgcd_val](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcd-val.md) | 133 | `result-track:4a233cb899c2bfbdd2d9e3de4c68e847953f2afc238f271f92a1e44de7d6a48a` |
| 16 | `def` | [P](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/p.md) | 141 | `declaration-track:ca7b9ed85d3e69cc817d0254f3428cd0952fc11278db32c73e890926d787f190` |
| 17 | `theorem` | [xgcdAux_P](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/xgcdaux-p.md) | 144 | `result-track:d1475babad7cb2c97cf924148f9d18393520ee09e69e73eb574ea7bc6b9e985f` |
| 18 | `theorem` | [gcd_eq_gcd_ab](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-eq-gcd-ab-source-edition-2.md) | 160 | `result-track:fe3c5e3feb28ef9bec3e67d39ce8dbcef3b8bbdee8db86f05218d7813edfe057` |
| 19 | `theorem` | [exists_mul_emod_eq_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/exists-mul-emod-eq-gcd.md) | 167 | `result-track:61e2ded3076116b923e9a2dc474372539f32af417fe359cc949e983b34fe3aef` |
| 20 | `theorem` | [exists_mul_emod_eq_one_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/exists-mul-emod-eq-one-of-coprime.md) | 178 | `result-track:011ab2b2ec098f60bf30dff861f4b4f33c6546d87123b5e1f791265b6679c223` |
| 21 | `theorem` | [gcd_def](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-def.md) | 191 | `result-track:d3a703a0f5bd35bfe806be43eb449758b42089076ce6d535045b422dca1d6ec4` |
| 22 | `theorem` | [coe_nat_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/coe-nat-gcd.md) | 193 | `result-track:b7eeb0a0db6d6e74638b6e42937117b002f34a25d01337d926ed49c4b0a54620` |
| 23 | `def` | [gcdA](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcda-source-edition-2.md) | 198 | `declaration-track:50132a3a589c3a3faa0707656a2e9175f642dbf0069a1ad9306b599873218631` |
| 24 | `def` | [gcdB](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcdb.md) | 204 | `declaration-track:45ec5e75d133efb77ecd04721221df20348fe4885ad07aaa3e12fda81e2110b1` |
| 25 | `theorem` | [gcd_eq_gcd_ab](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-eq-gcd-ab.md) | 210 | `result-track:c30bdc3559ffbce3f685186ec9a532823c58424860aeca19439d0c5cae64e902` |
| 26 | `theorem` | [natAbs_ediv](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/natabs-ediv.md) | 222 | `result-track:95646e4c48e612d4605fc0f380034f2f6543f896fb7bc2c47c866f5317002b31` |
| 27 | `theorem` | [dvd_of_mul_dvd_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-of-mul-dvd-mul-left.md) | 234 | `result-track:66923f898a2e7576ed69afc8ba1e9a7acfbf48db96500d404fd08142ff2f146c` |
| 28 | `theorem` | [dvd_of_mul_dvd_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-of-mul-dvd-mul-right.md) | 238 | `result-track:1ded9b54616a19adeaabc23dc15804ce4131c707f86583ffc7604e18532917d9` |
| 29 | `def` | [lcm](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm.md) | 243 | `declaration-track:b46f512297b4b49f19b4a6206637858e2763bc09d6990a84c5d3bda0ec535d85` |
| 30 | `theorem` | [lcm_def](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-def.md) | 247 | `result-track:a1034f2dca0fb02aca36fdd794a76c3a134f38ec5da66edf7cbe9b99825490fa` |
| 31 | `theorem` | [coe_nat_lcm](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/coe-nat-lcm.md) | 251 | `result-track:65868451c2ebabf8b41780f567d53faabdb2f1c5e55ce17b624e0c6c29b818df` |
| 32 | `theorem` | [gcd_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-left.md) | 255 | `result-track:cc14d8c2f63969e966fbebee54c88930347e29b11e0cd4ee24017c53053a83ca` |
| 33 | `theorem` | [gcd_dvd_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-right.md) | 259 | `result-track:768818c2e30529a6e8b367e46dfef5ba43d4045d1e7a42147edae3a0291a759d` |
| 34 | `theorem` | [dvd_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-gcd.md) | 263 | `result-track:9f88fa731c662a4b61adf5d56468543d26946cdcdaea37be28c1f7f5f05b103b` |
| 35 | `theorem` | [gcd_mul_lcm](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-mul-lcm.md) | 268 | `result-track:73246d95e355a44eb35c40a699a2d55f3dc2fab63101feae3040071365894705` |
| 36 | `theorem` | [gcd_comm](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-comm.md) | 272 | `result-track:735b4cd3173ad72970981b742d4bae5cfc22c2914049d5fd377f7b9d57903e20` |
| 37 | `theorem` | [gcd_assoc](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-assoc.md) | 276 | `result-track:7d273d721d6cc4a8fd93e4c63ba06367eb5380cd573a4e9507edef0304d00831` |
| 38 | `theorem` | [gcd_self](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-self.md) | 281 | `result-track:5b6ac95239bcb5e32f7ce43357a5ceba2d7be365ac5e2aeb403c28fdea2eed8c` |
| 39 | `theorem` | [gcd_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-zero-left.md) | 285 | `result-track:e7368b24317a6a6251978fa3c02df60d8cb67134424de60fd6b5be90dba7d3b7` |
| 40 | `theorem` | [gcd_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-zero-right.md) | 289 | `result-track:1cf735d47b877064a85276f546dfd05dbeefde08ce73d112a2017415d740c8c5` |
| 41 | `theorem` | [gcd_one_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-one-left.md) | 293 | `result-track:2ee1088d3fe2481d315a3c37742331333ecf07699009b7635bd28ec99a81f7ce` |
| 42 | `theorem` | [gcd_one_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-one-right.md) | 298 | `result-track:335e16272823c411408a74e5b8ab3ebae73ca60150898c33af053a7edf2ebe8e` |
| 43 | `theorem` | [gcd_neg_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-neg-right.md) | 303 | `result-track:2447c77beff640e24645c8463c01ed266be040ec36cb460c58cf6443766b78fc` |
| 44 | `theorem` | [gcd_neg_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-neg-left.md) | 307 | `result-track:a3f030fd8e538d1fbda636020564016e3e608e98545ead3bdb38e0b811f74308` |
| 45 | `theorem` | [gcd_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-mul-left.md) | 310 | `result-track:fb882c353a0197092df26dfd9ae4cf6a29ea85989be7c82d35ad465094374611` |
| 46 | `theorem` | [gcd_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-mul-right.md) | 315 | `result-track:0657c6e2b6409278b60c94b05e2291ad9ed6bdc8c7b799a9198bbf9d41206d36` |
| 47 | `theorem` | [gcd_pos_of_ne_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-pos-of-ne-zero-left.md) | 320 | `result-track:7302914c0ba42a556880b050ee01cea4b622e83948212465bacde0e202c58272` |
| 48 | `theorem` | [gcd_pos_of_ne_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-pos-of-ne-zero-right.md) | 324 | `result-track:d153b0bd184a1192e298786a0b401673b074b6a53c6c37463df650828237421a` |
| 49 | `theorem` | [gcd_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-eq-zero-iff.md) | 328 | `result-track:cc96957ff169e363453937ea5cb52b797d97feff2c7a350f97517962b2f4cc91` |
| 50 | `theorem` | [gcd_pos_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-pos-iff.md) | 332 | `result-track:2058d243a097f1c3501660fcedcf6c69f5fd81dbf13b48b7d5b831ff1875afbc` |
| 51 | `theorem` | [gcd_div](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-div.md) | 336 | `result-track:84b5b214dc61101988acd277e62a793fde560d290428187f7a95061583aad0b4` |
| 52 | `theorem` | [gcd_div_gcd_div_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-div-gcd-div-gcd.md) | 342 | `result-track:bf6f4827006edf26c8c070679c7bda1ba0e65803fab17a50a9e7cd55ed38c039` |
| 53 | `theorem` | [gcd_dvd_gcd_of_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-of-dvd-left.md) | 346 | `result-track:5e585c4d1f7258b768d710799ee4c0d1f0b25aa3a119f8fc094e5f4c58ca83c8` |
| 54 | `theorem` | [gcd_dvd_gcd_of_dvd_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-of-dvd-right.md) | 350 | `result-track:13d3222d5b566a9869c377c6f252bfa8a37eb91dabfbbfe6eb086731541701cc` |
| 55 | `theorem` | [gcd_dvd_gcd_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-mul-left.md) | 354 | `result-track:4c294a063273c7827f6f2a65625cf5bcc16d8475b1f9a28fcd1f0d995f056387` |
| 56 | `theorem` | [gcd_dvd_gcd_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-mul-right.md) | 358 | `result-track:2c0307a60e01ac66632067ddaf1357c9ca2645eea6583f119005ff015d995b7d` |
| 57 | `theorem` | [gcd_dvd_gcd_mul_left_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-mul-left-right.md) | 362 | `result-track:aca7d68162cc0cf865ac3e9207fdac0375921c75ed67f69d9afc7b72e1a89d22` |
| 58 | `theorem` | [gcd_dvd_gcd_mul_right_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-gcd-mul-right-right.md) | 366 | `result-track:947a6273842fe43fb4fcb889a1dbe34845ea5f9cd51c96ecc2ee4c93286111b9` |
| 59 | `theorem` | [gcd_eq_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-eq-left.md) | 370 | `result-track:fe1fad019481ea6d3540e753d15b18dddfa5b48466b7d846176c881e53df62d9` |
| 60 | `theorem` | [gcd_eq_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-eq-right.md) | 374 | `result-track:ecab0ddcd5cda6752ffad23aec270301770d364aa35b8088bbbd831c84940f63` |
| 61 | `theorem` | [ne_zero_of_gcd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/ne-zero-of-gcd.md) | 377 | `result-track:2f1f61294157f6fc38c35570f08e0f46d62ae92c415487ba07f580f6528c4a68` |
| 62 | `theorem` | [exists_gcd_one](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/exists-gcd-one-source-edition-2.md) | 382 | `result-track:dec85658e791de39c4011af4efbf9e0aca2d4683c17a7eb3197b697e976bd52f` |
| 63 | `theorem` | [exists_gcd_one'](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/exists-gcd-one.md) | 388 | `result-track:5980ebc5a2711f6007d350343b01afbe8ea4b2ab374b9c24360177162b4b64af` |
| 64 | `theorem` | [pow_dvd_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/pow-dvd-pow-iff.md) | 394 | `result-track:c06b3e23f398e2f86e94ed14dc464bc50f9cf690f2819ba7ee7ec97f4307b858` |
| 65 | `theorem` | [gcd_dvd_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-dvd-iff.md) | 400 | `result-track:3197839acbc7a03ff1950f4844289e5fe3da78d4436d8d4dc3abc968c339f3e1` |
| 66 | `theorem` | [gcd_greatest](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-greatest.md) | 411 | `result-track:2b1869344eb4a81fac1c4ff05af146237bf32a78dede2d79d90d04270853b874` |
| 67 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-of-dvd-mul-left-of-gcd-one.md) | 420 | `result-track:e742d44d9564b08e50cfabadd53b240cc595f299f6d8a0bbe62e8e66152176eb` |
| 68 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-of-dvd-mul-right-of-gcd-one.md) | 432 | `result-track:d4d3cc3c083287f85fa5af2a33ea715b2f66620a775aedb2936c583228440ef2` |
| 69 | `theorem` | [gcd_least_linear](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/gcd-least-linear.md) | 440 | `result-track:84604e79e0ab3a0f9eaa114c5b15219dac12628cf30a6be79627263971cfa748` |
| 70 | `theorem` | [lcm_comm](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-comm.md) | 452 | `result-track:31e3119ccbd09e2ebdd71ab95fe1a63c95ae48f536131d11d70f8f4acf93e9e9` |
| 71 | `theorem` | [lcm_assoc](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-assoc.md) | 457 | `result-track:5b08edb56026e792d0ad0ccea6c2ae468187403998c75b57b5ee944b0bfaa85e` |
| 72 | `theorem` | [lcm_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-zero-left.md) | 463 | `result-track:64adc8ec45c0a13f1e86c0e80f3e2b491e0c68821a67f93d2642f9ada6224311` |
| 73 | `theorem` | [lcm_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-zero-right.md) | 469 | `result-track:66b4bbb0154d44ba69f820a611853eb8c7e2147eb45059426814e42f33974480` |
| 74 | `theorem` | [lcm_one_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-one-left.md) | 475 | `result-track:35ec29a0b4aab7a1b2197d4172e81c1b1c802d0e986e97ffa44bae73b791addf` |
| 75 | `theorem` | [lcm_one_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-one-right.md) | 481 | `result-track:7e5d307e045f609b85dda7ef4e14e812754b50b32a3be702d5209cb71984ee90` |
| 76 | `theorem` | [lcm_self](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-self.md) | 487 | `result-track:5b966b786dfdf891066fd654163a9a31d5e438eb58aa7921398b3bda3d1fbc03` |
| 77 | `theorem` | [dvd_lcm_left](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-lcm-left.md) | 492 | `result-track:88f0d97d4a872d116ee3efc6516b24d85b6db0b07cdb96b65b9ddcb160b8ad76` |
| 78 | `theorem` | [dvd_lcm_right](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/dvd-lcm-right.md) | 498 | `result-track:9aabfe8fd7163fdd5cafb66707fe16bccd92afc1955dfbfa1d17c2677e4dc3cf` |
| 79 | `theorem` | [lcm_dvd](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/lcm-dvd.md) | 504 | `result-track:cfe1e7be2213ae633ea941f1a5e1b09f814b66fd74f7034a8b2a88ff1905c792` |
| 80 | `theorem` | [pow_gcd_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/declarations/pow-gcd-eq-one.md) | 513 | `result-track:1d8109796a525fd1768496efd5ceb88c99ba66bfb1d8c6209523f286f6caa1a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4e0ec13c5b57272995a860821957c2c787474334f6e5594fcc5bf1b8da99cd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
