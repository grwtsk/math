# Verification target: Continuous Functional Calculus Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecb8aff199709e4025859741470e658246b3f3b2",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecb8aff199709e4025859741470e658246b3f3b2`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cfc_tsub](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cfc-tsub-source-edition-2.md) | 51 | `result-track:f10958434fc25d8ffe7f7f4c530f7baf7b4ec310effcb1c21eace12c723d9812` |
| 2 | `theorem` | [cfcₙ_tsub](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cfc-tsub.md) | 69 | `result-track:7aa9ce5b676e4dd19ee2054f4d2233388dd84928ffc8ed261e493667be8b4be1` |
| 3 | `instance` | [instPartialOrder](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/instpartialorder.md) | 91 | `declaration-track:61473d96afc520a85b219ceb9d7268150748fd83839e7fdca175a0d1f6ae2424` |
| 4 | `instance` | [instStarOrderedRing](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inststarorderedring.md) | 94 | `declaration-track:47792d8638022414d5dd3873d83eaa8fa7e2588dc330447a3a4d66a7070b0cdb` |
| 5 | `lemma` | [inr_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inr-le-iff.md) | 97 | `result-track:b329cc3a19c2f3810ff26d3248631f0fb3f8a550dad7d42a18c1ec2a9b6e0c6f` |
| 6 | `lemma` | [inr_nonneg_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inr-nonneg-iff.md) | 106 | `result-track:bd9316281d03f14a03295b568c443d19a0bc7b01bf4f83e696d9efcf4fd436a9` |
| 7 | `lemma` | [nnreal_cfcₙ_eq_cfc_inr](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnreal-cfc-eq-cfc-inr.md) | 114 | `result-track:dd42861d35fee7bb94b9501be33bb250610e315b74f14fc0c6df3e23caf8c123` |
| 8 | `lemma` | [cfc_nnreal_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cfc-nnreal-le-iff.md) | 122 | `result-track:856ac6af2eec65c0dd9a461e135b05562dc55ed7984b03faf3500dc4028eae68` |
| 9 | `lemma` | [CFC.exists_pos_algebraMap_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cfc-exists-pos-algebramap-le-iff.md) | 139 | `result-track:a1765f80951647561d30e910b5c9190d7c5cae6cff2e978ea2ed5175bb5d483b` |
| 10 | `lemma` | [IsSelfAdjoint.le_algebraMap_norm_self](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/isselfadjoint-le-algebramap-norm-self.md) | 160 | `result-track:24d65db126a1cfd0b32d2e12cbd16c221ed5614be6861311e946f8a7847fd99e` |
| 11 | `lemma` | [IsSelfAdjoint.neg_algebraMap_norm_le_self](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/isselfadjoint-neg-algebramap-norm-le-self.md) | 169 | `result-track:da21b4c7b95ab4fcc9d8a1ac9da53cf41100bb47c98189bc13ace0cb60fdd7d2` |
| 12 | `lemma` | [CStarAlgebra.mul_star_le_algebraMap_norm_sq](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cstaralgebra-mul-star-le-algebramap-norm-sq.md) | 176 | `result-track:b0d10d70e7294a0deca399376b9f101c0aee5132f4942aa382320ed250c1ebeb` |
| 13 | `lemma` | [CStarAlgebra.star_mul_le_algebraMap_norm_sq](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cstaralgebra-star-mul-le-algebramap-norm-sq.md) | 181 | `result-track:26d73bb35415c751833e0ade146edc77f78f73062c1a7159fbb56ec843de88f6` |
| 14 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_eq_norm](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/isselfadjoint-toreal-spectralradius-eq-norm.md) | 188 | `result-track:5204db5722a1ccdb5eefee38abf9bd7a9e35b651375c6633011d55536e191742` |
| 15 | `lemma` | [norm_or_neg_norm_mem_spectrum](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-or-neg-norm-mem-spectrum.md) | 194 | `result-track:7437d7d4a47cb3986faaf2210423c2a593db10e2fb0cb63a564fb2014707d174` |
| 16 | `lemma` | [nnnorm_mem_spectrum_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnnorm-mem-spectrum-of-nonneg.md) | 202 | `result-track:c7384f70dccaa2c45dcfc300cbd45b5870c367c07ac3151165acd369bc1fedb9` |
| 17 | `lemma` | [norm_mem_spectrum_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-mem-spectrum-of-nonneg.md) | 209 | `result-track:53b9ccaf3eea744bd6f5171969eb300113cb4aaaf1c976cdcea2fd3a72b4c4c7` |
| 18 | `lemma` | [norm_le_iff_le_algebraMap](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-le-iff-le-algebramap.md) | 213 | `result-track:a184f17e9829cbdd316d149c435ca7cd97555213fbe6d1054e5eb82755cc8537` |
| 19 | `lemma` | [nnnorm_le_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnnorm-le-iff-of-nonneg.md) | 221 | `result-track:94d6d45d291d23c95b0e5dec2f776162ab239f377fc71c3aa3825b2de51e4e5b` |
| 20 | `lemma` | [norm_le_one_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-le-one-iff-of-nonneg.md) | 226 | `result-track:8908605f338e40e9d132430e064a3ccaa01bb9efb1533296649e2821e02a1c4b` |
| 21 | `lemma` | [nnnorm_le_one_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnnorm-le-one-iff-of-nonneg.md) | 230 | `result-track:e8228e5b059b69f92c6956201215af2c87889b8a02f7fe9d083db4059ab1341b` |
| 22 | `lemma` | [norm_le_natCast_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-le-natcast-iff-of-nonneg.md) | 235 | `result-track:865094a77d5771c942a699c7a635576b69f81eaa5f86a6b4e9e23fe63e4252a4` |
| 23 | `lemma` | [nnnorm_le_natCast_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnnorm-le-natcast-iff-of-nonneg.md) | 239 | `result-track:731446450689d321d7616ab9db5fa747ef974811c911173dd42dbb9dffe27049` |
| 24 | `lemma` | [mem_Icc_algebraMap_iff_norm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/mem-icc-algebramap-iff-norm-le.md) | 248 | `result-track:546659d8e1a90d00dff37304396589ca90a027e87d74019f7b91e6e0ce7db0de` |
| 25 | `lemma` | [mem_Icc_algebraMap_iff_nnnorm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/mem-icc-algebramap-iff-nnnorm-le.md) | 253 | `result-track:4c0895ef1103d33879dbad0bf33a04c4e090295427f164856c4774f9e948389f` |
| 26 | `lemma` | [mem_Icc_iff_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/mem-icc-iff-norm-le-one.md) | 257 | `result-track:60306d98cd448ca4d511f95b977d065e0504438a7c30aee4a54ff30bb3f2e8b4` |
| 27 | `lemma` | [mem_Icc_iff_nnnorm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/mem-icc-iff-nnnorm-le-one.md) | 261 | `result-track:678a6073c5343dcb5a58ab4e57da4aceafa118ea11a22f6a91a1153e62642e8c` |
| 28 | `lemma` | [CFC.conjugate_rpow_neg_one_half](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cfc-conjugate-rpow-neg-one-half.md) | 277 | `result-track:d8e3175c42d17bc3b0ce376598d950fa05907d963efc2b192d8b75f5e2963527` |
| 29 | `lemma` | [CStarAlgebra.isUnit_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/cstaralgebra-isunit-of-le.md) | 287 | `result-track:2328efba78c8839446ce423eb4425651c922fd57174232fa1fef7e4dc20e53f6` |
| 30 | `lemma` | [le_iff_norm_sqrt_mul_rpow](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/le-iff-norm-sqrt-mul-rpow.md) | 297 | `result-track:93c7833815f70ca072f00f5bf5dcbdf6cf1a24fafa5b6316e3dacc1fa6d70cf8` |
| 31 | `lemma` | [le_iff_norm_sqrt_mul_sqrt_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/le-iff-norm-sqrt-mul-sqrt-inv.md) | 324 | `result-track:dd4b15d27a7b06f26351703f33a24f99fb14309542d6d799d1bdae781b96f2c5` |
| 32 | `lemma` | [inv_le_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inv-le-inv.md) | 333 | `result-track:d094300de7dfed618e83113f8d318186c74ed50b906818816dac7eb23f1528f7` |
| 33 | `lemma` | [inv_le_inv_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inv-le-inv-iff.md) | 347 | `result-track:0f0a7765f649628a3a74cd11e56d80dfd40f1cab41ab4d4e8c8968fdc66c32d4` |
| 34 | `lemma` | [inv_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inv-le-iff.md) | 351 | `result-track:4e8d0cc6c1bc3dda3fd87743a895f36e82139436498e7b8bee70725eaedc0e65` |
| 35 | `lemma` | [le_inv_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/le-inv-iff.md) | 355 | `result-track:061fdf70421b40f6c27834b688db63177749df55c058840f21591787019f387d` |
| 36 | `lemma` | [one_le_inv_iff_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/one-le-inv-iff-le-one.md) | 359 | `result-track:9183b7c15c46cd5a0fce9dc113bae34f1b924d17c224e1667cb5887abcaac596` |
| 37 | `lemma` | [inv_le_one_iff_one_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inv-le-one-iff-one-le.md) | 363 | `result-track:f58110c8c5fb7c4d0c0f91d8ec9201765c53b54c7fd91e3ce9a911ce6069d8d1` |
| 38 | `lemma` | [inv_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inv-le-one.md) | 367 | `result-track:e4121485be2a11571914ee07011cd16ae31c8128e3038e1fa1235b568e91225d` |
| 39 | `lemma` | [le_one_of_one_le_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/le-one-of-one-le-inv.md) | 370 | `result-track:804c530350c7a71bf741063066391bbf1366f3e8b4a94f2bb6f9d7c048a2364b` |
| 40 | `lemma` | [rpow_neg_one_le_rpow_neg_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/rpow-neg-one-le-rpow-neg-one.md) | 373 | `result-track:b459e29c9aa23d983e837cdaec33e56836096283f9eee632da54ca9d450bb2e8` |
| 41 | `lemma` | [rpow_neg_one_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/rpow-neg-one-le-one.md) | 380 | `result-track:fd215f70ed0ed57d1c1bb9af3753a1ba9ee709552cbd2bfad92fa970662da6e2` |
| 42 | `instance` | [instNonnegSpectrumClassComplexNonUnital](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/instnonnegspectrumclasscomplexnonunital.md) | 398 | `declaration-track:c78f65924ac2e6e7991f897d8808f99eb0872b0201819df9c3e101a58545accb` |
| 43 | `lemma` | [norm_le_norm_of_nonneg_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/norm-le-norm-of-nonneg-of-le.md) | 403 | `result-track:7df96505f6953a65e959e671f4f6e1fa1105bd66a484de087b6aef1c2e1325c5` |
| 44 | `theorem` | [nnnorm_le_nnnorm_of_nonneg_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/nnnorm-le-nnnorm-of-nonneg-of-le.md) | 424 | `result-track:ba3739a56030d32959df38658e9d8d499c33d927366980c95f50a6b35a759000` |
| 45 | `lemma` | [conjugate_le_norm_smul](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/conjugate-le-norm-smul-source-edition-2.md) | 428 | `result-track:9b0d231b9eff3d416eafce03df2d3eb70471e2eec5c0cef1c7eaa48771bd323a` |
| 46 | `lemma` | [conjugate_le_norm_smul'](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/conjugate-le-norm-smul.md) | 439 | `result-track:85ebb30b264cbbec00ac4b5927c3446c82f7a02ad9b9c985c287ccb2b5846e82` |
| 47 | `lemma` | [isClosed_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/isclosed-nonneg.md) | 447 | `result-track:adb916f55deb0e8d7d38b8aac81bde8069245500ade15ef0d51912bea54c4bd5` |
| 48 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/instance.md) | 460 | `declaration-track:cebb8f5d3dcf8b9fc18ec247c6ac02f0aba949f03d04f62352364c6ba3a5815e` |
| 49 | `lemma` | [inr_mem_Icc_iff_norm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inr-mem-icc-iff-norm-le.md) | 467 | `result-track:f27f09d5c5170f781052d3b493326da162d43e00a37f2aec333ae429805b1466` |
| 50 | `lemma` | [inr_mem_Icc_iff_nnnorm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/inr-mem-icc-iff-nnnorm-le.md) | 473 | `result-track:f03758ee628a34dd6629a2e61d8ee9181dc145cf0b860c9336d4ed90eac28c7a` |
| 51 | `lemma` | [preimage_inr_Icc_zero_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/preimage-inr-icc-zero-one.md) | 477 | `result-track:cca9872bdc433a2e662523b2ff866c36ce6ab1e40fb809c77e63d219c61861fd` |
| 52 | `lemma` | [pow_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/pow-nonneg.md) | 495 | `result-track:e992edbbb889800371eba646ec8d8de29ab780430450eb413fae927855614dd3` |
| 53 | `lemma` | [pow_monotone](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/pow-monotone.md) | 499 | `result-track:3ec28e57414c8adbe3174a7bb660712d8f774b76051ac37f67e58900bcf411af` |
| 54 | `lemma` | [pow_antitone](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderNamespaced.lean/declarations/pow-antitone.md) | 508 | `result-track:210a30034a47c7f82df73123275da29e8f173323d20a0ea0a4bdea7430237b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0323f26a903444153749ccd1355bef6c79543344ca0b89025a8812f15e61afeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Order/Variantec17083131dc08cf81cd76a9077ca69390a772670c984dc4d80921af447d0149.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
