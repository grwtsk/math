# Verification target: ENat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3807445957f39d7670c6be7595e41351da6680f",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3807445957f39d7670c6be7595e41351da6680f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [some_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/some-eq-natcast.md) | 53 | `result-track:f09f89f1c52b0d0123fc088daf988d8a50263d46d7e64c34ebb5fbe8fcaeab9f` |
| 2 | `theorem` | [natCast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-inj.md) | 57 | `result-track:7c6cca15ff711ba4730c7e4a793081284ea56ca4433bc476435e15aaae560026` |
| 3 | `theorem` | [natCast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-zero.md) | 61 | `result-track:344d4276051b3a5945b691a05470933da0bd112863705aebd56d18d5194ecfc4` |
| 4 | `theorem` | [natCast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-one.md) | 66 | `result-track:2199d3ebe5905697c4b2e3f872ee05d97e66ad38cea237747829c8a320f510a9` |
| 5 | `theorem` | [natCast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-add.md) | 71 | `result-track:00ec0d2be274d2a7639da8ca037c249a387ac5802347c897b13b10d93c4f4110` |
| 6 | `theorem` | [natCast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-sub.md) | 77 | `result-track:3fca2adf1b29c67888e8897ac772f9dc994ed843127770d4fe51f6664a2bd3e5` |
| 7 | `lemma` | [natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-lt-top.md) | 83 | `result-track:7d118dc8c9f2a73cd566392b475256d69f565ec5ee093b570d7de14873754c08` |
| 8 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift.md) | 89 | `declaration-track:081cf22f378d89c6933fd40ec413cbf18119c54f1d0e95ec0bfd6e7a7f2f95e7` |
| 9 | `theorem` | [natCast_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-lift.md) | 91 | `result-track:b6630fef88847f5ef0bc1d3e4696a6989b28d56fb3f3e8f798c74bd94addb118` |
| 10 | `theorem` | [lift_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-natcast.md) | 96 | `result-track:97a7a0d28090334fd01d9ec04f5026065b270767823b690b0d7ca49cc1221553` |
| 11 | `theorem` | [lift_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-lt-iff.md) | 97 | `result-track:1d79f5aacf3f7f6c8b62b6f376cf02e3bbece10ffaf5ffce0d49926f7a01aa3b` |
| 12 | `theorem` | [lift_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-le-iff.md) | 98 | `result-track:ab643fed2cd0cb2b7848b97cc175c46281e05e58c454cf2db37ace43e00eeb7f` |
| 13 | `theorem` | [lt_lift_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lt-lift-iff.md) | 99 | `result-track:7163e03ba5b00756daa201b0cef35e9e462ad9471057353700c888901c3b4b80` |
| 14 | `theorem` | [le_lift_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/le-lift-iff.md) | 100 | `result-track:5e9403567f05314a300e9912908161d28c1c86a3546f95856738118d35f8cba8` |
| 15 | `theorem` | [lift_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-zero.md) | 104 | `result-track:c0c3a620375f7a82cb80b60df6242787c3672fedca8d9319cb2fd8534cb82ccf` |
| 16 | `theorem` | [lift_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-one.md) | 105 | `result-track:a0937a20c7f59720ed37e13d6d8cc623b55c03b1936dc11ffc9d49e94ee8b335` |
| 17 | `theorem` | [lift_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-ofnat.md) | 106 | `result-track:0b0aa050ae5625b6cd40857ba01d2e05a7d8dc024cdf1a6e2cd9e230be932acf` |
| 18 | `theorem` | [add_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-top.md) | 109 | `result-track:f57488161fe43bd326fe46d01ef408548128f23bcfde82afbb21f4cf8e5f9bf9` |
| 19 | `theorem` | [add_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-eq-top.md) | 110 | `result-track:86c189db03cc261a4beb06f2e169dddca973cc5e82b231011e7675583564c739` |
| 20 | `instance` | [canLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/canlift.md) | 112 | `declaration-track:d51efc8424089a426a3eb198bb1e893199d7e7882338ccb6f73a8b66e78cf4f5` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/instance.md) | 114 | `declaration-track:5a1f84efe6d21e82ebb46fdef60128fe4f38568acdabffc065e8d360a29875f6` |
| 22 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat.md) | 118 | `declaration-track:6b9fb7800b8b7a79e026003f122072c2dfe0b9624d251d0a2283f97935372881` |
| 23 | `theorem` | [toNat_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-natcast.md) | 121 | `result-track:843a567320c339e810daa11ed960feb503e558078471af849cdf726b7e251db0` |
| 24 | `theorem` | [toNat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-zero.md) | 127 | `result-track:a3e8a626f1aacdf7227aef3b52d95f14caeb804f40e1b145128b92733c42c409` |
| 25 | `theorem` | [toNat_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-one.md) | 131 | `result-track:3c5168c7383ab6117165cf271ac2229b6e3fec1b0810ffe6b908bd2bbbbc86dc` |
| 26 | `theorem` | [toNat_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-ofnat.md) | 135 | `result-track:30a36c5258421454c841e0531c4bf3d1cee734279cf860c3eb51f82b0d2a32b1` |
| 27 | `theorem` | [toNat_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-top.md) | 139 | `result-track:5434cdd038d128b214195d81ff5b8ed5e32cfc00a4dec6bb124390ddb4037ce8` |
| 28 | `theorem` | [toNat_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-eq-zero.md) | 142 | `result-track:2c0348be2724eb26df6a3756def99cdca6d6fe2bbe3e71bf2d1bd25e720bf51f` |
| 29 | `theorem` | [toNat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-pos.md) | 144 | `result-track:603f709d37e05230d874b112b9e49406e54e3ee2ae67df2ebd77b9a73008bba7` |
| 30 | `theorem` | [lift_eq_toNat_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/lift-eq-tonat-of-lt-top.md) | 148 | `result-track:b4144f97ca04cdcd42dc340e3d8c945fbdebbc8f3c3be70a1df9832728f20d2e` |
| 31 | `theorem` | [recTopCoe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/rectopcoe-zero.md) | 154 | `result-track:aaf9caaf3cad0f49ef1572e36df48e97307cece6df4b4d0f73991083604506ab` |
| 32 | `theorem` | [recTopCoe_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/rectopcoe-one.md) | 158 | `result-track:60bd1c63101dc0134409ecd2a0da1848f48c00cca73d3120ab50fb0cb3efa878` |
| 33 | `theorem` | [recTopCoe_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/rectopcoe-ofnat.md) | 162 | `result-track:6a5a65a5eed09fd2f9568c82300d6f231965bb55b985e126316c4d2af4afe39a` |
| 34 | `theorem` | [top_ne_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-ne-natcast.md) | 167 | `result-track:4d5bfc12b012d653f986e5fb825406a0f24a6c8822850a594479ec4f20619e8a` |
| 35 | `theorem` | [top_ne_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-ne-ofnat.md) | 173 | `result-track:8ba406ae396232bf9daa6c60842232b39df8b310961b31040338c8afab027617` |
| 36 | `lemma` | [top_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-ne-zero.md) | 176 | `result-track:dea03b128bcd76ff446432f20c8cabf6f865adf89dfc33ba10c816575b5985d7` |
| 37 | `lemma` | [top_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-ne-one.md) | 177 | `result-track:431d4264c02391ca042863a76b666dc8fe6ff354c6e4d203e045d403ab27dc66` |
| 38 | `theorem` | [natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-ne-top.md) | 180 | `result-track:7e13ee03b9634ab75774dc8b5fa999ae09a612d21e719e68f9f1caed1499c0c1` |
| 39 | `theorem` | [ofNat_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/ofnat-ne-top.md) | 186 | `result-track:89bc39d785f866c70408f1db0bb0ab8d0f53eb04ca47b5e0e61526a901be02f4` |
| 40 | `lemma` | [zero_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/zero-ne-top.md) | 189 | `result-track:2709d58e5b6b9f2c4b2ec1383993ea507e5cc1e1d3ef9f2d323ba493c3190e0e` |
| 41 | `lemma` | [one_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/one-ne-top.md) | 190 | `result-track:bdae0433d842e06a52f4ee18a5d293faccb2629fae6921f299e116275e2ae301` |
| 42 | `theorem` | [top_sub_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-sub-natcast.md) | 193 | `result-track:084a9758959b7d8b42415517acfcda8d716e8004f1e06ddad0b01b3e7adf7527` |
| 43 | `theorem` | [top_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-sub-one.md) | 199 | `result-track:04021055041e201c3b12a498945fc2a343c25aef4f2350ed174c17230805deb5` |
| 44 | `theorem` | [top_sub_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-sub-ofnat.md) | 203 | `result-track:8364112e46c82f9031053fbd51621043dbde3b5e7137761d9829fbfaf4543919` |
| 45 | `theorem` | [top_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/top-pos.md) | 207 | `result-track:2525fb78c50ed8a8ad40e0fa8d77105de5e0e5d0ca92b5dc6e6e5b26ef66b737` |
| 46 | `theorem` | [one_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/one-lt-top.md) | 211 | `result-track:3ec20c97ee480ce021bde467bc377bae352ded2ceaa320352f352756bb71b617` |
| 47 | `theorem` | [sub_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/sub-top.md) | 214 | `result-track:5aed11602a2a9912488f8133544a99487f3bbc69265fe29fae5611fbe68e03e1` |
| 48 | `theorem` | [natCast_toNat_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-tonat-eq-self.md) | 217 | `result-track:1500fdcd7d7876a8c16ae741028c85654adf49d33bafe763d2894d95f63060a3` |
| 49 | `lemma` | [toNat_eq_iff_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-eq-iff-eq-natcast.md) | 226 | `result-track:4616059531e38154beabc69ce152a62d28858fa38b378c52e5bc8de658f194b2` |
| 50 | `theorem` | [toNat_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-eq-iff.md) | 232 | `result-track:d2dc7f07b58f3286dd8ed41739b816a3f4897c85743fc2bad25be9dd55ffad71` |
| 51 | `theorem` | [natCast_toNat_le_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-tonat-le-self.md) | 235 | `result-track:ff0ffc0351b6575896f522fef80abc50f2eb80ea6c5f86605a2e710dc1f17990` |
| 52 | `theorem` | [toNat_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-add.md) | 240 | `result-track:0b2db62c94a31df80e6934956237d214b8cd638f5b39f2da94c215274573df69` |
| 53 | `theorem` | [toNat_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-sub.md) | 245 | `result-track:99f8b4d680178e77b2e8c663d34c9d994baad1c8910d3b8da92d31abc0de4717` |
| 54 | `theorem` | [add_le_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-le-add-iff-left.md) | 251 | `result-track:341300ff6d68f33eb1ca71e2f3bccafdf7b8cadf64aa8d0cc8c94e7a2eab600f` |
| 55 | `theorem` | [add_le_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-le-add-iff-right.md) | 255 | `result-track:be5d76fd0b096bde7f3d605d612905baceb5b3ac2249854b35990daecfa61063` |
| 56 | `theorem` | [le_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/le-natcast-iff.md) | 259 | `result-track:4adde251ab5d2988af9cd93ce1aa9874a04418b8d228be59706e0a48e0b82dc2` |
| 57 | `lemma` | [add_lt_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-add-iff-right.md) | 264 | `result-track:908be4e118a8d68aa043ef551aa1cc2364b8da44d36c37764c09777db44a5b7a` |
| 58 | `lemma` | [add_lt_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-add-iff-left.md) | 267 | `result-track:17cd32cafbf829f55f2d6f22e8b66e2989c637f2d11c4e87bb729615a2941dc7` |
| 59 | `lemma` | [add_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-add.md) | 270 | `result-track:b6b3cb862356cb8a566d4833d05259a3a70f7ccc2f45d8763cbd3fbfe34bd92c` |
| 60 | `theorem` | [add_lt_add_of_le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-add-of-le-of-lt.md) | 273 | `result-track:cfc58c8c5396bb48fa641e680af85a08411c1d1fefe47eec8d74a61a2009beb3` |
| 61 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/add-lt-add-of-lt-of-le.md) | 276 | `result-track:2b817a2afdf0f2bb6eaa2e668a16498a1a8f0de5446b6d26687be2479744e4fa` |
| 62 | `lemma` | [natCast_lt_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-lt-natcast.md) | 281 | `result-track:5c67b340c14a172fa65e6761cbdec5c40524178e44f957a6e155e5efcb797f48` |
| 63 | `lemma` | [natCast_le_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/natcast-le-natcast.md) | 287 | `result-track:48b5a3e7aea5de6759e4e961635d07f75b563d58b136a8dbb061b4773319f741` |
| 64 | `lemma` | [toNat_le_of_le_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-le-of-le-natcast.md) | 291 | `result-track:bac872aa38ca0696af56a335871b2adb53a11736be5f6c1fdab6e580bb92a5d9` |
| 65 | `lemma` | [toNat_le_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/tonat-le-tonat.md) | 298 | `result-track:651d4425eb351df623a70d4600fd5b5eb6165784670297de2a0facfe5b752726` |
| 66 | `theorem` | [nat_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/nat-induction.md) | 304 | `result-track:0ad32284323199e817956f54d03cccf5ba762443d95f701dd1a307cfc7bde578` |
| 67 | `lemma` | [ne_top_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/ne-top-iff-exists.md) | 312 | `result-track:cb01914170c5c87ce396a53ee0c266774accfb2df58b00dd4b012939e7cb219c` |
| 68 | `lemma` | [eq_top_iff_forall_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/eq-top-iff-forall-ne.md) | 314 | `result-track:37416ba34ebbbe24747e8967854d57db5ba805f5fb7b9380072b52b44fd2a162` |
| 69 | `lemma` | [forall_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/forall-ne-top.md) | 315 | `result-track:a0bb8aa0df100c0227313148b981c5b52ccd6c5aa3132bee2f6ac7c38f782f7b` |
| 70 | `lemma` | [exists_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/exists-ne-top.md) | 316 | `result-track:b86ea134fa11b849120d9825bd635dfce33077acb8951007db119d84cf421d12` |
| 71 | `lemma` | [eq_top_iff_forall_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/eq-top-iff-forall-gt.md) | 317 | `result-track:a729d0d3a5f3fc724c8a5ac0b52dae59d003c4a9e759a860a7298e5450765e50` |
| 72 | `lemma` | [eq_top_iff_forall_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/eq-top-iff-forall-ge.md) | 318 | `result-track:57827d86f8784dff65d2528b3956e994ff828ad3ae0aec5e65cd4e4ae51319b5` |
| 73 | `lemma` | [forall_natCast_le_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/forall-natcast-le-iff-le.md) | 321 | `result-track:e1c80d843a2d33fb0f1c239100425a4326b28e8c6f9e59283bdac7156cde47ac` |
| 74 | `lemma` | [eq_of_forall_natCast_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/eq-of-forall-natcast-le-iff.md) | 324 | `result-track:5d498fc893d986a01664e4e4541fad023afaf4d0ea9c05fca01aac8f9db06093` |
| 75 | `lemma` | [exists_nat_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/exists-nat-gt.md) | 327 | `result-track:13ccbc678cf99b0b0668d29e73996dba39d1fee2da7bb29f35bd272309ef7804` |
| 76 | `lemma` | [sub_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/sub-eq-top-iff.md) | 331 | `result-track:e6835085abfb0c21e708e55f27f6b64176ac9ac004a0270fd83e6eeba31c022a` |
| 77 | `lemma` | [sub_ne_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/sub-ne-top-iff.md) | 332 | `result-track:9e0ab6efcc86b0690c4194818bed375b1bc4efc8533c2b61a4e1a694286a60ed` |
| 78 | `lemma` | [addLECancellable_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/addlecancellable-of-ne-top.md) | 334 | `result-track:7b7d0a0488e3319b57b9ebf8f04ef1e02c3324b333024904e90ec9cf30506987` |
| 79 | `lemma` | [addLECancellable_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/addlecancellable-of-lt-top.md) | 335 | `result-track:3b70c80191c120d61db00dfe9a9082eb60664bf6b5110002dbd13b9735cc2ebb` |
| 80 | `lemma` | [addLECancellable_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/addlecancellable-natcast.md) | 336 | `result-track:a4ad8ca3ad2a8ebe026688aec72af93e8237bdae833f7ac1558eaaba4718b2a3` |
| 81 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map.md) | 345 | `declaration-track:09c1dd379d4d44f60fd6d60ae62497264e3e4c8249f44d4d60c5201c895787d6` |
| 82 | `theorem` | [map_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-top.md) | 348 | `result-track:1d33ece9f294d3eed98f6a5ba921365e0a7fc3084c2c82340182b90ca428eeeb` |
| 83 | `theorem` | [map_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-natcast.md) | 351 | `result-track:c24265bd0efa33922133e5f7d6fa6714f9fb243f5eee508fad15557bacb028d4` |
| 84 | `theorem` | [map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-zero.md) | 356 | `result-track:d66497e6f78712dc1f6daeb6a9ab7605ebcad4ff23aada61d1f2c08559f41d1b` |
| 85 | `theorem` | [map_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-one.md) | 359 | `result-track:eaa4b62ac9e04279d7e502611f8e5f71b9e4f62ff68ccfe2695e180f9778ac47` |
| 86 | `theorem` | [map_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-ofnat.md) | 362 | `result-track:3e8abbef95359adc665abd886ac0a9fc7a7f3de1a69067c09c83fd00ae9dd4e3` |
| 87 | `lemma` | [map_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-eq-top-iff.md) | 365 | `result-track:a657ec6d2abb1038fd75e4d58777d58154375eff3c6f1cc7372e6120e262c672` |
| 88 | `theorem` | [strictMono_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/strictmono-map-iff.md) | 368 | `result-track:a193410a70ba012fcfc7ac7aba3421c614490241658fc22d22f0d5f5f1a16a01` |
| 89 | `theorem` | [monotone_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/monotone-map-iff.md) | 372 | `result-track:62808da890314cbb5fb31e2b46cacf92d967635c5f0f7b84773c04d492a42217` |
| 90 | `theorem` | [map_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/map-add.md) | 376 | `result-track:bb26fbccb2bd292c551a25ce4f09326b15ca18e06e86885f842f66b9f1161988` |
| 91 | `def` | [_root_.OneHom.ENatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/root-onehom-enatmap.md) | 383 | `declaration-track:702da82025e3ea9723737223159c3eebc023baf8cf5acec7698ef2ee6e03f28c` |
| 92 | `def` | [_root_.ZeroHom.ENatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/root-zerohom-enatmap.md) | 389 | `declaration-track:69694ba77b16fe0fec9a430d0e9c555984261505de2da034e53c699d9e688654` |
| 93 | `def` | [_root_.AddHom.ENatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/root-addhom-enatmap.md) | 396 | `declaration-track:5160638aa5ac242251e28817f47b4fe5578730713a03f437fd6fb233e640db97` |
| 94 | `lemma` | [coe_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/coe-eq-natcast.md) | 406 | `result-track:526454db05012326f5a03900cf3619f6f298cb412023705354d630405317c5c6` |
| 95 | `lemma` | [eq_top_iff_forall_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicPublic.lean/declarations/eq-top-iff-forall-ge-source-edition-2.md) | 408 | `result-track:5d02f298710c8986f2193784e4a05218bb5eaf55427438306718618f2d5e666f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6103447a27cc3d7fef0befca448f32d5b9412ddd08a1fa0f1a26cfb8612ea85b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant94ee6f6053be2498583edea636880c2b3118316fd6219f43d19f9780749c4959.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
