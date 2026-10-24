# Verification target: GRWTSK.Topology.GeneralTopology.Pointwise.Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eeaa173739cddea8b33777034878e3d3701aa00`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_interior_smul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-smul--00a5243294588c6d3bfe3958.md) | 37 | `result-track:00a5243294588c6d3bfe39586b4599351df0ffadf5f0c21534ecd5ff528170d0` |
| 2 | `theorem` | [IsClosed.smul_left_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isclosed-smul-left-of-iscompact--313f09cb19367afa741471e5.md) | 48 | `result-track:313f09cb19367afa741471e5bd73eb36e31cd7c43d69c58ea73b2b651d8dcc1d` |
| 3 | `theorem` | [MulAction.isClosedMap_quotient](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/mulaction-isclosedmap-quotient--14a369bcd505dd06e1985d9c.md) | 82 | `result-track:14a369bcd505dd06e1985d9c1fd6127afd64afc7a2b47ae0e3c74a3935c83811` |
| 4 | `theorem` | [IsOpen.mul_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-mul-left--ef6c747e9b74674cf935dea9.md) | 99 | `result-track:ef6c747e9b74674cf935dea91e0c417b46706de599de98bca17f71c54773b48e` |
| 5 | `theorem` | [subset_interior_mul_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-mul-right--d042025485a360c4613c2784.md) | 103 | `result-track:d042025485a360c4613c2784bfa34115ddd0f2cd8a774aeb76eedb3722b9ca80` |
| 6 | `theorem` | [subset_interior_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-mul--e5e3ab05d04da33c86f2f9be.md) | 107 | `result-track:e5e3ab05d04da33c86f2f9beeb2693ec96cdb251c801b45f79c4b5d33db3fb67` |
| 7 | `theorem` | [singleton_mul_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/singleton-mul-mem-nhds--eec68e82cb989f4c74067d77.md) | 111 | `result-track:eec68e82cb989f4c74067d7704bc2737669257b065910078103bd0bc062463f7` |
| 8 | `theorem` | [singleton_mul_mem_nhds_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/singleton-mul-mem-nhds-of-nhds-one--824862cf3da38b76da8d0fe1.md) | 115 | `result-track:824862cf3da38b76da8d0fe1647fe6355b1886839af4fcb304695dee1189d914` |
| 9 | `theorem` | [IsOpen.mul_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-mul-right--45f1e031f1902a99717d89e5.md) | 125 | `result-track:45f1e031f1902a99717d89e52313eb2f9a5aed3fa2dc437e0b0727fab7c6f901` |
| 10 | `theorem` | [subset_interior_mul_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-mul-left--8d34f724a7cc7ea6f03133af.md) | 130 | `result-track:8d34f724a7cc7ea6f03133af43d963e5090dd597dc1a2ce428c98954e2e8b205` |
| 11 | `theorem` | [subset_interior_mul'](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-mul--b072c845d9b55fe909cd55c8.md) | 134 | `result-track:b072c845d9b55fe909cd55c8fde1049ee7a216a74fd4322f72d61b7f85bb5eb0` |
| 12 | `theorem` | [mul_singleton_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/mul-singleton-mem-nhds--1713c2afb6dd1310dee70b83.md) | 138 | `result-track:1713c2afb6dd1310dee70b832ae035a51d92ca10d1af25ec26e1a40e12edc5cb` |
| 13 | `theorem` | [mul_singleton_mem_nhds_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/mul-singleton-mem-nhds-of-nhds-one--066c979f357eeb6b61cce498.md) | 143 | `result-track:066c979f357eeb6b61cce4987b917e22fede110a09e13d0df01d2b1ee5431b2f` |
| 14 | `theorem` | [IsOpen.div_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-div-left--459d81638795937996521497.md) | 153 | `result-track:459d81638795937996521497f128f14beefa6ab86ec5f81b5b0410172180c88c` |
| 15 | `theorem` | [IsOpen.div_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-div-right--6eac59a2ca98744f6938ca82.md) | 158 | `result-track:6eac59a2ca98744f6938ca82d0cfbeee55faeacdb4d3cbf19e86cf1dc338a97b` |
| 16 | `theorem` | [subset_interior_div_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-div-left--11a7e90843daaa5e82813a7b.md) | 163 | `result-track:11a7e90843daaa5e82813a7bd9d49b76035aaf03d71b4ea227744228ac92f590` |
| 17 | `theorem` | [subset_interior_div_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-div-right--f89ab82e1da802055a399f84.md) | 167 | `result-track:f89ab82e1da802055a399f84bdfc794fc9ac0e17931eb6ee7a759ae5e23be3e4` |
| 18 | `theorem` | [subset_interior_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-interior-div--2cb00fda59f8483f8e9a404a.md) | 171 | `result-track:2cb00fda59f8483f8e9a404a8904f8e05a08b10d65a995d08a5745d54578c1a3` |
| 19 | `theorem` | [IsOpen.mul_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-mul-closure--3460fe5dac12069fb727027a.md) | 175 | `result-track:3460fe5dac12069fb727027acf88b9820327537577cd3fba8189f131a76caa5b` |
| 20 | `theorem` | [IsOpen.closure_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-closure-mul--cd8285fa6222374339c4d806.md) | 183 | `result-track:cd8285fa6222374339c4d8069a1c17053bf790dd0e4cc0b024953ebccc62dbb3` |
| 21 | `theorem` | [IsOpen.div_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-div-closure--c8cfa4bf63479d48807328ab.md) | 188 | `result-track:c8cfa4bf63479d48807328ab4d34db4f769f66942c410bc1785fbb757019fb53` |
| 22 | `theorem` | [IsOpen.closure_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-closure-div--350d8941be26a2d54163ee38.md) | 192 | `result-track:350d8941be26a2d54163ee383e745408526ce1a26524ed200267121e58985709` |
| 23 | `theorem` | [IsClosed.mul_left_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isclosed-mul-left-of-iscompact--9a3fa6378e5111e316de2c3f.md) | 196 | `result-track:9a3fa6378e5111e316de2c3fe6ef66cf8f92ed90fa0df69d31c703e61e08dc55` |
| 24 | `theorem` | [IsClosed.mul_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isclosed-mul-right-of-iscompact--15d91a87b81374bb4582ac12.md) | 200 | `result-track:15d91a87b81374bb4582ac12ff4212dd5f1a9120de6b7e4e029a3f3a996b1017` |
| 25 | `lemma` | [subset_mul_closure_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/subset-mul-closure-one--b1c17844491848f9641c1e24.md) | 206 | `result-track:b1c17844491848f9641c1e248ba992a4831c144f988aed991c668c5b74b2ad89` |
| 26 | `lemma` | [IsCompact.mul_closure_one_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/iscompact-mul-closure-one-eq-closure--60467adf069f9d909fb2ac0d.md) | 212 | `result-track:60467adf069f9d909fb2ac0d1fb5cb905aac1d75f4659215a1ee6ee207453d91` |
| 27 | `lemma` | [IsClosed.mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isclosed-mul-closure-one-eq--aea6dc385051c035a46830e1.md) | 226 | `result-track:aea6dc385051c035a46830e176df16dff005a6b1aac2d1a6d1e767284ab9857c` |
| 28 | `lemma` | [compl_mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/compl-mul-closure-one-eq--d5e00d19ccff4951b6258792.md) | 235 | `result-track:d5e00d19ccff4951b6258792d4d7900160b0797a6b4c7713325683644b79d3ca` |
| 29 | `lemma` | [compl_mul_closure_one_eq_iff](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/compl-mul-closure-one-eq-iff--e183dcd10823e1afff3f5ade.md) | 248 | `result-track:e183dcd10823e1afff3f5ade038a43c5e37616d58c3ba0de22fb30f0e5b0d5c7` |
| 30 | `lemma` | [IsOpen.mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/isopen-mul-closure-one-eq--3d1e14e4acb3fb1aad1e0662.md) | 253 | `result-track:3d1e14e4acb3fb1aad1e0662c22d32f46056b79b652a60a2f36ca3a248abefda` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/instance--7529153adf43eefce4472bc5.md) | 266 | `declaration-track:7529153adf43eefce4472bc5f012c22f9828cffb67ba7a2dac32671c8ffdcee0` |
| 32 | `theorem` | [group_inseparable_iff](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/group-inseparable-iff--a85d74d7fb5cf1760d882896.md) | 282 | `result-track:a85d74d7fb5cf1760d88289636d55bd7e934a55efd2ab5acea937b9a6f5b728f` |
| 33 | `theorem` | [IsTopologicalGroup.t2Space_iff_one_closed](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/istopologicalgroup-t2space-iff-one-closed--dbf0fb9278045f7e2e627253.md) | 288 | `result-track:dbf0fb9278045f7e2e627253713f44c4cfb80a7c867c31ba1673bbb445a6b665` |
| 34 | `theorem` | [IsTopologicalGroup.t2Space_of_one_sep](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/istopologicalgroup-t2space-of-one-sep--ae18858a6a60aced2504e187.md) | 293 | `result-track:ae18858a6a60aced2504e1873eeca9af5a006b671d25405bea28875201191c2a` |
| 35 | `theorem` | [exists_closed_nhds_one_inv_eq_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/exists-closed-nhds-one-inv-eq-mul-subset--3b5392e43d6ac66b6d06905e.md) | 304 | `result-track:3b5392e43d6ac66b6d06905e8fcfce8137dc8460ce652749212e736e9c06eb9f` |
| 36 | `theorem` | [IsCompact.locallyCompactSpace_of_mem_nhds_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/iscompact-locallycompactspace-of-mem-nhds-of-group--11c8b9a52a2aa73e6c7833cb.md) | 325 | `result-track:11c8b9a52a2aa73e6c7833cb2c924164d4843a2182dcac5ef8b0ae2d937d8564` |
| 37 | `theorem` | [eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/eq-zero-or-locallycompactspace-of-support-subset-iscompact-of-group--fe315cf00b1e9fa913faff91.md) | 338 | `result-track:fe315cf00b1e9fa913faff91bffe26df7a6bfe2cbd6e27c59ae14813afee9377` |
| 38 | `theorem` | [HasCompactSupport.eq_zero_or_locallyCompactSpace_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/declarations/hascompactsupport-eq-zero-or-locallycompactspace-of-group--8bed0b77f8d08ff9efe1c4cb.md) | 355 | `result-track:8bed0b77f8d08ff9efe1c4cb23262fd64a42424e75e39fc97180e59d00e7a9a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
