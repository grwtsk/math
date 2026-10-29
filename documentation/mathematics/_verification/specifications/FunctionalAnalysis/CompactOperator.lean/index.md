# Verification target: Compact Operator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CompactOperator.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CompactOperator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator.md) | 61 | `declaration-track:830e5f25b7a425a07387bdad72c45e9dc97222da44dc29df907cb5da9c5e5c71` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-zero.md) | 66 | `result-track:2d3b6e1c75d1554ebb014c5eb9913a838f646eb105119af3e2b751b454b6642e` |
| 3 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact.md) | 78 | `result-track:dd604b49c5af9d9bf81a993a8139eb7bc0d72876f253ed523bb4e7f2d46333b9` |
| 4 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image.md) | 84 | `result-track:fd23f41826da620758d64393b5f050dd9d12ab4dd6ce70557bb21acd296d73e7` |
| 5 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded.md) | 100 | `result-track:fa19251c5b00ffd44a46db51d4c887f0920684351ad7c022babbd88049a4366c` |
| 6 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded.md) | 112 | `result-track:c8183ebcc350cc49adbc43011b2cce6973cb8339923ac17bb23e7f6f9343c5df` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-image-subset-compact-of-bounded.md) | 128 | `result-track:1c06b963de589636bc5de018d18f771dd15392ea91f1c00d329265500840464e` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded.md) | 135 | `result-track:6693ffb839a30e89317bf195ddad7c3ee7753d46b066b478a22f2155769d5803` |
| 9 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-image-ball-subset-compact.md) | 142 | `result-track:ad493d01c45af7eef6e0bc2f5f594259fe076a2634e7362bcc4f93cd7b50b146` |
| 10 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-image-closedball-subset-compact.md) | 147 | `result-track:756b51ab3264171dbf067577848c3125eb1a977f7be48f08db30917923d01c46` |
| 11 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iscompact-closure-image-ball.md) | 153 | `result-track:9428a26c1dc190c68a90b1fa8927eb7fd8782b098f71bc7c7009fd37a63cce34` |
| 12 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iscompact-closure-image-closedball.md) | 159 | `result-track:4741ac7f5dd2ece461ca363e54f4c1ed64f4b9ec980deb96c4941f42d4c83273` |
| 13 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-image-ball-subset-compact.md) | 165 | `result-track:e905a1281f22dbedb2c93f48c657b94396a77076891ab28bdc5ba397e1731d48` |
| 14 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact.md) | 173 | `result-track:e3f3000ef3ed23e589e660236ecf96d4d17f674900efc126308938c6df1aae8b` |
| 15 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball.md) | 181 | `result-track:8700446bef6d7b518f6fa57f6b73b1069ebaf57c41f4dc021304b8734c522872` |
| 16 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball.md) | 189 | `result-track:aa2b980cb27833374c0b39b20553491be238e67b07e8841e6a9acf97bf36e1f8` |
| 17 | `theorem` | [IsCompactOperator.smul](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-smul.md) | 208 | `result-track:69a544fafb4b24ea59706c4191d3aa169f37844005935ce40185c7b40e00be38` |
| 18 | `theorem` | [IsCompactOperator.add](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-add.md) | 216 | `result-track:6ab1318bacd01199d33c3590feecb2863200ccd61739400fa6e94ba03fed0672` |
| 19 | `theorem` | [IsCompactOperator.neg](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-neg.md) | 224 | `result-track:f6b18c024d8f6e1f5101a667e87498ebd4f420b14d82e48eff77480bac6f781d` |
| 20 | `theorem` | [IsCompactOperator.sub](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-sub.md) | 230 | `result-track:2a489b188a5194069649fffd6ca6dc2bd7643fbf1c628f8eebfc79adf1cc7aef` |
| 21 | `def` | [compactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/compactoperator.md) | 238 | `declaration-track:4f6b6480a37147e8138c75a5f76d1c8eba15d715b86446a32f5d3ed48953e0dc` |
| 22 | `theorem` | [IsCompactOperator.comp_clm](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-comp-clm.md) | 254 | `result-track:14dbf888107fa83fa776cb196bcd44209b634b41869f5fcdc453339c5b27b672` |
| 23 | `theorem` | [IsCompactOperator.continuous_comp](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-continuous-comp.md) | 262 | `result-track:718aa95d0befd6569ae580a99b1da3d28a602404660754bcdecb8581d5ad57e1` |
| 24 | `theorem` | [IsCompactOperator.clm_comp](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-clm-comp.md) | 270 | `result-track:55a97bda7b7e436a43150bde8975c371a9417f45a72c4b257ec051aec8769072` |
| 25 | `theorem` | [IsCompactOperator.codRestrict](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-codrestrict.md) | 284 | `result-track:6d306627b8d8f3da8a77df8bd2990a4675c1c147c5c5722afd434fd6bdcf53cc` |
| 26 | `theorem` | [IsCompactOperator.restrict](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-restrict.md) | 308 | `result-track:38e6d15366024715893e3f2d538e00ce67d764e0e51999ed2d70c604c89cb60a` |
| 27 | `theorem` | [IsCompactOperator.restrict'](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-restrict-source-edition-2.md) | 322 | `result-track:71df371d73bd0e6e384192cd11b9fb625eca9427a35da1b2b162ae860aa41f9e` |
| 28 | `theorem` | [IsCompactOperator.continuous](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-continuous.md) | 338 | `result-track:53cda059e90ea271ada96e2f3248d2bc6bc852a25afd9f887c7ee11d7f5e061a` |
| 29 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/continuouslinearmap-mkofiscompactoperator.md) | 371 | `declaration-track:c494db266b8fcd8c13ee35f77940b20b10fcf7d4ae69a4215bf3ebe2970446e4` |
| 30 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap.md) | 377 | `result-track:fe96eb7ae13ceb81c3daa647b78fc63491c4fe6d4ababe8c6b3535efb775669a` |
| 31 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator.md) | 384 | `result-track:c59da93da5448e901ef35a4008de96c7c61e660b03fbd3fc338b0ce764bd7209` |
| 32 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator.md) | 389 | `result-track:2ef78c02902acfe2f1b7db3768756c9b283913d103140f1cf76ffe96b622071d` |
| 33 | `theorem` | [isClosed_setOf_isCompactOperator](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/isclosed-setof-iscompactoperator.md) | 399 | `result-track:5fa14552921163676a2dc8533c784de2451d9dfcdf3885b033c350591b989b56` |
| 34 | `theorem` | [compactOperator_topologicalClosure](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/compactoperator-topologicalclosure.md) | 436 | `result-track:002bc9d3bd7005ac0d6498607da318d13f0fd93ec8e7ac6d042d62b8962be9d7` |
| 35 | `theorem` | [isCompactOperator_of_tendsto](../../../../FunctionalAnalysis/CompactOperator.lean/declarations/iscompactoperator-of-tendsto.md) | 445 | `result-track:d560cc68ada67904a258be7b62eca3eb69f5274f1684767e0833a6bfae64782c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f0d38c5c84d3c65e977973dc094890476f9afcbde0ea4e11ff1931b0d16d213 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
