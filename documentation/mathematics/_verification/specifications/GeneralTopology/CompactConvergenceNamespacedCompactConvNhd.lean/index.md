# Verification target: Compact Convergence Namespaced Compact Conv Nhd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/index.md) · [Full source](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0788ac245737c102988379e8f3697a91ffdef77f`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactConvNhd](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd.md) | 104 | `declaration-track:ccd55f183c358fa6f47d68426ddfe69e7a2303ea248dc49ffcb51138b6541b5f` |
| 2 | `theorem` | [self_mem_compactConvNhd](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/self-mem-compactconvnhd.md) | 110 | `result-track:cb6a3247ef24b26928ba6f3e531814c8fd5188450d17a0caeacb17e6ae038e99` |
| 3 | `theorem` | [compactConvNhd_mono](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-mono.md) | 115 | `result-track:e0e523569ddacb0cf42a6ed855a5d897855893c1a75dcc69163e504faa0d673a` |
| 4 | `theorem` | [compactConvNhd_mem_comp](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-mem-comp.md) | 119 | `result-track:5794092b19f1a04bf84494b45271da0323245b9749ddc6c539a9229c7f2eda99` |
| 5 | `theorem` | [compactConvNhd_nhd_basis](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-nhd-basis.md) | 126 | `result-track:89e0cd74a40a449f40480b3d403fa524189a3d2c54b36e0cdbb9c5800607b3cd` |
| 6 | `theorem` | [compactConvNhd_subset_inter](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-subset-inter.md) | 135 | `result-track:678681be0111fbd4259920e30f69dbb97e2b8dee906e15f1baa550ff37846985` |
| 7 | `theorem` | [compactConvNhd_compact_entourage_nonempty](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-compact-entourage-nonempty.md) | 142 | `result-track:63ebeee42016106d6374f59309c495e24aceb5336c025525ec4328e3c6a7706a` |
| 8 | `theorem` | [compactConvNhd_filter_isBasis](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-filter-isbasis.md) | 147 | `result-track:b25f1db2c4fe79ac2192e9f47847d47f8795297626d79353ae8e70fe803fabdb` |
| 9 | `def` | [compactConvergenceFilterBasis](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvergencefilterbasis.md) | 159 | `declaration-track:319687e15a4345669063b36093356343ece1f3b55391bf66779c381661e88136` |
| 10 | `theorem` | [mem_compactConvergence_nhd_filter](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/mem-compactconvergence-nhd-filter.md) | 163 | `result-track:c8d86fd08caf8b3860e28bb1cc3ec79193ac0446a366eb7268cb58e748d6df9a` |
| 11 | `def` | [compactConvergenceTopology](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvergencetopology.md) | 177 | `declaration-track:84ff167491b7babbd51f5adf2240c50227ff076778333cc8dba90382679d8d67` |
| 12 | `theorem` | [nhds_compactConvergence](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/nhds-compactconvergence.md) | 181 | `result-track:6d69870d7e30fa41dede68ed929e2a4272d6e13b574b80aa2424ccce3179fa34` |
| 13 | `theorem` | [hasBasis_nhds_compactConvergence](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/hasbasis-nhds-compactconvergence.md) | 191 | `result-track:2ec2101364d7000920d9d94a5e39d9ef81b844b11d2d513021665234e0933621` |
| 14 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn'](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon.md) | 201 | `result-track:1ec55edabf05733494be6fc4411463d167b92c911d24899bf4bbda02b83a0f86` |
| 15 | `theorem` | [compactConvNhd_subset_compactOpen](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvnhd-subset-compactopen.md) | 216 | `result-track:46998f171641253ec50c71a7538ec5387daa958c737e9ec49867456743727085` |
| 16 | `theorem` | [iInter_compactOpen_gen_subset_compactConvNhd](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/iinter-compactopen-gen-subset-compactconvnhd.md) | 230 | `result-track:9deca749481d48da5faaa1b2a3ee38e7069468e95bf3123ac49acd6106618749` |
| 17 | `theorem` | [compactOpen_eq_compactConvergence](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactopen-eq-compactconvergence.md) | 276 | `result-track:c92bca899e6ebd23b4e3325c6f8cac99b098e2750a3ff8d3db63db09dcec887c` |
| 18 | `def` | [compactConvergenceUniformity](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvergenceuniformity.md) | 298 | `declaration-track:f3a62004e1b2c084ff5217a3a60b2e3482c4b0918dc113691798cd40e912f939` |
| 19 | `theorem` | [hasBasis_compactConvergenceUniformity_aux](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/hasbasis-compactconvergenceuniformity-aux.md) | 303 | `result-track:bbe610952aa86a973e003c5489a0b91899e522b6b847eb624043889c7206beb1` |
| 20 | `theorem` | [mem_compactConvergenceUniformity](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/mem-compactconvergenceuniformity.md) | 317 | `result-track:24c66cca1c8cbdef897804e501145d558e129ce8ee35fabb2e4bc7440c953891` |
| 21 | `instance` | [compactConvergenceUniformSpace](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvergenceuniformspace.md) | 326 | `declaration-track:584fc10ba53269d9925572c4dcc6fac83f56ea365b2f381d785bacc37abeb1e9` |
| 22 | `theorem` | [mem_compactConvergence_entourage_iff](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/mem-compactconvergence-entourage-iff.md) | 364 | `result-track:4bbb8ad5cb05b2822042e09049583bcb5c9cfa2d272225689fb613797559d0c9` |
| 23 | `theorem` | [hasBasis_compactConvergenceUniformity](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/hasbasis-compactconvergenceuniformity.md) | 371 | `result-track:c2467b04ab899a13d597b170fa69c4345df80892a7c1faf77fe75e843402eb03` |
| 24 | `theorem` | [Compact Convergence Namespaced Compact Conv Nhd](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/compactconvergenceuniformity-source-line-377-occurrence-2.md) | 377 | `result-track:a941dc266db0b595223133bb607741eac2946763341a04856c00433178b4fdec` |
| 25 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon-source-edition-2.md) | 391 | `result-track:96d161e9e496bff1e90b29a36bda753ad89de963aca6067e21a09e2709d87e09` |
| 26 | `theorem` | [tendsto_of_tendstoLocallyUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendsto-of-tendstolocallyuniformly.md) | 397 | `result-track:a35b139a1239715a0c6b0742aba6356dd3309a51da43d658f2195d4d1dea845f` |
| 27 | `theorem` | [tendstoLocallyUniformly_of_tendsto](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendstolocallyuniformly-of-tendsto.md) | 409 | `result-track:dbff67ee37bfb993a892de3a0cdc684576fa84a6f484809eb117506a10ed9dbf` |
| 28 | `theorem` | [tendsto_iff_tendstoLocallyUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendsto-iff-tendstolocallyuniformly.md) | 423 | `result-track:04b8dce211e250c66d2aa0917284eab6168e8ebfb39fd1ec6cf843f64cd3f6d4` |
| 29 | `theorem` | [hasBasis_compactConvergenceUniformity_of_compact](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/hasbasis-compactconvergenceuniformity-of-compact.md) | 432 | `result-track:4eb501ea4cd924360dd68770e7aa4a87394842a446026b826de12f5328d29cd8` |
| 30 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedCompactConvNhd.lean/declarations/tendsto-iff-tendstouniformly.md) | 442 | `result-track:e581e4ec56dd84da0635abbca7aebb496e6038ab8b65e5e86ec8db7bf25a4815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8b22a317d3e3ca5818b1b234bdb20855e71e410854923a40ca36e8f0caf2e5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
