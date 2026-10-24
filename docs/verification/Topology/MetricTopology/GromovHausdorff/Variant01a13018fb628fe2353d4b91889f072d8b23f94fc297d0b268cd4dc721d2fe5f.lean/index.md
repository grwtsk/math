# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorff.Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b37c224e2b9f34b621e69661c2dab552b520bc4c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b37c224e2b9f34b621e69661c2dab552b520bc4c`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Closeds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.GromovHausdorffRealized` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Kuratowski` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/isometryrel--01500f8a0ee589de0a89ecba.md) | 80 | `declaration-track:01500f8a0ee589de0a89ecba6468e1fa22483d2659d14383d15e5027b4ed3521` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/equivalence-isometryrel--957d2860ead4810c6f78e2c3.md) | 84 | `result-track:957d2860ead4810c6f78e2c374afd4407d6503e0c92db2f7274cb38d534ac62b` |
| 3 | `instance` | [IsometryRel.setoid](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/isometryrel-setoid--b1c20d7b5cc579ed38dcd6a3.md) | 88 | `declaration-track:b1c20d7b5cc579ed38dcd6a389253caefb7d42315cff00bd9f613c6a0030eb46` |
| 4 | `def` | [GHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghspace--c288d72250e6cc954a1ff474.md) | 93 | `declaration-track:c288d72250e6cc954a1ff474b669894d34fef18f935249a0b158931669d1f800` |
| 5 | `def` | [toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/toghspace--942a90ecf96d63847e55bf46.md) | 98 | `declaration-track:942a90ecf96d63847e55bf46d696a0a2844a3f1baebfd56a5b62f79026cd3bbc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--487600bef85b5e66ed5643ae.md) | 102 | `declaration-track:487600bef85b5e66ed5643aea6d43c643370e25e7839603ae7a4c22ad467fa64` |
| 7 | `def` | [GHSpace.Rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghspace-rep--bb88571879264f819eb091fd.md) | 107 | `declaration-track:bb88571879264f819eb091fd4d3e076a560bc6b4c3ad151770622a3834f45d2c` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/eq-toghspace-iff--8c7f5139187ddbd403ceee93.md) | 111 | `result-track:8c7f5139187ddbd403ceee93367022ee372ae06684139e4332cddc2b5d76cbe2` |
| 9 | `theorem` | [eq_toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/eq-toghspace--569fa4826def629695977f5b.md) | 130 | `result-track:569fa4826def629695977f5b636c179835101dfc4bcff23fa6329a3d531e14cb` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/repghspacemetricspace--3c94fdcad6c6112a016e5258.md) | 136 | `declaration-track:3c94fdcad6c6112a016e5258178f1594d631f0338a7d1bde85a53a1363c26140` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/rep-ghspace-compactspace--54aa545aa532ead2293fdccb.md) | 140 | `declaration-track:54aa545aa532ead2293fdccb80d4e0f3dc00bd2dfa9495e25e5b4d99432fac1f` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/rep-ghspace-nonempty--b644921b24303498f043da3a.md) | 144 | `declaration-track:b644921b24303498f043da3afaf6eb52d18e0986a31e6a1f78667a3c90085e3b` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghspace-toghspace-rep--d79323828541e37ff3d1181c.md) | 150 | `result-track:d79323828541e37ff3d1181cda210d85905169826a97b86d3cc6d5ae18fefeaf` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv--902370277686d34f5b7d7fa2.md) | 158 | `result-track:902370277686d34f5b7d7fa248a4e5f8dc43a3f73f8fec727651cef8b9a59bd6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--15b4fe2be110ecb6f2a152d8.md) | 187 | `declaration-track:15b4fe2be110ecb6f2a152d8b8b0fae961cd2e153ad2f4e6654bc9603c6ca5e7` |
| 16 | `def` | [ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghdist--15b24ca4eeb13978f6f695e3.md) | 193 | `declaration-track:15b24ca4eeb13978f6f695e3fc1e0adee85f773bbfd38b4d123a5be08563c811` |
| 17 | `theorem` | [dist_ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/dist-ghdist--19da818d7bd580d376840027.md) | 198 | `result-track:19da818d7bd580d3768400270d7035c6eaf9e49c6987338874e5340090729ac0` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghdist-le-hausdorffdist--ba4eeef7d46bd813173dac09.md) | 204 | `result-track:ba4eeef7d46bd813173dac0982938aea6112b3b4ae57dae3d65c5b98a736bb16` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/hausdorffdist-optimal--478247e4d752ce9ad71758d9.md) | 262 | `result-track:478247e4d752ce9ad71758d9ac5dc5c00bbdcdd5a049c5245eb0a74085c0380c` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghdist-eq-hausdorffdist--f66ac5f93782a975905fe982.md) | 407 | `result-track:f66ac5f93782a975905fe982f1494e04c02fb01709cad6d1fc8b951b72e6983e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--62100b46d92c6b550db1474a.md) | 425 | `declaration-track:62100b46d92c6b550db1474aeb536c89b4495207c77147654a60352391820238` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/topologicalspace-nonemptycompacts-toghspace--cecdf00da8a43b62017e96b1.md) | 534 | `declaration-track:cecdf00da8a43b62017e96b13e4d99c23de48eeb28972911b6244acfc30bf36f` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghdist-le-nonemptycompacts-dist--4d33c22b332349ef116a46b4.md) | 547 | `result-track:4d33c22b332349ef116a46b4c6b5e8483a46f268e8e8952212698fd432f0e161` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/toghspace-lipschitz--7ac9a965ff30c9947b0a2fee.md) | 558 | `result-track:7ac9a965ff30c9947b0a2fee23f9aaeac44dee602cfeb1634eae6e6be01be64c` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/toghspace-continuous--f45f7eda665ba36860501b2c.md) | 563 | `result-track:f45f7eda665ba36860501b2c56adbff1344ddd58342f863888d031be06652ca1` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/ghdist-le-of-approx-subsets--23eaaf31b0e907ec74c9a387.md) | 583 | `result-track:23eaaf31b0e907ec74c9a3872754ca8bac9195239477be635c0870e584eb2078` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--ea0c2ed0175eb7aeadfd28f1.md) | 662 | `declaration-track:ea0c2ed0175eb7aeadfd28f1ee0505bf0841c9ffcc9521735e6acbcc70c6c296` |
| 28 | `theorem` | [totallyBounded](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/totallybounded--caec043917396dc5fc717d86.md) | 797 | `result-track:caec043917396dc5fc717d863ff21228cf0284601777f41922d37a4d1c2d786f` |
| 29 | `structure` | [AuxGluingStruct](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/auxgluingstruct--aee745541a527cdc8557694e.md) | 985 | `declaration-track:aee745541a527cdc8557694ede30e9d15cfe47729d4f3215418bca89c490fd3b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--a7d6b737c1098a5c03caa5ac.md) | 994 | `declaration-track:a7d6b737c1098a5c03caa5ac0644f1df899d587ea8f935fda67dcabad8f7e0cb` |
| 31 | `def` | [auxGluing](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/auxgluing--939ca14a02e6549c1f0e5bff.md) | 1004 | `declaration-track:939ca14a02e6549c1f0e5bff12822935f502559917e316140fe95726b8eb52d5` |
| 32 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/macro-rules--4f63eece9b8a8978b7a23732.md) | 1013 | `declaration-track:4f63eece9b8a8978b7a23732ef81ea9de033d89f3e3e5acfe57679c7d9c1d448` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/declarations/instance--a26c841646be49c7b9f0b2f2.md) | 1016 | `declaration-track:a26c841646be49c7b9f0b2f25a460b105272fc117b098a4ff03faa7497569025` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
