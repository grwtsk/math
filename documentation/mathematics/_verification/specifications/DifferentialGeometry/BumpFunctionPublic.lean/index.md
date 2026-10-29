# Verification target: Bump Function Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa82be51558f7581a6fa7873eea78df06781e000",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/BumpFunctionPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa82be51558f7581a6fa7873eea78df06781e000`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean.json)

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
| 1 | `structure` | [SmoothBumpFunction](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/smoothbumpfunction.md) | 68 | `declaration-track:70daf68f377ec139c748614ec44e21ea9894787a96c2bcea4bd92440f8130ee5` |
| 2 | `def` | [toFun](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/tofun.md) | 81 | `declaration-track:8ad126ae7a84d277fce58b45df5183052b3ce67ae0230fe9bcdec8383f6ad7f2` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/instance.md) | 84 | `declaration-track:7127da1298d6be511120e0145aff823209c0494b3f1fccc2f8b3c2af85d93514` |
| 4 | `theorem` | [coe_def](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/coe-def.md) | 87 | `result-track:ed51d4ca432e07352043eee234d8b787fbd51131ff266785b382ef79a35bfcd5` |
| 5 | `theorem` | [rOut_pos](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/rout-pos.md) | 94 | `result-track:bc8f285727e34ff8efdcb64b4bd790350274f22943a5de3eacaf6ac0d1385251` |
| 6 | `theorem` | [ball_subset](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/ball-subset.md) | 97 | `result-track:4c59a1f5e9ba3f7fe3598e34bf79064b4325bec02d684883896d4078879a45e6` |
| 7 | `theorem` | [ball_inter_range_eq_ball_inter_target](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/ball-inter-range-eq-ball-inter-target.md) | 100 | `result-track:0171fa8f9552252a7159bfbc9c4031523eabf2028ff80231cfaf5ec2174ec587` |
| 8 | `theorem` | [eqOn_source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/eqon-source.md) | 110 | `result-track:a7e5f4e379badefb0005635707b22c15257131e940d8133680e88dcd2da85b2b` |
| 9 | `theorem` | [eventuallyEq_of_mem_source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/eventuallyeq-of-mem-source.md) | 113 | `result-track:e36929194a11bac0c87ce003b7767a524c361ef24aab2c139627f733afc25ce8` |
| 10 | `theorem` | [one_of_dist_le](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/one-of-dist-le.md) | 117 | `result-track:c2ef59badd4c4f139f835be234c0e2205a53c03679ef4433cfa940a0fc937de8` |
| 11 | `theorem` | [support_eq_inter_preimage](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/support-eq-inter-preimage.md) | 121 | `result-track:f08147a1809684fd7184aa9fc66badc523b12efa5d9f9b0c4c52ba85a9d110c3` |
| 12 | `theorem` | [isOpen_support](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/isopen-support.md) | 127 | `result-track:b2fd5298fde8bb8b28ef980c62b2cb0af19af50bf3342f3d46d632dde607adea` |
| 13 | `theorem` | [support_eq_symm_image](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/support-eq-symm-image.md) | 131 | `result-track:dca3ca9b6bcc92cff93c66360d44620fe7851a9d29d38e6997c83541f41497e0` |
| 14 | `theorem` | [support_subset_source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/support-subset-source.md) | 137 | `result-track:7f0c421786fb987e06754df1acd34e7a2d22159d85e3fd22134930225f9a974a` |
| 15 | `theorem` | [image_eq_inter_preimage_of_subset_support](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/image-eq-inter-preimage-of-subset-support.md) | 140 | `result-track:40b0c3554b71050a0dad816bfe92eb72fa1cb863b993baa33956057438cade51` |
| 16 | `theorem` | [mem_Icc](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/mem-icc.md) | 153 | `result-track:ab5816b57f977314edb23781d5585ec9a32684486db5976acc21943c837c3b36` |
| 17 | `theorem` | [nonneg](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/nonneg.md) | 158 | `result-track:68e8ae1b734beda23afc646e91c32ba12d38393b79b07f080bad42a841a3cde2` |
| 18 | `theorem` | [le_one](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/le-one.md) | 161 | `result-track:02283211071a4ce965a27bfe9a03f72e52b28d896be09f35c5823d11accf3b7e` |
| 19 | `theorem` | [eventuallyEq_one_of_dist_lt](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/eventuallyeq-one-of-dist-lt.md) | 164 | `result-track:6cbf59370dc7e8a25de9097e7bd92f51b50145c75abb64df873bde119bc271f3` |
| 20 | `theorem` | [eventuallyEq_one](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/eventuallyeq-one.md) | 170 | `result-track:c11e305610fb3bf0aed985739b0c41693af639ebe09ce363df7cc846a474ffad` |
| 21 | `theorem` | [eq_one](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/eq-one.md) | 174 | `result-track:4fc0515c2279a63ba63dedd17c17f7dd168b0010dbfce656a13b1393073000bb` |
| 22 | `theorem` | [support_mem_nhds](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/support-mem-nhds.md) | 177 | `result-track:1ae4075d28b6e1c4c3a9db457ec0f61534a0508771c789ae99fd3d2fe4778b51` |
| 23 | `theorem` | [tsupport_mem_nhds](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/tsupport-mem-nhds.md) | 180 | `result-track:453c42419b016f3f7a873dc51b5136e1088a5e155db3fa49591ba5a1639c509b` |
| 24 | `theorem` | [c_mem_support](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/c-mem-support.md) | 183 | `result-track:15bae95340faaa1c69696bcc12f40a9328f513b1a3a0629fc8860ab141716b95` |
| 25 | `theorem` | [nonempty_support](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/nonempty-support.md) | 186 | `result-track:54ad2d6515323e6e3895705795a4ebe23ade2b9eb110ec2da146b0e327079781` |
| 26 | `theorem` | [isCompact_symm_image_closedBall](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/iscompact-symm-image-closedball.md) | 189 | `result-track:e4240a8acbbefa63a9130d366b4fae196388948dd2af68a0d89cfb888b3e2b4e` |
| 27 | `theorem` | [nhdsWithin_range_basis](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/nhdswithin-range-basis.md) | 199 | `result-track:4649758ebf210aef1d06d5d1432f74b044a328d52299f7944436a2da0379ab82` |
| 28 | `theorem` | [isClosed_image_of_isClosed](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/isclosed-image-of-isclosed.md) | 211 | `result-track:673bea4d3d38352b156e595e6589d36bc0d4a8737496abaae2f96fa53f643d84` |
| 29 | `theorem` | [exists_r_pos_lt_subset_ball](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/exists-r-pos-lt-subset-ball.md) | 221 | `result-track:e158ff2760432763b8b9421964ba1bfa1fc4b66c7aff562d8ead5344e8b8f081` |
| 30 | `def` | [updateRIn](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/updaterin.md) | 232 | `declaration-track:fb05401464e08741e976f9729b97ad57bcdc985ae956ffa3f3975929bc4fd126` |
| 31 | `theorem` | [support_updateRIn](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/support-updaterin.md) | 236 | `result-track:14fbc44b748fba7a0ecc37614185bbbeb00c7b9adb531c529a5c273a773601cc` |
| 32 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:c94d4bd15688ab1d6ae9ced1f79c7cee8d4cafea4cbb2154d53152aff7a14278` |
| 33 | `theorem` | [isClosed_symm_image_closedBall](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/isclosed-symm-image-closedball.md) | 244 | `result-track:e1accbc4433e7baeb1559bf5da9dff44193835ea3521a49b48f2d8b2ae0755a9` |
| 34 | `theorem` | [tsupport_subset_symm_image_closedBall](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/tsupport-subset-symm-image-closedball.md) | 248 | `result-track:34e427fef499c4872319d67f70ea4b70771aa8ba65447a01de9cd148588c81f4` |
| 35 | `theorem` | [tsupport_subset_extChartAt_source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/tsupport-subset-extchartat-source.md) | 254 | `result-track:e2b7845f0dcdbd94436593012489b88fe1c7be1ee1deb256d399f9127cb59308` |
| 36 | `theorem` | [tsupport_subset_chartAt_source](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/tsupport-subset-chartat-source.md) | 261 | `result-track:b729aad1266966a6a2b50f1649685b4e3c54f18ebca21555ad013c33a4b157ca` |
| 37 | `theorem` | [hasCompactSupport](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/hascompactsupport.md) | 264 | `result-track:b9ebc14ac91c213f0136c75b74d2132f23563596f32eb037b9a46196f808e0e9` |
| 38 | `theorem` | [nhds_basis_tsupport](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/nhds-basis-tsupport.md) | 272 | `result-track:6025ab765254f51b11a03d0e8dae8e6a4d5c5dbd48a29bcb8f04b24c463550b3` |
| 39 | `theorem` | [nhds_basis_support](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/nhds-basis-support.md) | 286 | `result-track:3a7d6a0a6a8d67f9f12ecdc1a1b609db9cd1b8f9f4c176d59dea81ae2297fa21` |
| 40 | `theorem` | [contMDiff](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/contmdiff.md) | 294 | `result-track:f108c1ddf17a3b492ef81bbcd16dcc3b3bc43bf40c7d34e477eb882b6ef304ee` |
| 41 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/contmdiffat.md) | 301 | `result-track:153a16a96b75a02f528405d9d7e56757dd605dfb2b57890b08e1f56955ccab3f` |
| 42 | `theorem` | [continuous](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/continuous.md) | 304 | `result-track:871071728efbab9263cc9633ca97db8ce45304ea873691f6399a5dcadcc06def` |
| 43 | `theorem` | [contMDiff_smul](../../../../DifferentialGeometry/BumpFunctionPublic.lean/declarations/contmdiff-smul.md) | 309 | `result-track:9f40ffe7f94d535425ebbfe460dd4ed6a62202ca3dec1c3d0e4fa7bf3a9a4dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b22863f3d9afc254145324e25e9d9e64f15e67e66b5fd0f0d868b12c5ec0ef97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
