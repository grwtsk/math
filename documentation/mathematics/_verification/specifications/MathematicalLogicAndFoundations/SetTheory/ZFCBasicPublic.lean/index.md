# Verification target: ZFCBasic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a286ddb7203fa5b2b50bd1ca624c4acd0366ba1",
  "lexical_observation_count": 161,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant34835ce2dba7517b7e2fa76b98f4c09bd5a809f145aedaf712cab505f52fe974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a286ddb7203fa5b2b50bd1ca624c4acd0366ba1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant34835ce2dba7517b7e2fa76b98f4c09bd5a809f145aedaf712cab505f52fe974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant34835ce2dba7517b7e2fa76b98f4c09bd5a809f145aedaf712cab505f52fe974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZFSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/zfset.md) | 48 | `declaration-track:24e8f7bf78aa2503e6e0909c7156024409cffc3f75df9db5dac37987f243b3e2` |
| 2 | `def` | [mk](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mk.md) | 54 | `declaration-track:7634de429ad7ebcd3749db198ae72c4e2a0fe895642d0b6433ad0e47a18dfb40` |
| 3 | `theorem` | [mk_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mk-eq.md) | 58 | `result-track:4e49cf1e02f015cf9c81855392476767bb6fff47dc21c3c0db72481102b95bbe` |
| 4 | `theorem` | [mk_out](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mk-out.md) | 62 | `result-track:3b4c19d20507beb128ceca8cc3d7fb19b52f4f94af885cfd11e096bcf0459451` |
| 5 | `class` | [Definable](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-source-edition-3.md) | 68 | `declaration-track:c79453420517a184302e8d6453a838b87b5ac2d662cb16c99d4037e135c29f1c` |
| 6 | `abbrev` | [Definable₁](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable.md) | 77 | `declaration-track:4f9d90c9be44d1a1800546320949ef49b73a0ad0fc70b3709272abf45c4bfa1b` |
| 7 | `abbrev` | [Definable₁.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-mk.md) | 80 | `declaration-track:3a04ee72196dc1cc1b09c09a331ef1ae150f179f0c78c2b0c1e3f347eacab1a1` |
| 8 | `abbrev` | [Definable₁.out](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-out-source-edition-2.md) | 87 | `declaration-track:8b0fe82d015cb62b56ff8b5245f06173ee1f7ea97262d8a73451cc4b567cb9d4` |
| 9 | `lemma` | [Definable₁.mk_out](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-mk-out-source-edition-2.md) | 91 | `result-track:da3922eb19818c6b430bb211f8e1ed8e83769c040a05f71f2723292b25f353ee` |
| 10 | `abbrev` | [Definable₂](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-source-edition-2.md) | 97 | `declaration-track:9c398cace49115f2fc79c5e4fa63a32ec8b071a025fb1163e06eb1228988f476` |
| 11 | `abbrev` | [Definable₂.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-mk-source-edition-2.md) | 100 | `declaration-track:cdb01e87634a4035abd7c1a14bad45cd14ac65c5d382b3c07a5eec4211fb4135` |
| 12 | `abbrev` | [Definable₂.out](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-out.md) | 107 | `declaration-track:7dec8599eb105a7fbb52111b1b73495595774349ecee8848b47c9b7318ca5560` |
| 13 | `lemma` | [Definable₂.mk_out](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-mk-out.md) | 111 | `result-track:6d977755fd19135a6171742cddf7f9d7d995bba3adacbf80b0e5dda5fc2e5ec0` |
| 14 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:6b9efaa573e4efcdf1d3b247be75c860392701773d4390caaddc707b2a65f492` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-13.md) | 120 | `declaration-track:b31c9f57e5c4bd6507b5a9d21edb5b6d7b6cbe866d11532a08e6c9fd16544853` |
| 16 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-4.md) | 124 | `declaration-track:2f42a6e965938966320f1cb20386854f73da3707f105c44db913139ae9b691a1` |
| 17 | `lemma` | [Definable.out_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-out-equiv-source-edition-3.md) | 127 | `result-track:7f1317995979faf23266114f8d83fdd61c6d5f48a5e2d4f2146bd0734dfc33fc` |
| 18 | `lemma` | [Definable₁.out_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-out-equiv.md) | 133 | `result-track:0ad723975e4874b3de8e02d7ce96aeb6027cb08ec3b13e81cbb245f1eae04608` |
| 19 | `lemma` | [Definable₂.out_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/definable-out-equiv-source-edition-2.md) | 138 | `result-track:6eda8baae67f80afe9ec4455c50f35baaf15789095256c6a70b9e5a30a4ddaf9` |
| 20 | `def` | [allZFSetDefinable](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/allzfsetdefinable.md) | 151 | `declaration-track:2fb0844bd9440a6b172f9261d08bd1139132202d5a65befd3561a0892ea699c4` |
| 21 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/eq.md) | 161 | `result-track:8ff4bedcb84a2810f39e9629afe1b4e79fd282304ea811cef77f999dddd6d4b1` |
| 22 | `theorem` | [sound](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sound.md) | 164 | `result-track:796032ceeb68c32ab0512d93c0e737675d0635bf000ff4b68a2b3239d53b6329` |
| 23 | `theorem` | [exact](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/exact.md) | 167 | `result-track:e11860d883e54b4361c20083a6e10943341610011b7257a5a07e247ff213a689` |
| 24 | `def` | [toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/toset.md) | 171 | `declaration-track:432f6f66900c74fe9f372d3165a228b5f34ee7ed3727394d74c3e6c07bfd3501` |
| 25 | `lemma` | [ext_aux](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/ext-aux.md) | 175 | `result-track:e411b90c36ead59f33bf304f0487a406f065fe95ffcc6a89faa306c441fcf94e` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance.md) | 178 | `declaration-track:0db1ef7f36db589343db6e71bfa34017dbe50ba6dccd9ab16bbca8acf9ae5743` |
| 27 | `def` | [Mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem.md) | 184 | `declaration-track:e4d7260e27d9291fd57a8a4156d8baf531cda0fcda48a170c9f033ade55dc7aa` |
| 28 | `theorem` | [mk_mem_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mk-mem-iff.md) | 187 | `result-track:932c482e4a54ed4afc0dc8866651df135c4ba0b1b6e2e300b1d600ac54158d88` |
| 29 | `lemma` | [ext](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/ext.md) | 190 | `result-track:f08223b5ce33c587e93db2f0ea89260198a75fbd1f36043c0393bf7c7963717b` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-17.md) | 192 | `declaration-track:daa31c7209e4b8ec7e7ed4d9172111fb5e98367bf32579c8e6c84051ecc14646` |
| 31 | `instance` | [small_coe](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/small-coe.md) | 194 | `declaration-track:536c21a9fd9bd1fb3c9d994bfec6a937a3ce6709d638115f385be525b4d43216` |
| 32 | `def` | [Nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/nonempty.md) | 204 | `declaration-track:18aa7507ec2f772ae2f64700817c1e7a5cde2338d53a202d5675310572351ee6` |
| 33 | `theorem` | [nonempty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/nonempty-def.md) | 206 | `result-track:68b80c536557076f69a771d3c6f625269468f7c2baaac4d33bb23e9ae51bfc48` |
| 34 | `theorem` | [nonempty_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/nonempty-of-mem.md) | 209 | `result-track:38e6c3470fccae2f7bc504d3ab6e4ae10cfcead63e65497aff52cf95a5dfea74` |
| 35 | `lemma` | [nonempty_coe](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/nonempty-coe.md) | 212 | `result-track:1cd81565a7c6f67b56e15c4d17ad3d936f036d2d07c496190738c8964f171f81` |
| 36 | `lemma` | [le_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/le-def.md) | 215 | `result-track:6f79eadf92f1ba5d7645abb3f5e09b46cb2e7bb88d1812532f944dd3f3524967` |
| 37 | `lemma` | [lt_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/lt-def.md) | 217 | `result-track:1192df371d8177cd1e1505c4dbcab263613551d0b46b232617b8bc3629cbe141` |
| 38 | `theorem` | [subset_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/subset-def.md) | 219 | `result-track:73f76190707d0cb4b38e3d111fd0fedb89692763652fde6453a3dcd0f522c374` |
| 39 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-14.md) | 222 | `declaration-track:c5ddba4810ca5406f56918d540f13651c8c565f1af2c2a4ddc8e81a9d250b933` |
| 40 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-21.md) | 225 | `declaration-track:f0f504fdb946c8a95b4d3f391c3b1404fd20138971ab7c997cfc18de226c7ad0` |
| 41 | `theorem` | [subset_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/subset-iff.md) | 229 | `result-track:276ad0cada307b4e00d1177f3d2549b154c732d52792fc1d5def7931bf1beb76` |
| 42 | `lemma` | [coe_subset_coe](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-subset-coe.md) | 236 | `result-track:b7c2784cda7ff36970ffae9e32150948e3ac5572b5bc0fff7f0d5a9d03ffde70` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-6.md) | 238 | `declaration-track:4c41e743d59992e0f706ffedfb20d4fc5760cabe9b2e5a6fa8d43d6467f569b8` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-10.md) | 241 | `declaration-track:8b4a1d496279c4ceecec1837293c07a52934c5fc970caed26cd10367d0bebcff` |
| 45 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/empty.md) | 245 | `declaration-track:7a25275b67e0a28d569858ccc81680958092114d77104f4b29930c53e4228cdb` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-15.md) | 248 | `declaration-track:c92848a7e4c5a83c645726af01d617e85cc20ac7a25d3722b2210cdc8b6e33ea` |
| 47 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-18.md) | 251 | `declaration-track:dc164a89d4ad11648efbc8dffd399ad8fde8c61f6b3c1827cb0863d91ec1ac7a` |
| 48 | `theorem` | [notMem_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/notmem-empty.md) | 255 | `result-track:c830992369729a98f33458c2d8d43b32169eff2191bd40f0552446c86d65ceed` |
| 49 | `lemma` | [coe_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-empty.md) | 258 | `result-track:035aa596e0a474569f94eb84a99ec3bac53572de07b6205ec15a72a130eb83cb` |
| 50 | `theorem` | [empty_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/empty-subset.md) | 261 | `result-track:89955caaa9de006bb3c26a1b239e9e9f79203e56229ded4384e577b909a51f8b` |
| 51 | `theorem` | [not_nonempty_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/not-nonempty-empty.md) | 265 | `result-track:ca05b8cc64de89a51da07a819cbd54056f103d361106488ac246a08c2602aa4b` |
| 52 | `theorem` | [nonempty_mk_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/nonempty-mk-iff.md) | 268 | `result-track:7d089f93564fad4f928e315f78553d7682fd81e8ecbc0840f3c5b39c8e8556c6` |
| 53 | `theorem` | [eq_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/eq-empty.md) | 274 | `result-track:7c0e9ef090148c6501f3a51c86ef80ddacad83e49d7cc85bb4443e834c601c66` |
| 54 | `theorem` | [eq_empty_or_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/eq-empty-or-nonempty.md) | 277 | `result-track:275f0f3ee1b7064527384c7d880e94b2bf9a48131156800b874356a0ec307012` |
| 55 | `def` | [Insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/insert.md) | 282 | `declaration-track:a66aa494f86e5ddc5834df58489f558ecbfca8818ea3d6127daf904a3c64ea56` |
| 56 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-11.md) | 298 | `declaration-track:a740f500f63b3e2f0ef3d2332426716329434659fcf488b8738b766d88041409` |
| 57 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-7.md) | 301 | `declaration-track:5748f40922f2a3d309743588fddbb8106fba3e0c0856ca8901c36b46faec600a` |
| 58 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-22.md) | 304 | `declaration-track:fe1e5b5083246a95e964c2e9ccdf369a95a6a86aa05f4c316a3a90c8c455c852` |
| 59 | `theorem` | [mem_insert_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-insert-iff.md) | 308 | `result-track:90eb484b6da5e3d8ecdc5cedea47bdceebf892edbc848c03444d8b2213c4798b` |
| 60 | `theorem` | [mem_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-insert.md) | 311 | `result-track:02fdf4e3175f9a3f589310398280fbc109fd6c69c335ff900c035dfe2fb48895` |
| 61 | `theorem` | [mem_insert_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-insert-of-mem.md) | 314 | `result-track:62874b75a8c60fd9b9d566cd105202c987361aaf07f504463e9b2f54405f3520` |
| 62 | `lemma` | [coe_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-insert.md) | 318 | `result-track:e77ebc792d4d8e5276058e5c3dae91be264403f890365c2f89f429e1689f61b9` |
| 63 | `theorem` | [mem_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-singleton.md) | 321 | `result-track:a86750847dc01113dc2072d61da09e073b8727b1d22dc0baceb8668ffe9be3a1` |
| 64 | `theorem` | [notMem_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/notmem-singleton.md) | 324 | `result-track:1a95a71aae88e3ade839acd9c255af348b7bab1e05b7f3b64792654689e24673` |
| 65 | `lemma` | [coe_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-singleton.md) | 328 | `result-track:0f04c89f30599c2d604213e6ab2e0f9d0fa36c1469f4d8e91f30f119d8eabdf6` |
| 66 | `theorem` | [insert_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/insert-nonempty.md) | 330 | `result-track:4027e511fa9100249c9509c52455e8e44f3a2bc952658e073de3aba3c77b952d` |
| 67 | `theorem` | [singleton_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/singleton-nonempty.md) | 333 | `result-track:3ea3f860100f0dd748b273f6b545887b31c08556f443c506057dbba4cdc90d95` |
| 68 | `theorem` | [mem_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-pair.md) | 336 | `result-track:47c1435488e7e1d89c65b11f36de2784ef10479dbe581495cd9b1be036c30162` |
| 69 | `theorem` | [pair_eq_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair-eq-singleton.md) | 340 | `result-track:4ce3b606dd218511324f960b9491897d46b717036a791e0e3a6f107296420e31` |
| 70 | `theorem` | [pair_eq_singleton_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair-eq-singleton-iff.md) | 345 | `result-track:5da81195de8d4c7c729c6f1482779eb814a0da343676345da3175f70cabba31d` |
| 71 | `theorem` | [singleton_eq_pair_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/singleton-eq-pair-iff.md) | 353 | `result-track:65667372435ad0e87b3efddb2c591025b4b5ce24cc1319250bc4accab9d8b9d1` |
| 72 | `def` | [omega](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/omega.md) | 358 | `declaration-track:6f29058d229506a183873d3d470b748c144df04bc8a66866ffea4e28b47be679` |
| 73 | `theorem` | [omega_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/omega-zero.md) | 362 | `result-track:7ba502028fb45946d8a3fc48ab8c221961c936e1022be3e051f38cc2c47a03c0` |
| 74 | `theorem` | [omega_succ](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/omega-succ.md) | 366 | `result-track:e237507760e87f29fafc05bfdb008cbf327af2edc1e5c355e669cca487fd584b` |
| 75 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sep.md) | 375 | `declaration-track:b5ebb75f994e5735f62d4e0a206397ee5ad6d8aa4013ee54627528e928239e5a` |
| 76 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-16.md) | 386 | `declaration-track:cebd91d56909e1636bc094c0af5103438199773d72965c79b252df04c43cfd85` |
| 77 | `theorem` | [mem_sep](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-sep.md) | 390 | `result-track:9c0b919574c7b700bc98fadba310a5e2a3298a0d96fbc24c7798731220a66e52` |
| 78 | `theorem` | [sep_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sep-empty.md) | 396 | `result-track:9325d5115ff9e4dadcceece6b7dfce92c4feb51cc54324a330262f18795bb745` |
| 79 | `theorem` | [sep_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sep-subset.md) | 399 | `result-track:08da725c965fd1f6b0257bf55a56e4ba6a466d92511b56f682992f837e462b5a` |
| 80 | `lemma` | [coe_sep](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-sep.md) | 403 | `result-track:93c79aee9c68698eb6e55f5418f9a716f31280ec0769a90191320ca5b6479a19` |
| 81 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/powerset.md) | 408 | `declaration-track:120bc70ca64cb4781ceed897584286eae2f0a36123fe92912dff80ad6f5ae8e1` |
| 82 | `theorem` | [mem_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-powerset.md) | 422 | `result-track:bd1a97e66a5fe2f62fff7375fda366dbfcf08b990680cedf9c9eab2617fcfad7` |
| 83 | `theorem` | [sUnion_lem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sunion-lem.md) | 425 | `result-track:61750f3d19901d75a5757221749db0b0f667b26f9cb136388e3901cb2e985d87` |
| 84 | `def` | [sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sunion.md) | 443 | `declaration-track:8268d29f2a6f9f892cb05dbe94c6f68e21dd83a1d2c778583b5b410f8d8f4800` |
| 85 | `def` | [sInter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sinter.md) | 456 | `declaration-track:fbe05ce83efef06d114b5aaf9013b4875b04b27f1953ad0090742c0c54d0b688` |
| 86 | `theorem` | [mem_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-sunion.md) | 462 | `result-track:0f1a26700514f47e8e0ae29bc15abaa3be20e581bb93a100054c3c3b97718703` |
| 87 | `theorem` | [mem_sInter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-sinter.md) | 466 | `result-track:54cf6e2cc13c6fe4a3473dc731c337a8f8c76038153e12757383eef68f91c2e9` |
| 88 | `theorem` | [sUnion_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sunion-empty.md) | 475 | `result-track:cf3f1a5bdbceeeb3a757f1862100dcf878d34252ae151798990fc20678099b5f` |
| 89 | `theorem` | [sInter_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sinter-empty.md) | 480 | `result-track:81909e83998ff0b4279c311eb3ae309c41ef6732233095b44a19b13c454b2dc1` |
| 90 | `theorem` | [mem_of_mem_sInter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-of-mem-sinter.md) | 482 | `result-track:9a5d7dca20b3656e0428dd88afdf95ddea2e1405e68cd98e7cc9bebd1c2deb98` |
| 91 | `theorem` | [mem_sUnion_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-sunion-of-mem.md) | 487 | `result-track:13986479a89975990919a54cfaca235d5b6d5bb32f0cc1a3c52587b153cf824c` |
| 92 | `theorem` | [notMem_sInter_of_notMem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/notmem-sinter-of-notmem.md) | 490 | `result-track:b766f0b9d127ecd27f051da9a6c55f7e508ac4175b3bda031ab6462ab4cb540e` |
| 93 | `theorem` | [sUnion_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sunion-singleton.md) | 494 | `result-track:49ba3efa72f53458c1f2e302a1d4118bba96587f97ce649d55dc198ae7d46934` |
| 94 | `theorem` | [sInter_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sinter-singleton.md) | 498 | `result-track:bb8b910697e39ea43ded5b0277d5242fc70b63843a82771360698b17123f9a82` |
| 95 | `lemma` | [coe_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-sunion.md) | 502 | `result-track:a1919e65040486d3be48afd4a1b0937523e00579e2c7f9fded1397c6aeb43f55` |
| 96 | `lemma` | [coe_sInter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-sinter.md) | 507 | `result-track:aa493437df0099ca9fb1c0afe85d81e14613ac9b834d578d04dfd3f9344e3f20` |
| 97 | `theorem` | [singleton_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/singleton-injective.md) | 511 | `result-track:f55a9b6ac29bb02d69c718b5bf83e9cdc9511826afc88542b518d404d3ea3f71` |
| 98 | `theorem` | [singleton_inj](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/singleton-inj.md) | 516 | `result-track:dc18569df943ba006078fa361d7ddb43a3112223b7659ce0fdf917b5d3ad5b02` |
| 99 | `def` | [union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/union.md) | 520 | `declaration-track:c05fb0230e93bb91c142980c545adc25731e92338a69f2f9ed23deefc0914a98` |
| 100 | `def` | [inter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/inter.md) | 524 | `declaration-track:1855e950f7526a1fd449f1d7c7c6b279f8cc59b859472663a8fa8dd43bdfc8d0` |
| 101 | `def` | [diff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/diff.md) | 528 | `declaration-track:5468737df99ef9224fca5e5e02bfe4d3ebc6331685180f1f5279fa4212339739` |
| 102 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-2.md) | 531 | `declaration-track:1f81f51d8eaf58d969867d704a124536c53f455c5a02bfa2c3aeed690ab42420` |
| 103 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-12.md) | 534 | `declaration-track:aadbfc096a7bc49f9eafbfd33a7e8a1a5fe29bf816b35d3a16b73a99922b5ccc` |
| 104 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-20.md) | 537 | `declaration-track:e898f6cdb9ccb764048a3cdb37ac9fd3de72b8b6b62c75629aac54739ffec6bb` |
| 105 | `lemma` | [sUnion_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sunion-pair.md) | 540 | `result-track:d604233ad34248068749c1e4ebb3a63a242d8621637c504e5cfc9ef2ca3ca8a6` |
| 106 | `lemma` | [sep_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sep-mem.md) | 542 | `result-track:028be2751cae857124e8d4129a97c70b066eeb1f81c9f19d62f343c0356ee47f` |
| 107 | `lemma` | [sep_notMem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/sep-notmem.md) | 543 | `result-track:3ad755c628be99fd61fbaadd60db28e3cf76f3abca44b594777475c55d20e463` |
| 108 | `lemma` | [mem_union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-union.md) | 545 | `result-track:23b84402a88d2ce878e25482454742b5e76d519a120ec48764b3100b386a6603` |
| 109 | `lemma` | [mem_inter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-inter.md) | 546 | `result-track:5a0239457421ab15804f1060327e8d687cb62ffb224fe6968437908022ecde39` |
| 110 | `lemma` | [mem_sdiff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-sdiff.md) | 547 | `result-track:0b338999ed0ca054fabc06ff6d6dea74416947881513730225c69e9417362d3a` |
| 111 | `lemma` | [coe_union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-union.md) | 550 | `result-track:cbb542719babf843655298e42041f1844a4375bead90da40d73c812a63c50d5a` |
| 112 | `lemma` | [coe_inter](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-inter.md) | 553 | `result-track:1eda55ddf746949e0e1530864d38efa89251f2b4a2182db631fc3a5c45b993dc` |
| 113 | `lemma` | [coe_sdiff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-sdiff.md) | 556 | `result-track:100f35d87c9e1356f181dcb89936ce4376cf20ffd150413f1a66154196374b36` |
| 114 | `lemma` | [inter_eq_left_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/inter-eq-left-of-subset.md) | 558 | `result-track:7492b9e83f8ef948d324612b2e9274ba49d62726efb849bccfd00b89fe43baa4` |
| 115 | `lemma` | [inter_eq_right_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/inter-eq-right-of-subset.md) | 559 | `result-track:374df65485717bd11fa756f3371c62e18239c1903a1c0a6313b717eb18787cc0` |
| 116 | `def` | [powersetEquiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/powersetequiv.md) | 562 | `declaration-track:a633e6b93aa2491ebf67f910c571e10877bd40b35dd2430011cbcc3273ceeaee` |
| 117 | `theorem` | [insert_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/insert-eq.md) | 568 | `result-track:abedef594c2714bf0002570f228a3da36524ac867e4ad5c470d14b2bacd5afcc` |
| 118 | `instance` | [mem_wf](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-wf.md) | 571 | `declaration-track:aabd45d3c8b322fe8f5869080262f655497b8baaa5379a84438b0bb7d6f1730b` |
| 119 | `theorem` | [inductionOn](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/inductionon.md) | 577 | `result-track:343eece51dd0df6397b6bc5e71601ea4e0474bbf4e8c222926b4dfd7180baaf4` |
| 120 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-9.md) | 580 | `declaration-track:6d9e2d01c451ce194086afe114dbd19ca0c1d747d37aeb7cb36d74b495891552` |
| 121 | `theorem` | [mem_asymm](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-asymm.md) | 583 | `result-track:072eb556b0c9db872e978d85f721fa648a17f756e1fedcf1607a9c4fb13e51ba` |
| 122 | `theorem` | [mem_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-irrefl.md) | 586 | `result-track:ca71a7044267a215552e24decc1361e3f6d564b581d008f42210da3ef523fb09` |
| 123 | `theorem` | [not_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/not-subset-of-mem.md) | 589 | `result-track:929dca9ee650f2ee06c76b73008cd3edd1326bb957f318c357c354f35b423d0d` |
| 124 | `theorem` | [notMem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/notmem-of-subset.md) | 592 | `result-track:045c558e617f51ac7d0a5a342711532626f6ef02012b94a5f5d77f24a5da32b3` |
| 125 | `theorem` | [regularity](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/regularity.md) | 595 | `result-track:5715ba0031f7b581e01849cc7ba812a4c1d8d2da9ea08c6aee066c4b14e245b2` |
| 126 | `def` | [image](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/image.md) | 604 | `declaration-track:f44e0df92762a499a41cecf6b177e0b4228a2417aef098640dac2db76492b4ce` |
| 127 | `theorem` | [image.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/image-mk.md) | 615 | `result-track:e472b62f07b55e766dff208331f0b836fe632a1352b86362cf79f407f7f24fb4` |
| 128 | `theorem` | [mem_image](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-image.md) | 621 | `result-track:163a518d2bd42a189b919a2f5de06c5212ef0dea3bbb9e57f9ead444dcec47cf` |
| 129 | `lemma` | [coe_image](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-image.md) | 628 | `result-track:dfc772eb4fa5492c0d47a886b610bbd79407db7c0558ab11b405f101e7a78159` |
| 130 | `def` | [range](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/range.md) | 636 | `declaration-track:8243b33dcf7a8ccf170a5b4ef4cf68d0049ab6e8f74ef03821604fba1bff821c` |
| 131 | `theorem` | [mem_range](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-range.md) | 641 | `result-track:057f0594fd84a90f07a18d70c3f8d98655cfb4b003daa4c7eb80b77695606388` |
| 132 | `lemma` | [coe_range](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-range.md) | 651 | `result-track:38dfcf0224e3896b4d33c85c7afc36244755ef2256f6ac456cb0b272ecb7c8c8` |
| 133 | `theorem` | [mem_range_self](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-range-self.md) | 653 | `result-track:8f728bc60a4d9dc4ce47580ea0248362f293f312171298327f23d3fa4ed81b3c` |
| 134 | `def` | [iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/iunion.md) | 656 | `declaration-track:a5dc6873a55bf5b958ae0311aca4782026b2f7213b2fd328177f13d4d330225a` |
| 135 | `theorem` | [mem_iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-iunion.md) | 662 | `result-track:d1f93970af4564a91cec077e954ef1620272a5b4bcf75d445765e64cfa133848` |
| 136 | `lemma` | [coe_iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-iunion.md) | 666 | `result-track:f7a3f94389098895e518a5c17687adf8f4b62268e3436d37383ccc0583b9a74b` |
| 137 | `theorem` | [subset_iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/subset-iunion.md) | 670 | `result-track:42a6c05f529ca42a71f4aa2e17b5fa63d5af37e12c9cd6fd07750cb930c510ef` |
| 138 | `def` | [pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair.md) | 677 | `declaration-track:fb94a77ef7b6db0e822b86dd135dd91c537fb1a68f12c6a5b490e9971490ae1f` |
| 139 | `lemma` | [coe_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/coe-pair.md) | 681 | `result-track:8f2e36ead602b1ac29bb0568ea7e97caf9c5042e0d637c259a4190d3165ff7fb` |
| 140 | `def` | [pairSep](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pairsep.md) | 684 | `declaration-track:fbe62d7e14a09115ded1c39690ce68182e908f9932e04044f29a3a39f1d6fc34` |
| 141 | `theorem` | [mem_pairSep](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-pairsep.md) | 688 | `result-track:947f5416f02fdfa1ed03761816f9d747cf34e10d79f543880d2ae214352967e8` |
| 142 | `theorem` | [pair_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair-injective.md) | 693 | `result-track:c83b10fc7f40d0a94460b82ff94ddd1c232eae9b07066584b3c75e4c483da472` |
| 143 | `theorem` | [pair_inj](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair-inj.md) | 706 | `result-track:4a4bf2fc7ceb661add97ebf6170630dcef14d19eabf68d336809cbfcafff90e4` |
| 144 | `def` | [prod](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/prod.md) | 710 | `declaration-track:9e5e38d9d6745aa41786362c9dc798b019f31fc34f028f7208154ca93bd8b518` |
| 145 | `theorem` | [mem_prod](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-prod.md) | 714 | `result-track:7ed0cc93df1620a22475fdab32bbe84cbcad392de9eda5986bb52ade1ccfca23` |
| 146 | `theorem` | [pair_mem_prod](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/pair-mem-prod.md) | 717 | `result-track:6c4048efa3807c2dc748329555e2eb188814c911eb46becc776dde9caeb14a37` |
| 147 | `def` | [IsFunc](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/isfunc.md) | 722 | `declaration-track:57c20d608b2b3c2e471219ba780e9be6c66072fc670a113ef2165b5c46554c01` |
| 148 | `def` | [funs](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/funs.md) | 726 | `declaration-track:f9930be07dde4c42cadb62117961c57df09c9c9d19f649347eb811f6221bbfd7` |
| 149 | `theorem` | [mem_funs](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-funs.md) | 730 | `result-track:a88c7029bc2466ec3127f0cbad1e7eef707f43e340c11beda83b6ff7a285a933` |
| 150 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-19.md) | 732 | `declaration-track:e55c7b3c9ff00288c9260c3b8e5501e89a6f126034ee07c85cead941518c1b6f` |
| 151 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-3.md) | 733 | `declaration-track:276ea1dd1eb5ab6e8dbc0349949b7091c13031918d6917a72b972df4aefd2abf` |
| 152 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/instance-source-edition-5.md) | 734 | `declaration-track:326d606d6fd44449bcda1b0d1c4931c76885c6f9da1d55d977937ae64bafc99d` |
| 153 | `def` | [map](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/map.md) | 737 | `declaration-track:1706754e05d8936846e19cf96321dd2f764a9eb13cc1935763a46b1650b4ba40` |
| 154 | `theorem` | [mem_map](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/mem-map.md) | 741 | `result-track:f9052d9b910cece6aaf871834ffd08ca7c24b63223dab433efeb5b7b7c1c876c` |
| 155 | `theorem` | [map_unique](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/map-unique.md) | 745 | `result-track:e116a88d6215983c283c340f8b0d30026e1b72a83445882b73f027b1afc8a670` |
| 156 | `theorem` | [map_isFunc](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/map-isfunc.md) | 753 | `result-track:5bd412493ff835ac3437d4cfe20660a065f9acf2a5c0f089154e468cf9c3761d` |
| 157 | `def` | [Hereditarily](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/hereditarily.md) | 766 | `declaration-track:c6186d6a8a3e554b19cc5f83d6e5fc618e15390e049d736bd0f28935cd473c61` |
| 158 | `theorem` | [hereditarily_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/hereditarily-iff.md) | 774 | `result-track:03e4f0aa91154c8f716b6c9744261819e4f3cf4a4b665e78b643acf2c4a3b7e6` |
| 159 | `theorem` | [Hereditarily.self](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/hereditarily-self.md) | 779 | `result-track:5162a561412ae84e0405b1cefda0c30cd6f63a95d13f89fb146c7f60c22078d2` |
| 160 | `theorem` | [Hereditarily.mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/hereditarily-mem.md) | 782 | `result-track:596e560aebd93b403ab52982d2971b4a9afd6857acc6cfd9cf1221faad812730` |
| 161 | `theorem` | [Hereditarily.empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCBasicPublic.lean/declarations/hereditarily-empty.md) | 785 | `result-track:0a8085529bd2efd15e3e5d9f44e0cd4221d9a0e03cb8e7138f90f59dcceaf54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa12fc5eee0768f4345bb837ce1a2fb2766078b6bc4ce8fc183adb67edda6b77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant34835ce2dba7517b7e2fa76b98f4c09bd5a809f145aedaf712cab505f52fe974.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant34835ce2dba7517b7e2fa76b98f4c09bd5a809f145aedaf712cab505f52fe974.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
