# Verification target: Data Real Sqrt Sqrt Eq Iff Eq Sq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a31b281af483b92946afebaf5e7233b410a7e8",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/index.md) · [Full source](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a31b281af483b92946afebaf5e7233b410a7e8`.

Source path: `GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.NNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneContinuity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-source-edition-2.md) | 44 | `declaration-track:e346e3411e7a74e079b9179a25ef512a9ca37dc05a9ec680eb4875416dafb6ca` |
| 2 | `lemma` | [sq_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sq-sqrt-source-edition-2.md) | 47 | `result-track:5e11cfb75341526a40633dde51f300b14863e3ba62a7690e60bf60ef95d04ce9` |
| 3 | `lemma` | [sqrt_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-sq.md) | 49 | `result-track:4d6244c6442036cc5186626feb444911b053c44ee7e7d2f2105f7a3f00a56e23` |
| 4 | `lemma` | [mul_self_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/mul-self-sqrt-source-edition-2.md) | 51 | `result-track:b88e70f4ea46c17d3af067dcb190c84770d9ef7e24cc296378a7e02e8ca4874b` |
| 5 | `lemma` | [sqrt_mul_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul-self-source-edition-2.md) | 53 | `result-track:f49867cedc1ab812d0485e6a2eb704faee1760003c10a16dae291192137c5754` |
| 6 | `lemma` | [sqrt_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-sqrt-source-edition-2.md) | 55 | `result-track:6668d28d21c5f9e43c7b545bfd14a24950a6bfd72feb6aad29701acf18b34b69` |
| 7 | `lemma` | [sqrt_lt_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt-sqrt-source-edition-2.md) | 57 | `result-track:e70e1a5dd0f99ebcd6836e372de809086df7ab4fb4aa0ab01963387643e21ff5` |
| 8 | `lemma` | [sqrt_eq_iff_eq_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-iff-eq-sq.md) | 59 | `result-track:05bf8c258342f3df532d28d894c7dc7452c2cf85a9173cd0198a6622c5f92337` |
| 9 | `lemma` | [sqrt_le_iff_le_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-iff-le-sq.md) | 61 | `result-track:ea64c441c28bf1407b6e8c5640d8ab7c4166cb4554501e8bbd69adca3704dba6` |
| 10 | `lemma` | [le_sqrt_iff_sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/le-sqrt-iff-sq-le.md) | 63 | `result-track:133a8d77697fb4cab169a970636fa1952effbebde4da931d83bec47c89320a6a` |
| 11 | `lemma` | [sqrt_eq_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-zero.md) | 66 | `result-track:409715c7e48cc0a3816fe5ba2bac34ed23943331140c4738937933c5ad593ad7` |
| 12 | `lemma` | [sqrt_eq_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-one.md) | 68 | `result-track:0fabd8b264e1fb103431601d9d79d14af1c71197478807ec6680c69c1386a61e` |
| 13 | `lemma` | [sqrt_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-zero-source-edition-2.md) | 70 | `result-track:fb6cf9d4705ab46c7ae08711afed760ec7db366974cff8ec52faebcbbe369c1e` |
| 14 | `lemma` | [sqrt_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-one-source-edition-2.md) | 72 | `result-track:54c46c2306939d8c958cea0b8938662cc56c570da9d37551900b69884ca540c3` |
| 15 | `lemma` | [sqrt_le_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-one.md) | 74 | `result-track:0fc2cd8418b1b2ac1f8db4c72c9c364ac5e03dab9abc7b0ca2e9e2da9336fcfb` |
| 16 | `lemma` | [one_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/one-le-sqrt-source-edition-2.md) | 75 | `result-track:8f2b2e87b130bf2d2625cf89b08db92b88b17a062f7f7bdff7dc127532438749` |
| 17 | `theorem` | [sqrt_mul](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul-source-edition-2.md) | 77 | `result-track:29c9db274d5452d809b62c5a75e51fac5737570d15d4b5fa23dade9e0ef90448` |
| 18 | `def` | [sqrtHom](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrthom.md) | 81 | `declaration-track:8a9836bd330012888f24ba5360ee7f4fedea1e2c447b4a0cbeb48d1e0b9f0bd8` |
| 19 | `theorem` | [sqrt_inv](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-inv.md) | 84 | `result-track:6844f4d10fd61d55f57b105da04c638bb5ec1dbadb30359840aa47b231ba0552` |
| 20 | `theorem` | [sqrt_div](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-div-source-edition-3.md) | 87 | `result-track:ce5553bfc7d6f0e681b2140d831e4120cff7e48853da36199135959b71b70e61` |
| 21 | `theorem` | [continuous_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuous-sqrt-source-edition-3.md) | 91 | `result-track:9a217cb3703a3a5212e30c62e6a17ff6c3aefba0de31191b9218c24c8c7c7fe6` |
| 22 | `theorem` | [sqrt_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-pos-source-edition-2.md) | 93 | `result-track:f136168d493fbecc4ca354bfaeef5d4751784cbb6d96a32d71415b0401308c59` |
| 23 | `def` | [sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt.md) | 106 | `declaration-track:c518fe82e9673327ccec67cac49eadf94860d6a010ea0dfd474ee2bece3fca21` |
| 24 | `theorem` | [coe_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/coe-sqrt.md) | 116 | `result-track:d888a49f156a73b9cf890ab10c82bd5981658dd78ed40c355fabafa8c4a2001c` |
| 25 | `theorem` | [continuous_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuous-sqrt-source-edition-2.md) | 120 | `result-track:8ce501ea488624431b911bc3d1577e98f7d77c01cb87f014b93fc57ff1b0630f` |
| 26 | `theorem` | [sqrt_eq_zero_of_nonpos](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-zero-of-nonpos.md) | 123 | `result-track:e852570ccf1bce94ffd8f480636da59b0888fe1c4382d27052df15d301ebb68b` |
| 27 | `theorem` | [sqrt_nonneg](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-nonneg.md) | 125 | `result-track:a88eae120e809f31685ee5d724cffe070a89af3860a6cdfe037f279eeff7ea07` |
| 28 | `theorem` | [mul_self_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/mul-self-sqrt.md) | 128 | `result-track:7f78d204fbbda153dbfa755c040ed0ce954ff50f67a450503552b34942029bd1` |
| 29 | `theorem` | [sqrt_mul_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul-self.md) | 132 | `result-track:099aa41802d815cfbaf0900f7e4ae7da98c678141c688ce185df53435e573917` |
| 30 | `theorem` | [sqrt_eq_cases](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-cases.md) | 135 | `result-track:9719e6fe5a2b07ddfbf5e53d61372274dcf5d370ffcfd8bbbde0e74bc9c7649a` |
| 31 | `theorem` | [sqrt_eq_iff_mul_self_eq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-iff-mul-self-eq.md) | 144 | `result-track:f15fac2f8af5c4dbfc155aa72b54cd9816a0d9d72541fdee24720e7f18efaa06` |
| 32 | `theorem` | [sqrt_eq_iff_mul_self_eq_of_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-iff-mul-self-eq-of-pos.md) | 147 | `result-track:e3ebf31c7e0984da6846f135ce841b9cf2680b5c43d27668cfee966f1a48d539` |
| 33 | `theorem` | [sqrt_eq_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-one-source-edition-2.md) | 151 | `result-track:78cd500f8d00201cfec48624986a38c3f340f243d6f7311bfb882541b54bccc8` |
| 34 | `theorem` | [sq_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sq-sqrt.md) | 157 | `result-track:14d5ae08a1a0616f08e8e7fef8966b17722b5e38398c35e11b63753850292cfd` |
| 35 | `theorem` | [sqrt_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-sq-source-edition-2.md) | 160 | `result-track:f1301711c5993520d3188042832c84aa94eb3f69947372c2eb838a52472d6697` |
| 36 | `theorem` | [sqrt_eq_iff_eq_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-iff-eq-sq-source-edition-2.md) | 162 | `result-track:12b7179246352fa365cd0ee11dd9c6594f97713af0cfa5fe1c5f503a757dfeb8` |
| 37 | `theorem` | [sqrt_mul_self_eq_abs](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul-self-eq-abs.md) | 165 | `result-track:642e15aa1e593bf8fb07d03270fc2ed714cbe8d1c0baac92df9a12ce45262b9e` |
| 38 | `theorem` | [sqrt_sq_eq_abs](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-sq-eq-abs.md) | 168 | `result-track:e3e9f5a74fab17ed938e46514aa738b144313ca518c79deca27328a8fc86865d` |
| 39 | `theorem` | [sqrt_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-zero.md) | 171 | `result-track:567b87dcf1bfb5718fa2cf2c9cb3b82cace8c10e5c0078ba569f598b505bd8d9` |
| 40 | `theorem` | [sqrt_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-one.md) | 174 | `result-track:07c9f83100bb56ec255508d259b8996d6100b2108e615c491b5b62e572163a79` |
| 41 | `theorem` | [sqrt_le_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-sqrt-iff.md) | 177 | `result-track:68cfe3b73b5522f1dc593190f64f8aaddef702eba2090f6f757c05b1dbf04442` |
| 42 | `theorem` | [sqrt_lt_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt-sqrt-iff.md) | 181 | `result-track:df9271348c74d73e6302fc51e2fc3cc584f5f015cc48ba49122b6b0f043a5bb3` |
| 43 | `theorem` | [sqrt_lt_sqrt_iff_of_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt-sqrt-iff-of-pos.md) | 184 | `result-track:ed072bf2983ef777e14a0b50b86312a3da9542f22ef92e4ae206c3c6ad29827d` |
| 44 | `theorem` | [sqrt_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-sqrt.md) | 188 | `result-track:5e4c66d0103735cb2f49a40d9e67e1973c9da162f0d096bfde3c483e3e75659a` |
| 45 | `theorem` | [sqrt_lt_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt-sqrt.md) | 193 | `result-track:db9fad0f5da758a1a1f6acac3ff1449925c0a43700fea37979a9198f5e9ef0bf` |
| 46 | `theorem` | [sqrt_le_left](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-left.md) | 196 | `result-track:a5d6c87a5b8a5fa698e55601fec727ecd3927d4ac2f4e2df5088a43a1b2454f0` |
| 47 | `theorem` | [sqrt_le_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-iff.md) | 200 | `result-track:1df22d0733c76e25bcef17a1d611d35b3ce10d07887aa736213f68c99c99e400` |
| 48 | `theorem` | [sqrt_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt-source-edition-2.md) | 204 | `result-track:bb296dd345e7d209b4c8cef4d66b7584de3a5bddce760dc45c78aff893af7258` |
| 49 | `theorem` | [sqrt_lt'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-lt.md) | 207 | `result-track:760db3358e375fb5af0fea9b77c56cfcf31205e6a7b952b0b2bea04a3ea7ec8a` |
| 50 | `theorem` | [le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/le-sqrt-source-edition-2.md) | 212 | `result-track:bd10c38f701dedfb71c33f300609a43683ff43ca8c9756e9bb001f3423bb68ec` |
| 51 | `theorem` | [le_sqrt'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/le-sqrt.md) | 215 | `result-track:357f94fb784e89325960c9d8f5aad1b9343e8be7e09aa6cef6373e4451e498cc` |
| 52 | `theorem` | [abs_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/abs-le-sqrt.md) | 218 | `result-track:b2a7d442c301dbdf32418ffb3e0cec24cd709976fcf1c69ab963b5d0f303eae4` |
| 53 | `theorem` | [sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sq-le.md) | 221 | `result-track:162f7d7768463b0a70d4bd40ad01091cf717c4f1f6e8d9b08db9ed96be429e7a` |
| 54 | `theorem` | [neg_sqrt_le_of_sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/neg-sqrt-le-of-sq-le.md) | 227 | `result-track:06d9b871e0598157ec03dd722689f734929963236e4615fa6bd686af26648155` |
| 55 | `theorem` | [le_sqrt_of_sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/le-sqrt-of-sq-le.md) | 230 | `result-track:5dafe380664db0d0bef4994271c80c773d8b31b64d5579382cf4d550f561960b` |
| 56 | `theorem` | [sqrt_inj](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-inj.md) | 234 | `result-track:135502f928aa5d3324518a6a0da096f61c38c5e946d75693e25cdb7cf5c3a6f3` |
| 57 | `theorem` | [sqrt_eq_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-zero-source-edition-2.md) | 238 | `result-track:68cb1a589acf0b77639b6997b9f0bc2ad16044be06ed1790d5f6c4ea13839f6c` |
| 58 | `theorem` | [sqrt_eq_zero'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-eq-zero-source-edition-3.md) | 240 | `result-track:fb5ccfd3eb8194b89ee3ad03077c7f74a32769af7690b7c59a71ba4eaf6590b9` |
| 59 | `theorem` | [sqrt_ne_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-ne-zero.md) | 243 | `result-track:08e110dede709550cf4a38426515689d84094f3488fcf76a6a7c90051e69281c` |
| 60 | `theorem` | [sqrt_ne_zero'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-ne-zero-source-edition-2.md) | 245 | `result-track:327004446bc8c7bf670d98ad6db851ad431b56357038abe92f3468591c080295` |
| 61 | `theorem` | [sqrt_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-pos.md) | 248 | `result-track:0d7352845f517f8af60d06653d52e54542ca7d330c93b92b709a339f6189e303` |
| 62 | `lemma` | [sqrt_le_sqrt_iff'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-sqrt-iff-source-edition-2.md) | 253 | `result-track:7771934d8a9d6eaf0868adaebacfad3f4e484ca2ea345decc2d0fd54ce7bc369` |
| 63 | `lemma` | [one_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/one-le-sqrt.md) | 259 | `result-track:78f5e45234fd4db00fc476fa16ad7b6e695cfb151572020bd3d4546132b3e949` |
| 64 | `lemma` | [sqrt_le_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-le-one-source-edition-2.md) | 262 | `result-track:ff51672ba000b20132b7e91ce6dd185158fb7b80a282e15edf739f4bbc0b8c47` |
| 65 | `def` | [evalNNRealSqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/evalnnrealsqrt.md) | 274 | `declaration-track:6cc72c07ca06ad2e36f9eb1fcaf8c88811a1b602d8fa4d92fcbb240fcf3c46eb` |
| 66 | `def` | [evalSqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/evalsqrt.md) | 287 | `declaration-track:ad92462d6693b8010ba0f49706ab60daa94fe4a26bd6b55f2b2cba48ba285b0d` |
| 67 | `theorem` | [sqrt_mul](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul-source-edition-3.md) | 302 | `result-track:6ee4711a3202a41e1e11f0faeac5a2d3361d7e877b12a4903ede9d6150811de3` |
| 68 | `theorem` | [sqrt_mul'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-mul.md) | 306 | `result-track:002ce2c603cbf8dbffebbe0deff4c16bd751f4d9904a74b8b03c885e875f6f00` |
| 69 | `theorem` | [sqrt_inv](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-inv-source-edition-2.md) | 310 | `result-track:93f268086466be662a82b25e89f70eff466b918aa3eba721102d997fabd9f486` |
| 70 | `theorem` | [sqrt_div](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-div-source-edition-2.md) | 314 | `result-track:6a97cf4fb2e7b08361b969f4d35113ec507d5603cd2093c93b10d2cbeced33e2` |
| 71 | `theorem` | [sqrt_div'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-div.md) | 318 | `result-track:4bdd0b80784e03e7c6655410f219cf60e5c4dc7d82be1ab1e71942cf8610db91` |
| 72 | `theorem` | [div_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/div-sqrt.md) | 324 | `result-track:4ec3cc6690b2aa09e7162af854984dea246dfe53a5d8b59506db466c023e0de8` |
| 73 | `theorem` | [sqrt_div_self'](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-div-self-source-edition-2.md) | 329 | `result-track:9613e7ffbda0f4f4b7b8e1c009c82246d14af3b47c42a2996e75561c993ef3a0` |
| 74 | `theorem` | [sqrt_div_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-div-self.md) | 331 | `result-track:6a629a94654c23bd0d84769cbeae3c9ea6bbe3220df51397879a910a6dc26878` |
| 75 | `theorem` | [lt_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/lt-sqrt.md) | 333 | `result-track:fe869fa8b838f0e13fa5a3708f6dcd6694707c8756d7b7eb92f74ab02978b200` |
| 76 | `theorem` | [sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sq-lt.md) | 336 | `result-track:91874447ade1ea064c5747bbc218725f6455aa249a62c9006a15c52de4cb9567` |
| 77 | `theorem` | [neg_sqrt_lt_of_sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/neg-sqrt-lt-of-sq-lt.md) | 339 | `result-track:f7da0605d1ee77a303b8e48258aea69bb2d0ba232ad2ce2daa74b65c82b10e06` |
| 78 | `theorem` | [lt_sqrt_of_sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/lt-sqrt-of-sq-lt.md) | 342 | `result-track:6c687a097c327339b9860b3620f25b5a44c4182e1b50c67e91309bf79e84380d` |
| 79 | `theorem` | [lt_sq_of_sqrt_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/lt-sq-of-sqrt-lt.md) | 345 | `result-track:894102639f9a81bb0fa4f4d37e8806bb8b32a87f72ba2eff6a73ca2ab4ab9d1b` |
| 80 | `theorem` | [nat_sqrt_le_real_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/nat-sqrt-le-real-sqrt.md) | 350 | `result-track:e2f4b4d6c9ccdbdebd026a4d284767a5293b0dbd7e1f251c66bec496e9866907` |
| 81 | `theorem` | [real_sqrt_lt_nat_sqrt_succ](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/real-sqrt-lt-nat-sqrt-succ.md) | 356 | `result-track:573e09bf0044e172e1b5e59f2ba71a4f03f6ae94ea39b9d32028cbfb68fb303c` |
| 82 | `theorem` | [real_sqrt_le_nat_sqrt_succ](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/real-sqrt-le-nat-sqrt-succ.md) | 362 | `result-track:f040b6d538f2bf06eebaff63e4c9b236564079b66a7e3e04b8b89e56c83384d9` |
| 83 | `theorem` | [floor_real_sqrt_eq_nat_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/floor-real-sqrt-eq-nat-sqrt.md) | 367 | `result-track:dd3b1c4ddafb08514f04463bcd97e2247f2f22fa9f34a450c78640b947bb486c` |
| 84 | `theorem` | [nat_floor_real_sqrt_eq_nat_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/nat-floor-real-sqrt-eq-nat-sqrt.md) | 373 | `result-track:27e8df73d9141cf3fc237f05edbb8239c34f7dcde9bea36a673d11380a4c4f66` |
| 85 | `theorem` | [sqrt_one_add_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sqrt-one-add-le.md) | 378 | `result-track:6c70b643a03fbcc9f994575b49c5af6ef37aee965d7b9cc93e0424475409d348` |
| 86 | `theorem` | [Filter.Tendsto.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/filter-tendsto-sqrt.md) | 390 | `result-track:a1b0c49c64cc8afe70da939191aaa9b3a8c4442e1bff05ff807ab79855b1361a` |
| 87 | `theorem` | [ContinuousWithinAt.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuouswithinat-sqrt.md) | 396 | `result-track:ff144480f7eb950cb07f605f3ec846a8d2880b470a1646a9f04eda89db924b79` |
| 88 | `theorem` | [ContinuousAt.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuousat-sqrt.md) | 401 | `result-track:caa5c2d0f8473ee4a68b9001b29b1c950ed94b19a113e5c95cc55cee12a46263` |
| 89 | `theorem` | [ContinuousOn.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuouson-sqrt.md) | 405 | `result-track:c9cf7fd8a25840a4e21b4da98ba432beda1a376d8bc548404ece853539d9c472` |
| 90 | `theorem` | [Continuous.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/continuous-sqrt.md) | 409 | `result-track:4e0095c2977957af23de677e548ea423e0cea5c8c3f2c6a54722dc8fb9e2185c` |
| 91 | `lemma` | [sum_mul_le_sqrt_mul_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sum-mul-le-sqrt-mul-sqrt.md) | 417 | `result-track:42a0b35f7f664f3441083d2d8e68e47650fef5b5c636ebf4a295ece5c9343d4f` |
| 92 | `lemma` | [sum_sqrt_mul_sqrt_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sum-sqrt-mul-sqrt-le.md) | 422 | `result-track:ddd5090864e538af36bbd28e74c4725ec878f04255e7f20fe2cc48136c63458b` |
| 93 | `lemma` | [sum_mul_le_sqrt_mul_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sum-mul-le-sqrt-mul-sqrt-source-edition-2.md) | 433 | `result-track:4a70dca6c4c542032154f63172a51d5d88f30f9a02f5aa52430c9b00324185c2` |
| 94 | `lemma` | [sum_sqrt_mul_sqrt_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffEqSq.lean/declarations/sum-sqrt-mul-sqrt-le-source-edition-2.md) | 439 | `result-track:e67a10f47b2f983919c4909152781430bd410763125d11440d5885edf646d222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ada90b7d8849f1d4055984f24a97bb93a8dd9c3530eeb110c696a1d4924fedc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Sqrt/Variant100af39c6d268959221d07b8f2fee4579d2dbef4e87bf64158066cc675f67323.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
