# Verification target: Array Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a1f1e2a113485dd159b4c2a7dddb16ac9a1785",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ArrayNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ArrayNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a1f1e2a113485dd159b4c2a7dddb16ac9a1785`.

Source path: `GRWTSK/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Option.List` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/mem-toarray.md) | 30 | `result-track:20cb7b29d301f588dc32838e7df74c9eacdc9b29e32173fc77b83aacbb3277e2` |
| 2 | `theorem` | [forIn'_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/forin-toarray.md) | 33 | `result-track:65b5d8b29a05d07474324f46d59da52cf2d6bc0ad29c1583220335e6d5b37c32` |
| 3 | `theorem` | [forIn_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/forin-toarray-source-edition-2.md) | 37 | `result-track:98925b63fd072c0366ddb2d7e11cd1a667e2f569e7aff93d6dad3ddc888791df` |
| 4 | `theorem` | [foldlM_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/foldlm-toarray.md) | 41 | `result-track:acb8a25e88d81ba0a748d8faf64627fe8f9a501b5bbb5f867096a6af73eb30ae` |
| 5 | `theorem` | [foldrM_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/foldrm-toarray.md) | 45 | `result-track:b98d29535842fbbec2518eb7378e679c3fdddeecbe5847b0d9628fe113246205` |
| 6 | `theorem` | [foldl_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/foldl-toarray.md) | 49 | `result-track:3ce446df2ca67ddfbb18e87e07a51aec8b48f56ab49367a0536a6e5dcebe134c` |
| 7 | `theorem` | [foldr_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/foldr-toarray.md) | 53 | `result-track:7b70a62ac2a209d3260dbcb7f8eaa6c5e7e9ab54a3af30bcaee9ff62ec6e31f7` |
| 8 | `theorem` | [toList_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/tolist-toarray.md) | 58 | `result-track:02b1ca6e613ebfa7724ce9b724950d14b8ba665e489818423e6e2b29868140ee` |
| 9 | `theorem` | [toArray_toList](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-tolist.md) | 62 | `result-track:0e5e9e0d01a15c0bf70e806ac0bcae10d3e9e68595072a681c53746632e239a3` |
| 10 | `theorem` | [toArray_filter](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-filter.md) | 65 | `result-track:b72094d138f7d10f264d358cff5da7da02d062e77860f3dec5808a111ff9cf8f` |
| 11 | `theorem` | [toArray_bind](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-bind.md) | 69 | `result-track:41f223d0a14b33abd9bb3486ea56999263cc93d2cab580018535ccb38a4fca47` |
| 12 | `theorem` | [toArray_join](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-join.md) | 73 | `result-track:ae1e18b11a47e208039fdd8ffe6ec5100b278d5fda0601709b5f905610f5d539` |
| 13 | `theorem` | [toArray_map](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-map.md) | 76 | `result-track:c896ffc3174e86d47d5fd9fc49a133e9ae82322d5221fceda52deaee7c424ecd` |
| 14 | `theorem` | [toArray_min](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-min.md) | 79 | `result-track:8b4fd297cb6c89c9ab44fdb0f07b1328e87402726f012209bfabacdc0e87a4b6` |
| 15 | `theorem` | [size_toArray_le](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/size-toarray-le.md) | 84 | `result-track:cd2ccf10c8147c980ed4476c3f6c871cf24b9d0b5c3b85b2eb9b09ab444a5eb2` |
| 16 | `theorem` | [size_toArray](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/size-toarray.md) | 88 | `result-track:ee77d5456ec5307fb203be62502b46071cb29e68356c066dd6ff0548d42d7999` |
| 17 | `theorem` | [toArray_eq_empty_iff](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-eq-empty-iff.md) | 93 | `result-track:239c2fbf41cb0043b8b68d616e29da157bc6081a450e7f4983641801bd4eef4b` |
| 18 | `theorem` | [toArray_eq_singleton_iff](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/toarray-eq-singleton-iff.md) | 97 | `result-track:1a0ef57317c63e606490ba178dbd50ecd8157779c3ea3d0febc40345263cb86e` |
| 19 | `theorem` | [size_toArray_eq_zero_iff](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/size-toarray-eq-zero-iff.md) | 100 | `result-track:07e225961759a18508b2fa891ef6a7a4e58bd842bc4d28ea579f899d75f42089` |
| 20 | `theorem` | [size_toArray_eq_one_iff](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/size-toarray-eq-one-iff.md) | 105 | `result-track:06d35738aaa7b92e22adc00f35746b3ab412984a4efdaea2576c47b69f11cc4d` |
| 21 | `theorem` | [size_toArray_choice_eq_one](../../../../GeneralTopology/ArrayNamespacedPublic.lean/declarations/size-toarray-choice-eq-one.md) | 109 | `result-track:0abaaf46d7b8ee765c6ea8a78d6b814ce41c8e0f4714e91bd7b9bdfba0222397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4aaa7e595be0a88d6bcbb1458e2631adc4bc7cd4c706eb793db30b7c3ce51c00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Array/Variantf7414c402d6de6e19928efb1a11c6876b2ff749ba9d93f636179880bf4bf9c36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
