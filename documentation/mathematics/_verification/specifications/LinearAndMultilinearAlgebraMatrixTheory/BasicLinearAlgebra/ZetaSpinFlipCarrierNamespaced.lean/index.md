# Verification target: Zeta Spin Flip Carrier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b27d4e23b038d18a85d2850205dc462ff523bd6d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b27d4e23b038d18a85d2850205dc462ff523bd6d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Analysis.BitMatrixCarrierPadding` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ZetaSpin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zetaspin.md) | 28 | `declaration-track:2e7b418eac77912155311b61f2a1bdc91e19801608539d7e8f2df962851a22c1` |
| 2 | `def` | [ZetaSpin.sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zetaspin-sign.md) | 34 | `declaration-track:e93672a0d8dcdb1811b2cc3e5025691ceba65ee803f499e7efdcdf2fdb5b0b91` |
| 3 | `abbrev` | [FlipCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/flipcarrier.md) | 39 | `declaration-track:ba3dd59775e0b3e329be3d359bd0ff150163658dcd185cb439deede26112993b` |
| 4 | `abbrev` | [FlipGroupRingCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/flipgroupringcarrier.md) | 43 | `declaration-track:128d7fa839a3d02fa20e29e7f3d6d20909d27ba60ab36481d765e913dc888df3` |
| 5 | `def` | [zeroFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zeroflip.md) | 47 | `declaration-track:18825d0f6994649fbb1f3e0614ea0d091da71d6197519ab82a4e88dfb0911083` |
| 6 | `def` | [flipMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/flipmul.md) | 51 | `declaration-track:81fe2795285621d0858a816f7ced07cd3d24b81ac8fa998c4817adf2955f5e1f` |
| 7 | `def` | [controlIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/controlindex.md) | 55 | `declaration-track:faec8167c418982a7d1e79e1da6917397779ebd035770c74db15876044aca93b` |
| 8 | `def` | [harmonicIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/harmonicindex.md) | 59 | `declaration-track:a7321e7a949d38ec2ffe5b5889f2d75217bc3c16988ed88369eac4817eeabb52` |
| 9 | `def` | [singleFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/singleflip.md) | 63 | `declaration-track:720c10f31e8d57bdc168967f248c56fa9b5f7a1771278955f92511c0272d6e3b` |
| 10 | `def` | [controlFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/controlflip.md) | 67 | `declaration-track:4aa683c03b25206e7bfb30dc4323a3b3dd69bd1e3aab06ac69c8ac8a07565c36` |
| 11 | `def` | [harmonicFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/harmonicflip.md) | 71 | `declaration-track:fe3bbbe290147868f04947ba4293ab8961468f60e4eced6f98835811d10b322b` |
| 12 | `def` | [basisFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/basisflip.md) | 75 | `declaration-track:3da8fde8d946b761c11deebde7fc9a3d4c76a76da8a643330973a4cc67f80a8b` |
| 13 | `def` | [controlBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/controlbasis.md) | 79 | `declaration-track:79a6de3cb5defc1437cc923d4d540420ba6e944425679c0115190f4ce69ad31e` |
| 14 | `def` | [harmonicBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/harmonicbasis.md) | 83 | `declaration-track:4976191fab64a7a06c295be8bbcba78d5b63c65cc8a1c6ac3999ddea4ccfa45f` |
| 15 | `structure` | [ZetaHarmonicWeights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zetaharmonicweights.md) | 87 | `declaration-track:44da2c3b0ce234fc118d3337cf2f6172af18534f85daefdce0596d67a005a0a8` |
| 16 | `def` | [weightedHarmonicFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/weightedharmonicflip.md) | 91 | `declaration-track:6789c72a7eaa8b38437cef90eb33bf7bc4121ab2d831939c4bddc529e4f19475` |
| 17 | `structure` | [ZetaSpinFlipCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zetaspinflipcarrier.md) | 97 | `declaration-track:bc9738f281e60bfb8c18ad6b7c29956a4bc8ea35439fc2428d392e0c6a06f4c1` |
| 18 | `theorem` | [zeta_spin_flip_control_coordinate_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zeta-spin-flip-control-coordinate-eq.md) | 116 | `result-track:04d69158f462b1cfdbcafaab21853f77e61c96c21fe3e31b34aed31a85771567` |
| 19 | `theorem` | [zeta_spin_flip_harmonic_coordinate_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zeta-spin-flip-harmonic-coordinate-eq.md) | 122 | `result-track:eab4a8e374baf37ddf4b8229d43bcfb73ac934902251d133f96f058613c654a2` |
| 20 | `def` | [finiteZetaSpinFlipCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finitezetaspinflipcarrier.md) | 128 | `declaration-track:d40d3b85f9f28d6978d1622c8b93d7f16286d811cca63ed974130a0ac05a60ea` |
| 21 | `theorem` | [finite_zeta_spin_flip_denies_analytic_continuation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finite-zeta-spin-flip-denies-analytic-continuation.md) | 149 | `result-track:b175ba7d41580cebd1fc9f6854ed4197c9fea8d508b1b37b1dae59a7cf46872d` |
| 22 | `theorem` | [finite_zeta_spin_flip_denies_functional_equation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finite-zeta-spin-flip-denies-functional-equation.md) | 155 | `result-track:23d53e16aa281d52fdb9b5fa6e1a2dae4b08fbb55e10e7d4b067e33e053c7290` |
| 23 | `theorem` | [finite_zeta_spin_flip_denies_zero_location](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finite-zeta-spin-flip-denies-zero-location.md) | 161 | `result-track:91c06b1be9d0a68746c7b88fb592a03b293dc86c91b56486aaa390859c037f7e` |
| 24 | `theorem` | [finite_zeta_spin_flip_denies_spectral_authority](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finite-zeta-spin-flip-denies-spectral-authority.md) | 167 | `result-track:853b47042b0d0f3e9cd05367d4d4b62a126b5d21d8499715d6e78484fc2c7b99` |
| 25 | `theorem` | [finite_zeta_spin_flip_denies_infinite_convergence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/finite-zeta-spin-flip-denies-infinite-convergence.md) | 173 | `result-track:4e6aea0774038ab99f32e5ef7b29681ae1c4a2b1bb65dda52657df5ae2da7e09` |
| 26 | `def` | [coefficientAtZeroFlip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/coefficientatzeroflip.md) | 179 | `declaration-track:23a2f03612e3294afcb57f980e08cc6f2650e736dd52498d83e605f984e0d1eb` |
| 27 | `theorem` | [coefficientAtZeroFlip_weighted_harmonic_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/coefficientatzeroflip-weighted-harmonic-flip.md) | 183 | `result-track:b39543d00ad9ee030faf1986d01d3649dc117e454a6a4c09acc474c01edd5338` |
| 28 | `theorem` | [every_harmonic_index_has_flip_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/every-harmonic-index-has-flip-basis.md) | 190 | `result-track:6e578ea4108cdec7a933106281c5bf4d4fe2379cb82ebfe0833928c44a27d833` |
| 29 | `theorem` | [control_spin_has_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/control-spin-has-basis.md) | 196 | `result-track:618781c4b87017d3d500a1d92668ea78a4ade7843b6e45664fae50dd4dff7f60` |
| 30 | `theorem` | [zeta_spin_flip_has_N_harmonic_slots](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zeta-spin-flip-has-n-harmonic-slots.md) | 202 | `result-track:3813741b40d2d07db5b1a06323f40209827517941bcc29b8e307b41102e93e3e` |
| 31 | `structure` | [ZetaSpinFlipAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/zetaspinflipauthoritysurface.md) | 211 | `declaration-track:def3ef2f6efda445ccf7ba412d40be8410df15e3445f51d271997151dcacff91` |
| 32 | `def` | [defaultZetaSpinFlipAuthoritySurface](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/defaultzetaspinflipauthoritysurface.md) | 225 | `declaration-track:c737c5a2cf01902d44334b614cbe7e2e4647d9382130bdbb9e2e38b9c0aef4cf` |
| 33 | `theorem` | [default_zeta_spin_flip_is_finite_carrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-is-finite-carrier.md) | 237 | `result-track:d9b91bbf3884948c585fc39c9ea5313a7c684cfcbd20d56fb86875a9a0023ec7` |
| 34 | `theorem` | [default_zeta_spin_flip_has_spin_control_bit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-has-spin-control-bit.md) | 241 | `result-track:a4fd46ea40c17217a8403e2e267a16e1f5e8346b398ba1fe21558b0a6a6089e6` |
| 35 | `theorem` | [default_zeta_spin_flip_has_harmonic_flips](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-has-harmonic-flips.md) | 245 | `result-track:dfc4280f120eaf174c78bd732dd30650fe0756a0663ed32b2fda92935845ecf2` |
| 36 | `theorem` | [default_zeta_spin_flip_has_group_ring_carrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-has-group-ring-carrier.md) | 249 | `result-track:02014a3e5922b2302233d767f6c1a941b5f1283db4b49b60714deaccc9b11715` |
| 37 | `theorem` | [default_zeta_spin_flip_denies_zeta_theorem_claim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-denies-zeta-theorem-claim.md) | 253 | `result-track:a23961ff24716fcbf24cfcc3d67a3d428bb7b25547237589f59554f0ecc87a3d` |
| 38 | `theorem` | [default_zeta_spin_flip_denies_rh_claim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-denies-rh-claim.md) | 257 | `result-track:4ac996c692ec9274cfef57a5ffa853a8278a06cd1f18755bb25d639b60bc09ba` |
| 39 | `theorem` | [default_zeta_spin_flip_denies_theorem_promotion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipCarrierNamespaced.lean/declarations/default-zeta-spin-flip-denies-theorem-promotion.md) | 261 | `result-track:e39489b58b9c7309174815afa16962a22ab6e02dd1c8af5e11427625b3bb005a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cc8ac8c067ccddd965458134d732ac2ec1310c6f7444164c80262c097701a15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ZetaSpinFlipCarrier/Varianta7ebe0367ae5d749d8893da4c1383402a6c1fafc0744468d153de532da1fa13d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
