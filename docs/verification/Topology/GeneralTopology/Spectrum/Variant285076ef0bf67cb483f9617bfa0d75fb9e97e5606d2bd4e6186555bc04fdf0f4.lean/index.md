# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e32d5cce9fa2d2e20250c3c13c4ff548e57ea7b8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e32d5cce9fa2d2e20250c3c13c4ff548e57ea7b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Unitary.spectrum_subset_circle](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/unitary-spectrum-subset-circle--c9511d554949426e2d978a3b.md) | 85 | `result-track:c9511d554949426e2d978a3bd02692c1dbfbc728e4510916924e418250de0488` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/spectrum-subset-circle-of-unitary--828b9be4982709a643c9e5a6.md) | 97 | `result-track:828b9be4982709a643c9e5a6e3a324eb930d47484a59cbd52cd8b3cc692d9f69` |
| 3 | `theorem` | [spectrum.norm_eq_one_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/spectrum-norm-eq-one-of-unitary--b49305e7a0b55385f0ffc9d6.md) | 101 | `result-track:b49305e7a0b55385f0ffc9d6618c85ee00ca3f89ef30f0f54488f09f00a3e528` |
| 4 | `lemma` | [CStarAlgebra.le_nnnorm_of_mem_quasispectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/cstaralgebra-le-nnnorm-of-mem-quasispectrum--d4a7b36a5937d009f630cc7f.md) | 110 | `result-track:d4a7b36a5937d009f630cc7f2ed8b2ae8b5d08830be65d1ebe82060b9c2fff64` |
| 5 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm--6076a1e619a122b7174e1036.md) | 125 | `result-track:6076a1e619a122b7174e10366e4d9f930fee27cb96a7a98f829d3a2209bbd52c` |
| 6 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-toreal-spectralradius-complex-eq-norm--af6ec5f9ec0e3efdc6787c89.md) | 136 | `result-track:af6ec5f9ec0e3efdc6787c89e86717d1833c8351246f1c7a5ecfa2676f227d27` |
| 7 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isstarnormal-spectralradius-eq-nnnorm--a3f6ff6b0ca0b1d8f9dad5ee.md) | 140 | `result-track:a3f6ff6b0ca0b1d8f9dad5ee906f5ab1475e32c44e81e47ef350555ab1e7aa72` |
| 8 | `theorem` | [toReal_spectralRadius_star_mul_self_eq_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/toreal-spectralradius-star-mul-self-eq-norm-sq--4727e0c6e1b9f74962e8154f.md) | 158 | `result-track:4727e0c6e1b9f74962e8154f2d5d18d2ab02faa1b0d944ccca8c7023a02c044d` |
| 9 | `theorem` | [toReal_spectralRadius_self_mul_star_eq_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/toreal-spectralradius-self-mul-star-eq-norm-sq--e1de971af1022c804e9efc02.md) | 163 | `result-track:e1de971af1022c804e9efc029ff22daeea9cd0b73803e8444951ade2300b5f81` |
| 10 | `theorem` | [sqrt_toReal_spectralRadius_star_mul_self_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/sqrt-toreal-spectralradius-star-mul-self-eq-norm--308212d2abe772effac48539.md) | 167 | `result-track:308212d2abe772effac48539eb5c79d6df6af5bcae959b7c53d27da8f833a9bf` |
| 11 | `theorem` | [sqrt_toReal_spectralRadius_self_mul_star_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/sqrt-toreal-spectralradius-self-mul-star-eq-norm--54d330f6da59766c2974e8fc.md) | 171 | `result-track:54d330f6da59766c2974e8fc16dd678eb5ef11d507e9fe74b544b9311285a783` |
| 12 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-mem-spectrum-eq-re--910cff5123a56e8af8d13b95.md) | 178 | `result-track:910cff5123a56e8af8d13b95e5640fb603eee28732649216a48d5c17e3c6d3ef` |
| 13 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/selfadjoint-mem-spectrum-eq-re--b0b733805155fe0466993294.md) | 192 | `result-track:b0b733805155fe0466993294c187d5a2be196443c4084811bd23e609af68bbf6` |
| 14 | `theorem` | [IsSelfAdjoint.im_eq_zero_of_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-im-eq-zero-of-mem-spectrum--524444b4c772cf3c83ec1054.md) | 197 | `result-track:524444b4c772cf3c83ec105465d02e66f1df1bbc465b4bea3835f7cadbb42a42` |
| 15 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-val-re-map-spectrum--e83fc3efb0e483a1fc3c7126.md) | 202 | `result-track:e83fc3efb0e483a1fc3c71268c116f0042e0863bcff29752542ef3cd2b44f6e3` |
| 16 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/selfadjoint-val-re-map-spectrum--01b50c107c51b6c5ff5d0c3b.md) | 209 | `result-track:01b50c107c51b6c5ff5d0c3b23804a5e8a6b9f0cf6b3464760833f556fb5833c` |
| 17 | `lemma` | [IsSelfAdjoint.isConnected_spectrum_compl](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isselfadjoint-isconnected-spectrum-compl--6dafdc29bf646d6a84565c9c.md) | 214 | `result-track:6dafdc29bf646d6a84565c9c4c95fde600c9078966c886bbac204d4514585e39` |
| 18 | `lemma` | [coe_isUnit](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/coe-isunit--0d7b4a63c5018e5d3359a528.md) | 239 | `result-track:0d7b4a63c5018e5d3359a528901cde5e9ebbff6e890c9b45e5b9985024ffe3c0` |
| 19 | `lemma` | [mem_spectrum_iff](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/mem-spectrum-iff--d5def71805f476c5faeea9a3.md) | 254 | `result-track:d5def71805f476c5faeea9a3c05386fb05b90ffb70801f004b581588f348d6fe` |
| 20 | `lemma` | [spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/spectrum-eq--346f15e2475c0ddb3fda7491.md) | 259 | `result-track:346f15e2475c0ddb3fda749118227bc29c4f88a95f440ad7a6f8c3760c5c87f4` |
| 21 | `lemma` | [nnnorm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/nnnorm-apply-le--ce14e3ff02245d9490691e45.md) | 275 | `result-track:ce14e3ff02245d9490691e451f120e9f67d97a0865ac1fd5a13cb664e80d79c2` |
| 22 | `lemma` | [norm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/norm-apply-le--304d946870f29be0e4d648a2.md) | 291 | `result-track:304d946870f29be0e4d648a25e08e693720a5bd8f028cc4de03f4450ffe3d0f0` |
| 23 | `lemma` | [instContinuousLinearMapClassComplex](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/instcontinuouslinearmapclasscomplex--6bb082218ceaf1a7a6256860.md) | 296 | `result-track:6bb082218ceaf1a7a6256860fb96809dc5b0b512490ffd648ad69a110ef26690` |
| 24 | `lemma` | [nnnorm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/nnnorm-map--78771e414ebf3753f57f4dce.md) | 310 | `result-track:78771e414ebf3753f57f4dce1ed363829ed0e4557ba306a65dd903072b3bb84c` |
| 25 | `lemma` | [norm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/norm-map--01b3a809d5ae477a3448177a.md) | 315 | `result-track:01b3a809d5ae477a3448177a5277ed5bedf59e9e9467d65583c57cc9a1f6f687` |
| 26 | `lemma` | [isometry](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/isometry--1a8f90fca6e7b1284e2cfed6.md) | 318 | `result-track:1a8f90fca6e7b1284e2cfed6a87643bbdd5d737e56fb1f748df47a5d1fb61646` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/instance--2b0fbfb5ed09d9aa226cb9c2.md) | 335 | `declaration-track:2b0fbfb5ed09d9aa226cb9c29f0db3be001af1fc610ae3308dae0f7b450e3aa3` |
| 28 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.UnitarySpectrumSubsetCircle.Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.AlgHomClass.instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/root-grwtsk-topology-generaltopology-unitaryspectrumsubsetcircle-variant--044a519afb4772251dc5c61a.md) | 346 | `result-track:044a519afb4772251dc5c61a32ca871bf017ffbd1bf4d3579875e4487c86f2ce` |
| 29 | `instance` | [instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant285076ef0bf67cb483f9617bfa0d75fb9e97e5606d2bd4e6186555bc04fdf0f4.lean/declarations/inststarhomclass--be6d0ff3c63bf24ce3466966.md) | 351 | `declaration-track:be6d0ff3c63bf24ce34669666554ddae99fac4fb7f7c58276aace80a7cffad95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
