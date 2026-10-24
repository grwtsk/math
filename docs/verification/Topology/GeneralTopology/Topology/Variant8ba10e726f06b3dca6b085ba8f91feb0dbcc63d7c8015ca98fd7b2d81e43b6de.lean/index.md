# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b74213ab1394e19453e55f4bb690b054b34aa0",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b74213ab1394e19453e55f4bb690b054b34aa0`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Real` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [closedBall_eq_segment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closedball-eq-segment--a2c52ecad2e802fb838a5016.md) | 43 | `result-track:a2c52ecad2e802fb838a501609f7ea5960f533b3c497cfd08da45c11afa7e64c` |
| 2 | `lemma` | [ball_eq_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/ball-eq-opensegment--a558d23e23c46fd6547b4205.md) | 46 | `result-track:a558d23e23c46fd6547b42056614f2ab9e22ae9793b4a15af3a86226bdab05dc` |
| 3 | `theorem` | [convex_iff_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-iff-ispreconnected--8e41fd8de7d2d00db1a26dd9.md) | 49 | `result-track:8e41fd8de7d2d00db1a26dd9558380aa237bfa06e434db30143a8aeb7b94e06f` |
| 4 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/stdsimplex-subset-closedball--95889ea6f8d1f4511a329860.md) | 64 | `result-track:95889ea6f8d1f4511a329860bad2758ce8b8266c5a5eb50a7aec007c16397d63` |
| 5 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/bounded-stdsimplex--e5d0929c064872d165e5da72.md) | 73 | `result-track:e5d0929c064872d165e5da72ca01d229f79527e0e89b4e464add9428b670fa81` |
| 6 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/isclosed-stdsimplex--02fa2aac230975132aed9de4.md) | 77 | `result-track:02fa2aac230975132aed9de4e62cc748a8456c9db832858e2091c4485a4e10cd` |
| 7 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/iscompact-stdsimplex--7d538239cc60a4aa22b588a8.md) | 83 | `result-track:7d538239cc60a4aa22b588a8ea224d252d4c04ab6c4552354df909b3f087183f` |
| 8 | `instance` | [stdSimplex.instCompactSpace_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/stdsimplex-instcompactspace-coe--93a6030d2c48328dc67cd9c7.md) | 86 | `declaration-track:93a6030d2c48328dc67cd9c71c1b39e6dfe832231b63e1108c13c57f9aa42a52` |
| 9 | `def` | [stdSimplexHomeomorphUnitInterval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/stdsimplexhomeomorphunitinterval--94a2402caa0e0b938e650b5a.md) | 92 | `declaration-track:94a2402caa0e0b938e650b5af0b6f6ca46a24da6eb929d8f23a33881458deb2b` |
| 10 | `theorem` | [segment_subset_closure_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/segment-subset-closure-opensegment--9761d43873bbe34d45aedeb6.md) | 110 | `result-track:9761d43873bbe34d45aedeb6b28c5c050e75875e0370dabbe37a3122729e0382` |
| 11 | `theorem` | [closure_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closure-opensegment--9267665ee097e4416cd191d5.md) | 124 | `result-track:9267665ee097e4416cd191d586a17bcb392d462dc30028f31f2dbac81a49f423` |
| 12 | `theorem` | [Convex.combo_interior_closure_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-interior-closure-subset-interior--7e442670c4f0274e5ac9cd16.md) | 139 | `result-track:7e442670c4f0274e5ac9cd16d13f1ffc7429926e72511c05f8873f6ad09d7e97` |
| 13 | `theorem` | [Convex.combo_interior_self_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-interior-self-subset-interior--e71a83fd7fc05dac54b94b0f.md) | 151 | `result-track:e71a83fd7fc05dac54b94b0fac17a24de2c34f2926bd762a5a91734031efc0ea` |
| 14 | `theorem` | [Convex.combo_closure_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-closure-interior-subset-interior--e2061e794f0540ad679537ee.md) | 160 | `result-track:e2061e794f0540ad679537ee1ebf5ebafdb35c9cb49c6634ddc0cf4744edfc8e` |
| 15 | `theorem` | [Convex.combo_self_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-self-interior-subset-interior--69ebc2da2db26ffa5d0c21df.md) | 167 | `result-track:69ebc2da2db26ffa5d0c21dface03ce0713df846e119c8bd9bc260b33d58aac9` |
| 16 | `theorem` | [Convex.combo_interior_closure_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-interior-closure-mem-interior--a92da68c1c36ff9582acbf57.md) | 172 | `result-track:a92da68c1c36ff9582acbf576db8c40ec2563ecbd75410b42e625434182dea3b` |
| 17 | `theorem` | [Convex.combo_interior_self_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-interior-self-mem-interior--b2135cfda2e3093bf775339f.md) | 178 | `result-track:b2135cfda2e3093bf775339ff4911c3ee6180c198e00f66dd952de4b8034d8b4` |
| 18 | `theorem` | [Convex.combo_closure_interior_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-closure-interior-mem-interior--2730175d1c2f810aedb574bc.md) | 183 | `result-track:2730175d1c2f810aedb574bc1e7cb42a795b895560b93a6a6f7bd513e6170e58` |
| 19 | `theorem` | [Convex.combo_self_interior_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-combo-self-interior-mem-interior--2f9976155af30d6074f9f54e.md) | 189 | `result-track:2f9976155af30d6074f9f54ef9cc3365cc84100b8413a129d41c413bf095fce5` |
| 20 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-opensegment-interior-closure-subset-interior--c1ff09074004c25d54ef9be4.md) | 194 | `result-track:c1ff09074004c25d54ef9be434bd32919d603c452e7832a4f388f1abe3fdc414` |
| 21 | `theorem` | [Convex.openSegment_interior_self_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-opensegment-interior-self-subset-interior--9cacbbc469d78f74e6193384.md) | 199 | `result-track:9cacbbc469d78f74e619338499196af58ad40a7b00b11339bd5b9cc7c9ef7553` |
| 22 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-opensegment-closure-interior-subset-interior--9a57aee2812dd42445f1e171.md) | 203 | `result-track:9a57aee2812dd42445f1e1715aef1c9da9a55c2f50d04125a386a555091bf1ce` |
| 23 | `theorem` | [Convex.openSegment_self_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-opensegment-self-interior-subset-interior--987eca105859f3e914885c60.md) | 208 | `result-track:987eca105859f3e914885c60807b5001daa11b63f8b66f1341e63e9a9f1ff22e` |
| 24 | `theorem` | [Convex.add_smul_sub_mem_interior'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-add-smul-sub-mem-interior--7d11cdb3e3204d5296633fc9.md) | 218 | `result-track:7d11cdb3e3204d5296633fc96b769c55445edb84d0a720c4cf83a533c61af1f2` |
| 25 | `theorem` | [Convex.add_smul_sub_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-add-smul-sub-mem-interior--34b4f11557f2223c0a712e00.md) | 226 | `result-track:34b4f11557f2223c0a712e006e687811c8544f3e9708235029385216466fda6c` |
| 26 | `theorem` | [Convex.add_smul_mem_interior'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-add-smul-mem-interior--6d7e76edef7be59c25f8293c.md) | 231 | `result-track:6d7e76edef7be59c25f8293c9dca417f876457998c57f3990719ca3f6696d547` |
| 27 | `theorem` | [Convex.add_smul_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-add-smul-mem-interior--96c0f03b161867d830bb851f.md) | 236 | `result-track:96c0f03b161867d830bb851f696b563c9290d4e09e38cb3da85256e63b07f35f` |
| 28 | `theorem` | [Convex.interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-interior--fa6d612a0b2dde89f2d7b30b.md) | 243 | `result-track:fa6d612a0b2dde89f2d7b30b8a2d07f1619b02ec654b51df8bf287ddd31d074d` |
| 29 | `theorem` | [Convex.closure](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closure--7d2286c27d04afed9ad61f46.md) | 249 | `result-track:7d2286c27d04afed9ad61f46ff96d297271932bd8c2d70667afdc87078ac5dec` |
| 30 | `theorem` | [Convex.strictConvex'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-strictconvex--c500f482cb85eb3950fb0868.md) | 263 | `result-track:c500f482cb85eb3950fb0868dbc7660b3db60dd65ff2e82e602f972fd855c599` |
| 31 | `theorem` | [Convex.strictConvex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-strictconvex--48e854a106c400a483a0defb.md) | 281 | `result-track:48e854a106c400a483a0defb8a2da2254c2f3526b43d2746c31d94668be6b2c7` |
| 32 | `theorem` | [Convex.closure_interior_eq_closure_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closure-interior-eq-closure-of-nonempty-interior--a1aa68c5cbbb3943a99799ed.md) | 298 | `result-track:a1aa68c5cbbb3943a99799eda4dc127f58ca2b814ee65a5613a119b1e10e4786` |
| 33 | `theorem` | [Convex.interior_closure_eq_interior_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-interior-closure-eq-interior-of-nonempty-interior--098865e44d7b7857287956fd.md) | 304 | `result-track:098865e44d7b7857287956fdef56651a0ca56c141dda810faa05da97f2df3c25` |
| 34 | `theorem` | [convex_closed_sInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closed-sinter--818e8b9d2a7f6224bde75c51.md) | 323 | `result-track:818e8b9d2a7f6224bde75c51f310a254b69539a9d91a6f74233f6da3664fea86` |
| 35 | `def` | [closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closedconvexhull--d2e7810c44e46fcdb367b112.md) | 331 | `declaration-track:d2e7810c44e46fcdb367b1120df90d9c2c9070b26e30f6a0691db7c194292b78` |
| 36 | `theorem` | [convex_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closedconvexhull--24b00ac7676d144411566f2b.md) | 334 | `result-track:24b00ac7676d144411566f2b18cdbfe97f92578d67f2cac7916d0613f8919ab3` |
| 37 | `theorem` | [isClosed_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/isclosed-closedconvexhull--9b801f4925e7aa1b8115559e.md) | 337 | `result-track:9b801f4925e7aa1b8115559e4ab1ef40eb53c941a435a45aa222fe2f71c631a4` |
| 38 | `theorem` | [subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/subset-closedconvexhull--f3ae69b2d77f8d71cdebc8fd.md) | 340 | `result-track:f3ae69b2d77f8d71cdebc8fd3efcca688ad3fe7f6eb535b2f8e02e752343b719` |
| 39 | `theorem` | [closure_subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closure-subset-closedconvexhull--7f22b68b7a9a73586eb2c345.md) | 343 | `result-track:7f22b68b7a9a73586eb2c3459a5811ef23c7755e87242fb35a5d58f7fe1a3031` |
| 40 | `theorem` | [closedConvexHull_min](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closedconvexhull-min--bc667da531acba31e1e512e2.md) | 346 | `result-track:bc667da531acba31e1e512e2a619d421dafb72f6d5d837351ea406a0362ea650` |
| 41 | `theorem` | [convexHull_subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convexhull-subset-closedconvexhull--85e78293dec886110aa7ef54.md) | 350 | `result-track:85e78293dec886110aa7ef5483c6e63e167939b41d0c1d56e7f322b6167cca50` |
| 42 | `theorem` | [closedConvexHull_closure_eq_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closedconvexhull-closure-eq-closedconvexhull--de3f74f98a4d5f3f55914073.md) | 355 | `result-track:de3f74f98a4d5f3f55914073ef567917461ecf058dbbd41f5042d8d21040d381` |
| 43 | `theorem` | [closedConvexHull_eq_closure_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/closedconvexhull-eq-closure-convexhull--bcddd6132537c7b076f84d0d.md) | 369 | `result-track:bcddd6132537c7b076f84d0d24151bb58f8ca5f755235c2c7a7b3e281f4cd861` |
| 44 | `theorem` | [Set.Finite.isCompact_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/set-finite-iscompact-convexhull--4ee5e087e552e362c82a6d37.md) | 383 | `result-track:4ee5e087e552e362c82a6d373e45e7139a4c3cac8873c507e9369eca17a7fdb8` |
| 45 | `theorem` | [Set.Finite.isClosed_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/set-finite-isclosed-convexhull--0c5e2135995e848b34e5ce69.md) | 391 | `result-track:0c5e2135995e848b34e5ce69de259d47b2b08298c232f7b6ede84b3fbd4d8846` |
| 46 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closure-subset-image-homothety-interior-of-one-lt--a73a5ccb129b7eca27873dee.md) | 401 | `result-track:a73a5ccb129b7eca27873dee40ee3757df685f54c950ecf9c34b193df1288650` |
| 47 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-closure-subset-interior-image-homothety-of-one-lt--7aa01b665e7c6f2d6cfd7218.md) | 417 | `result-track:7aa01b665e7c6f2d6cfd72182f5038887c717b3510db2cf00155872ebda72c03` |
| 48 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-subset-interior-image-homothety-of-one-lt--b43d5c488c5ac5208595383f.md) | 427 | `result-track:b43d5c488c5ac5208595383febfe4e5ef958df712e147c8f0b987e650093df13` |
| 49 | `theorem` | [Convex.nontrivial_iff_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/declarations/convex-nontrivial-iff-nonempty-interior--c0f976548448302aec0110f6.md) | 438 | `result-track:c0f976548448302aec0110f6d0c88566cb67a26226b2e7125f6cf1106217d97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
