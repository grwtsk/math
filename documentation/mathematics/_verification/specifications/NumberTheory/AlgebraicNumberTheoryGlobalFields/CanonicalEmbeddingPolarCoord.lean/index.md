# Verification target: Canonical Embedding Polar Coord

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9d01d640d4a633bf14ca44638078910a382d48b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9d01d640d4a633bf14ca44638078910a382d48b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [realMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/realmixedspace.md) | 61 | `declaration-track:cbcaccc9b175ebb1495e2a0e638c5b6f85f8e4c948599ba8437ad0212b3c1e68` |
| 2 | `def` | [mixedSpaceToRealMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/mixedspacetorealmixedspace.md) | 68 | `declaration-track:533b16e706abfb0a1c5e5753d3f05d9f4a08803d162242d87cf1bf810c3c6769` |
| 3 | `theorem` | [mixedSpaceToRealMixedSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/mixedspacetorealmixedspace-apply.md) | 72 | `result-track:0232aeff301bea106122c2213bcae224c90505ff70582ce89923b4e995a08010` |
| 4 | `theorem` | [volume_preserving_mixedSpaceToRealMixedSpace_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-preserving-mixedspacetorealmixedspace-symm.md) | 78 | `result-track:b602139512ff07b05f197ef265ac7c3cb4425cb456b83be46288cd50d719dbea` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/instance.md) | 84 | `declaration-track:a8a27c7aa0a53f0577efa7aed5ef784d1c07e2a62290cba85670198c327296b7` |
| 6 | `def` | [polarCoordReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoordreal.md) | 91 | `declaration-track:f180876562501e951bef3688535cbc0b1e8c55104f65ddce8631773b1c345145` |
| 7 | `theorem` | [measurable_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/measurable-polarcoordreal-symm.md) | 94 | `result-track:160f9c00bf8f2bc885829594c456b612bcdc7a2ea38f09b6c5372a51fad8ee95` |
| 8 | `theorem` | [polarCoordReal_source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoordreal-source.md) | 100 | `result-track:5637594815958f7eb8a862af4000292262a6e4cdae849240bd1584799b79e95f` |
| 9 | `theorem` | [abs_of_mem_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/abs-of-mem-polarcoordreal-target.md) | 103 | `result-track:acf1ca8f7ea084606901d3d9eebe546486b8afdb592ae9d843304ba38e43bcdb` |
| 10 | `def` | [FDerivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/fderivpolarcoordrealsymm.md) | 112 | `declaration-track:3b7c8a887ceed0fa835795ab711b2c0b874da2d46958e49604958a307cd12082` |
| 11 | `theorem` | [hasFDerivAt_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/hasfderivat-polarcoordreal-symm.md) | 115 | `result-track:194f6862610cdb18a984673a38fb86ab06399905aab0723645324abab1e09913` |
| 12 | `theorem` | [det_fderivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/det-fderivpolarcoordrealsymm.md) | 121 | `result-track:c9248d0426c0eb3479cbf03b6a2a42e47d0479647fa7763d5557736070db37a9` |
| 13 | `theorem` | [polarCoordReal_symm_target_ae_eq_univ](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoordreal-symm-target-ae-eq-univ.md) | 129 | `result-track:d076f4ab187f47bc37fd396afce93a99916775a8c24a1d22cdeeb73659fd367b` |
| 14 | `theorem` | [integral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/integral-comp-polarcoordreal-symm.md) | 136 | `result-track:a254b151b7a4608d2f1ff4fa5b1ab0680659fd817556a77920ed982c719b0422` |
| 15 | `theorem` | [lintegral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/lintegral-comp-polarcoordreal-symm.md) | 150 | `result-track:63d165aff186b082b5c0ed125a70d934892acd4267a9695c703e130022623d93` |
| 16 | `def` | [polarCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoord.md) | 175 | `declaration-track:f1203ef9331d152487ad4d6108c31b633433a0a4ecae1ed4af8e06479cf1b027` |
| 17 | `theorem` | [polarCoord_target_eq_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoord-target-eq-polarcoordreal-target.md) | 178 | `result-track:51561e853651daffa85c08282403c0fd1fa26f65e8d373ff46a3dec87e651067` |
| 18 | `theorem` | [polarCoord_symm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarcoord-symm-eq.md) | 181 | `result-track:80999d5909268a0e5f70f5658ba6a9cf6242f30995f0e2bd33bae112a4bd400b` |
| 19 | `theorem` | [measurable_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/measurable-polarcoord-symm.md) | 185 | `result-track:65ea0f0a52c668cc5af68e159fc484b8f120e4d9e209eb90450f27720f65ba3e` |
| 20 | `theorem` | [normAtPlace_polarCoord_symm_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/normatplace-polarcoord-symm-of-isreal.md) | 190 | `result-track:4d9dafca6a8957ca8aa41a7d9a0be177b31c9364d8bae059953bea4eb6db4fee` |
| 21 | `theorem` | [normAtPlace_polarCoord_symm_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/normatplace-polarcoord-symm-of-iscomplex.md) | 195 | `result-track:9bd63336765d56ba95d2de19513b6a43945704d724744dfaec170b188a5803c5` |
| 22 | `theorem` | [integral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/integral-comp-polarcoord-symm.md) | 201 | `result-track:4c4a83799184a3c90a74f5ad1363f50ea4c2053962ff072b15353d8b1fa7e8c7` |
| 23 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/lintegral-comp-polarcoord-symm.md) | 211 | `result-track:e88a4c651710bf2736f5992440bf8e914c213d27017856603283a47fed7d9e1d` |
| 24 | `abbrev` | [polarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarspace.md) | 228 | `declaration-track:ea2ca5d10212aa405bef335da189fd26741c1d33e7a9b59e79a954d749dae788` |
| 25 | `def` | [measurableEquivRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/measurableequivrealmixedspacepolarspace.md) | 236 | `declaration-track:a703cf50e5045fa454e38e674da117ce7362c71c28429332a41b71afbc4d2a7e` |
| 26 | `def` | [homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace.md) | 250 | `declaration-track:e56f663efdc69dd4a2e82df950570d549eab9d454a6511136a6f5bf579e85904` |
| 27 | `theorem` | [homeoRealMixedSpacePolarSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace-apply.md) | 263 | `result-track:0162d20555e2805a2a4dd4f55d503d6fe1096b9aa33b65080f45eaf176488240` |
| 28 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofisreal.md) | 268 | `result-track:d0a5c58b9ac5373b0354249804dec0444acab649f40f5a9c26645c1039de962c` |
| 29 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofiscomplex.md) | 273 | `result-track:5685b114ff67ed176b752de19267b648556447b7e551f504e2ec8ed04b09b630` |
| 30 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_snd](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace-apply-snd.md) | 278 | `result-track:b707f587b945cd28c42d5e5082236b5ae2b98cbc92c8143c7114f32e5fde86e7` |
| 31 | `theorem` | [homeoRealMixedSpacePolarSpace_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/homeorealmixedspacepolarspace-symm-apply.md) | 282 | `result-track:1d049b6b39acbc72628b11145b33359f55c0b4bfbe001e60e1c736801d5c8fbc` |
| 32 | `theorem` | [volume_preserving_homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-preserving-homeorealmixedspacepolarspace.md) | 286 | `result-track:9df495151d74205ce81f74b9cec074a7940d09cd30e6af1ba30a625f45e5a174` |
| 33 | `def` | [polarSpaceCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarspacecoord.md) | 302 | `declaration-track:9dd04bc42c8d532c88e9f3f78b18638b35aaa88f731c2943f59252612cfb1c06` |
| 34 | `theorem` | [measurable_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/measurable-polarspacecoord-symm.md) | 305 | `result-track:09ccd099b7d5d738b472088eb5c8d9193dc1dfc68ffc7fb5453565b8a918456d` |
| 35 | `theorem` | [polarSpaceCoord_target'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/polarspacecoord-target.md) | 311 | `result-track:da72a215dcccbc3661d3269d1659a15a339ec6383c06ce50b68ac16d2881d915` |
| 36 | `theorem` | [integral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/integral-comp-polarspacecoord-symm.md) | 321 | `result-track:995c5b9af23a86147960b37acc7e655f3c0d1e8f664df6d5235fb4cfa2cf7979` |
| 37 | `theorem` | [lintegral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/lintegral-comp-polarspacecoord-symm.md) | 334 | `result-track:3e00a929a2c84d60a0dac1adb4209bbcf8ce001c0629e11840ed75adc7ad25d1` |
| 38 | `theorem` | [normAtComplexPlaces_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/normatcomplexplaces-polarspacecoord-symm.md) | 350 | `result-track:7dff36458a96ed06afb65737a4e69fad6aa7e25d398f96c4c3c02c6096a29196` |
| 39 | `theorem` | [volume_eq_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-eq-two-pi-pow-mul-integral-aux.md) | 359 | `result-track:50bf94c4890998d1100728e36bea67925f528cd3f629a1e5925300a695414f1f` |
| 40 | `theorem` | [volume_eq_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-eq-two-pi-pow-mul-integral.md) | 384 | `result-track:83c587f5ce030913a2192800c05e6c997d3c76e67c4d2d5ffecc0502039423a6` |
| 41 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux.md) | 407 | `result-track:4088138222270c62858d9526675fe379e7341b7b2d7fb34250e8e8194ca581a7` |
| 42 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoord.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral.md) | 435 | `result-track:f8cee87d5b36df8f4a9cae2e1b3864722e68bcb6be5e1c4fba823be8f0dadabc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=400f64ac1c91953f8a5b55075952260a3415cb813ff1ab3e4af02ef83eb9b494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PolarCoord/Variant2159f1bc9469c26acf768d74d03403e9de806e9c81be02f9f1673279abb7f8c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
