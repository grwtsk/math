# Verification target: GRWTSK.Topology.GeneralTopology.Proper.Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b12bbaeeb3524098ba8d35019d77a1bb040b712",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b12bbaeeb3524098ba8d35019d77a1bb040b712`.

Source path: `GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Closure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProperCone](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/propercone--8f5c8af992e026075f004df7.md) | 38 | `declaration-track:8f5c8af992e026075f004df7d6169916385371e6c1a68342af401a18c8b0a528` |
| 2 | `abbrev` | [toPointedCone](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/topointedcone--aeddca7aa9367e17b1f3f978.md) | 51 | `declaration-track:aeddca7aa9367e17b1f3f97899a37e2221992eb343d7270b607262ab98b23048` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/instance--12d71ff432dc6528e381e641.md) | 55 | `declaration-track:12d71ff432dc6528e381e641760b2c43eb7ab73e24bdcfac97313b692f683689` |
| 4 | `theorem` | [toPointedCone_injective](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/topointedcone-injective--9c9bb28194f211f84fa6db70.md) | 58 | `result-track:9c9bb28194f211f84fa6db7041461a5f3ec1f343387db226f050a11822c4d106` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/instance--dae0fd9e23d4c77be246e4a2.md) | 62 | `declaration-track:dae0fd9e23d4c77be246e4a28916143013b78ac0adeaa3c4cacf9d72574df3b2` |
| 6 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/ext--174799eea6af50dc5306745f.md) | 67 | `result-track:174799eea6af50dc5306745f9d9bc1e0bd4152afeb2e5a55565a28e05a72bf8c` |
| 7 | `theorem` | [mem_coe](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-coe--93ffbb52040b5a10c50b0678.md) | 71 | `result-track:93ffbb52040b5a10c50b0678c8ce4da2a9718aea2fdb3997a4626feea3de6f34` |
| 8 | `instance` | [instZero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/instzero--3b25ca58f125934ceaa15022.md) | 74 | `declaration-track:3b25ca58f125934ceaa15022a1743906bc434b56920f740b5dee1dab0e65c565` |
| 9 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/nonempty--e5a9b05f0cfdfb34b5600f3c.md) | 76 | `result-track:e5a9b05f0cfdfb34b5600f3c7d97e01e95f091574e3d87d60546dc9e5d57b007` |
| 10 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/isclosed--8aba41e6bb6be1cb0c346782.md) | 79 | `result-track:8aba41e6bb6be1cb0c346782cbd346508f43504012a048bf191709fb24edb951` |
| 11 | `def` | [positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/positive--502641b399a2b40d6f2fa795.md) | 93 | `declaration-track:502641b399a2b40d6f2fa795ba66824b7112321779a3cc3e41441cf00140550e` |
| 12 | `theorem` | [mem_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-positive--ae00698609d6b804ba0f0827.md) | 98 | `result-track:ae00698609d6b804ba0f0827a40ba0e40dffd1f4ef4ca150a39464e4aec0757a` |
| 13 | `theorem` | [coe_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/coe-positive--5af48296418ed9b4cfef5b0d.md) | 102 | `result-track:5af48296418ed9b4cfef5b0dfa307a479c25bb129495a82e5fff58b9c5984224` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/instance--f888a7b19e7d3d423d325f22.md) | 112 | `declaration-track:f888a7b19e7d3d423d325f22544ad25697ce7a8b24e48e3a91b4609f1fa5fff0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/instance--a2798c5b9dea9025877dd673.md) | 116 | `declaration-track:a2798c5b9dea9025877dd673a76fd0eb566ae02010b0869ebe682f583cb6c27e` |
| 16 | `theorem` | [mem_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-zero--f2afa79f9d53ba320f1a487d.md) | 120 | `result-track:f2afa79f9d53ba320f1a487dbf24431273cdbbd897a55b4b67428ccda42a5d9c` |
| 17 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/coe-zero--8480d0e4ce34d2b63f483001.md) | 124 | `result-track:8480d0e4ce34d2b63f483001ef8ad1e8cb13513d993e52e73f3be013a1745810` |
| 18 | `theorem` | [pointed_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/pointed-zero--fd81e0359841008e97c94163.md) | 127 | `result-track:fd81e0359841008e97c9416304979d794a867287d62cce7f3f371bfa6eb793dc` |
| 19 | `theorem` | [pointed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/pointed--bb18a7354826f99aed4d6a63.md) | 138 | `result-track:bb18a7354826f99aed4d6a63bd9ee02df2bb8a5457d76f687040a4d3a42cee4a` |
| 20 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/map--a574fbcb87446354dda0a5ad.md) | 143 | `declaration-track:a574fbcb87446354dda0a5ad57164eed9df2a80ffaca7d73b8e2eb5c5ca75262` |
| 21 | `theorem` | [coe_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/coe-map--901c34d818ddc2190f572745.md) | 148 | `result-track:901c34d818ddc2190f572745d1e896e0b3734109d47a9271733d7ab5442d00ef` |
| 22 | `theorem` | [mem_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-map--4ea93583f3e27146750b2854.md) | 153 | `result-track:4ea93583f3e27146750b2854db5eb1fda8960371ca6ff5cd5b00c9032e40d7cd` |
| 23 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/map-id--a5ec29d89e0be9f8f84d4efe.md) | 158 | `result-track:a5ec29d89e0be9f8f84d4efe550f558d3d753f5b9d6fcf73e0ea017f892f9f49` |
| 24 | `def` | [dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/dual--7c23506dbaa45b1205bc6e2d.md) | 162 | `declaration-track:7c23506dbaa45b1205bc6e2d6c21b22a0526047866caf5296627c92e039b8bd2` |
| 25 | `theorem` | [coe_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/coe-dual--0a582d231bbd7e2d932ffd0b.md) | 167 | `result-track:0a582d231bbd7e2d932ffd0babed37cd3bc1be5c9764f91714c15997328ab03d` |
| 26 | `theorem` | [mem_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-dual--ab4eaca76e0e52785805c3c8.md) | 172 | `result-track:ab4eaca76e0e52785805c3c8451273dddd4662b6a8ed4d017fb0b79c05390a67` |
| 27 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/comap--64edee89b807c00a23c9f1cb.md) | 176 | `declaration-track:64edee89b807c00a23c9f1cb9fa06ea027cb92023fa980565b16078a69008b9a` |
| 28 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/coe-comap--e21f4382207fd39d33a965df.md) | 183 | `result-track:e21f4382207fd39d33a965dfc3c775bbd2eefe79d2199dfffa37938443fc8c78` |
| 29 | `theorem` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/comap-id--721808c0433beaac72d07f47.md) | 187 | `result-track:721808c0433beaac72d07f472cf320d8835f6f05681c06e86c2a9785190678c7` |
| 30 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/comap-comap--d81995b4e759b0ab313a3310.md) | 190 | `result-track:d81995b4e759b0ab313a33109d8680de6be4820e8f2abf7fcb9f759f48a393ae` |
| 31 | `theorem` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/mem-comap--f94903deb46c4a5ac8a4469c.md) | 195 | `result-track:f94903deb46c4a5ac8a4469c272d945dd2a5639cc40dfb4d1f15d0577be3e171` |
| 32 | `theorem` | [dual_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/dual-dual--d9cffc24df1025feaf6a7b80.md) | 209 | `result-track:d9cffc24df1025feaf6a7b809174edc09def32877c884b5c4a2ccd2710cf5c04` |
| 33 | `theorem` | [hyperplane_separation](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/hyperplane-separation--070f8ac476b7746b55d7ab5b.md) | 217 | `result-track:070f8ac476b7746b55d7ab5bf7dac2bc95c54b76baf14bf39813eca7acb6c2ae` |
| 34 | `theorem` | [hyperplane_separation_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/declarations/hyperplane-separation-of-notmem--e2f9b517ca33e561787ad974.md) | 259 | `result-track:e2f9b517ca33e561787ad974d5e17e1865f934a88eb7be583267c2f9cd48463d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
