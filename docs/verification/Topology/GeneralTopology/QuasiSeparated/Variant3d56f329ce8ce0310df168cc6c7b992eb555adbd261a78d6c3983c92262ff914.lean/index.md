# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22d6ea6839fc5035fa1658e6c61598d6504a906",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22d6ea6839fc5035fa1658e6c61598d6504a906`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated--5980f3f9a19e19a844482fe4.md) | 54 | `declaration-track:5980f3f9a19e19a844482fe47ff3d6fc96e91987a8838ee70ed1fd1447fb8c6f` |
| 2 | `def` | [QuasiSeparated.affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-affineproperty--778cfaccc226172915c49c62.md) | 61 | `declaration-track:778cfaccc226172915c49c62d315df7f87803c65f268c38202546da71ef83ee0` |
| 3 | `theorem` | [quasiSeparatedSpace_iff_affine](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedspace-iff-affine--12f09290da916356cb519e58.md) | 65 | `result-track:12f09290da916356cb519e58acc6b812c30228323355bc4ac308c100029d3d41` |
| 4 | `theorem` | [quasi_compact_affineProperty_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasi-compact-affineproperty-iff-quasiseparatedspace--11dab24fda130f5c8414a3e3.md) | 94 | `result-track:11dab24fda130f5c8414a3e305d53ffdcb32700ee403d1d458a24d57efadaa64` |
| 5 | `theorem` | [quasiSeparated_eq_diagonal_is_quasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-eq-diagonal-is-quasicompact--54d08da1c3b9e92961a24177.md) | 125 | `result-track:54d08da1c3b9e92961a241779ae55c1ed268372b3f3b09d500d3a3cee5140cbf` |
| 6 | `theorem` | [quasi_compact_affineProperty_diagonal_eq](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasi-compact-affineproperty-diagonal-eq--66adb1c502e0dacbf1b7c23c.md) | 129 | `result-track:66adb1c502e0dacbf1b7c23c13066b69621c32e567b7dbba8c997dbb7141026f` |
| 7 | `theorem` | [quasiSeparated_eq_affineProperty_diagonal](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-eq-affineproperty-diagonal--df06499eb380efb1990f44d3.md) | 134 | `result-track:df06499eb380efb1990f44d3fcb48e0febafabbfd76080e4d78e6ccc995a18a7` |
| 8 | `theorem` | [quasiSeparated_eq_affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-eq-affineproperty--619aad9cb04a7a1779887416.md) | 141 | `result-track:619aad9cb04a7a17798874164d35ba372b06c3c07a0580aec57a46d6ee2ca3b8` |
| 9 | `theorem` | [QuasiSeparated.affineProperty_isLocal](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-affineproperty-islocal--8695190cacff72ae58571643.md) | 146 | `result-track:8695190cacff72ae5857164341c1605ad1f4ebe0f3444922781222372c151bbf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/instance--517189d5f493f2bf31309550.md) | 150 | `declaration-track:517189d5f493f2bf31309550b0f4d91b444f5158ef59b06ed2668a5a607905c8` |
| 11 | `theorem` | [quasiSeparated_stableUnderComposition](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-stableundercomposition--570d070d86e93f6daab391a1.md) | 155 | `result-track:570d070d86e93f6daab391a17f303846488b271df11107a7a87c6a660fe483a8` |
| 12 | `theorem` | [quasiSeparated_stableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-stableunderbasechange--1ce52531bb72168612d52d4c.md) | 162 | `result-track:1ce52531bb72168612d52d4c86adbe0150f7da6f90cc0b4cb02eb3abc3e64db8` |
| 13 | `instance` | [quasiSeparatedComp](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedcomp--78e69e00d4cb169cdc1ce7e7.md) | 168 | `declaration-track:78e69e00d4cb169cdc1ce7e783bb1651abef861c6dc114cc76dbb84ca8fabe83` |
| 14 | `theorem` | [quasiSeparated_respectsIso](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-respectsiso--6a8e14cde1a91ab67741f167.md) | 173 | `result-track:6a8e14cde1a91ab67741f167f03c84929f0030ad63f9d983ad17b3809dbdc74e` |
| 15 | `theorem` | [QuasiSeparated.affine_openCover_TFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-affine-opencover-tfae--24a0d59b82e65527acc901c1.md) | 178 | `result-track:24a0d59b82e65527acc901c16f0ae3d053f3a2bbde85fd191420e3b322474417` |
| 16 | `theorem` | [QuasiSeparated.is_local_at_target](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-is-local-at-target--8914fa18e36fdab8a930d1c2.md) | 198 | `result-track:8914fa18e36fdab8a930d1c2ae9a17afec22f5a70669a061d61dd0dcf2a5e5b6` |
| 17 | `theorem` | [QuasiSeparated.openCover_TFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-opencover-tfae--8e5664e7cd9280d0e4b169ef.md) | 204 | `result-track:8e5664e7cd9280d0e4b169ef08328b682e5db5969558b61d610fcb0b25578cc3` |
| 18 | `theorem` | [quasiSeparated_over_affine_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-over-affine-iff--9d4a9e2a0c4d84f7261cd4f3.md) | 219 | `result-track:9d4a9e2a0c4d84f7261cd4f3510df79f10385424e027f685b365c80d4ddcbb68` |
| 19 | `theorem` | [quasiSeparatedSpace_iff_quasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedspace-iff-quasiseparated--fd6cf919eb92b094ac4ddca3.md) | 225 | `result-track:fd6cf919eb92b094ac4ddca3739ba84681c5945e35697b5b0c1d54b40c4f097e` |
| 20 | `theorem` | [QuasiSeparated.affine_openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-affine-opencover-iff--4f24b94a3f988db65538a499.md) | 230 | `result-track:4f24b94a3f988db65538a499a6dc634a09bd650fc4f9eb7c24bfd2ce59e5d09f` |
| 21 | `theorem` | [QuasiSeparated.openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparated-opencover-iff--b6d6530326caa57c3a413ca3.md) | 238 | `result-track:b6d6530326caa57c3a413ca3c37b9b19862f653f5f4bd5a9d8bfe5430441090c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/instance--d254912ead3ce0fb8b94ea5f.md) | 243 | `declaration-track:d254912ead3ce0fb8b94ea5ff78eb2d3e32a4dcd9a56314692418e335feca8cb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/instance--99f08b4b67e7526107f83977.md) | 247 | `declaration-track:99f08b4b67e7526107f8397789d090bcf3e90cb61e5f2892c34f7481096b61f8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/instance--a9f1cf8177d7c0c3cbf2fd62.md) | 251 | `declaration-track:a9f1cf8177d7c0c3cbf2fd627fec2d6897d1161d74c2092d4758192ca5546f4e` |
| 25 | `theorem` | [quasiSeparatedSpace_of_quasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedspace-of-quasiseparated--7636d5cc7753c692ad5e6704.md) | 255 | `result-track:7636d5cc7753c692ad5e67045c8c769168b237124e1fe572e5e22ff26de57683` |
| 26 | `instance` | [quasiSeparatedSpace_of_isAffine](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedspace-of-isaffine--6d1e8f1067daab498fa2de7d.md) | 263 | `declaration-track:6d1e8f1067daab498fa2de7d825402b333a05bbfbe428358fde46822d1ddd840` |
| 27 | `theorem` | [IsAffineOpen.isQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/isaffineopen-isquasiseparated--3a4ee486d97a1cfba0200d62.md) | 280 | `result-track:3a4ee486d97a1cfba0200d62ca3e0f2c47656b6843bf0cd32086f5ddfc251bfb` |
| 28 | `theorem` | [quasiSeparatedOfComp](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/quasiseparatedofcomp--0c88539f0fd171a796521194.md) | 286 | `result-track:0c88539f0fd171a79652119423a164f86e6d2f422309f3cd38cc4cd4fb6aa41e` |
| 29 | `theorem` | [exists_eq_pow_mul_of_isAffineOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/exists-eq-pow-mul-of-isaffineopen--61729fddcfa8249ad3b2da34.md) | 311 | `result-track:61729fddcfa8249ad3b2da34adef09ba7d63271cc6b0c6a6eea142d55774006b` |
| 30 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux--941d7a3007ca82f4bde138f5.md) | 322 | `result-track:941d7a3007ca82f4bde138f555edbcba55921f762b574cbf58dcc5dfe5e945b2` |
| 31 | `theorem` | [exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/exists-eq-pow-mul-of-iscompact-of-isquasiseparated--7d8ac8469f00792197e686fa.md) | 384 | `result-track:7d8ac8469f00792197e686fab558587dab28c7c7ac6334b3346bfb9cd19c6725` |
| 32 | `theorem` | [is_localization_basicOpen_of_qcqs](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant3d56f329ce8ce0310df168cc6c7b992eb555adbd261a78d6c3983c92262ff914.lean/declarations/is-localization-basicopen-of-qcqs--d26b3a058a3c28e53bcd0fbc.md) | 526 | `result-track:d26b3a058a3c28e53bcd0fbca2479996154723678197ccf5892a5664478ea708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
