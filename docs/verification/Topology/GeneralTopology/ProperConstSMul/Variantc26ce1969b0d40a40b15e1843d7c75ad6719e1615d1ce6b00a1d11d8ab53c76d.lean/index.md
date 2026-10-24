# Verification target: GRWTSK.Topology.GeneralTopology.ProperConstSMul.Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e3167890f5eef714f7f145bf72d1e5c0eb291cb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e3167890f5eef714f7f145bf72d1e5c0eb291cb`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ConstMulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperConstVAdd](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/properconstvadd--64bcc15b0c72fe641cd314b9.md) | 27 | `declaration-track:64bcc15b0c72fe641cd314b9aa8deb59fc560d1c2f19829cd112497efb1fa6d8` |
| 2 | `class` | [ProperConstSMul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/properconstsmul--eb85d7d84d45b221d9051005.md) | 35 | `declaration-track:eb85d7d84d45b221d9051005cda13a0ed94a544fc27c1332e4305485c23ed016` |
| 3 | `theorem` | [isProperMap_smul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/ispropermap-smul--cfc64ba50bb507e71481aeec.md) | 41 | `result-track:cfc64ba50bb507e71481aeecd6f2dbf548c7029d9c03a33353e3b10b852bafa8` |
| 4 | `theorem` | [IsCompact.preimage_smul](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/iscompact-preimage-smul--a2a735f64fd8d48fd868f3d4.md) | 46 | `result-track:a2a735f64fd8d48fd868f3d46b16e3f1258e28e0566ae6aafcfb26b8256897a9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/instance--3ca98a764c63bcaf54b84245.md) | 51 | `declaration-track:3ca98a764c63bcaf54b8424544b49368afb5fd738fafeba370b4b6d49341db67` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/instance--1cc3ec3eb2342df6b9ab5ad6.md) | 56 | `declaration-track:1cc3ec3eb2342df6b9ab5ad6c78b4a4a675df76bc7d288078170cc540381e0ba` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/instance--eba2c80da92720d5e6fe7839.md) | 60 | `declaration-track:eba2c80da92720d5e6fe7839608460bed201b62be93965fe3558e8d31a270da2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperConstSMul/Variantc26ce1969b0d40a40b15e1843d7c75ad6719e1615d1ce6b00a1d11d8ab53c76d.lean/declarations/instance--a03e1636b914c39a4d26aa40.md) | 66 | `declaration-track:a03e1636b914c39a4d26aa403e43c5cf430cb0e2deec6da0cb53e6f6e4244eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
