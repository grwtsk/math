# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54ca6f37044d87b8b7759638ca481931860ab666",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54ca6f37044d87b8b7759638ca481931860ab666`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Contractible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Contractible` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PartialHomeomorph` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--82bf34c19780458b63e0f009.md) | 35 | `declaration-track:82bf34c19780458b63e0f00923a96150125152c56aa08bcd490d4aaa314dc00b` |
| 2 | `theorem` | [isOpenEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/isopenembedding-coe--64dbf32ea855e53edc71f12b.md) | 38 | `result-track:64dbf32ea855e53edc71f12b2971e676fb9bb0c685517efb90ef4db2e1db1da9` |
| 3 | `theorem` | [isEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/isembedding-coe--41cf7e7142d8ac840c74c107.md) | 41 | `result-track:41cf7e7142d8ac840c74c10713a23cdd12fed5d8f04cd49755cad5dd3effd113` |
| 4 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/continuous-coe--4220ca07ab90cf13f8edb029.md) | 47 | `result-track:4220ca07ab90cf13f8edb0291d0439f5a1f6d5c4f2e2a86b1a0a30ddd1c8cba9` |
| 5 | `theorem` | [continuous_re](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/continuous-re--623366a73d33977a9c6ef58f.md) | 50 | `result-track:623366a73d33977a9c6ef58f91473c7dca12081e7206ce9c780bcea3697e4324` |
| 6 | `theorem` | [continuous_im](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/continuous-im--f7ff20ba990b43f688332c41.md) | 53 | `result-track:f7ff20ba990b43f688332c418a8a4ca87f7b77cbb8ed4b9ffaf52ba4d46d6b39` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--f83ff5ac675c6e0be2bb1b48.md) | 56 | `declaration-track:f83ff5ac675c6e0be2bb1b4837a533253838e5cc85c4907dc6fb32ec3d038bd9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--374c7ba447d84669fcab3358.md) | 59 | `declaration-track:374c7ba447d84669fcab3358f513224cb83f0e33be1f1e3b1d50521ff0aa499b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--bd7df484cf8cd7dd65439cd7.md) | 61 | `declaration-track:bd7df484cf8cd7dd65439cd726f898787f3041f672312b43a0d3f39034cea18e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--bfe2c14843d85059ea5bf603.md) | 63 | `declaration-track:bfe2c14843d85059ea5bf60344e692128e9860677830f8bed22b38e78d2d4ba0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--2820e671e024639c2a932ccb.md) | 66 | `declaration-track:2820e671e024639c2a932ccb24a7f28bfe6d3e6b2608e891f27263f68575e59a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--4278086c73c82998face39e6.md) | 68 | `declaration-track:4278086c73c82998face39e6c26916ac1082614f691ff41e241aebee9a96140a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instance--a9028779f344ea42b044a1b6.md) | 75 | `declaration-track:a9028779f344ea42b044a1b66f7104caa20a961ae603edc012b2de9bdfd53763` |
| 14 | `instance` | [instContinuousGLSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/instcontinuousglsmul--6d90b4259cbd0d3aa39fd385.md) | 79 | `declaration-track:6d90b4259cbd0d3aa39fd385aa425a3812e6ab812556285cae194f7ce1850a8e` |
| 15 | `def` | [verticalStrip](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/verticalstrip--4c54bd4a97b22e44e95fba85.md) | 93 | `declaration-track:4c54bd4a97b22e44e95fba854422ffafe1ef9b82f56f7baf4859d0301a9397fd` |
| 16 | `theorem` | [mem_verticalStrip_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/mem-verticalstrip-iff--0cca142abf43c2456ce91987.md) | 95 | `result-track:0cca142abf43c2456ce91987b3f76e7cbb095aa7d4b6ee2a917d3976dec8b550` |
| 17 | `lemma` | [verticalStrip_mono](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/verticalstrip-mono--69069116b39cbb0acd1003e0.md) | 99 | `result-track:69069116b39cbb0acd1003e0cfe3ab00e0ba34a98e8cde208e2fb8a2a144dcaa` |
| 18 | `lemma` | [verticalStrip_mono_left](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/verticalstrip-mono-left--8a374b34125647efccfa1958.md) | 105 | `result-track:8a374b34125647efccfa1958e8c1705a76ddec2996bee4b21f74eb3739b0c6ea` |
| 19 | `lemma` | [verticalStrip_anti_right](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/verticalstrip-anti-right--2a9e99726541ed9275ab8b29.md) | 109 | `result-track:2a9e99726541ed9275ab8b290cf0ce63f0e5ec274229cbdffccc8b6882e146cb` |
| 20 | `lemma` | [subset_verticalStrip_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/subset-verticalstrip-of-iscompact--45486e11e0c6051b44e115d0.md) | 112 | `result-track:45486e11e0c6051b44e115d0df93882837f9222bfe7fe83b6cad2647e6d98b1f` |
| 21 | `theorem` | [ModularGroup_T_zpow_mem_verticalStrip](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/modulargroup-t-zpow-mem-verticalstrip--7658bf71f06217ac6a92a3cf.md) | 120 | `result-track:7658bf71f06217ac6a92a3cf8038d77717daf82e3a82eece1935a34e0d482858` |
| 22 | `def` | [ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex--116da72c5be107b9a84e894a.md) | 142 | `declaration-track:116da72c5be107b9a84e894ae57237297348ef48cf282c23c194a9429c32d4db` |
| 23 | `lemma` | [ofComplex_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex-apply--a019fddf9935a08dc414fd8e.md) | 148 | `result-track:a019fddf9935a08dc414fd8eebedbece028c5b693b3163bdd37d8daf168504b3` |
| 24 | `lemma` | [ofComplex_apply_eq_ite](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex-apply-eq-ite--af9081cb8f1618f552c5c3a9.md) | 151 | `result-track:af9081cb8f1618f552c5c3a92e685651d301930ca7fc0b44efa6b9828b62a016` |
| 25 | `lemma` | [ofComplex_apply_of_im_pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex-apply-of-im-pos--e0d9ff741176fe6f5da54755.md) | 160 | `result-track:e0d9ff741176fe6f5da54755a6c3c79be5fd01f0edda8c6759837ebe3924ec40` |
| 26 | `lemma` | [ofComplex_apply_of_im_nonpos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex-apply-of-im-nonpos--19c9fee55750d4a0267d7e3d.md) | 164 | `result-track:19c9fee55750d4a0267d7e3dd9211d833094ddbee498d063ceb68713c16854cc` |
| 27 | `lemma` | [ofComplex_apply_eq_of_im_nonpos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/ofcomplex-apply-eq-of-im-nonpos--c92c9166eec0678099507dc7.md) | 168 | `result-track:c92c9166eec0678099507dc7da9f0fd89d337bec5ab2683ad31227aef6ea666c` |
| 28 | `lemma` | [comp_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/comp-ofcomplex--39b81a78fc051aea87fead72.md) | 172 | `result-track:39b81a78fc051aea87fead72cbc1845cf866b06a2932e492da2a69054f72fa75` |
| 29 | `lemma` | [comp_ofComplex_of_im_pos](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/comp-ofcomplex-of-im-pos--4ae04f344f2251fbc8c782f0.md) | 175 | `result-track:4ae04f344f2251fbc8c782f057f30533899004faaf1915b26157431bd5f59709` |
| 30 | `lemma` | [comp_ofComplex_of_im_le_zero](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/comp-ofcomplex-of-im-le-zero--b3e5fd7dc5aec9a9ac7e6bff.md) | 178 | `result-track:b3e5fd7dc5aec9a9ac7e6bff0e6c7facb2ef75f38920986b288db042a254ba69` |
| 31 | `lemma` | [eventuallyEq_coe_comp_ofComplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant1109b63d4e08cb0cb916e3622b1baba8744ab5b189f68ae559867abb09168901.lean/declarations/eventuallyeq-coe-comp-ofcomplex--db13782ef01f6fcbf1e0314b.md) | 182 | `result-track:db13782ef01f6fcbf1e0314b5e8c41483e7c0de22ee9af81d3681345920e1e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
