# Verification target: GRWTSK.Topology.GeneralTopology.ProperMap.Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e576d67c01f6a18b36e5521d4ad0c11612d31d82",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e576d67c01f6a18b36e5521d4ad0c11612d31d82`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Filter` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap--b09270aed1d48bdd8408c6cb.md) | 84 | `declaration-track:b09270aed1d48bdd8408c6cb0abb46070ec45cad6cc99183d5a150f4ce8f1232` |
| 2 | `lemma` | [IsProperMap.continuous](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-continuous--06c3e57551ce0861bcba1662.md) | 95 | `result-track:06c3e57551ce0861bcba1662d66f58802f17ade6702984c20878f4d00a6b05b5` |
| 3 | `lemma` | [Homeomorph.isProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/homeomorph-ispropermap--dec386562a5bd1fab85fc87c.md) | 98 | `result-track:dec386562a5bd1fab85fc87c3bbe5f3fa18164a95717ecf4b6075aa4b19e9980` |
| 4 | `lemma` | [isProperMap_id](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-id--9c747d26816a972816366f74.md) | 106 | `result-track:9c747d26816a972816366f747abc3830e56deb0fc0b97a67b1a9c8a496a54583` |
| 5 | `lemma` | [IsProperMap.isClosedMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-isclosedmap--c88f16fd8f1ebfa98ab97094.md) | 109 | `result-track:c88f16fd8f1ebfa98ab97094d5b0232ed69ecf0d3b62879cbfd2d3524272b296` |
| 6 | `lemma` | [isProperMap_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-ultrafilter--4cfdcb6acde458325b82686e.md) | 114 | `result-track:4cfdcb6acde458325b82686e4da01dc2490abd253d287ee7dd75d76f4b09e45a` |
| 7 | `lemma` | [isProperMap_iff_ultrafilter_of_t2](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-ultrafilter-of-t2--ea130fd9710950a3be4271a9.md) | 129 | `result-track:ea130fd9710950a3be4271a9c29d0641d5f426bf7d5d47f9ecf4da413390229d` |
| 8 | `lemma` | [IsProperMap.ultrafilter_le_nhds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-ultrafilter-le-nhds-of-tendsto--c5bf9fefbf95c8ebc95a0a9a.md) | 137 | `result-track:c5bf9fefbf95c8ebc95a0a9a75433eede9f0c84928c0c048b615a6cf46b4674e` |
| 9 | `lemma` | [IsProperMap.prod_map](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-prod-map--028bed04032b1afa2a6c910d.md) | 142 | `result-track:028bed04032b1afa2a6c910d0cde9af98d48abf5e658b478402f76a4dbbe2cc9` |
| 10 | `lemma` | [IsProperMap.pi_map](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-pi-map--a257513249f0d738a9370e2f.md) | 166 | `result-track:a257513249f0d738a9370e2f32b6b4fa5e0c90f567c8e63e4603557be99ff5aa` |
| 11 | `lemma` | [IsProperMap.isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iscompact-preimage--2879fe42a042d61d66230b36.md) | 190 | `result-track:2879fe42a042d61d66230b361e6b29cb2fb9a7f9c15c8a241e700239535f4930` |
| 12 | `theorem` | [isProperMap_iff_isClosedMap_and_compact_fibers](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-isclosedmap-and-compact-fibers--a182a0155fa8e006235122fe.md) | 205 | `result-track:a182a0155fa8e006235122fea692f4516518135fef1da8f2eb87b7c077866a48` |
| 13 | `lemma` | [isProperMap_iff_isClosedMap_and_tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-isclosedmap-and-tendsto-cofinite--9a056b0923b3e1d405d76f05.md) | 233 | `result-track:9a056b0923b3e1d405d76f05fede074ef084da079bb6d95dddae61c06e806fef` |
| 14 | `theorem` | [Continuous.isProperMap](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/continuous-ispropermap--146e8a5fe556f630f1e79c14.md) | 244 | `result-track:146e8a5fe556f630f1e79c145b1077b186b6415eaae55784425a58850866cb41` |
| 15 | `theorem` | [isProperMap_iff_isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-iscompact-preimage--48890abe2fc4e77b4615dd94.md) | 249 | `result-track:48890abe2fc4e77b4615dd943305ed6636393421e9953017179ff08844bdeba7` |
| 16 | `lemma` | [isProperMap_iff_tendsto_cocompact](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-tendsto-cocompact--947800d44ae5e916caec847a.md) | 268 | `result-track:947800d44ae5e916caec847a6b1b9ec53101648bc8d8c540ccf3ff4d64321383` |
| 17 | `theorem` | [IsProperMap.universally_closed](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-universally-closed--4d523f6aa964409ee98bfc44.md) | 282 | `result-track:4d523f6aa964409ee98bfc44c57bc8cfc7f7cf2a65b28dae8da7c6a5186d553c` |
| 18 | `theorem` | [isProperMap_iff_isClosedMap_filter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-isclosedmap-filter--a5912ceffd79a32aae2fed9c.md) | 291 | `result-track:a5912ceffd79a32aae2fed9c175c17ff7b54e7360e62e8574ec981978a30f26d` |
| 19 | `theorem` | [isProperMap_iff_isClosedMap_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-isclosedmap-ultrafilter--eea12e09b44eedb110ca1259.md) | 335 | `result-track:eea12e09b44eedb110ca1259de6b472bd49d2e2a0892a45b99fca18f0d07abf5` |
| 20 | `theorem` | [isProperMap_iff_universally_closed](../../../../../mathematics/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/declarations/ispropermap-iff-universally-closed--8535b2b4a5b265fd4fbd7065.md) | 363 | `result-track:8535b2b4a5b265fd4fbd70651bb9f487917f5e8efa9e965b86fb0cb04f98a651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
