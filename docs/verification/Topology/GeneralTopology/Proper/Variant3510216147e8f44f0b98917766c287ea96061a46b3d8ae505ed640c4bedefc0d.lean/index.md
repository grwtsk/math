# Verification target: GRWTSK.Topology.GeneralTopology.Proper.Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6080340f70cd69be33961b20818715f42216e76b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6080340f70cd69be33961b20818715f42216e76b`.

Source path: `GRWTSK/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/closure--024895dc40b7460d7592f456.md) | 55 | `declaration-track:024895dc40b7460d7592f456689d151b330a6298375d53f27ec2d64a30182d88` |
| 2 | `theorem` | [coe_closure](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-closure--a0c1a53ecc97a2e28e534698.md) | 63 | `result-track:a0c1a53ecc97a2e28e534698570f0814537a6f5b2f339a657f2dc0c8d3f72d49` |
| 3 | `theorem` | [mem_closure](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-closure--ae01280c6f238056a339cb63.md) | 68 | `result-track:ae01280c6f238056a339cb63ea625e2a3a63d524859e072e559c9a8a5eb6544e` |
| 4 | `theorem` | [closure_eq](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/closure-eq--e5509d2c6d6eb93d499c86c6.md) | 74 | `result-track:e5509d2c6d6eb93d499c86c69e140bf9eb02c97550b6c8cde4b439238199c06d` |
| 5 | `structure` | [ProperCone](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/propercone--2e111b9dbc9001c79f1139c9.md) | 83 | `declaration-track:2e111b9dbc9001c79f1139c9030d2db0d9b3a4026ce12c36cde849dcabc497e2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/instance--1c970e21c991b1503f1fdec0.md) | 97 | `declaration-track:1c970e21c991b1503f1fdec089a1727c24c5172c7d65458730b534db1af8e8dc` |
| 7 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/ext--89d23f7bda66585be0614fa5.md) | 106 | `result-track:89d23f7bda66585be0614fa54c52102d7f0daedcf4c51d8b1a2505864c00d9d0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/instance--44b9214b78730a9a9d1d7bb3.md) | 111 | `declaration-track:44b9214b78730a9a9d1d7bb31b7b35d025685c8f7c954d3f08d90067f65a764f` |
| 9 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/ext--165f56b3904a86acec8e5437.md) | 116 | `result-track:165f56b3904a86acec8e54372cac7b8f964cd05dde8c356cb37bdd9ec5e7bafa` |
| 10 | `theorem` | [mem_coe](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-coe--6a84d4934aa616bcb2fd62cc.md) | 121 | `result-track:6a84d4934aa616bcb2fd62cc23d9777818477acf726033a5b3bff3c0d81c13b9` |
| 11 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/nonempty--a9c305fac0ef1573df5adaaa.md) | 125 | `result-track:a9c305fac0ef1573df5adaaa6c8ac74fac5bb68962421402da5de308e068b1da` |
| 12 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/isclosed--2da959e832bee45e06458c61.md) | 129 | `result-track:2da959e832bee45e06458c610afbf598dd582e1f566963537f0253dd20da2104` |
| 13 | `def` | [positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/positive--78186bb4b6a4711105b18fb2.md) | 143 | `declaration-track:78186bb4b6a4711105b18fb2a410f1809f8160c9ca4a1af4e61cf9f1c7fc6b2c` |
| 14 | `theorem` | [mem_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-positive--6ce898b1362989b624642f1b.md) | 149 | `result-track:6ce898b1362989b624642f1bb92f9232d767f34d19e41b08ce4093416517f4a2` |
| 15 | `theorem` | [coe_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-positive--3286817fab610f118ad4133d.md) | 153 | `result-track:3286817fab610f118ad4133dd0a5f8dc7bb1b5c9c079aba6164b700a3825f0b2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/instance--1dd56830023c7a2769009710.md) | 164 | `declaration-track:1dd56830023c7a276900971080b5c68ff1737c366cca7ba8fd1b0fc23a5aff7c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/instance--bcb1e28478d1f6ac0e77ea2a.md) | 169 | `declaration-track:bcb1e28478d1f6ac0e77ea2a8543f2e8f27f13ac5aaeedc23f12c775712c480e` |
| 18 | `theorem` | [mem_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-zero--5ecc6cad47b6a9accfb2389c.md) | 173 | `result-track:5ecc6cad47b6a9accfb2389cdb83e4a34b9dbb487d86cd4fe53512b0fff7a0df` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-zero--595295d09b7b51005640e264.md) | 178 | `result-track:595295d09b7b51005640e264663ffe4348dc6ea989f4204074a21e635ae09023` |
| 20 | `theorem` | [pointed_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/pointed-zero--ff99b129574dc29278fb5426.md) | 182 | `result-track:ff99b129574dc29278fb5426dd8bbd88f0e4d9bd427da0433336223772523d5c` |
| 21 | `theorem` | [pointed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/pointed--19b0372f98151ce0cdb9bbd7.md) | 195 | `result-track:19b0372f98151ce0cdb9bbd7cba9c95370970867fa4acb55d3e387340af9c8ce` |
| 22 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/map--845cd5ccbf3e9b32b1d4fa73.md) | 201 | `declaration-track:845cd5ccbf3e9b32b1d4fa73b98c04dd416a0511c0c0649c7c7e67437df1681c` |
| 23 | `theorem` | [coe_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-map--75950fddb64bc77643c33fbd.md) | 209 | `result-track:75950fddb64bc77643c33fbda4b0062850b704c72b852b37b52a65f18cf630c6` |
| 24 | `theorem` | [mem_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-map--56b799d4d34c8eac15466f91.md) | 215 | `result-track:56b799d4d34c8eac15466f91add8401f5a85af54b823dde8c794cbcbc68da9e9` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/map-id--c77eb02067cc81d5f5859278.md) | 221 | `result-track:c77eb02067cc81d5f5859278391629af2df0242b8536d658fd08e78835df572e` |
| 26 | `def` | [dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/dual--c890d2180ae9abd736a9466f.md) | 226 | `declaration-track:c890d2180ae9abd736a9466f7f1332d2e3a161e96c7af2f34aa12cabd0d0eb52` |
| 27 | `theorem` | [coe_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-dual--b365201ff154652b93d32075.md) | 233 | `result-track:b365201ff154652b93d32075b466349f5d7a167de38709e421c27cd0d66ceefc` |
| 28 | `theorem` | [mem_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-dual--ae399b74c8496a040a0eafc0.md) | 238 | `result-track:ae399b74c8496a040a0eafc0fa68bb908afc237d863c5ba909f573360c6e235f` |
| 29 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/comap--91f8b493daf67125941004cc.md) | 243 | `declaration-track:91f8b493daf67125941004cc911b92d316e34efa50a81257220a2921367dac9e` |
| 30 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/coe-comap--97e7f2de74ba27d9219754a1.md) | 256 | `result-track:97e7f2de74ba27d9219754a1ab78f7cd9520c383578bd31f906a768964d4c18f` |
| 31 | `theorem` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/comap-id--e91e4ad7c1eeb93ab49e16ad.md) | 261 | `result-track:e91e4ad7c1eeb93ab49e16ad684178a0c48499022c399787eccbf8b219c8825c` |
| 32 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/comap-comap--c7da9ea6de6eeccddb26e372.md) | 265 | `result-track:c7da9ea6de6eeccddb26e3723da6949c9727bf5153f3a969bc2fe9d0f90a8f2f` |
| 33 | `theorem` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/mem-comap--3e22267485cc0385c2ab4494.md) | 271 | `result-track:3e22267485cc0385c2ab4494766fd310b224fba5b1889ba5413457d1d63f3ccd` |
| 34 | `theorem` | [dual_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/dual-dual--1ffc09b29e561a05bd6b79c5.md) | 285 | `result-track:1ffc09b29e561a05bd6b79c579f05d568b4db3f8b2d6e443abe8e74ec6c336ff` |
| 35 | `theorem` | [hyperplane_separation](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/hyperplane-separation--88966e38d9e532cd28c048af.md) | 294 | `result-track:88966e38d9e532cd28c048af36b9ce3fdbce1aaa40ef3ff97bb7c435eaf2a5ac` |
| 36 | `theorem` | [hyperplane_separation_of_nmem](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant3510216147e8f44f0b98917766c287ea96061a46b3d8ae505ed640c4bedefc0d.lean/declarations/hyperplane-separation-of-nmem--ef2da363dd594a17789bbab2.md) | 332 | `result-track:ef2da363dd594a17789bbab2c1f9c9800ac8188e96e21451c732bece8b9aa06b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
