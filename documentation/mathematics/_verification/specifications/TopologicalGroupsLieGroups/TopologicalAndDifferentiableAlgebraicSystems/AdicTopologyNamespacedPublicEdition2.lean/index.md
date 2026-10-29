# Verification target: Adic Topology Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "121865008c7a4b0faf3553bbfa1aee83416ff245",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant994ebbbc4212a7c1bf83d284a2eefeaa728530f75d8d20f4efaa9d3842c1542a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `121865008c7a4b0faf3553bbfa1aee83416ff245`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant994ebbbc4212a7c1bf83d284a2eefeaa728530f75d8d20f4efaa9d3842c1542a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant994ebbbc4212a7c1bf83d284a2eefeaa728530f75d8d20f4efaa9d3842c1542a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformRing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/adic-basis.md) | 70 | `result-track:f906e575f1195b375149397dca93223f24e3da53493a20939084f01397471aa9` |
| 2 | `def` | [ringFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/ringfilterbasis.md) | 93 | `declaration-track:51c31b7826dedc1d4a3d0620ae3cb983e3bbc74689d204cec373712f2ab88355` |
| 3 | `def` | [adicTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/adictopology.md) | 99 | `declaration-track:2f7b22602f0d14d9161de34d17fef31a1bffc5cfd71350ff9c7a76a847fb80c5` |
| 4 | `theorem` | [nonarchimedean](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/nonarchimedean.md) | 102 | `result-track:ae9586106df904e2617a4005ecb48d82810aabac6fff578a1c3ccd18573304a4` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/hasbasis-nhds-zero-adic.md) | 106 | `result-track:dbe4bb2353361b6ba6d16712f5b3761406c4d94596184acf2c75cdad66f27934` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/hasbasis-nhds-adic.md) | 119 | `result-track:6fa81b85cafa7e68cb923363956e494f79d9af8c13aad1554f85ae58fdaf843b` |
| 7 | `theorem` | [isLinearTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/islineartopology.md) | 126 | `result-track:b0dee74a6b94c8eeb1b53722ba905b535df6d20a88515a66d985a59f6d2c0e27` |
| 8 | `theorem` | [adic_module_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/adic-module-basis.md) | 132 | `result-track:183a2802719dda200cdcc80efcfb4c97595a833b63c64a2f77d48285cd47aa14` |
| 9 | `def` | [adicModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/adicmoduletopology.md) | 147 | `declaration-track:c86623ca5552e90421f6325e6c5a1e5a89c4768c841dacb85babd7b4d9255f58` |
| 10 | `def` | [openAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/openaddsubgroup.md) | 153 | `declaration-track:ca7bd16c280ec6df86dca59779b5bdec69782beac9c8889ea227cfe4d9b191c2` |
| 11 | `def` | [IsAdic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/isadic.md) | 166 | `declaration-track:ac7520cea67e92dd6d29a163974dbc2afe550b064f0a3182764eed3517f2f5d4` |
| 12 | `theorem` | [isAdic_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/isadic-iff.md) | 171 | `result-track:38ff41421e7077d10d1b1142e080f912bf55ecb0a6447c1651a895af00f2e5cf` |
| 13 | `theorem` | [is_ideal_adic_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/is-ideal-adic-pow.md) | 201 | `result-track:cbbcd17712bac35731e385a15282c3af406d6ab7ccc4cbd44488d87a170ba5fe` |
| 14 | `theorem` | [is_bot_adic_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/is-bot-adic-iff.md) | 218 | `result-track:255546cf7e206b6487ff2958e259b7fee01da7b71893cb5b691c04ce1fadc416` |
| 15 | `theorem` | [IsAdic.hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/isadic-hasbasis-nhds-zero.md) | 233 | `result-track:dbaace736f1a84f58cdedac5c734abaa76f421f2561a8e630cbe2c1c5193aba3` |
| 16 | `theorem` | [IsAdic.hasBasis_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/isadic-hasbasis-nhds.md) | 238 | `result-track:235f2288923fa696a2569390c8f54bffe86c02970f8bf69feadc513820d36a9b` |
| 17 | `class` | [WithIdeal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/withideal.md) | 245 | `declaration-track:8f68b1dc401086efcd347d6ede037deade7bde0544b60b5c9d9eb3a8931647d6` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/instance-source-edition-4.md) | 253 | `declaration-track:84baddd503958a28b2ca010008188673aeeb7a87de5055a53ea7e73eee3e9ee5` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/instance.md) | 256 | `declaration-track:2fe432f99fae82dae38e38ec993c29fa3624868a3ae28015fb5122c23c7bc029` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/instance-source-edition-3.md) | 259 | `declaration-track:65414dc92d9bc3fe3398506c8343abf55d93d4f237c39108e087d570abb91e72` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/instance-source-edition-5.md) | 262 | `declaration-track:f6dde79d35665ee913fb82a957993893c8d8df03368ab38e463379c63692c1bd` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/instance-source-edition-2.md) | 265 | `declaration-track:5fdd0fa824454f80bb143b0c9566f6b46dff6f4dc89d71902ed905b256425b94` |
| 23 | `theorem` | [uniformContinuous_of_map_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/uniformcontinuous-of-map-le.md) | 268 | `result-track:0c90b39be1b9562ea180d8dbb441418803eb5869aab46c5ff3a6c1e64701e2a3` |
| 24 | `def` | [uniformEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/uniformequiv.md) | 277 | `declaration-track:74e0eb42ab6a0f9bee471ae8464c933e20cc725cc97c75bd73b33d665b67f265` |
| 25 | `lemma` | [isTopologicallyNilpotent_of_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/istopologicallynilpotent-of-mem.md) | 284 | `result-track:9c2d6b6598b2ee1b072b9e7430cbd14bdd9ba70564222dfb3f81b69512df3b58` |
| 26 | `def` | [topologicalSpaceModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/topologicalspacemodule.md) | 292 | `declaration-track:c15624db5f3f7fbc392d3a94bcf121ccb121c9b55d96017a7c9e941bf616b7a1` |
| 27 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/example.md) | 299 | `declaration-track:45a8cc126dbe6141ab24d97e97d1281d5a9c777b022ce3344a8534c898f0b29e` |
| 28 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/example-source-edition-2.md) | 301 | `declaration-track:4db8ac1785b38f0e5540ec870cb87d06b687f126f7dac99faa1c2e837e50c5b3` |
| 29 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/example-source-edition-5.md) | 303 | `declaration-track:e1f9b036613b83128563118519136016f66c64b34ea194ea372bd2da36bb04f3` |
| 30 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/example-source-edition-4.md) | 306 | `declaration-track:91eeed120347594a593ceddb992c78f79ecd642bfb6efd1965f5a40ef80e0299` |
| 31 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedPublicEdition2.lean/declarations/example-source-edition-3.md) | 309 | `declaration-track:80d53e7a285cdc3d5483e2094e02b0727a159722d08445ffb8c5ffb6a9e92216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f57bc6422fc415eb47a9e30c408d1ab5f69391864d0bd79aa1db2eaaf188dacf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant994ebbbc4212a7c1bf83d284a2eefeaa728530f75d8d20f4efaa9d3842c1542a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdicTopology/Variant994ebbbc4212a7c1bf83d284a2eefeaa728530f75d8d20f4efaa9d3842c1542a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
