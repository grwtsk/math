# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorffRealized.Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f907a1e1323a2487d6bab6c1fa2cf06a775609",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f907a1e1323a2487d6bab6c1fa2cf06a775609`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.ArzelaAscoli` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Gluing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ProdSpaceFun](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/prodspacefun--e97bd92f3efb46884aa0d236.md) | 58 | `declaration-track:e97bd92f3efb46884aa0d236c8bdced051dbd0ac1374fe6c4bf57c31fa47db3b` |
| 2 | `abbrev` | [Cb](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/cb--48a0c0e2fceee3441f8fc4fd.md) | 61 | `declaration-track:48a0c0e2fceee3441f8fc4fd4c9c5fe2a2c1efd24522efd7a16ea956b1dccbc3` |
| 3 | `def` | [maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/maxvar--665f545fc903fd2726152be7.md) | 64 | `declaration-track:665f545fc903fd2726152be71d4de201973d3c1e233ddff941333280f3234c56` |
| 4 | `theorem` | [one_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/one-le-maxvar--c112a6824e57cdfbdb28f9bb.md) | 67 | `result-track:c112a6824e57cdfbdb28f9bbeb37bc8ab69327050f346389470d7c57c6f5bf4f` |
| 5 | `def` | [candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates--73fffa312b3ae5a9c7c5266a.md) | 74 | `declaration-track:73fffa312b3ae5a9c7c5266a20bab19abb4bca461a460a1b213d3ea32050757c` |
| 6 | `def` | [candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesb--8df57d4e29296cb44457de9d.md) | 83 | `declaration-track:8df57d4e29296cb44457de9db724d24572b9a3f05cd6f9a01eb436f84d01723b` |
| 7 | `theorem` | [maxVar_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/maxvar-bound--a4e0ea7461d7c0cf68d6e135.md) | 95 | `result-track:a4e0ea7461d7c0cf68d6e135c0b305dde19daec59891d8d366621b4b291f914e` |
| 8 | `theorem` | [candidates_symm](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-symm--ac41bc9c662aec1f26efa2e9.md) | 111 | `result-track:ac41bc9c662aec1f26efa2e9ef8a1bd57dadf2ad71ee57ab342657ec9c3e9d65` |
| 9 | `theorem` | [candidates_triangle](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-triangle--a60d12a4979c0a00552fd8ae.md) | 114 | `result-track:a60d12a4979c0a00552fd8ae67fada7196ffe6216f67c70ba964cde4060d7457` |
| 10 | `theorem` | [candidates_refl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-refl--bda0239e1d5df3d9c7ed5db3.md) | 117 | `result-track:bda0239e1d5df3d9c7ed5db3d37a6d0883f98e4072a40cc21425b6c52b098c18` |
| 11 | `theorem` | [candidates_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-nonneg--bb80f288a7f6a768c35a95a6.md) | 120 | `result-track:bb80f288a7f6a768c35a95a653f76cf8f066bff349cfdc27a59519cd12363a31` |
| 12 | `theorem` | [candidates_dist_inl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-dist-inl--0ba6794c73c4a6fd90d3c2d8.md) | 129 | `result-track:0ba6794c73c4a6fd90d3c2d827ad857dadebf17db96f436ebc62a6059160d064` |
| 13 | `theorem` | [candidates_dist_inr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-dist-inr--f52002618866fa521dffd3e5.md) | 133 | `result-track:f52002618866fa521dffd3e59d88e90860116985a34eeb1c2cf05f387db85e88` |
| 14 | `theorem` | [candidates_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-le-maxvar--ae89edc40ef6c59b4fa570b4.md) | 137 | `result-track:ae89edc40ef6c59b4fa570b452233fd290629d0f1a278a3f445282697435a4b3` |
| 15 | `theorem` | [candidates_dist_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-dist-bound--aeb49c80e0c35fe50de51270.md) | 141 | `result-track:aeb49c80e0c35fe50de512707b0a687bdc2b5e513893387392fa8ce45bc72c0f` |
| 16 | `theorem` | [candidates_lipschitz_aux](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-lipschitz-aux--d45a06244ec0393b1ebfbf63.md) | 171 | `result-track:d45a06244ec0393b1ebfbf63e0b94f11aa021c009948e87e7d9a9654b580101a` |
| 17 | `theorem` | [candidates_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidates-lipschitz--b59df6c82b753759a468fd6f.md) | 189 | `result-track:b59df6c82b753759a468fd6fccf2ad2006922ba4cf4091d17aa6ac7b1f064d19` |
| 18 | `theorem` | [closed_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/closed-candidatesb--ede72732b76657650fc4340d.md) | 200 | `result-track:ede72732b76657650fc4340d0bcd0c6070d96d7a01710fbfbe5faff3e3e067ef` |
| 19 | `def` | [HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd--1a88658fe38f0acd3b60642c.md) | 231 | `declaration-track:1a88658fe38f0acd3b60642c3f8e417f80457e9c5f85cefa8b69f04658229586` |
| 20 | `theorem` | [HD_below_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-below-aux1--3675e056dfad888161efaee9.md) | 239 | `result-track:3675e056dfad888161efaee92af65d6bd684600e12aab9099bbab683d893e039` |
| 21 | `theorem` | [HD_bound_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-bound-aux1--9a6990fd0381665cb78a93ee.md) | 244 | `result-track:9a6990fd0381665cb78a93ee3c264cff92277c09747be91ef9c19dc4f9aec5e0` |
| 22 | `theorem` | [HD_below_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-below-aux2--8043df4a70695a19516492ab.md) | 252 | `result-track:8043df4a70695a19516492aba17e3f6c9c9d722cbd6409ad53d92cdb8845d914` |
| 23 | `theorem` | [HD_bound_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-bound-aux2--c97d30c303bab193ceddcfc9.md) | 257 | `result-track:c97d30c303bab193ceddcfc9dcb091303e5c3ead0c56055b9f3d4f2df5935f42` |
| 24 | `theorem` | [HD_lipschitz_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-lipschitz-aux1--9cea103cec5ffc5dc8d6691e.md) | 270 | `result-track:9cea103cec5ffc5dc8d6691eaa82b95d3cd9283812e127e33896a6bf7fae71b5` |
| 25 | `theorem` | [HD_lipschitz_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-lipschitz-aux2--b7ebee0f64370a0b5521ba39.md) | 298 | `result-track:b7ebee0f64370a0b5521ba39390cd9213fd15f23f6359f8c5323299be4c0230a` |
| 26 | `theorem` | [HD_lipschitz_aux3](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-lipschitz-aux3--0bb28d97b45f0d8947e56913.md) | 326 | `result-track:0bb28d97b45f0d8947e56913c1993c77113a2ac506f8039651beb1772df50669` |
| 27 | `theorem` | [HD_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-continuous--859216409974dae2313ea9b6.md) | 332 | `result-track:859216409974dae2313ea9b6777dba5bb99864230fc8f61520802bba361b7732` |
| 28 | `theorem` | [isCompact_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/iscompact-candidatesb--4ce5baa4e25f052c2ac5f9e7.md) | 340 | `result-track:4ce5baa4e25f052c2ac5f9e7aacf7b14d932356c9b717843839b58eddfa91e98` |
| 29 | `def` | [candidatesBOfCandidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesbofcandidates--960bf2dbc7740b2410355c63.md) | 354 | `declaration-track:960bf2dbc7740b2410355c639ff4ce078369b41f5c3550e5f5ca51b29022cad3` |
| 30 | `theorem` | [candidatesBOfCandidates_mem](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesbofcandidates-mem--65c92a4609a066543b3ab1ec.md) | 357 | `result-track:65c92a4609a066543b3ab1ec565de1d23beecaae2f12f1a1b2bdcc9a3b363c44` |
| 31 | `theorem` | [dist_mem_candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/dist-mem-candidates--c1a64a91156e29b444234dbb.md) | 364 | `result-track:c1a64a91156e29b444234dbb92c1fbf9c26a081fa9c948fbd06d72704ecff917` |
| 32 | `def` | [candidatesBDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesbdist--3b478cde5b0c2db83e04e5ff.md) | 371 | `declaration-track:3b478cde5b0c2db83e04e5ff4361f114b0258ecbfb2b9defa7a467bc408a46b4` |
| 33 | `theorem` | [candidatesBDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesbdist-mem-candidatesb--b598d1bc21d28fb29dd25af7.md) | 375 | `result-track:b598d1bc21d28fb29dd25af77a38d4c58837eb60f557ebf974c614af53dfaaad` |
| 34 | `theorem` | [candidatesB_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/candidatesb-nonempty--9fa655fc054102594bd7ad73.md) | 379 | `result-track:9fa655fc054102594bd7ad73e4ae71255c48dbbbe94a1e5faa3ffff2bacaf3b5` |
| 35 | `theorem` | [HD_candidatesBDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-candidatesbdist-le--4d1f59fc76409615e810b9f1.md) | 384 | `result-track:4d1f59fc76409615e810b9f1a1e4976b6cccdd6eef50d8b660804d6c2400e3ce` |
| 36 | `theorem` | [exists_minimizer](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/exists-minimizer--ce1a07f25530f353543524c2.md) | 416 | `result-track:ce1a07f25530f353543524c2304f080cc2b1b9991ea60d5bc5b81d5cff46cd35` |
| 37 | `def` | [optimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/optimalghdist--af85494211a4aa53eb83c703.md) | 419 | `declaration-track:af85494211a4aa53eb83c7030615b634dab838938bfabe12541a0a15ec4609b7` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/optimalghdist-mem-candidatesb--5d48510a514c5a1041e784d4.md) | 422 | `result-track:5d48510a514c5a1041e784d428d7fc72260c1ebe979e45ac6ae6017f46faba9e` |
| 39 | `theorem` | [HD_optimalGHDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hd-optimalghdist-le--5b7a711727c2ed8e17c7d457.md) | 426 | `result-track:5b7a711727c2ed8e17c7d4579566485f358f08c5cf39406b90edae71d8f51268` |
| 40 | `def` | [premetricOptimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/premetricoptimalghdist--8e8391bd1d6e56bde524be5c.md) | 434 | `declaration-track:8e8391bd1d6e56bde524be5c5b36c736e5699df763a12638e1ec7e94cbf64702` |
| 41 | `def` | [OptimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/optimalghcoupling--e889b7d6ef6c1b0659277d0a.md) | 443 | `declaration-track:e889b7d6ef6c1b0659277d0a488b5c2f567421b82107a4fc9fac0d354b667a7f` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/instance--acdcbc41863d332593924483.md) | 446 | `declaration-track:acdcbc41863d332593924483240b10df62f9a0515bfe37a026fe382c87a23fe8` |
| 43 | `def` | [optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/optimalghinjl--df3dbcded3bc90c275755389.md) | 451 | `declaration-track:df3dbcded3bc90c275755389c66581e24124cda5f2cfa2ec7877ddd887896a45` |
| 44 | `theorem` | [isometry_optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/isometry-optimalghinjl--cb8c81615658ed45f5b02fc6.md) | 455 | `result-track:cb8c81615658ed45f5b02fc637954094cbe8805a7ebeae1a8a72c59829dbd7c5` |
| 45 | `def` | [optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/optimalghinjr--c4a9722422e09051f1a37d74.md) | 459 | `declaration-track:c4a9722422e09051f1a37d74ea996d083589759f117ca982528d3b55627faceb` |
| 46 | `theorem` | [isometry_optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/isometry-optimalghinjr--c95d6799dc48fb896c573ae7.md) | 463 | `result-track:c95d6799dc48fb896c573ae7e4bf55d3a1410d88898ce5ad4d673f89acb75578` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/compactspace-optimalghcoupling--2f43b7f900d48d50b9e59b54.md) | 467 | `declaration-track:2f43b7f900d48d50b9e59b5483e886ebdeb9e8b5ebfa180be76e3209855eec8b` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean/declarations/hausdorffdist-optimal-le-hd--a6ee008ae29a159f2221e668.md) | 476 | `result-track:a6ee008ae29a159f2221e668fa772f9012f26163c742962b5d244b9d451694fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
