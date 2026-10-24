# Verification target: GRWTSK.Topology.MetricTopology.Contracting.Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64454561487ef7d9de2c2bc470af142d221fda95",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64454561487ef7d9de2c2bc470af142d221fda95`.

Source path: `GRWTSK/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Topology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContractingWith](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/contractingwith--90f07c305d08d0028f928d5c.md) | 36 | `declaration-track:90f07c305d08d0028f928d5caa62def8e47328c4e3143e4c4998c99e8eb835d8` |
| 2 | `theorem` | [toLipschitzWith](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/tolipschitzwith--4ff62d865514ae314e7dc95e.md) | 45 | `result-track:4ff62d865514ae314e7dc95eb46ff0b731871670ae65a2078bc533aba81fc09c` |
| 3 | `theorem` | [one_sub_K_pos'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/one-sub-k-pos--7b0de76e89065538b6a7f438.md) | 47 | `result-track:7b0de76e89065538b6a7f438e3a4fae53c81c6a838761e0268216972449b3567` |
| 4 | `theorem` | [one_sub_K_ne_zero](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/one-sub-k-ne-zero--5cdabb0185f1bb85956d9e1f.md) | 49 | `result-track:5cdabb0185f1bb85956d9e1fe4746c03f35333515cd1bdee022fe5b3c8fb11bf` |
| 5 | `theorem` | [one_sub_K_ne_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/one-sub-k-ne-top--19717ebcbdfdf4d51e87a78a.md) | 52 | `result-track:19717ebcbdfdf4d51e87a78ae624b2a5a7b89df70c10af5f3b5716d04b45c720` |
| 6 | `theorem` | [edist_inequality](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-inequality--964510259e5e672218185ea7.md) | 56 | `result-track:964510259e5e672218185ea71b1897f1da4859b8f42f6cf0010918eed0c38341` |
| 7 | `theorem` | [edist_le_of_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-le-of-fixedpoint--4142191aa41e190eb9dce41d.md) | 66 | `result-track:4142191aa41e190eb9dce41dfb6c7fbcc199aa4928e18e4ff27e2655a6b0b68a` |
| 8 | `theorem` | [eq_or_edist_eq_top_of_fixedPoints](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/eq-or-edist-eq-top-of-fixedpoints--c21d5a96ebf4d063065d3791.md) | 70 | `result-track:c21d5a96ebf4d063065d3791b3443389a481b120b59a890c80a281eb7484c47c` |
| 9 | `theorem` | [restrict](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/restrict--f0c4b923430fe51dc67c8fa2.md) | 77 | `result-track:f0c4b923430fe51dc67c8fa237619f7fb88c2c1430c1a949343f70367910210f` |
| 10 | `theorem` | [exists_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/exists-fixedpoint--9412a294f4d1be99b491ff60.md) | 90 | `result-track:9412a294f4d1be99b491ff6014ad006d5b15a68472a943b39d0a9ed1a7b64253` |
| 11 | `def` | [efixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint--bdea2e595a8eea9e273fd950.md) | 106 | `declaration-track:bdea2e595a8eea9e273fd950edb9554c8efac68ce07aa30866d80ec510edf4a7` |
| 12 | `theorem` | [efixedPoint_isFixedPt](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint-isfixedpt--e1d35211366a6782d5cb3147.md) | 109 | `result-track:e1d35211366a6782d5cb3147cc6909152490b2574cc9829972b1423bde25a476` |
| 13 | `theorem` | [tendsto_iterate_efixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/tendsto-iterate-efixedpoint--910bcf6b7b51d944662ce064.md) | 113 | `result-track:910bcf6b7b51d944662ce0649fa6a6f8f1ab6a393b3112f2a417ac5e8cc18d94` |
| 14 | `theorem` | [apriori_edist_iterate_efixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/apriori-edist-iterate-efixedpoint-le--49c2b25bcd3bd9bb57f0d2ae.md) | 117 | `result-track:49c2b25bcd3bd9bb57f0d2ae06568a0df1c84ef6959319ad18c6e84fc0325cf1` |
| 15 | `theorem` | [edist_efixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-efixedpoint-le--84b4aededfcbba7ca3a41602.md) | 122 | `result-track:84b4aededfcbba7ca3a41602981ce56d4124edd6c6bedf12ff3ff779cb1ebc1b` |
| 16 | `theorem` | [edist_efixedPoint_lt_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-efixedpoint-lt-top--5dccfd14dfe86aba84c0f468.md) | 127 | `result-track:5dccfd14dfe86aba84c0f468775ae0d57317ea49f7df5bf56330f00e06bca981` |
| 17 | `theorem` | [efixedPoint_eq_of_edist_lt_top](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint-eq-of-edist-lt-top--daae85f4f624070e17c5d5c8.md) | 132 | `result-track:daae85f4f624070e17c5d5c87fe9d53a0c74c58b3883bdbab9e396ef7e691885` |
| 18 | `theorem` | [exists_fixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/exists-fixedpoint--0d75e17586fd97584f83dd11.md) | 147 | `result-track:0d75e17586fd97584f83dd115cdcbe975466e597dab72a9ef9a7cd5de66780f3` |
| 19 | `def` | [efixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint--2c25568b8303e51e5d2d1f22.md) | 165 | `declaration-track:2c25568b8303e51e5d2d1f22e0816f5ffda3b75b704bf108fbe06964f09646da` |
| 20 | `theorem` | [efixedPoint_mem'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint-mem--c9d6578651f1cb8bc21a636c.md) | 170 | `result-track:c9d6578651f1cb8bc21a636c26ec9b63ce8c6bbec89483081af6ff1811eee7d8` |
| 21 | `theorem` | [efixedPoint_isFixedPt'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint-isfixedpt--676ec2e3d153699dc7fae55a.md) | 175 | `result-track:676ec2e3d153699dc7fae55a0c5ae49db83fffafd2194e156b2d758bb5d6bfc1` |
| 22 | `theorem` | [tendsto_iterate_efixedPoint'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/tendsto-iterate-efixedpoint--6e332c91e1ea505651f0a29a.md) | 180 | `result-track:6e332c91e1ea505651f0a29a584329119f517a7ae2bb4cf9b45641f6e137d8f6` |
| 23 | `theorem` | [apriori_edist_iterate_efixedPoint_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/apriori-edist-iterate-efixedpoint-le--ae728d93732621d96b1ec3fd.md) | 185 | `result-track:ae728d93732621d96b1ec3fde99629735c2197102509fb082673590d57e2f027` |
| 24 | `theorem` | [edist_efixedPoint_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-efixedpoint-le--646961b7109db7d5b36687e8.md) | 192 | `result-track:646961b7109db7d5b36687e8dfe1ed489236ec0298a4d294fd0eeb63aaba0d1a` |
| 25 | `theorem` | [edist_efixedPoint_lt_top'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/edist-efixedpoint-lt-top--6dadf761fc9f94f401581d37.md) | 198 | `result-track:6dadf761fc9f94f401581d374ebafec5d5211b0ed8295d630ece750d8ad162fd` |
| 26 | `theorem` | [efixedPoint_eq_of_edist_lt_top'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/efixedpoint-eq-of-edist-lt-top--44b9a7df17623fb404d009b4.md) | 210 | `result-track:44b9a7df17623fb404d009b465b0db996b12df7917ea46ff543e46210414f54b` |
| 27 | `theorem` | [one_sub_K_pos](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/one-sub-k-pos--d02ad4531635538b4c0a54dd.md) | 232 | `result-track:d02ad4531635538b4c0a54dd3f9ebba92a8bfee5463659cb98b637a38e3760bc` |
| 28 | `theorem` | [dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/dist-le-mul--57803094a5c1fa8fc29d234e.md) | 239 | `result-track:57803094a5c1fa8fc29d234e38fb8fb73314c766a5555f000c2965beb6b5d03f` |
| 29 | `theorem` | [dist_inequality](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/dist-inequality--23714248f8c36dc259b0b26e.md) | 242 | `result-track:23714248f8c36dc259b0b26ede1f8e4c747f7b6e400b53541edc3e09feddca02` |
| 30 | `theorem` | [dist_le_of_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/dist-le-of-fixedpoint--3d645d8458db69b48164e42f.md) | 249 | `result-track:3d645d8458db69b48164e42f0d71388d4c37ddc760b3550169869727d13f6cd9` |
| 31 | `theorem` | [fixedPoint_unique'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/fixedpoint-unique--10a4c86bb3247b34cbf5ba3c.md) | 252 | `result-track:10a4c86bb3247b34cbf5ba3c93d54f6c2374e7eac44709e3d026b3a81bf1a4ca` |
| 32 | `theorem` | [dist_fixedPoint_fixedPoint_of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/dist-fixedpoint-fixedpoint-of-dist-le--d749106050e4e1c70e8b1c88.md) | 257 | `result-track:d749106050e4e1c70e8b1c88a00b99bd59bb393512c76d1c7670b7b311d05a0b` |
| 33 | `def` | [fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/fixedpoint--89b5c8ab41f59eb51ce3f96d.md) | 269 | `declaration-track:89b5c8ab41f59eb51ce3f96d8b9c95a2a229521671932a8c67f8c69daffb04dc` |
| 34 | `theorem` | [fixedPoint_isFixedPt](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/fixedpoint-isfixedpt--6e5d68f42d8bd212461583ff.md) | 273 | `result-track:6e5d68f42d8bd212461583ffeb89b3975428144aa10a100c62e909061ee2c391` |
| 35 | `theorem` | [fixedPoint_unique](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/fixedpoint-unique--6d6f95dcbd7ddf29ea1043b8.md) | 276 | `result-track:6d6f95dcbd7ddf29ea1043b8ef020ff7d7565713533d2e90ace4c9f223b4bd0b` |
| 36 | `theorem` | [dist_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/dist-fixedpoint-le--a68aa5df36641b2a8b2c4d83.md) | 279 | `result-track:a68aa5df36641b2a8b2c4d830c1446c2e07e5841efa4e43c23eed4feb2a1d641` |
| 37 | `theorem` | [aposteriori_dist_iterate_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/aposteriori-dist-iterate-fixedpoint-le--37cc18048f1c1bdab39dc58b.md) | 283 | `result-track:37cc18048f1c1bdab39dc58b9730d17305a1e139f89ed9066b78b6442e9d6e5a` |
| 38 | `theorem` | [apriori_dist_iterate_fixedPoint_le](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/apriori-dist-iterate-fixedpoint-le--b1e5778e5ef7f61d11ee3a31.md) | 288 | `result-track:b1e5778e5ef7f61d11ee3a31ccaf2de7d277788fe301086bb39c6bf32a995c5b` |
| 39 | `theorem` | [tendsto_iterate_fixedPoint](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/tendsto-iterate-fixedpoint--9e23f389518de30abe8b48e2.md) | 295 | `result-track:9e23f389518de30abe8b48e25b86e2155f93880f4ce2dc5b2885f9b03b44bdd8` |
| 40 | `theorem` | [fixedPoint_lipschitz_in_map](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/fixedpoint-lipschitz-in-map--92517c75c2a0acde567963e3.md) | 301 | `result-track:92517c75c2a0acde567963e33f50f4306c8813745d3cc9afd904335ee7a49c1e` |
| 41 | `theorem` | [isFixedPt_fixedPoint_iterate](../../../../../mathematics/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/declarations/isfixedpt-fixedpoint-iterate--1b53effbc1b67544c931de45.md) | 311 | `result-track:1b53effbc1b67544c931de45996a6c2df24c91a2085b1e3c0511921dcb7b1969` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
