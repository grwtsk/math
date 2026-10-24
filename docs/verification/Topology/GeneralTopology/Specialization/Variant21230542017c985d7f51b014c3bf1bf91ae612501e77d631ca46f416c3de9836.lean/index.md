# Verification target: GRWTSK.Topology.GeneralTopology.Specialization.Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1262ff97ac5b046e77f8ce43d952df3e5d0e6f0b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1262ff97ac5b046e77f8ce43d952df3e5d0e6f0b`.

Source path: `GRWTSK/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Preord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.UpperLowerSetTopology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Specialization](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/specialization--01684883e0f974b16990bad4.md) | 20 | `declaration-track:01684883e0f974b16990bad410ffeb83968a27a31b52e596819825430564080a` |
| 2 | `def` | [toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toequiv--d693f24110f61c0cd4185b26.md) | 26 | `declaration-track:d693f24110f61c0cd4185b2682d906ae43c10d76a876f47a32380aeb5aadba8c` |
| 3 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/ofequiv--a53d924b2175da83d0eba9ac.md) | 29 | `declaration-track:a53d924b2175da83d0eba9acdce3af2655b5856e8ea8095d876cedce2673c355` |
| 4 | `lemma` | [toEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toequiv-symm--8f4a4e83ec72256eedd6b095.md) | 31 | `result-track:8f4a4e83ec72256eedd6b0954706f3e0e3d35b7ccbf80c4720a2e75bb960e5d5` |
| 5 | `lemma` | [ofEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/ofequiv-symm--dfb8a1cefd8ff4ea1928f311.md) | 32 | `result-track:dfb8a1cefd8ff4ea1928f311ff7f32089eed898f9fa3e1a3f26c23d8b9448e19` |
| 6 | `lemma` | [toEquiv_ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toequiv-ofequiv--50675b5a1ce8fb1b479f5fc0.md) | 33 | `result-track:50675b5a1ce8fb1b479f5fc078aae43000f305271b61b60f7620bbc272c4e2c2` |
| 7 | `lemma` | [ofEquiv_toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/ofequiv-toequiv--9c64f48be7c064a2eaa46aec.md) | 34 | `result-track:9c64f48be7c064a2eaa46aec3c9ab954f62b19ac380bc90051ebf8620636e649` |
| 8 | `lemma` | [toEquiv_inj](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toequiv-inj--3340308b7b13d1c1cde22686.md) | 40 | `result-track:3340308b7b13d1c1cde22686555d034bf8d2dcc51348a9d5160cbabf4c90ea5b` |
| 9 | `lemma` | [ofEquiv_inj](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/ofequiv-inj--48472ec41ce8735d1ca76f65.md) | 46 | `result-track:48472ec41ce8735d1ca76f653759a91e78232bee2095048ef1982b0c482dcd38` |
| 10 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/rec--930cd6f4f690d440e28095fe.md) | 51 | `declaration-track:930cd6f4f690d440e28095fe953bb7ec1c39d3f7e177c7334ebdc4200ca6baa1` |
| 11 | `instance` | [instPreorder](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/instpreorder--ba6b47777e7c9ce821b6b455.md) | 57 | `declaration-track:ba6b47777e7c9ce821b6b4558ef8c67397f02258613544004b6c90682a37dcc2` |
| 12 | `instance` | [instPartialOrder](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/instpartialorder--f3258d92b07c914a1434577a.md) | 58 | `declaration-track:f3258d92b07c914a1434577a71557d7abf1543c94f0bca305f688c073355802e` |
| 13 | `lemma` | [toEquiv_le_toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toequiv-le-toequiv--5837c78ef317ff9b93dfc994.md) | 60 | `result-track:5837c78ef317ff9b93dfc994c914a4e9c5606d6c76b820fe09b05dd5ac063f82` |
| 14 | `lemma` | [ofEquiv_specializes_ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/ofequiv-specializes-ofequiv--b0a67e016613d43c08b597b4.md) | 61 | `result-track:b0a67e016613d43c08b597b4e7e3a2fee3dc630de41880ec512030c72bc832be` |
| 15 | `lemma` | [isOpen_toEquiv_preimage](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/isopen-toequiv-preimage--1e7fc25c617db7b28856efc3.md) | 64 | `result-track:1e7fc25c617db7b28856efc342499fd435549a8ad3dd1186eeb78486553bee04` |
| 16 | `lemma` | [isUpperSet_ofEquiv_preimage](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/isupperset-ofequiv-preimage--06c129e69dd8c429fbc8852f.md) | 67 | `result-track:06c129e69dd8c429fbc8852fefe70c720e0ec52bfb35ab269fc54cdd947348fa` |
| 17 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/map--02d3d35375927024017d9ef7.md) | 72 | `declaration-track:02d3d35375927024017d9ef754b21a177296a784fa98c287f4828331aa80decf` |
| 18 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/map-id--3809051d88c8cdd7e5f639b3.md) | 76 | `result-track:3809051d88c8cdd7e5f639b3b8962a9c2bbf637823bec35a08fb0279a68639b2` |
| 19 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/map-comp--dd44604e07795587b3b337fc.md) | 77 | `result-track:dd44604e07795587b3b337fc9c2c1ebcfd46010003f8d9362a4e740bdb9dd96c` |
| 20 | `def` | [orderIsoSpecializationWithUpperSetTopology](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/orderisospecializationwithuppersettopology--777aba616c1c2b0ec2ab050b.md) | 84 | `declaration-track:777aba616c1c2b0ec2ab050b49154894849fd7b340b442e57133a93b2bd58727` |
| 21 | `def` | [homeoWithUpperSetTopologyorderIso](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/homeowithuppersettopologyorderiso--72e2b4aaef2f12e84b671f4d.md) | 91 | `declaration-track:72e2b4aaef2f12e84b671f4d9a73b2db3cb2d30b68d9c99b8102927471acc68c` |
| 22 | `def` | [topToPreord](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant21230542017c985d7f51b014c3bf1bf91ae612501e77d631ca46f416c3de9836.lean/declarations/toptopreord--e3c037c0b197f217a6308999.md) | 97 | `declaration-track:e3c037c0b197f217a6308999cdf1fa1ebb29c8ca3b2933e1db0e4354e60e6776` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
