# Verification target: Prime Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4016ac7a4b9f349db558481d8413fff972046f1d",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4016ac7a4b9f349db558481d8413fff972046f1d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime.md) | 40 | `declaration-track:95ce9c1b8e58d6b640ed606cae3ea6ecdbdc879d6498b6dfbea960246dc54bbc` |
| 2 | `theorem` | [irreducible_iff_nat_prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/irreducible-iff-nat-prime.md) | 43 | `result-track:5536f91a1913f019be9e58bbb80b4742144388bd80577815f1694beb7c16f328` |
| 3 | `theorem` | [not_prime_zero](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/not-prime-zero.md) | 46 | `result-track:baac3435c40abe4bc9b325fca4fc7b97068c1c7e08fa50752de76d6bcc8b3c51` |
| 4 | `theorem` | [prime_zero_false](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-zero-false.md) | 52 | `result-track:0f861b4a70fa48f6d3e37fe7b8254056bf1f2edfed594db50a477f47c8cad9f2` |
| 5 | `theorem` | [not_prime_one](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/not-prime-one.md) | 55 | `result-track:8309441e0cae388d859e43c76d0c95db5602f3389caf4c76125affcebc91c6ee` |
| 6 | `theorem` | [prime_one_false](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-one-false.md) | 61 | `result-track:2dbbcf87372adbe8de49734cd076aa9508ba1ece37df0c32a9d378009b5ac07c` |
| 7 | `theorem` | [Prime.ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-ne-zero.md) | 64 | `result-track:aca2f204157386720d5ad1929b1bc47949c3ebc0f5dcdafb79039b4d51398edb` |
| 8 | `theorem` | [Prime.pos](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-pos.md) | 67 | `result-track:53ed93dae83d858ae4ed726a66797a62d570c5a805a49a98c87047bce28bc24c` |
| 9 | `theorem` | [Prime.two_le](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-two-le.md) | 70 | `result-track:d2952ba15280d99bcff1184e76428509efd31e0ae62805a8df90a10909502083` |
| 10 | `theorem` | [Prime.one_lt](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-one-lt-source-edition-2.md) | 75 | `result-track:ac46af66fa8cf73af0ffc3e55254a0a92367fa480706365cafde4b359e174991` |
| 11 | `lemma` | [Prime.one_le](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-one-le.md) | 78 | `result-track:e5080dcb76da3746215d2f7eab2c61f334b1261a39ee606a2e93da8dc6a1e728` |
| 12 | `instance` | [Prime.one_lt'](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-one-lt.md) | 80 | `declaration-track:805af3bb5c06533c704af2dd25672c030ec49b97bc4100c21ef552216192276e` |
| 13 | `theorem` | [Prime.ne_one](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-ne-one.md) | 83 | `result-track:a5c2c7837af93dbf3fbda54b30f9a570684a45e7ea0ea0b2722caedeef099619` |
| 14 | `theorem` | [Prime.eq_one_or_self_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-eq-one-or-self-of-dvd.md) | 86 | `result-track:9375e75d811a701b7abdb798f96c53c9e9ee0d2c341586ff5e567d368c5b6318` |
| 15 | `theorem` | [prime_def](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-def.md) | 96 | `result-track:b4db663fe8be9ec479c32c7b24833843e6ed5f9eec0274f878656418e2de82d1` |
| 16 | `theorem` | [prime_def_lt](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-def-lt.md) | 108 | `result-track:8af09b9b1733c1be98dc3f288b644c70354455d269ab5681cfce4637b79255b3` |
| 17 | `theorem` | [prime_def_lt'](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-def-lt-source-edition-2.md) | 115 | `result-track:ae972a8393244f16518ceadd7758f3fd4891ba324fc0df552351c785242ba23e` |
| 18 | `theorem` | [prime_def_le_sqrt](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-def-le-sqrt.md) | 127 | `result-track:5793e1eabff19b234bc264cb075bd1a388c4a9fb183395b73f42e21ef3652b19` |
| 19 | `theorem` | [prime_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-of-coprime.md) | 140 | `result-track:6ac5dd903a26eb8d158591d87b9f1082312749e2b3cff0d70b05a2da917e534e` |
| 20 | `instance` | [decidablePrime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/decidableprime.md) | 158 | `declaration-track:7618c2a255b8aa624ee2f0492eea4a8e5b7e70ed1a8fa49ee094f6bbdbb97342` |
| 21 | `theorem` | [prime_two](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-two.md) | 161 | `result-track:bb05c96c28e5c64f4ebfd8288957579f09681447bc44ead4dab01f851bd9b600` |
| 22 | `theorem` | [prime_three](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-three.md) | 163 | `result-track:96691041e5f52be129d368f9cb49c016ef059cd0f56fa6083295e5a256a2d5cd` |
| 23 | `theorem` | [prime_five](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-five.md) | 165 | `result-track:26fe74814e6700026a4e117bf020631702821ee31e0349c3812715e157583916` |
| 24 | `theorem` | [prime_seven](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-seven.md) | 167 | `result-track:78978c8ff1f89ceeafad5103ab375b54fbe7661ac53672b8ae137c1175898bb5` |
| 25 | `theorem` | [prime_eleven](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-eleven.md) | 169 | `result-track:0f945eaac539727b7e1a376b1179361e6cdebc35d7294f1a68cba2b7dc4157c7` |
| 26 | `theorem` | [dvd_prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/dvd-prime.md) | 171 | `result-track:c507f6951d3ba4b8fff33e90a012e488d224abce3c237a37866739ea4547ab64` |
| 27 | `theorem` | [dvd_prime_two_le](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/dvd-prime-two-le.md) | 175 | `result-track:77bc1f3ee6456a6eded3df803251b2ff634c76da65221e376ddfa20880a42794` |
| 28 | `theorem` | [prime_dvd_prime_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-dvd-prime-iff-eq.md) | 178 | `result-track:ba75e9179793ca7a99097ced420c00366a04653be0ae84380ddd3779ce5bb27f` |
| 29 | `theorem` | [Prime.not_dvd_one](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-not-dvd-one.md) | 181 | `result-track:62a621f1b333e16b36cc3e09562b9d42a259d796b161469f435376d85ce6cad7` |
| 30 | `theorem` | [minFac_lemma](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-lemma.md) | 186 | `result-track:d8832a2b6e413cfacdf4361c2a4c97c7508c429516815ddeb6dc4bfab1b79eb2` |
| 31 | `def` | [minFacAux](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfacaux.md) | 201 | `declaration-track:a4ad658bb0fe2b8a4bc135d60818072578f4c1dcecc3b526131add31f6dcc013` |
| 32 | `def` | [minFac](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac.md) | 212 | `declaration-track:6f277ef1457b0e548e5d8570cc42e26074a8a215d910a0a36e22b5c6006fd253` |
| 33 | `theorem` | [minFac_zero](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-zero.md) | 216 | `result-track:73439002a55fd4c3578ee7887b056158944a9e2d41dbc3333259273e1d25c37f` |
| 34 | `theorem` | [minFac_one](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-one.md) | 220 | `result-track:c5eae138939bcfe98f99ec1b7112c49f16b211f44155781214ba362b2f07d16d` |
| 35 | `theorem` | [minFac_two](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-two.md) | 224 | `result-track:a514917ce03fabf5b94c77eedbeb32298901115419200de85426fd671abf5359` |
| 36 | `theorem` | [minFac_eq](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-eq.md) | 227 | `result-track:11852981b98108e676c124c0638a0a1e55143d795641fbcc643f1c7a2b694a5c` |
| 37 | `def` | [minFacProp](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfacprop.md) | 229 | `declaration-track:6c50df720096d98fe64c11928f53d54dce4c077bbb4c91adc4059804221bea34` |
| 38 | `theorem` | [minFacAux_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfacaux-has-prop.md) | 232 | `result-track:b35e99e5e5017fc5136b1d737c81e83137ec758a86ab2986f6c02c0d578a64b1` |
| 39 | `theorem` | [minFac_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-has-prop.md) | 264 | `result-track:0abfcf0c138a3bf848618893a6777ebcd6ce9b6b4d101569635e16e2ad7dee5e` |
| 40 | `theorem` | [minFac_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-dvd.md) | 277 | `result-track:43ded3ec05a6c6a13a8081df7a49d4d7dce80e02d5b509e5491339a131947aeb` |
| 41 | `theorem` | [minFac_prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-prime.md) | 280 | `result-track:b12b6b9fb35686bbc74dd757687cc1e9a0a3c7ce068b858e8e6527f01296274b` |
| 42 | `theorem` | [minFac_le_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-le-of-dvd.md) | 284 | `result-track:2ed2062db3d095b5552bfd7dc56d826a5f9ad8387a338d0c71079fcbc872926b` |
| 43 | `theorem` | [minFac_pos](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-pos.md) | 289 | `result-track:47f24b9362209478c51c118de42ab60cb372e9f54dbf7d539012ef8d003da927` |
| 44 | `theorem` | [minFac_le](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-le.md) | 294 | `result-track:b5588d7c17681b0166f0b5d3d0c9e73e8c8e113b7221e0814d96d2b7ff69d347` |
| 45 | `theorem` | [le_minFac](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/le-minfac-source-edition-2.md) | 297 | `result-track:ee0ce15e253ab3fe79d6bd98d0dcfefb42d900c44289118a3be4adbf608d0b76` |
| 46 | `theorem` | [le_minFac'](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/le-minfac.md) | 303 | `result-track:5168bfb72b5b6af34562aadd53a30e56b828fdd980c3f6e7904ea20b4e0bd5ef` |
| 47 | `theorem` | [prime_def_minFac](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-def-minfac.md) | 309 | `result-track:6a9dfd03f8d5227b07fa7c44423fa50ea355e34adb309b38bd87dcefdbaadd72` |
| 48 | `theorem` | [Prime.minFac_eq](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-minfac-eq.md) | 317 | `result-track:126eb6b44ef45d4f618c4a30cec1592d35baa3ad068471e56e7b64da47463a72` |
| 49 | `def` | [decidablePrime'](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/decidableprime-source-edition-2.md) | 324 | `declaration-track:7c4e1e0de36f4b4f9dce747d8c8311e6fe7ceef0e2bd2806c573631ed71de9d5` |
| 50 | `theorem` | [decidablePrime_csimp](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/decidableprime-csimp.md) | 327 | `result-track:afe07a92990cd74272f4b5c53b765496fa082d00ca86640b494dffadbae8fa41` |
| 51 | `theorem` | [not_prime_iff_minFac_lt](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/not-prime-iff-minfac-lt.md) | 331 | `result-track:b82dc3b8b405cb59659dbf8b1e8016dc9a7739c3393e35b20efb3d68eead5bca` |
| 52 | `theorem` | [minFac_le_div](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-le-div.md) | 335 | `result-track:a838877dd3465086b07a53a570789ac2913e32b97fc131791c87882032d7d58a` |
| 53 | `theorem` | [minFac_sq_le_self](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-sq-le-self.md) | 352 | `result-track:4674f75eaec5c4e2ca04796c0295029733829788faac257749a5fe3fef06d900` |
| 54 | `theorem` | [minFac_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-eq-one-iff.md) | 360 | `result-track:fef2ab421750af22ba3317fd384a44622a24fa64018ed9cfc662a51df289c7b7` |
| 55 | `theorem` | [minFac_eq_two_iff](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/minfac-eq-two-iff.md) | 371 | `result-track:a67487c3913bbe3360e5086d4ad620652afcc91adbbce896abadb1dcfeb0f392` |
| 56 | `theorem` | [factors_lemma](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/factors-lemma.md) | 385 | `result-track:ee5ca55dec2591c5a2bcc3cb53160d6d3e58c6f655626fff9b7f6b9072ef8c68` |
| 57 | `theorem` | [exists_prime_and_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/exists-prime-and-dvd.md) | 394 | `result-track:bee8541c760c79b366acd3bb1ed235eefb15d6c88fc7afbe16209bba8cd0dd8f` |
| 58 | `theorem` | [coprime_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/coprime-of-dvd.md) | 397 | `result-track:708580183600134ffde3869faa9bdceab8d68649f01dbe232ec51e55c297b8eb` |
| 59 | `theorem` | [Prime.coprime_iff_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-coprime-iff-not-dvd.md) | 405 | `result-track:ca2163de2bdf3829e242a7e910397c96633146310b7bfbbd5b0ee0bf8b88adfc` |
| 60 | `theorem` | [Prime.dvd_mul](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-dvd-mul.md) | 409 | `result-track:c30fed9b4232129fe9d6803d912238f8653a8bf99db38ccb20aff516c265a6f5` |
| 61 | `theorem` | [prime_iff](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/prime-iff.md) | 413 | `result-track:2053a6ddce1b04f441952dfb327ad151f713bbf781f0743319ce909ff67758bd` |
| 62 | `theorem` | [irreducible_iff_prime](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/irreducible-iff-prime.md) | 418 | `result-track:00b72a8eb46ad57169765cb650523fce276b5a8ea725d2f10791a8685c70ead1` |
| 63 | `def` | [Primes](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/primes.md) | 422 | `declaration-track:11daef0365034996b90cbdb84e7774ccda32f7506c0be161f8578532958e149f` |
| 64 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/instance.md) | 428 | `declaration-track:9a4928e22604a126fca18dbbc0d2c7988070bd69231f62fd4f3cc9bc4eaeaaf9` |
| 65 | `instance` | [inhabitedPrimes](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/inhabitedprimes.md) | 431 | `declaration-track:bb483e9c5fc4b334d2ee53d0a3752f317a8a8b1bcc4afd553d724f1124547655` |
| 66 | `instance` | [coeNat](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/coenat.md) | 434 | `declaration-track:a0a288f380c311794317ca0a9b083cf47f104b2a26849af6befb1cc9870870b9` |
| 67 | `theorem` | [coe_nat_injective](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/coe-nat-injective.md) | 437 | `result-track:02648ef2abacf4d5570fa42034ffdebe5c51e6092227bd40e51b4b268827e204` |
| 68 | `theorem` | [coe_nat_inj](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/coe-nat-inj.md) | 440 | `result-track:ce2b11eb038a256f26a6bc63e50a08cd75a56f6b5bb31fd35821183886f738f4` |
| 69 | `instance` | [monoid.primePow](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/monoid-primepow.md) | 445 | `declaration-track:8706cf5aaab2ecf5eba86e3ae30ef60313040dfc186f79121de8bdbbc990f775` |
| 70 | `instance` | [fact_prime_two](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/fact-prime-two.md) | 452 | `declaration-track:1ba0abe6b43fe0625be3782b23f976b3334681078c9680829f0f9aa26e5ef7ee` |
| 71 | `instance` | [fact_prime_three](../../../../../NumberTheory/ElementaryNumberTheory/PrimeDefs.lean/declarations/fact-prime-three.md) | 455 | `declaration-track:7ff96e1cfdad39c3d5dd749c8e9f745ec17579a7df89fae999510a8840309696` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77e11389a556e5efcd4fa8c74a92fd79e3e43f44ff40431e1fbc3898bef1944d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Defs/Variant1de56cf465b529d36d3569c52ed0290c016bc960098f83adc509c03c2afde0e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
