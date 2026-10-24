# Verification target: GRWTSK.Topology.MetricTopology.Rat.Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfd61578b3b146a2ae9bf8d4ea948cdd5a8f4f17",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfd61578b3b146a2ae9bf8d4ea948cdd5a8f4f17`.

Source path: `GRWTSK/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNRat.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--58f8a7731a5af2095f81b8f6.md) | 21 | `declaration-track:58f8a7731a5af2095f81b8f6fc3ec090d61cb598da23aca851e1ec40c9507d50` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/dist-eq--206bb0e07f6b16e85b525856.md) | 24 | `result-track:206bb0e07f6b16e85b525856801d6616651af40c74c378cfc7c10b5317c60688` |
| 3 | `theorem` | [dist_cast](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/dist-cast--f11b6e666ee78b39f7cb4921.md) | 27 | `result-track:f11b6e666ee78b39f7cb49217984f5bc89b6b519c7d9f913880825c27489252b` |
| 4 | `theorem` | [uniformContinuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/uniformcontinuous-coe-real--16675ffacae384fc9164746d.md) | 30 | `result-track:16675ffacae384fc9164746d68d8fc64df8d6f1986e05bad2e0153e4afa80694` |
| 5 | `theorem` | [isUniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/isuniformembedding-coe-real--9ce943f915303e3acf3a0fd1.md) | 33 | `result-track:9ce943f915303e3acf3a0fd14b7d9d70fe209b58b1c0b216d90495ed37b4aef7` |
| 6 | `theorem` | [isDenseEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/isdenseembedding-coe-real--3d4e0c896223a135d39803fc.md) | 36 | `result-track:3d4e0c896223a135d39803fc56afda924f37838380bf3f5e9f52c891a91809d2` |
| 7 | `theorem` | [isEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/isembedding-coe-real--6ec3ae9d5c4623b515c11817.md) | 39 | `result-track:6ec3ae9d5c4623b515c118179c43e67a00f2c541ad8296399c3e9c66a420daac` |
| 8 | `theorem` | [continuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/continuous-coe-real--c7be9f4625b3c863469b9d36.md) | 45 | `result-track:c7be9f4625b3c863469b9d3663056ccefdba68a5ce267c7067e69cc8a6565452` |
| 9 | `theorem` | [Nat.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/nat-dist-cast-rat--263b68ed639e779937dc7d7a.md) | 51 | `result-track:263b68ed639e779937dc7d7a269749cd2c104673b30a9104abbb3f3cb180f933` |
| 10 | `theorem` | [Nat.isUniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/nat-isuniformembedding-coe-rat--c7b277bb62d5989a465ea03c.md) | 54 | `result-track:c7b277bb62d5989a465ea03c032011bb1cfff2af0b231ca2ab14c43e2f0976a3` |
| 11 | `theorem` | [Nat.isClosedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/nat-isclosedembedding-coe-rat--b8522bc41a0ef70b7fb787b9.md) | 57 | `result-track:b8522bc41a0ef70b7fb787b98311a53f6bd17e87034321e83d59b71846392f28` |
| 12 | `theorem` | [Int.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/int-dist-cast-rat--5b0eee61c98fa604c4dff0ab.md) | 61 | `result-track:5b0eee61c98fa604c4dff0abb4d150147f11499af586d7dcdd43a4193e4afdd0` |
| 13 | `theorem` | [Int.isUniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/int-isuniformembedding-coe-rat--b8f204c26ca09cd8e35a638e.md) | 64 | `result-track:b8f204c26ca09cd8e35a638ef9053c0d420ca773c13044148b5ffd0edcb71f4a` |
| 14 | `theorem` | [Int.isClosedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/int-isclosedembedding-coe-rat--197984b53a2180008ab895f3.md) | 67 | `result-track:197984b53a2180008ab895f3d6913fc2a6f21120ef71b3bd508af8205ec6dce0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--fcab2992be0f2c5e9242a3b2.md) | 72 | `declaration-track:fcab2992be0f2c5e9242a3b2c2fbd5405fcbbd2e4d070681f90729d8f40053b9` |
| 16 | `theorem` | [uniformContinuous_add](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/uniformcontinuous-add--74348c339413b10d91bb0176.md) | 74 | `result-track:74348c339413b10d91bb0176c35d3aec5fe37012c1327fa3866f4840f6025411` |
| 17 | `theorem` | [uniformContinuous_neg](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/uniformcontinuous-neg--f749dd2de04ddba43e00a788.md) | 80 | `result-track:f749dd2de04ddba43e00a788ec480bef0a8e59ef1328fa7a18d799dc1b07d5f5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--af9eb99e5935638a8f11cb70.md) | 84 | `declaration-track:af9eb99e5935638a8f11cb709a4f11175fde5a68f26c59efe9acaedd85a784ce` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--5316598964e600cbe44e7809.md) | 87 | `declaration-track:5316598964e600cbe44e7809e9b1a6f11a60603ff3359a356a6bca43e3053715` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--f2b1f0153c400e613b7d50a1.md) | 89 | `declaration-track:f2b1f0153c400e613b7d50a1f8904c53cbfa6d77559ca52ef92374b536883d4f` |
| 21 | `theorem` | [uniformContinuous_abs](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/uniformcontinuous-abs--df15db60322c32c4791e8750.md) | 91 | `result-track:df15db60322c32c4791e8750c3bdc57c28b4a163654dbf3688a52ce2af3e56b7` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--de50129d3ded7156ad999b3a.md) | 96 | `declaration-track:de50129d3ded7156ad999b3aa8439695a4f576952ba2dd2b7fda6c97d223832a` |
| 23 | `theorem` | [totallyBounded_Icc](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/totallybounded-icc--fdf2756a1f5ca705fb86ddd6.md) | 98 | `result-track:fdf2756a1f5ca705fb86ddd65b46e492a82472ec11f4bb7d1322107c1057b88b` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--eafc53eb9f3e0e73f9806b86.md) | 107 | `declaration-track:eafc53eb9f3e0e73f9806b86923ca728e5735307c10c014ab6c59dc994c70952` |
| 25 | `lemma` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/dist-eq--4cc8ea395d2eb9bb63f43971.md) | 111 | `result-track:4cc8ea395d2eb9bb63f43971853c8eb39611123cfea4eaa33be65e3c3961000b` |
| 26 | `lemma` | [nndist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/nndist-eq--cfcf864551c204ff727da6b3.md) | 113 | `result-track:cfcf864551c204ff727da6b3593ff7173451493b91e45f8435fe43f50383dc04` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--6d055dddab74fcd00b22c5e4.md) | 115 | `declaration-track:6d055dddab74fcd00b22c5e450fad6825e4e221d12e7511a68040b883335aeff` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--8b71114dd56abf4a91da319d.md) | 119 | `declaration-track:8b71114dd56abf4a91da319d0ec844818e71883fef171154793ed5726a8bee75` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--aacf788569c855fffce476a7.md) | 123 | `declaration-track:aacf788569c855fffce476a7f596416ddca5028c01510baca4988c109fcc604d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant056cfca08699178bd1542cf88d7c803d7a2640318abd43ba48821987a2a65d7c.lean/declarations/instance--2650cab3638dfc9556b25718.md) | 124 | `declaration-track:2650cab3638dfc9556b25718e4b2c4b8f4d71bdcf6b0fe953d57fd2c77187b7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
