# Verification target: Group Center Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3a4c6c0562701b903c42d78219ee82912378e0",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3a4c6c0562701b903c42d78219ee82912378e0`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddCentral](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/isaddcentral.md) | 58 | `declaration-track:3db39c64f62952aeb7101cac0d936f34d312d345e9a425126371658e0d436d05` |
| 2 | `structure` | [IsMulCentral](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/ismulcentral.md) | 68 | `declaration-track:c3cbffbcf3b225e02ad250f986ac9547310d36f50f1ccba7e5d16ccb38e8cfd9` |
| 3 | `theorem` | [mid_assoc](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mid-assoc.md) | 84 | `result-track:3e30ce098c322195e9c254968f647433c69d44b174448276fdf2cc61191c8b4c` |
| 4 | `theorem` | [left_comm](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/left-comm.md) | 89 | `result-track:f31fcc7f8300415dc26720f19ad9e8237a8ed9df81841f84c3134e2601e43550` |
| 5 | `theorem` | [right_comm](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/right-comm.md) | 94 | `result-track:dde3895e6ee18040da89181858102170ce3163ba5ef75a826bd71c4b3a9e05a5` |
| 6 | `theorem` | [map](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/map.md) | 98 | `result-track:ed07e27f76c6ec84c080381a147c52b927e70fcba8095150e906ec0114756b29` |
| 7 | `theorem` | [of_map](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/of-map.md) | 109 | `result-track:8650745cc71ccb223577fccb1a0a3145a78b3c6a2c728b594caf96d36d719d2d` |
| 8 | `def` | [center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/center.md) | 127 | `declaration-track:1db08ea7c7fad8d3b1a009abe855c33690e91f5afdc3174090a6966c112343f2` |
| 9 | `def` | [centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer.md) | 133 | `declaration-track:12052760a3a31eb932727effa09c2dfc86a8cfbc5f8f01bb4b0f93f6c7b22a37` |
| 10 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mem-center-iff.md) | 136 | `result-track:e7cbe8def382f083b85038bac6c426f753ec3dbb78c1c0907f8318edcd666569` |
| 11 | `theorem` | [image_center_subset](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/image-center-subset.md) | 140 | `result-track:3950aa925c9b5b6d148a787aeca7ddfec079ed230b37e9297e09ea0b4283420a` |
| 12 | `theorem` | [preimage_center_subset](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/preimage-center-subset.md) | 145 | `result-track:74c4c77c2c20a641eee4fcb3d45f60cac57e48afe25867d2bb542424f538a56a` |
| 13 | `theorem` | [image_center_eq](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/image-center-eq.md) | 150 | `result-track:4db00bec4df3c7dd7fbf2ede6b4b74f3ed8655caa117d967e36c5dbe25de436c` |
| 14 | `theorem` | [Group Center Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/apply-mem-center-iff.md) | 158 | `result-track:630f1395beb89fc2a4cb724a92c403e4f42bf8bcce52b919559153ee39b514f5` |
| 15 | `lemma` | [mem_centralizer_iff](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mem-centralizer-iff.md) | 167 | `result-track:312c45134c3c4c23c0cd04a827fa3d4abfcc9c50619cd6ccf733a7ecac96aa32` |
| 16 | `theorem` | [mul_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mul-mem-center.md) | 170 | `result-track:247c453ff6655f1e6eb113635ef0d9e8256e5616baa1b51148ef5484e84ef311` |
| 17 | `lemma` | [center_subset_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/center-subset-centralizer.md) | 176 | `result-track:4b28fd3b46fdd74f6641189ec0bcbc263e1eb027c777cd9bc1e2f88358d059ba` |
| 18 | `lemma` | [centralizer_union](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-union.md) | 180 | `result-track:8fd7505c9009f50403ef8d3c4e736b910418ffab01f647c14853ca47a87c8422` |
| 19 | `lemma` | [centralizer_subset](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-subset.md) | 184 | `result-track:632f71d0e7e3f6b91495ad59fced40e7956aca952b1bd21aa8598c7e59620b32` |
| 20 | `lemma` | [subset_centralizer_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/subset-centralizer-centralizer.md) | 187 | `result-track:f5ca0746f95c74c9af4261d2cc9d2cd280ea0bc42fa49565c828205047068944` |
| 21 | `lemma` | [centralizer_centralizer_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-centralizer-centralizer.md) | 191 | `result-track:0bd326b459fbc7ccfbaf1c82ae809a24693776f0a83d5e601dda77c368bd7080` |
| 22 | `instance` | [decidableMemCentralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/decidablememcentralizer.md) | 197 | `declaration-track:cfb97ada68b60f0503477f4972de1bf0c889a9263e6d1c498034adb4a6cc9a1f` |
| 23 | `lemma` | [centralizer_centralizer_pairwise_commute](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-centralizer-pairwise-commute.md) | 201 | `result-track:d64373b7ec73ff08520f71f668b31c5f2b377fcbf026d6d8484fb4cb944d8f51` |
| 24 | `lemma` | [centralizer_centralizer_comm_of_comm](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-centralizer-comm-of-comm.md) | 206 | `result-track:b7b15054c3f90d09c147c6a69827e439f28eb71f79fb228a01463329dd904946` |
| 25 | `theorem` | [centralizer_empty](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-empty.md) | 211 | `result-track:72e9c50577c27ad03f22bf492695b8f40422f7320211f1d912a15a5d67ab516e` |
| 26 | `theorem` | [centralizer_prod](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-prod.md) | 215 | `result-track:10476afc370a3851f0c2fcacf47952eaafb991e1d6e221133841d882f5f1d06a` |
| 27 | `theorem` | [prod_centralizer_subset_centralizer_prod](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/prod-centralizer-subset-centralizer-prod.md) | 223 | `result-track:33845ec521509d68574e02d154ed499a473d34a05c1341002508114e1543b90b` |
| 28 | `theorem` | [center_prod](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/center-prod.md) | 228 | `result-track:432ddc538bb8eaa2d8ca06575ef0a8a2bda29e9b73731d18afe315a3e94ead56` |
| 29 | `theorem` | [center_pi](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/center-pi.md) | 234 | `result-track:a6c5d84f39fbd45c4a30195053432ddd60163d4da562b3d6a229af00dbfef544` |
| 30 | `theorem` | [Group Center Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mem-center-iff-source-line-251-occurrence-2.md) | 251 | `result-track:962ef2674f6b5771a49ea2998b078cc96660bcbe5a2122d5e09e924c72660a0e` |
| 31 | `lemma` | [mul_mem_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/mul-mem-centralizer.md) | 256 | `result-track:ba61debc5fa6203cc4d1a0d15bf70060ac867663b94e4109268ae8e26aef9f99` |
| 32 | `theorem` | [centralizer_eq_top_iff_subset](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 261 | `result-track:e21cd985e505e9fbb5e3e86370ca600799a86bae035859a4e7de4665abd78366` |
| 33 | `lemma` | [centralizer_univ](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-univ.md) | 268 | `result-track:dc9b050e7171fe667684ea585be8650547dbb996520e5644368ec3d2f3e7c33d` |
| 34 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/decidablememcenter.md) | 274 | `declaration-track:87e654a7106c8847b46f563bdfb2c4ae4e4ad9033b904646490593af46c74510` |
| 35 | `theorem` | [center_eq_univ](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/center-eq-univ.md) | 285 | `result-track:d9e00c16e7e24fe4f8ccc4f5cfc2d450534cef29a672532c89912fd09448a64a` |
| 36 | `lemma` | [centralizer_eq_univ](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/centralizer-eq-univ.md) | 289 | `result-track:e0f0c54b572c4762ef2448e782039feaccdba24dba73b9db63728bc14e77cbdc` |
| 37 | `theorem` | [one_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/one-mem-center.md) | 298 | `result-track:0f36e8f61faf4a9cd8378eab4b38a26feef11153c6d08ea221a4767c17ba83ea` |
| 38 | `lemma` | [one_mem_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/one-mem-centralizer.md) | 304 | `result-track:5e949be58f40686c7232cfbff670c5e1065bed2cafe0c4a66b4bcbf233e190c9` |
| 39 | `theorem` | [subset_center_units](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/subset-center-units.md) | 312 | `result-track:14b08c79ad922a1b9d09e47e59d061997d6c8c0928be1ebde16e718eabad9000` |
| 40 | `theorem` | [units_inv_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/units-inv-mem-center.md) | 319 | `result-track:15cf9be102c244acbcb77db31de72b3b5da1b4f4c92266228f2546d7471d006d` |
| 41 | `theorem` | [invOf_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/invof-mem-center.md) | 324 | `result-track:902452bee73b8ad70a2ab2c122b91da2ebc9b4554ee6245c758deeae553baddb` |
| 42 | `theorem` | [inv_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/inv-mem-center.md) | 334 | `result-track:51d2593cd4e07c5de388bd28b8a29085a67d4733e17730f1e976ca18300bec50` |
| 43 | `theorem` | [div_mem_center](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/div-mem-center.md) | 340 | `result-track:ddf274c91089093e1a60fdcaa017488a1f87b0bf8eb9fcd4cb7cf7f03b14c409` |
| 44 | `lemma` | [inv_mem_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/inv-mem-centralizer.md) | 350 | `result-track:d86481b1537bab17ef527a5e1f9eaa733802f9618276c6dfae47d8c09f365cff` |
| 45 | `lemma` | [div_mem_centralizer](../../../../GroupTheoryAndGeneralizations/GroupCenterNamespacedPublic.lean/declarations/div-mem-centralizer.md) | 354 | `result-track:6896bc715ee55aa8cbcf66ab711e7c15bdb0fb292e3a102b35b645ea03f0c4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19f9e0e02951ce802891979920aa1a765db953d3123dd0623b367e07a87ba90c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
