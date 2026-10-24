# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e402f821ec52c4735c9fcfadf415345a1b62a458",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e402f821ec52c4735c9fcfadf415345a1b62a458`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_atTop_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/prod-attop-attop-eq--d3e1daa2c4b8bc4147dbcb3d.md) | 25 | `result-track:d3e1daa2c4b8bc4147dbcb3d3184c288db0c5be797d2e4399610040708ca3804` |
| 2 | `lemma` | [tendsto_finsetProd_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/tendsto-finsetprod-attop--7815fbaa3a05e69b01bf544e.md) | 33 | `result-track:7815fbaa3a05e69b01bf544e4e53f28a093d0b3aedb4b7fb3406d8b96fab4ff6` |
| 3 | `theorem` | [prod_map_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/prod-map-attop-eq--075e0f168a75ea2b1ac20638.md) | 46 | `result-track:075e0f168a75ea2b1ac20638d5915c29f4271b50e25ae0a9c69c3bc536fd0257` |
| 4 | `theorem` | [tendsto_atTop_diagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/tendsto-attop-diagonal--dddfd70564e0fe986ac876a3.md) | 51 | `result-track:dddfd70564e0fe986ac876a3be19b9b9ff1845df965f3fa7845b75fcdbeda196` |
| 5 | `theorem` | [Tendsto.prod_map_prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/tendsto-prod-map-prod-attop--8f454fbbed1006349a7b7f25.md) | 56 | `result-track:8f454fbbed1006349a7b7f25791b4d448282d84be9c3b2a9d5da1bf043417f3a` |
| 6 | `theorem` | [Tendsto.prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/tendsto-prod-attop--43618479535b33e52ef81ea9.md) | 63 | `result-track:43618479535b33e52ef81ea9a9b3425f315d7949f7e73c48971e2fbddfec2c3f` |
| 7 | `theorem` | [eventually_atTop_prod_self](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/eventually-attop-prod-self--2960909a802a9fa0fa51f699.md) | 70 | `result-track:2960909a802a9fa0fa51f699c7166b10eff7ccf56f1b95b9d91306bafdfb1851` |
| 8 | `theorem` | [eventually_atTop_prod_self'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/eventually-attop-prod-self--2b44b90ffc82b223da8cd6eb.md) | 75 | `result-track:2b44b90ffc82b223da8cd6ebde05b72fbb93fc577b56d27656abb92c2e045055` |
| 9 | `theorem` | [eventually_atTop_curry](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant90bb9bbc13df48ee3a9f6b611feedc47c69ac5f05238e3a097a24e8c19a9cdf5.lean/declarations/eventually-attop-curry--4dd2fdec3c0f28afa04887a1.md) | 80 | `result-track:4dd2fdec3c0f28afa04887a1d3b41ba6fd4e39dbe372aedf7cacc9e9f008d371` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
