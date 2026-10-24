# Verification target: GRWTSK.Topology.GeneralTopology.Specialization.Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15da17bd483bf11ea7966522af9de2f794f7ee8a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15da17bd483bf11ea7966522af9de2f794f7ee8a`.

Source path: `GRWTSK/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Preord` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.UpperLowerSetTopology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Specialization](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/specialization--d14b4f9818f4d33464e51929.md) | 28 | `declaration-track:d14b4f9818f4d33464e519296835904dd4fff0783f125616f639f3132c53ef30` |
| 2 | `def` | [toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toequiv--b080c4534ff9fe61a067c269.md) | 34 | `declaration-track:b080c4534ff9fe61a067c269b559e3d5f750aec8d2a633782a1d47be2b9eb8a1` |
| 3 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/ofequiv--422c5c9c4bb5ea4c7a37acda.md) | 37 | `declaration-track:422c5c9c4bb5ea4c7a37acda9edeef0ba12b03f63aebb0579fa1830759ceea61` |
| 4 | `lemma` | [toEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toequiv-symm--205b897500d5fa4d6aa552cb.md) | 39 | `result-track:205b897500d5fa4d6aa552cb42f557a5197ccffc6ac2e6ce765e5deefdeed5e9` |
| 5 | `lemma` | [ofEquiv_symm](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/ofequiv-symm--5906534d1c174934328b5a59.md) | 40 | `result-track:5906534d1c174934328b5a59dd29412dd5df2a0ac930b1f504e9754509da218d` |
| 6 | `lemma` | [toEquiv_ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toequiv-ofequiv--9f1a8228d4ce3e42d8fcf632.md) | 41 | `result-track:9f1a8228d4ce3e42d8fcf632c52a40d20b39b9b35026f033af6c3cc44aadeddf` |
| 7 | `lemma` | [ofEquiv_toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/ofequiv-toequiv--6b619fd91ef829f7cdc39ff1.md) | 42 | `result-track:6b619fd91ef829f7cdc39ff119fe80f48ec4fc6689d3251189b910b927750a64` |
| 8 | `lemma` | [toEquiv_inj](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toequiv-inj--843b1913fc892944e240daca.md) | 48 | `result-track:843b1913fc892944e240dacac5bb46d4a6cd2e9ff0dd814a82689a2751bbff34` |
| 9 | `lemma` | [ofEquiv_inj](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/ofequiv-inj--965ffebf8bf25a9bb53573cf.md) | 54 | `result-track:965ffebf8bf25a9bb53573cf7262f4953605f22b14035aacd9b524a59e38002c` |
| 10 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/rec--abc6aaa399b53b64c92ab1e9.md) | 59 | `declaration-track:abc6aaa399b53b64c92ab1e9ea531d58e0fca199716e2d625bcb05417687fe18` |
| 11 | `instance` | [instPreorder](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/instpreorder--a75265b68783a9dad9af256f.md) | 65 | `declaration-track:a75265b68783a9dad9af256fa575eafa60615e46d09fa6875b624678abb0d18f` |
| 12 | `instance` | [instPartialOrder](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/instpartialorder--b591a04bdb5c2bdf28d896f1.md) | 66 | `declaration-track:b591a04bdb5c2bdf28d896f1e3c5333a9550826d76794babcc2ae8ca077da365` |
| 13 | `lemma` | [toEquiv_le_toEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toequiv-le-toequiv--87bbdcce290af10396180b38.md) | 68 | `result-track:87bbdcce290af10396180b38bdbeeb7bfcb4add2c4b11152f05c2471be13a370` |
| 14 | `lemma` | [ofEquiv_specializes_ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/ofequiv-specializes-ofequiv--2a95c0a80e5c68798dc241a4.md) | 69 | `result-track:2a95c0a80e5c68798dc241a4c3b2cbdb74a2258a143666b0c06753f422a6784d` |
| 15 | `lemma` | [isOpen_toEquiv_preimage](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/isopen-toequiv-preimage--ad7a3992a4ea3d68e535d179.md) | 72 | `result-track:ad7a3992a4ea3d68e535d17980ab5dcd1eae23fbc951170c21c1637a605a00c0` |
| 16 | `lemma` | [isUpperSet_ofEquiv_preimage](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/isupperset-ofequiv-preimage--2ee29d6857e2302c8524d752.md) | 75 | `result-track:2ee29d6857e2302c8524d752598cf2ca5867f3f4153825f3019663d164c2779a` |
| 17 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/map--4263b05d4ac0b3add5f04c9d.md) | 80 | `declaration-track:4263b05d4ac0b3add5f04c9d6a3604f9aae8570154a7722b7d03926e0e5a579f` |
| 18 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/map-id--1e79256ec11accee01fdd8fb.md) | 84 | `result-track:1e79256ec11accee01fdd8fb66484df51bff5d6acc2b560c5b9e64dc52fd3dff` |
| 19 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/map-comp--0e3fba89ea7644c324e85a19.md) | 85 | `result-track:0e3fba89ea7644c324e85a1930f9c4401b8f0d1af568456789c8b9f17e8c3af4` |
| 20 | `def` | [orderIsoSpecializationWithUpperSetTopology](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/orderisospecializationwithuppersettopology--09f1a7831287081c548d7b04.md) | 92 | `declaration-track:09f1a7831287081c548d7b0477f36169d3a0344bd0967969cb225fd4e43f3524` |
| 21 | `def` | [homeoWithUpperSetTopologyorderIso](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/homeowithuppersettopologyorderiso--2a7902cb7ae870fb86fb31c4.md) | 99 | `declaration-track:2a7902cb7ae870fb86fb31c4da02cba4bee1e058bf7e23c7eaeba37589708892` |
| 22 | `def` | [topToPreord](../../../../../mathematics/Topology/GeneralTopology/Specialization/Variant2f93c4fd6297662862f2267d783dab2e84dfcc0c1b411649c8c7340c9a080013.lean/declarations/toptopreord--0cc98f63d3b5fbec93a8aef9.md) | 105 | `declaration-track:0cc98f63d3b5fbec93a8aef943d2de464497fd941ebfb0f7fd47e1c3adb4a408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
