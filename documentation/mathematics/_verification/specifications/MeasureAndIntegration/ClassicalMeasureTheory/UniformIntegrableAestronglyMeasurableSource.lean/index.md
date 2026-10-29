# Verification target: Uniform Integrable Aestrongly Measurable Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a5647e07ed70419066225075ef66917fc4048a8",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a5647e07ed70419066225075ef66917fc4048a8`.

Source path: `GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable.md) | 63 | `declaration-track:4169e37bfb388e216159313f87564715d159334769ec603518cbc402ad312843` |
| 2 | `def` | [UniformIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable.md) | 69 | `declaration-track:bdd190f207a72145fd82c9eec88977888063a00ed6364a82a6051eb2d0cd747e` |
| 3 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/aestronglymeasurable.md) | 74 | `result-track:2ad485bcc3816979f60c0325de2186852ada5fe3b6920f9f6815c4b1fc729c0b` |
| 4 | `theorem` | [unifIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-source-edition-2.md) | 81 | `result-track:444846246fc80bb342582451d5eef5652e3bb09714627d89774fd35d62a620cc` |
| 5 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp.md) | 85 | `result-track:1cefcdcb931de2522429072d5206f405639efef5d466b2c3213eecc88eaccb93` |
| 6 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/add.md) | 104 | `result-track:e7291dad56b73d1ed9f28e74402ac94ec65b320226ce538110063fda16efc669` |
| 7 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/neg.md) | 120 | `result-track:07b123674b434f6c7224258aa3577df826999a2354cb081b18653f587ae195ba` |
| 8 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/sub.md) | 124 | `result-track:96500a4295dbe83131bcc7c9ed703028604158f6e88be92687d9932f53df6d8e` |
| 9 | `theorem` | [ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/ae-eq.md) | 130 | `result-track:eb92920917811b6fd730236bf55cca1d0b72d55716f17e0125b7253b51d889ce` |
| 10 | `theorem` | [indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/indicator.md) | 140 | `result-track:ff4b47f8c02e4c0c760ba8ed84922777aa14b69534d0e87f6c9ece9bacb6af62` |
| 11 | `theorem` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/restrict.md) | 152 | `result-track:25d0e5ca0f7828e37d436226cae475daf46ea8468fbcdf9d56a8ce200a30686c` |
| 12 | `theorem` | [unifIntegrable_zero_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-zero-meas.md) | 168 | `result-track:ec7ebaf11f8d4faa1159f77db13ec61dd278b56d1a1393263f01efca259a8576` |
| 13 | `theorem` | [unifIntegrable_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-congr-ae.md) | 172 | `result-track:b59e7cbad91f9fdaf90782aaec83134b6765d4b05172e85aa5a0712e868b36cd` |
| 14 | `theorem` | [tendsto_indicator_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/tendsto-indicator-ge.md) | 176 | `result-track:4b9cf8f7371efa280fddf7c21db03abddf1379decf3505fa3759c3be9b51d019` |
| 15 | `theorem` | [MemLp.integral_indicator_norm_ge_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-integral-indicator-norm-ge-le.md) | 193 | `result-track:19a7d4e9cbcb4604d007fc542119fdb12979f17e541d17551462a2a1c1349e24` |
| 16 | `theorem` | [MemLp.integral_indicator_norm_ge_nonneg_le_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-integral-indicator-norm-ge-nonneg-le-of-meas.md) | 229 | `result-track:ea66424db459a0f5522816f48771c81204e9548dfe30303fdc53c8a946cce38c` |
| 17 | `theorem` | [MemLp.integral_indicator_norm_ge_nonneg_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-integral-indicator-norm-ge-nonneg-le.md) | 235 | `result-track:304f03af6e3c98a2e0e8a3a374647a36d89c3c33f0bad2bbf068145fb09b7f32` |
| 18 | `theorem` | [MemLp.eLpNormEssSup_indicator_norm_ge_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnormesssup-indicator-norm-ge-eq-zero.md) | 245 | `result-track:06ea3db4cfce97be7433070bc4407b5b208b43d1a4c894aa9be52017cbf79187` |
| 19 | `theorem` | [MemLp.eLpNorm_indicator_norm_ge_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnorm-indicator-norm-ge-le.md) | 272 | `result-track:f424a49ff18441c4a697f2113a2dbd53390c8753bf0a4d90b28f20f6a3ec2665` |
| 20 | `theorem` | [MemLp.eLpNorm_indicator_norm_ge_pos_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnorm-indicator-norm-ge-pos-le.md) | 308 | `result-track:63af1325e84f9bdb7db9e656e04e349410e26e71d335f3a51d711d78b1bc33d0` |
| 21 | `theorem` | [eLpNorm_indicator_le_of_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/elpnorm-indicator-le-of-bound.md) | 321 | `result-track:f2c1d231eb53e3e962ea4c4ca8e4e1a4eabddebf38229c9fbf22f65ecea8d72f` |
| 22 | `theorem` | [MemLp.eLpNorm_indicator_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnorm-indicator-le.md) | 354 | `result-track:cb14754612b1009800f04eae69eac431573c8a627e80042aca129e65107af9b6` |
| 23 | `theorem` | [MemLp.eLpNorm_indicator_le_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnorm-indicator-le-of-meas.md) | 385 | `result-track:8aeb95f2c49a922ad9eafd4760d1a91c20fb88574bfc682336a13d514da5fc03` |
| 24 | `theorem` | [MemLp.eLpNorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/memlp-elpnorm-indicator-le-source-edition-2.md) | 395 | `result-track:d264b3b8874ac4a5d3e2f3ea22fb97d66a8d2b7c35d3c38a1e9c7b542dc2ac71` |
| 25 | `theorem` | [unifIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-const.md) | 408 | `result-track:a996f9ecf4f25e50c43d590e9705f8eff9c88c9887be590fc86c6c33f70c2ffa` |
| 26 | `theorem` | [unifIntegrable_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-subsingleton.md) | 415 | `result-track:ddcba5c21cf81f467c3f20846ae90d0fa07383c63abff166446b892c75fe8fac` |
| 27 | `theorem` | [unifIntegrable_fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-fin.md) | 427 | `result-track:1c2ed800314a48451a668474084e9891557d97cb06f7591aa7e488826a542a1e` |
| 28 | `theorem` | [unifIntegrable_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-finite.md) | 451 | `result-track:d5c1a46d981ee3a74638a7deb1ce0479796410cfe57699b53f84a6eac6402db3` |
| 29 | `theorem` | [eLpNorm_sub_le_of_dist_bdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/elpnorm-sub-le-of-dist-bdd.md) | 465 | `result-track:eed827843ed595a0a1cfc3429cab9a149491a7e134b6e46b41edd25e199fe229` |
| 30 | `theorem` | [tendsto_Lp_finite_of_tendsto_ae_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/tendsto-lp-finite-of-tendsto-ae-of-meas.md) | 484 | `result-track:0215528a34de6d4f4f567ff2150402d06bce86d8dd65d310a179454595bf49cd` |
| 31 | `theorem` | [tendsto_Lp_finite_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/tendsto-lp-finite-of-tendsto-ae.md) | 547 | `result-track:4b45590d0131ba4c768ca87e59240a2c4f78c64ffd1e9793dd81ff923cf63146` |
| 32 | `theorem` | [unifIntegrable_of_tendsto_Lp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-of-tendsto-lp-zero.md) | 567 | `result-track:2bc332e16e2c5712aad8cab942c9ae398fc4a05230d902fa53d3250249886126` |
| 33 | `theorem` | [unifIntegrable_of_tendsto_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-of-tendsto-lp.md) | 581 | `result-track:38ab8e38f97e873b70739e7b82b8df05bcd305c4a56f38924c2339e2825cd0cd` |
| 34 | `theorem` | [tendsto_Lp_finite_of_tendstoInMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/tendsto-lp-finite-of-tendstoinmeasure.md) | 594 | `result-track:7a13c682a07bcc7308da684d39aec46e7dedbcec42020b294181837f02efd5b9` |
| 35 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/tendstoinmeasure-iff-tendsto-lp-finite.md) | 607 | `result-track:47e70533154dc51d7fad4bf8b7961fe6a73a48faac3aad70d11cdbc0f48d1370` |
| 36 | `theorem` | [unifIntegrable_of'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-of-source-edition-2.md) | 617 | `result-track:9c06868a2ef27a0d8c88d9f50be437117aa61ba23147b646536c9fa5c7c85aa8` |
| 37 | `theorem` | [unifIntegrable_of](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/unifintegrable-of.md) | 680 | `result-track:0ce8c6c35b7da4722e5936c05235d31273d07da0f9d503c9b8e4e46a587a166d` |
| 38 | `theorem` | [uniformIntegrable_zero_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-zero-meas.md) | 721 | `result-track:72d3872d798cf4cacef74551a11fee569976f2f6111da6f4fc4571332217ac27` |
| 39 | `theorem` | [UniformIntegrable.ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-ae-eq.md) | 725 | `result-track:e59cd9e2b298301d4b27824e56481575c400cac9f22ac71a5ce5a003f619701e` |
| 40 | `theorem` | [uniformIntegrable_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-congr-ae.md) | 732 | `result-track:e1d9620b4ff6e00bcb6e0c5d5f380d1cc553597ba800600e9f417026c8ef18d6` |
| 41 | `theorem` | [uniformIntegrable_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-finite.md) | 737 | `result-track:e6dd4d0c969ec0f150deb071461bef379f849943a4c71449191c61b20527e699` |
| 42 | `theorem` | [uniformIntegrable_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-subsingleton.md) | 755 | `result-track:8ae8a462b04a33e3e2a041d908600060869a9b12e16b1d899ae6ef89ff1cdee2` |
| 43 | `theorem` | [uniformIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-const.md) | 760 | `result-track:767e7063200f1a33d830332de33bd057853a838cbe8c8be124c3d515ce268d50` |
| 44 | `theorem` | [uniformIntegrable_of'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-of-source-edition-2.md) | 767 | `result-track:fde93373254e2d42fb322f42d33bd2c7dc987a644f8cbee59d4f2c041f808f11` |
| 45 | `theorem` | [uniformIntegrable_of](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-of.md) | 808 | `result-track:dbdda65c83001315e04bf9a599e4115fe0ac053ca79dd6ece9303a3462faeb83` |
| 46 | `theorem` | [UniformIntegrable.spec'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-spec.md) | 827 | `result-track:70b62f6bc5153f0c80f8062f1d33c8cb7cf46f86007167f72a9638105dc50c1a` |
| 47 | `theorem` | [UniformIntegrable.spec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-spec-source-edition-2.md) | 862 | `result-track:85224171eca2f2a8505ebc15bcda7c28f45314d69022384268913fe3289d7608` |
| 48 | `theorem` | [uniformIntegrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-iff.md) | 879 | `result-track:cad7559dea116097a72ce0a913ac490079af3984b4081bb4095107e2a4e1d33d` |
| 49 | `theorem` | [uniformIntegrable_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-average.md) | 888 | `result-track:3fed80c3c396ee0cf0b5a790f9565cb4677b4d746928035841aa527833b15433` |
| 50 | `theorem` | [uniformIntegrable_average_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAestronglyMeasurableSource.lean/declarations/uniformintegrable-average-real.md) | 918 | `result-track:247a3a66bb6ea1d52b6cf475f238402dec95490485b7ea5eb96677d0a83c02e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d6abf821c05b579a48b74a533365130c186bd1db8b8e67535793d621504400f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/UniformIntegrable/Variant72947d50b0b30d53e63813bab0ba43bcddc304bbddbb3eefa7738d55f50f13b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
