# Verification target: WSeq Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2d6818ba3873036e9d2d9f04e1da0ed162bee1d",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2d6818ba3873036e9d2d9f04e1da0ed162bee1d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.Seq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/wseq.md) | 33 | `declaration-track:5c6acc3d931cbc521e302c3164c940263ac6f3dc84fe181c6c0c83b993199647` |
| 2 | `def` | [ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/ofseq.md) | 42 | `declaration-track:8fe4d0d519ce67c2d0923376d158a0bce5aa139362e09054094918ea3b7df1a0` |
| 3 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/oflist.md) | 47 | `declaration-track:6f2ec73a00f86e7e05dc31b1db72347bf7b1d02ca03d82e7446396152d95702e` |
| 4 | `def` | [ofStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/ofstream.md) | 52 | `declaration-track:a5c037f7ac511069b6cd05347052aea02195915931d2271465c958c65141d2d3` |
| 5 | `instance` | [coeSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/coeseq.md) | 55 | `declaration-track:0338a3b991076d3a36bb4f98be3916df1b9fc27e2b5025ac35168f271b82b4f0` |
| 6 | `instance` | [coeList](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/coelist.md) | 58 | `declaration-track:9dbdd26fbca0c45a3dd453bb6167238d7227bc7c082b7e30bdb351cabf179062` |
| 7 | `instance` | [coeStream](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/coestream.md) | 61 | `declaration-track:abf803ec62272f004d47456da824629804c91147c3c664971500501cdb39b7e7` |
| 8 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/nil.md) | 65 | `declaration-track:3b90c81c1efeb9b7f547ebd8247dd6d836680448c0404837db63a0befed85ee5` |
| 9 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/inhabited.md) | 68 | `declaration-track:8ecf5f99c70bbe2e40be5e17beaef9646ac73aa1c0f5c7d3b34a5fa6af5c84cf` |
| 10 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/cons.md) | 72 | `declaration-track:cb386e8f1dd89c875130637a8916dfcc434b583518e6d36414bdb851ee456730` |
| 11 | `def` | [think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/think.md) | 76 | `declaration-track:fa04660ec11d03ce205d7c8443afc406d92203b49139d7303cb4989044298c5a` |
| 12 | `def` | [destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct.md) | 81 | `declaration-track:2c9e19d2a1b2dd0ac8037ff179e89751aee681552ca8400a6cd3b9b3f2568885` |
| 13 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/recon.md) | 89 | `declaration-track:cec889cee8c7219876709a9f73f6953ba4b129ec0101663f3413e2193d3bc9ef` |
| 14 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem.md) | 94 | `declaration-track:6de2897f822c277736fce6df869a6f2fb5c16d04f4b0959523e9ff488f6cd0cc` |
| 15 | `instance` | [membership](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/membership.md) | 97 | `declaration-track:97c177c1e3d2d09751df606d50c8d28899a158d8e12a476e02d7c5b1ee9c6c6f` |
| 16 | `theorem` | [notMem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/notmem-nil.md) | 100 | `result-track:ac3d3a1bfeb32d22c5cef0598adb7f7ecd909489acda789e931aab9a4480b5e3` |
| 17 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head.md) | 107 | `declaration-track:129f74cac60e769be29e7e2c5ee0efa36d620dba8bcd71e134e8241fc83e2d91` |
| 18 | `def` | [flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/flatten.md) | 112 | `declaration-track:978b0e3e23981040a77be9a1f0be08b57d8408d0d8b8efe75bda597baa85a074` |
| 19 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail.md) | 121 | `declaration-track:bbf3d2c036483401c06ef92b0c8a243f6e9ae7f560137f9cb5b3a5bd46720a78` |
| 20 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/drop.md) | 125 | `declaration-track:bd46363fd2b2eeaffb9d50d4de1d25d088497f2dfc94ede3e79f4859108bc37c` |
| 21 | `def` | [get?](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get.md) | 130 | `declaration-track:e5eb564b88add85c5ebb4c32c46f981feb2789fb1b2557ecfeffae1c5ef9250a` |
| 22 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist.md) | 134 | `declaration-track:ef3a84da2111edf44f87e84434bb5c1b7b64cb02a3f6da4fbf1160d50cd30303` |
| 23 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/append.md) | 145 | `declaration-track:318bc953ffd590f66f4a62bdaa4477f78ed75ecd4f4ca80eaf568a4d8eb20dfa` |
| 24 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/join.md) | 150 | `declaration-track:e0aaae20b232ce1d2fd978a5be56e43de5e75c3d69feffab3139f94233402295` |
| 25 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map.md) | 159 | `declaration-track:f6768692abae6605c323d9ef6f89489a965255c0a36ca4cba82800d110a89319` |
| 26 | `def` | [ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/ret.md) | 163 | `declaration-track:2455e0d4b320e18863182751c27670ad86afd6def30ba7be35ee2925d3561212` |
| 27 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/bind.md) | 167 | `declaration-track:3bcc2c52472d0849aa074164673d131c3e19c5e2b9ff10bebc490b721ddd892e` |
| 28 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/monad.md) | 174 | `declaration-track:ef74613b5646b664901fca5099249a13e2fb98cabc35c002e82d37e5dca38e42` |
| 29 | `theorem` | [destruct_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-nil.md) | 182 | `result-track:976abc19e47868b744a5efce836f462326036f1c26a73d9335d1adabef813c5b` |
| 30 | `theorem` | [destruct_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-cons.md) | 186 | `result-track:dc64798733e3d2b69d1869f62ef8947bb7621dd2baf591fa744a9d67d8a9ef02` |
| 31 | `theorem` | [destruct_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-think.md) | 190 | `result-track:e75b799163f2a788eb72ad4297045607445ea5d0947c290ddda0d8c80d1a3301` |
| 32 | `theorem` | [seq_destruct_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/seq-destruct-nil.md) | 194 | `result-track:df35e4fc1678373ece3b81ad9e029decbc6b845daa6df829bb7540c8bbe15287` |
| 33 | `theorem` | [seq_destruct_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/seq-destruct-cons.md) | 198 | `result-track:10e0dac238df5a37e1d5d73d78d590049cd8466751a1f1c915eb227f6d7adb51` |
| 34 | `theorem` | [seq_destruct_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/seq-destruct-think.md) | 202 | `result-track:b3b7a20d0f9a8e686330b9859cc4a3531240d83d5200937082b127de40d903e4` |
| 35 | `theorem` | [head_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-nil.md) | 206 | `result-track:617e9b43522b228530f10cc67b474d857bd0f6f0a6fee78109ca609252707ee0` |
| 36 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-cons.md) | 209 | `result-track:bb52ad1fcf9b9cbb65c47562b9822f2250182e405f4016c5d25393668146f651` |
| 37 | `theorem` | [head_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-think.md) | 212 | `result-track:4bc6a20cfd412ab408e1fb2b3c8ed71518836aea04c3c429680f9fb2b17ed98f` |
| 38 | `theorem` | [flatten_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/flatten-pure.md) | 215 | `result-track:a79130722020de6d664abca840df0a133c26b8df065fe2b8c8f7e658f67e1ce3` |
| 39 | `theorem` | [flatten_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/flatten-think.md) | 227 | `result-track:21df262e9575ee6496caa59b52530b3939cb964b335547b21bb5c63b9100ab66` |
| 40 | `theorem` | [destruct_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-flatten.md) | 231 | `result-track:25fad4a65778c593530f4e0017629c77f1067238e4b9c23f3e0109f6b5668902` |
| 41 | `theorem` | [head_terminates_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-terminates-iff.md) | 245 | `result-track:52a0dd9e79579bf5d06b160e4c9ad6253f2c1b04d26834f2dd1779051a81cb2e` |
| 42 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail-nil.md) | 249 | `result-track:ddade7b287e1de0d8242d9a0f898d516543d05a36d288347260b5cba77772b7c` |
| 43 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail-cons.md) | 252 | `result-track:9b444efa25db5691c342408c391a57059735e9435d10478b0b3e609e3281d9ea` |
| 44 | `theorem` | [tail_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail-think.md) | 255 | `result-track:6857d3926ab5a4ab00b3bbcabfdc1b5e5c0cfd67496ee15047084c882d348bd9` |
| 45 | `theorem` | [dropn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-nil.md) | 258 | `result-track:601cde78e46f3d23c2f868f886105753fc17be2646f6dd2163cbc833e2936208` |
| 46 | `theorem` | [dropn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-cons.md) | 261 | `result-track:0dfb1605b169f20177b790bb8188fd33a49555986bfcf8c1f7d4bbc6e83a74cf` |
| 47 | `theorem` | [dropn_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-think.md) | 268 | `result-track:f95afb66a8d75b5f04a37143e8abec770292b24d439ccc75650da4466a9fa934` |
| 48 | `theorem` | [dropn_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-add.md) | 271 | `result-track:6aec3bc255c77175add78896768908d4011285a8cfbd625474bffa673d3da2b9` |
| 49 | `theorem` | [dropn_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-tail.md) | 275 | `result-track:28cbce2d70587f655e0dd6e71285ec3680b1067ed41abfca5ba190e9bd46971d` |
| 50 | `theorem` | [get?_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get-add.md) | 280 | `result-track:4d0079e3fa239c356a07498be5387283cd6ee5d04b5afef1e3da005e3df605b3` |
| 51 | `theorem` | [get?_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get-tail.md) | 283 | `result-track:b67c5f3e6f69bbfecd4c9a2c5712d166dbb7ff54a97e1d10bc1a3a7146220a48` |
| 52 | `theorem` | [join_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/join-nil.md) | 287 | `result-track:b11ad6c79cf16ab7514ed6f80c2bbe8c97573c3228749bbee082ad2898657ee4` |
| 53 | `theorem` | [join_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/join-think.md) | 291 | `result-track:a1ce8a1767f327794b730aa863b88747660095a72b9aab1bd31d553cc63a653a` |
| 54 | `theorem` | [join_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/join-cons.md) | 297 | `result-track:ac7071091de6950bd5f5f8b9298d0f9929d76d49d958b2f85af048f49e2b0f26` |
| 55 | `theorem` | [nil_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/nil-append.md) | 303 | `result-track:e724eb8b2c4baa62c6ef81067fa3411997a67d0eafdd0ba40376142977f6d7f4` |
| 56 | `theorem` | [cons_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/cons-append.md) | 307 | `result-track:60aecf0b8b10ac709b86a9b2acfd9d39448f83ac60fd33bc5b84b980a1cb62d8` |
| 57 | `theorem` | [think_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/think-append.md) | 311 | `result-track:80ffcb927940f0c9c5e64593fe686b6925b3844091c120388c5bb06c6452f4cd` |
| 58 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/append-nil.md) | 315 | `result-track:295271fd31984ee1623543735b6ddda147f9a00be79c9c77bc60326a71e1a7a0` |
| 59 | `theorem` | [append_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/append-assoc.md) | 319 | `result-track:19b5f658725059514c563820b05e98d0bf740dea6cdccaad6a22d418d9a25090` |
| 60 | `def` | [tail.aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail-aux.md) | 324 | `declaration-track:1741f829ac38e0d06fbb3ddceec4c481c9f07aa2b41e4392c0fcf28d9e8af0d1` |
| 61 | `theorem` | [destruct_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-tail.md) | 328 | `result-track:ffabf62a56e84813bfd9ada098a8b6d5bf6e26e3f0d21e61a9b275f17cbbef36` |
| 62 | `def` | [drop.aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/drop-aux.md) | 334 | `declaration-track:90d943471adcca17a12f4f87b625323769f1021e81d41482cea1f5a454479169` |
| 63 | `theorem` | [drop.aux_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/drop-aux-none.md) | 338 | `result-track:950384f2ba397fe3d29682767b386b0db8287c9a7a73bc723f3c234046c1ce75` |
| 64 | `theorem` | [destruct_dropn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-dropn.md) | 344 | `result-track:40e7e9d2127387e776673261d08e876948a6c8f19bfa09933694f46326fedac1` |
| 65 | `theorem` | [head_terminates_of_head_tail_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-terminates-of-head-tail-terminates.md) | 350 | `result-track:464f7934a9a7523f21b0f8194c4376dc519e9010658298a2983402227a8e7c0a` |
| 66 | `theorem` | [destruct_some_of_destruct_tail_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-some-of-destruct-tail-some.md) | 358 | `result-track:4f17849b021d302fd3d5e8d669670cae1c7f6286cacc0ff2e5821b5f99204669` |
| 67 | `theorem` | [head_some_of_head_tail_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-some-of-head-tail-some.md) | 368 | `result-track:6455f642e9bc4a8f677098d7d16ff9839c34bea9516d3f324d025505a29167ac` |
| 68 | `theorem` | [head_some_of_get?_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-some-of-get-some.md) | 376 | `result-track:6d58be2678092fb61c3e1d206e2fd1abf67506659814663927abcfaff0aff329` |
| 69 | `theorem` | [get?_terminates_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get-terminates-le.md) | 384 | `result-track:a2809b9732bba21694c07bbb25c5957751bda6740f7b6c8300eba4a12623b46e` |
| 70 | `theorem` | [head_terminates_of_get?_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-terminates-of-get-terminates.md) | 389 | `result-track:093e8a322c1a0e94fbb52d98b91c117e1eabe38de3f219ea3f900599c2a079f2` |
| 71 | `theorem` | [destruct_terminates_of_get?_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-terminates-of-get-terminates.md) | 393 | `result-track:203b6498e16a39906997341e5ef38c55e55d203e7b21e81a7cb5f02e04392118` |
| 72 | `theorem` | [mem_rec_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-rec-on.md) | 397 | `result-track:37e06e6457e4dba17286e83f26714e9862cf88a388b9bfcf9336f6aab65c3a61` |
| 73 | `theorem` | [mem_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-think.md) | 411 | `result-track:26a08f011258714e5ecafbd9786721b77f5ede1b1e889097d9d1986adab25bb8` |
| 74 | `theorem` | [eq_or_mem_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/eq-or-mem-iff-mem.md) | 420 | `result-track:71081509b930de2def311b5307a9b50685a4b463e57f173e036a7a1b43b0fb6b` |
| 75 | `theorem` | [mem_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-cons-iff.md) | 443 | `result-track:35bfd652507e7c347d14f76290af48b9e0c4ad70de2a6d11af276ac2653c6362` |
| 76 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-cons-of-mem.md) | 446 | `result-track:97d23145991c605d1b42b9fc9cf7edb8e503796b375b036129b4b5074e35a578` |
| 77 | `theorem` | [mem_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-cons.md) | 449 | `result-track:dc2c76c5ff39fd5ceff87187bf3144c4769596050711b7e2ab34da8ace4f8c39` |
| 78 | `theorem` | [mem_of_mem_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-of-mem-tail.md) | 452 | `result-track:c8587db9f243359754a8806c5aa6333d102287fa0e027654d3115d99c8ce6210` |
| 79 | `theorem` | [mem_of_mem_dropn](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-of-mem-dropn.md) | 464 | `result-track:61cc7a81c0e8d3e968d710b169751ad6b091e5c7c4ba8e37f38240bb73595386` |
| 80 | `theorem` | [get?_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get-mem.md) | 468 | `result-track:e78304f0abdba40bb6d104f055cb896cc000b879c1ebd3bd5aa8c01e0b906110` |
| 81 | `theorem` | [exists_get?_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/exists-get-of-mem.md) | 480 | `result-track:f6319446a73a28e5b959fa2e46107e4ac8b3ca6c3321c2315c484d404fb9730d` |
| 82 | `theorem` | [exists_dropn_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/exists-dropn-of-mem.md) | 497 | `result-track:149f6009182f1262e8a6fefff04989177bef6d7285f6ddf449b408e293e6a57f` |
| 83 | `theorem` | [head_terminates_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-terminates-of-mem.md) | 511 | `result-track:cb222fd17d55d9e158b80525a0b264a20a6cd5de33b43b4c80dd569a31fe04a3` |
| 84 | `theorem` | [of_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/of-mem-append.md) | 515 | `result-track:0e08ce252c1367c6d494311302e0d6e8d941498e7596c6988e450470098b221e` |
| 85 | `theorem` | [mem_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-append-left.md) | 518 | `result-track:89c7f730adfea2d28efb47aba13207f3a7b964240e66a555340ebd10e3892f7d` |
| 86 | `theorem` | [exists_of_mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/exists-of-mem-map.md) | 521 | `result-track:1a7080a93e335a12696baa828952036529d8f2bf38e1dd284147ba55abe60d8d` |
| 87 | `theorem` | [ofList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/oflist-nil.md) | 530 | `result-track:21fa794b72fa1d50fd7a3d463afeb23896c93bb7a7e6267e9035ecb25ea5f841` |
| 88 | `theorem` | [ofList_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/oflist-cons.md) | 534 | `result-track:4850905fb2ee2c56c0327d683ea4dfae7ec7888f52d95612e6be1113bebeb363` |
| 89 | `theorem` | [toList'_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-nil.md) | 538 | `result-track:207dc1a0cc78558bcc29233fe79001762d17849db75470e509d7a74cf143a9dc` |
| 90 | `theorem` | [toList'_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-cons-source-edition-2.md) | 547 | `result-track:7441438ea2d989f804f7a039f27eee23fffd562bdd91bd84890e39140e5cfd44` |
| 91 | `theorem` | [toList'_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-think.md) | 561 | `result-track:4ed67acacb377087e7651e01751f5145bd9c3242a5e4438740d1a1cd7b9ffb0a` |
| 92 | `theorem` | [toList'_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-map.md) | 574 | `result-track:0ed3e7eb317264efd4a225dfb1ff4f83b2bf56870d6eec9cd6c242f0888c87d2` |
| 93 | `theorem` | [toList_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-cons.md) | 601 | `result-track:07366b5fa28f93a698fa0e7746f6c555bb2742f148318d275f6a074721cb8cc8` |
| 94 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-nil-source-edition-2.md) | 610 | `result-track:e8418f292587ecf448a0561d3d2baff1268abc2ddae9759f2ad47b0c1b838f7b` |
| 95 | `theorem` | [toList_ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tolist-oflist.md) | 613 | `result-track:88b895acec8b43d08f6628f7ccfdc3614b8ff09ad60d90016dd4ee20ccac6da8` |
| 96 | `theorem` | [destruct_ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-ofseq.md) | 619 | `result-track:fed0e2236882d3892b9a50d33789465568b5c0494b0ce18daeb580771c2c1cd7` |
| 97 | `theorem` | [head_ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/head-ofseq.md) | 631 | `result-track:2a2ba293ceff90ce03379209bc60a09d39c94a9629e78c716e406c1d1d4b12af` |
| 98 | `theorem` | [tail_ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/tail-ofseq.md) | 636 | `result-track:efd3943c76876d883bba27117a3599b76813d2d988a135f7e291c22baa418e06` |
| 99 | `theorem` | [dropn_ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/dropn-ofseq.md) | 643 | `result-track:259ca4671641e8093e0ce8c15bb9093fad8d95efbb776a09712787bc693c600c` |
| 100 | `theorem` | [get?_ofSeq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/get-ofseq.md) | 649 | `result-track:76001d9122cef9f6b01d95b3e6ef65ce153db451384e2558c6446cc7fe79cf68` |
| 101 | `theorem` | [map_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-nil.md) | 653 | `result-track:0d0b556cb6bc6f82e35a2197d7a8687f18b3dbb6937434371a65902bb69feac8` |
| 102 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-cons.md) | 657 | `result-track:47ce24195f7d5796ecee35705eceaf0c469756b213239d0b8b4448672aa84d68` |
| 103 | `theorem` | [map_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-think.md) | 661 | `result-track:282aa6e6fa7e97b75ae7f7d27cbfa8b7ceb23d3bd5f4845efa405fdc3e5aac2b` |
| 104 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-id.md) | 665 | `result-track:7a99015214d2c86b4535dfa5e346e16950669d9c9c0bd41558c30a803b23006d` |
| 105 | `theorem` | [map_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-ret.md) | 668 | `result-track:3b5dae6440cbeeeb696fd998ca18f12bfe62e5f81f7e48102a98de85f19bbd2f` |
| 106 | `theorem` | [map_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-append.md) | 671 | `result-track:2699d9efe6ce9204c5e21d35c2d120235f12f59777136cb6d820f248b0958048` |
| 107 | `theorem` | [map_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-comp.md) | 674 | `result-track:b31570814810cb0bfed096414d5c64bf2433c739039efa0016e1fede72cef836` |
| 108 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/mem-map.md) | 679 | `result-track:ec154e2bfbb6cf402c5eec2e1e907a90b9516aacc718b39613f25c24bbe34647` |
| 109 | `theorem` | [exists_of_mem_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/exists-of-mem-join.md) | 683 | `result-track:896208286b2d646c1bdca010e0b95f6527ada9307aad5db43d1cd1edd7132bea` |
| 110 | `theorem` | [exists_of_mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/exists-of-mem-bind.md) | 714 | `result-track:e80b6b522d22402e1189d5719aaf4a6edfe965f80d25807a1019100a998e78de` |
| 111 | `theorem` | [destruct_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-map.md) | 720 | `result-track:41480b2483a83b6b4757c72784570e25c39c55068eff55b64b46d72355a38cfc` |
| 112 | `def` | [destruct_append.aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-append-aux.md) | 736 | `declaration-track:c181a855fe221a713f28a282bae7f8078e2cdd9cb8692f80409f726324f583f1` |
| 113 | `theorem` | [destruct_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-append.md) | 740 | `result-track:bb979189336cbfbf6bbe307c9897c47617dfd665a272388d8b21e48fd2c7f588` |
| 114 | `def` | [destruct_join.aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-join-aux.md) | 755 | `declaration-track:36fb33e6c253083d91f805ba8aa5c02e1e81b24678b990c984bce9e9b6147a66` |
| 115 | `theorem` | [destruct_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/destruct-join.md) | 759 | `result-track:33ce1cc9bd9cf060d1e63b70fb2d425fb8ef5cb7cc4dfffb53bae68ffd3aed00` |
| 116 | `theorem` | [map_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/declarations/map-join.md) | 775 | `result-track:16252d500350eecbf2e44bad942868f625a0dc2e16b00b3ced8eff6e86ef6933` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=338ccda3903a72992d991369be26c5e0a6fae2373f564ef9b51d9682c93842b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
