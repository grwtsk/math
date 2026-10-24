# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorffRealized.Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f554c13e90b90b506b2b80187f766c837c76fa45",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f554c13e90b90b506b2b80187f766c837c76fa45`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProdSpaceFun](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/prodspacefun--873b7ef3f552dd6baad8c56c.md) | 66 | `declaration-track:873b7ef3f552dd6baad8c56cacafd233800fc83cf5dc737124bb24cbe92181bd` |
| 2 | `def` | [Cb](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/cb--c7640a6f446ff73c01534677.md) | 70 | `declaration-track:c7640a6f446ff73c01534677ce0ac23445dc2a8fb0d23c0d1c89b88490517232` |
| 3 | `def` | [maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/maxvar--51d4cb2b5f85c8f12b807a7d.md) | 73 | `declaration-track:51d4cb2b5f85c8f12b807a7dba7ea174c76f6ad7f7708efe59e8e68e31764cf9` |
| 4 | `theorem` | [one_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/one-le-maxvar--b09f79676b024a000b75a3ba.md) | 76 | `result-track:b09f79676b024a000b75a3baa4f0af1906722cbc85b2b15d6a418e1a9e7b0519` |
| 5 | `def` | [candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates--f70904625a91c60e2a454382.md) | 83 | `declaration-track:f70904625a91c60e2a454382af708c245189847fac6dee312df2e421d2ea311b` |
| 6 | `def` | [candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesb--217c3982b2018f0a474a284a.md) | 93 | `declaration-track:217c3982b2018f0a474a284ae6364449b20d5ca8f6a5c25eac85be31202c9c4f` |
| 7 | `theorem` | [maxVar_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/maxvar-bound--21a3913a8ba15e2387aeaec2.md) | 105 | `result-track:21a3913a8ba15e2387aeaec2280a283be42df69fce769a3b2274fc2a39f606aa` |
| 8 | `theorem` | [candidates_symm](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-symm--a3a472578178de57df5641aa.md) | 120 | `result-track:a3a472578178de57df5641aa9166fdd558553655206eb067296ac0d09c66c540` |
| 9 | `theorem` | [candidates_triangle](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-triangle--65f5d29c76ced00325631dca.md) | 123 | `result-track:65f5d29c76ced00325631dcaf937fb358c6dff87b3d0695a1d7c763e6816fb62` |
| 10 | `theorem` | [candidates_refl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-refl--71baca0fa288fa49929850b2.md) | 126 | `result-track:71baca0fa288fa49929850b243e6fe98e8421c7f7aa3422511b65ec317d63b1d` |
| 11 | `theorem` | [candidates_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-nonneg--174c5270b862bf268e643e66.md) | 129 | `result-track:174c5270b862bf268e643e6679f75eed3147b943f88a4112022d4bb17b71b136` |
| 12 | `theorem` | [candidates_dist_inl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-dist-inl--4c3ea20a708920024b31efe0.md) | 138 | `result-track:4c3ea20a708920024b31efe045636763b9371a4844bb2ebc36c92d85b84fa8ff` |
| 13 | `theorem` | [candidates_dist_inr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-dist-inr--3b5c29246729c4706f709a6c.md) | 142 | `result-track:3b5c29246729c4706f709a6c04a86b4a6705160bf6f31eb7a7e047896e8395f5` |
| 14 | `theorem` | [candidates_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-le-maxvar--e7372b7a6b6f3aaeb0a97794.md) | 146 | `result-track:e7372b7a6b6f3aaeb0a97794b55f1f872d544b0be7e0fb822ae877b314eef873` |
| 15 | `theorem` | [candidates_dist_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-dist-bound--6e265fd342fe51c2ce586430.md) | 150 | `result-track:6e265fd342fe51c2ce586430fc58047a4306bfafc97461f1b14b18e7ef011eb0` |
| 16 | `theorem` | [candidates_lipschitz_aux](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-lipschitz-aux--a920359cda13086c6e3aef3a.md) | 180 | `result-track:a920359cda13086c6e3aef3a0044f77060fcc4593619f8e59bff583447267b3d` |
| 17 | `theorem` | [candidates_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidates-lipschitz--52b70d201aff1a300b7295e0.md) | 198 | `result-track:52b70d201aff1a300b7295e05437d8d6aa7da45e4ae879e40b16df36109f33cd` |
| 18 | `def` | [candidatesBOfCandidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesbofcandidates--221340d826a3ea88b180ff02.md) | 208 | `declaration-track:221340d826a3ea88b180ff0248dfd4481afd635a67453d19038438d66ce5edd4` |
| 19 | `theorem` | [candidatesBOfCandidates_mem](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesbofcandidates-mem--cd9bb87c5b643e60c19ae029.md) | 212 | `result-track:cd9bb87c5b643e60c19ae0294b035f2fec2be78cdee76442cba566995778055a` |
| 20 | `theorem` | [dist_mem_candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/dist-mem-candidates--3554e7b9b4a3b74b31ab626c.md) | 218 | `result-track:3554e7b9b4a3b74b31ab626c2370f64aa8625dfa51d48cde707c9cad85841e23` |
| 21 | `def` | [candidatesBDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesbdist--abbaaf4bea61484c015496f3.md) | 225 | `declaration-track:abbaaf4bea61484c015496f31374273b751ef3fec8633ffa2e87540fed310883` |
| 22 | `theorem` | [candidatesBDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesbdist-mem-candidatesb--4846b354bad1f2afa2548f27.md) | 230 | `result-track:4846b354bad1f2afa2548f27060110b4ee1a0f717c9bb474cff39018b4a13c7a` |
| 23 | `theorem` | [candidatesB_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/candidatesb-nonempty--201f8296d42023c7b1b0e556.md) | 234 | `result-track:201f8296d42023c7b1b0e5564255b241df3fc755762aefaa628944c15e04cdf3` |
| 24 | `theorem` | [closed_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/closed-candidatesb--dcf041f09dd1029f536fde0d.md) | 239 | `result-track:dcf041f09dd1029f536fde0d5ad37e5e097e50c490919126bbb64ddd526af02c` |
| 25 | `theorem` | [isCompact_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/iscompact-candidatesb--f9899370254c561a2a05df5e.md) | 268 | `result-track:f9899370254c561a2a05df5ea77f041fa2d7b6061aef95472e15a407ba98e9eb` |
| 26 | `def` | [HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd--4733b85a838d36224329ee3f.md) | 284 | `declaration-track:4733b85a838d36224329ee3f1f154ebd37504b866b530f1693da6098954e4722` |
| 27 | `theorem` | [HD_below_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-below-aux1--bc2abcdd4e9a92650bb7b6b9.md) | 293 | `result-track:bc2abcdd4e9a92650bb7b6b9c95c100e55c02e92ba6de1922e6043de32d68535` |
| 28 | `theorem` | [HD_bound_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-bound-aux1--df3fb8c63a2889bfcea1f1f6.md) | 299 | `result-track:df3fb8c63a2889bfcea1f1f6464afb8a26fdb8006d616d13b6b4635cd4b8ad43` |
| 29 | `theorem` | [HD_below_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-below-aux2--5bb6ff69f3348120f8998b20.md) | 307 | `result-track:5bb6ff69f3348120f8998b20e6cf7c5259e0c49b319dde3662b02ceadfed7a8e` |
| 30 | `theorem` | [HD_bound_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-bound-aux2--9c4352523026e3a020e01b82.md) | 313 | `result-track:9c4352523026e3a020e01b82e61033bebe2d06a135c4952a270eb458ea3a8c38` |
| 31 | `theorem` | [HD_candidatesBDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-candidatesbdist-le--1c7718bcfee549b012d78a17.md) | 323 | `result-track:1c7718bcfee549b012d78a1718bf736f1f6629bc4bccb4509ea7fcc41b2572f8` |
| 32 | `theorem` | [HD_lipschitz_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-lipschitz-aux1--be69bcddae26c255af9feb76.md) | 348 | `result-track:be69bcddae26c255af9feb76963d006d99917bc3dbe073930711bcfaaaf8faad` |
| 33 | `theorem` | [HD_lipschitz_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-lipschitz-aux2--444c17e72d0de34666188de4.md) | 376 | `result-track:444c17e72d0de34666188de470c2edecaca678ebba2c0c903cbf3c481533dc58` |
| 34 | `theorem` | [HD_lipschitz_aux3](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-lipschitz-aux3--a74415c904269e50dd54fa5b.md) | 404 | `result-track:a74415c904269e50dd54fa5b600355c9eab5a143698d46bf93a1703f7267808b` |
| 35 | `theorem` | [HD_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-continuous--7676dabddf20cd21eb3b8bd1.md) | 409 | `result-track:7676dabddf20cd21eb3b8bd1e3b8052af58723da3fcdc5c94c0caeff632967d9` |
| 36 | `theorem` | [exists_minimizer](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/exists-minimizer--a9a79c3b69929f0771fafb70.md) | 422 | `result-track:a9a79c3b69929f0771fafb707a8915715780fc82344c088810fe76b5595e06de` |
| 37 | `def` | [optimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/optimalghdist--97d5ab37b45d04a73418835c.md) | 425 | `declaration-track:97d5ab37b45d04a73418835cfb8f27adeef3b236e3c8bf4735bdcb36ef71af5a` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/optimalghdist-mem-candidatesb--ea263a059da820c814d9db22.md) | 428 | `result-track:ea263a059da820c814d9db222c8c2292e24c70441d36039196769a8d95ce16b8` |
| 39 | `theorem` | [HD_optimalGHDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hd-optimalghdist-le--d0e9f521501db04f9b0b9dd9.md) | 432 | `result-track:d0e9f521501db04f9b0b9dd9c75054d58d0eb00a0d8db21ba65ad104ae1431e2` |
| 40 | `def` | [premetricOptimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/premetricoptimalghdist--582f143fa4284b172df26ab2.md) | 440 | `declaration-track:582f143fa4284b172df26ab228b060d92d341e75af25c7257940c501036eb478` |
| 41 | `def` | [OptimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/optimalghcoupling--035446cb50ae1fec5d21284d.md) | 457 | `declaration-track:035446cb50ae1fec5d21284d4bea5585ba8bbd147275ce2ee9411d426de7e606` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/instance--01b82590f89eddb16de21eeb.md) | 461 | `declaration-track:01b82590f89eddb16de21eeb7521cfed089ca1f2f5d8c16d59dbdffa249900d5` |
| 43 | `def` | [optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/optimalghinjl--ef5bf25d97588215907e458f.md) | 466 | `declaration-track:ef5bf25d97588215907e458fcca1c2dd5763e67b5959074ae30feec3f94ede45` |
| 44 | `theorem` | [isometry_optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/isometry-optimalghinjl--f42a36036bf37e955d912577.md) | 471 | `result-track:f42a36036bf37e955d9125775a9ed731237264c491354eff6c07b9d6ab02f8f6` |
| 45 | `def` | [optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/optimalghinjr--9320062ce826a58cc1199da3.md) | 476 | `declaration-track:9320062ce826a58cc1199da3b90c492e7be1fd7297f7da4cb4e9a1b5511c3012` |
| 46 | `theorem` | [isometry_optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/isometry-optimalghinjr--e630de655cd4c081d5af5bfe.md) | 481 | `result-track:e630de655cd4c081d5af5bfe9d71269724d77b61c0e20fcc1b2765715003486b` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/compactspace-optimalghcoupling--fb5a9f3653500c5f42896fec.md) | 486 | `declaration-track:fb5a9f3653500c5f42896feccefe4fc788b0e7bd6da550f8c2075f17c133481d` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean/declarations/hausdorffdist-optimal-le-hd--073fe183ea680f38228cf622.md) | 496 | `result-track:073fe183ea680f38228cf6223d111b85db757bb6c36a5c65ad40c2d7438db30c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
