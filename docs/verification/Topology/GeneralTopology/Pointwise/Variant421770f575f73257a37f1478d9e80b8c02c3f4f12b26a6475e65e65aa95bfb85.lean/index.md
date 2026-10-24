# Verification target: GRWTSK.Topology.GeneralTopology.Pointwise.Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de1e9c8c0f184e7a8c9218cabd0d5bb44336f6d6",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de1e9c8c0f184e7a8c9218cabd0d5bb44336f6d6`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Bounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Bornology.IsBounded.mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/bornology-isbounded-mul--e7efbed4bad9b846998d9906.md) | 29 | `result-track:e7efbed4bad9b846998d99064e608d16fbe7c40f83ea8e07ec3eb26d3c2641c0` |
| 2 | `theorem` | [Bornology.IsBounded.of_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/bornology-isbounded-of-mul--307d8f88ea1f76f74442df32.md) | 37 | `result-track:307d8f88ea1f76f74442df3266f2a7c5e7bb241de39e0836fe91244bb7ec214e` |
| 3 | `theorem` | [Bornology.IsBounded.inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/bornology-isbounded-inv--20cbc49f06d0f4d63b0ba8f6.md) | 41 | `result-track:20cbc49f06d0f4d63b0ba8f652071c78dc36dc309becdf94b43e37761777a0bf` |
| 4 | `theorem` | [Bornology.IsBounded.div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/bornology-isbounded-div--56e49477aaaa88e03d6b4135.md) | 46 | `result-track:56e49477aaaa88e03d6b41354c3b463121e2d3faa8f9ee2096949a640c93011a` |
| 5 | `theorem` | [infEdist_inv_inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/infedist-inv-inv--4fb4933fce5b110392ad1c5e.md) | 60 | `result-track:4fb4933fce5b110392ad1c5efcb15c7c6c7b1a4629de849df3d3f0373988bd54` |
| 6 | `theorem` | [infEdist_inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/infedist-inv--2aa76758f3103697c024f687.md) | 64 | `result-track:2aa76758f3103697c024f687bd11a02d9fa90b4bc03cc76a273114d314497e01` |
| 7 | `theorem` | [ediam_mul_le](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ediam-mul-le--8d9997ea7e4719b584e3020d.md) | 68 | `result-track:8d9997ea7e4719b584e3020d686383f5f57e31784b41dd8da1d4a3cc9f24f1d0` |
| 8 | `theorem` | [inv_thickening](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/inv-thickening--5df93378f3d04ca5cdd9a7de.md) | 79 | `result-track:5df93378f3d04ca5cdd9a7de11f9743da9b8acaf3f7614c33cdb007d18d57799` |
| 9 | `theorem` | [inv_cthickening](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/inv-cthickening--1254f18d9b12714797521611.md) | 84 | `result-track:1254f18d9b127147975216116bdba81ff892b0c515646b74306c544812439d12` |
| 10 | `theorem` | [inv_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/inv-ball--8259533eea520fd7effb50b5.md) | 89 | `result-track:8259533eea520fd7effb50b5673c3cdcd52756ae2e99fab0d814fcb8eeaae64a` |
| 11 | `theorem` | [inv_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/inv-closedball--b940b8bf4bbe75ff2c4f6664.md) | 92 | `result-track:b940b8bf4bbe75ff2c4f66646bc0768269b91a8dcd59060972da27fcec730215` |
| 12 | `theorem` | [singleton_mul_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-mul-ball--079a4c22aea8d98bf5722173.md) | 96 | `result-track:079a4c22aea8d98bf5722173f3e7718745e33f3b6106705106169e138725cc86` |
| 13 | `theorem` | [singleton_div_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-div-ball--54ba0aeaedff5447f814a371.md) | 100 | `result-track:54ba0aeaedff5447f814a371f5c8ac4c166e3900b72ff8821ca904d30693925b` |
| 14 | `theorem` | [ball_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-mul-singleton--aa9643e960d74eaae52317e3.md) | 104 | `result-track:aa9643e960d74eaae52317e3cca7881b358819bb877abcfea13c7c230dcd56fc` |
| 15 | `theorem` | [ball_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-div-singleton--44ea8f734370a9029250d757.md) | 108 | `result-track:44ea8f734370a9029250d757560ea0e86c1239ee2f89f27526e56955d3b9631a` |
| 16 | `theorem` | [singleton_mul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-mul-ball-one--8f53b27bbc10731e4dc76f81.md) | 112 | `result-track:8f53b27bbc10731e4dc76f819bc4675dcbf40193b67b96cc821197ff0f662e3f` |
| 17 | `theorem` | [singleton_div_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-div-ball-one--c7914d68b397e04d5ad15ebd.md) | 115 | `result-track:c7914d68b397e04d5ad15ebdcb61618c8eb9f1af1289a61f4f26da7a397def86` |
| 18 | `theorem` | [ball_one_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-one-mul-singleton--4e24b27e5e8cf9eaff58c96c.md) | 119 | `result-track:4e24b27e5e8cf9eaff58c96c6b5470de80a52c54b2fd627f26361508b4cfb923` |
| 19 | `theorem` | [ball_one_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-one-div-singleton--12e79e949108cac63f086761.md) | 122 | `result-track:12e79e949108cac63f0867613dbe4ee30901e6280fe5ce0db00bd1fa21b36378` |
| 20 | `theorem` | [smul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/smul-ball-one--cb16a739b2d569f4109cbd7c.md) | 126 | `result-track:cb16a739b2d569f4109cbd7c288b6a7fa9890f82aea10059a6fd2af6a05a1c95` |
| 21 | `theorem` | [singleton_mul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-mul-closedball--3640766c89422ded6964d08e.md) | 130 | `result-track:3640766c89422ded6964d08e0829dc5034ded829fd07ee5ea164a24e924016fd` |
| 22 | `theorem` | [singleton_div_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-div-closedball--cad4bab959af50e15e2dfe4a.md) | 134 | `result-track:cad4bab959af50e15e2dfe4a87f3ba038de324703e565a71c8c7fe15a5d840a7` |
| 23 | `theorem` | [closedBall_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/closedball-mul-singleton--4f44b95267918172d9103f9b.md) | 138 | `result-track:4f44b95267918172d9103f9bb6a7b49b42afa0eb254c4e5b249e274a78c09115` |
| 24 | `theorem` | [closedBall_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/closedball-div-singleton--90b67f056a9a8e8cd87e077a.md) | 142 | `result-track:90b67f056a9a8e8cd87e077a4c0fcb651776a262858604be586dff73d8ba67ad` |
| 25 | `theorem` | [singleton_mul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-mul-closedball-one--d7349bae26162c2afd23bcab.md) | 146 | `result-track:d7349bae26162c2afd23bcab4c97efd6b6e9d96389034f5ab5d786e769905c57` |
| 26 | `theorem` | [singleton_div_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/singleton-div-closedball-one--9acb0ea693fc28eafefac434.md) | 149 | `result-track:9acb0ea693fc28eafefac434535f0939ed3b1ce06a5177d0613076dde626e611` |
| 27 | `theorem` | [closedBall_one_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/closedball-one-mul-singleton--149abea428646096c8fea15b.md) | 153 | `result-track:149abea428646096c8fea15bed0dbe11c460addffe76b0b08b5170036e2c4539` |
| 28 | `theorem` | [closedBall_one_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/closedball-one-div-singleton--5fde88d7d273c9fd41acfc3a.md) | 156 | `result-track:5fde88d7d273c9fd41acfc3a66f6a7c28b33f7a72b2c1fb553f1d5169ae2c78b` |
| 29 | `theorem` | [smul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/smul-closedball-one--8faae9eedc505f6fb7d3ae68.md) | 159 | `result-track:8faae9eedc505f6fb7d3ae683ecc3809477633fe9bac6373468c3f28d3ab7789` |
| 30 | `theorem` | [mul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/mul-ball-one--037e86821057a5800acb725d.md) | 162 | `result-track:037e86821057a5800acb725dd06cf41d79c2e083e2feb3fc3f8decc018c06b6a` |
| 31 | `theorem` | [div_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/div-ball-one--97021d8217193b5c07bb8bec.md) | 170 | `result-track:97021d8217193b5c07bb8becfb2131805a497a52db9905f6b693ecdc4ed7927a` |
| 32 | `theorem` | [ball_mul_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-mul-one--49bb08bcbec6e9d6aaf5b352.md) | 173 | `result-track:49bb08bcbec6e9d6aaf5b3522ffe9ecf5755d7c496427e09ebc25dfad4781ebf` |
| 33 | `theorem` | [ball_div_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-div-one--2707bba50c04b1a2c18ec45f.md) | 176 | `result-track:2707bba50c04b1a2c18ec45f700dbcdd98c51aedb4845f89edbd32e7810e535a` |
| 34 | `theorem` | [mul_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/mul-ball--d7c6297df4395aff7a31d753.md) | 179 | `result-track:d7c6297df4395aff7a31d753317d70320ed320af5c3469bca50d396a9ba8f346` |
| 35 | `theorem` | [div_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/div-ball--fd6ec12956b5c02ea89a51a2.md) | 183 | `result-track:fd6ec12956b5c02ea89a51a2d26f1a3bca15ea1b11cabdbd4401039168cd4151` |
| 36 | `theorem` | [ball_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-mul--a0c7d0a5bb09d4d1b7a3c559.md) | 186 | `result-track:a0c7d0a5bb09d4d1b7a3c5598aaf0f2470d6a618d6bc1e532378a674105c4ea2` |
| 37 | `theorem` | [ball_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/ball-div--524ab8bd1f9833c7a31dd631.md) | 189 | `result-track:524ab8bd1f9833c7a31dd631533ee665c1f0a1bc63138ade7997aab537dc97d9` |
| 38 | `theorem` | [IsCompact.mul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-mul-closedball-one--8ed92172105703d15fbf1171.md) | 194 | `result-track:8ed92172105703d15fbf1171aed64b2d84026c06e235c265013f16e1b415497c` |
| 39 | `theorem` | [IsCompact.div_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-div-closedball-one--19d1ebf5cc239875e4561de8.md) | 202 | `result-track:19d1ebf5cc239875e4561de87352a0f16c018966e79994792213d6328ae3201f` |
| 40 | `theorem` | [IsCompact.closedBall_one_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-closedball-one-mul--1e934ddd29bfd69de75e3ee5.md) | 206 | `result-track:1e934ddd29bfd69de75e3ee57f1e658c00ca2fef9819600885f56833ccfdee53` |
| 41 | `theorem` | [IsCompact.closedBall_one_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-closedball-one-div--7d0cf93bd217218127b81bc9.md) | 210 | `result-track:7d0cf93bd217218127b81bc92f9accd33407a847ef81a532cbe98c4a7d70e049` |
| 42 | `theorem` | [IsCompact.mul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-mul-closedball--af45cd9c454d07d6dcf0f36a.md) | 215 | `result-track:af45cd9c454d07d6dcf0f36af0a2b3b44e0d7f3d82d0cf45eab8efb69782e09e` |
| 43 | `theorem` | [IsCompact.div_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-div-closedball--06ba8ac94895cdc4862b2235.md) | 220 | `result-track:06ba8ac94895cdc4862b2235c262a2e187db357a01fbf445579035d2c9092d6e` |
| 44 | `theorem` | [IsCompact.closedBall_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-closedball-mul--116e17a8a3be801ec3842129.md) | 225 | `result-track:116e17a8a3be801ec38421290c49a3ce50f4ec3a2cd11157441e841ef09e1e87` |
| 45 | `theorem` | [IsCompact.closedBall_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant421770f575f73257a37f1478d9e80b8c02c3f4f12b26a6475e65e65aa95bfb85.lean/declarations/iscompact-closedball-div--eb24034cf62b32228363f018.md) | 229 | `result-track:eb24034cf62b32228363f018c2cc0c28866ef17d26085e11f85cf6039ec083b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
