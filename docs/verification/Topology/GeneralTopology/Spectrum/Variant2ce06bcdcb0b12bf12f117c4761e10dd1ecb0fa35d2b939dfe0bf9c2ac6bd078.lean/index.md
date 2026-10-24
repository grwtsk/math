# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e5584d07e30cedfd6de43e39471f90b20d98e1`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean.json)

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
| 1 | `theorem` | [Unitary.spectrum_subset_circle](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/unitary-spectrum-subset-circle--01afb2471d7af93eaea3d1e8.md) | 77 | `result-track:01afb2471d7af93eaea3d1e8c6f24229d4008c5c5cadef5c31e63d2a1b47c349` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/spectrum-subset-circle-of-unitary--e10a29f2ce048af934cccbdb.md) | 89 | `result-track:e10a29f2ce048af934cccbdb74a27e4203fbf8ceee6115589232ee036f16c544` |
| 3 | `theorem` | [spectrum.norm_eq_one_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/spectrum-norm-eq-one-of-unitary--3cc88d60b305f27f7b68dcea.md) | 93 | `result-track:3cc88d60b305f27f7b68dcea493f71ffb185aa0c897f7f32729cca147c002802` |
| 4 | `lemma` | [CStarAlgebra.le_nnnorm_of_mem_quasispectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/cstaralgebra-le-nnnorm-of-mem-quasispectrum--193857b4e819053c920b7eca.md) | 102 | `result-track:193857b4e819053c920b7eca268f869e4b5f93a60876ae3888f693fe498b186a` |
| 5 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm--8dae5e1d837ada3138a1c6d5.md) | 117 | `result-track:8dae5e1d837ada3138a1c6d50c86b6ba0c1dd48be13d7b2552c22f0a4ce8e25f` |
| 6 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-toreal-spectralradius-complex-eq-norm--f9de1cb65ae70ebef4e0740e.md) | 128 | `result-track:f9de1cb65ae70ebef4e0740e75b48deb2458f6229981c19baaf5bf2d8030c53d` |
| 7 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isstarnormal-spectralradius-eq-nnnorm--1b4531b68cdf914ced468b52.md) | 132 | `result-track:1b4531b68cdf914ced468b52a6dc155e43287bc7b4a8db0fbcb575235bae128e` |
| 8 | `theorem` | [toReal_spectralRadius_star_mul_self_eq_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/toreal-spectralradius-star-mul-self-eq-norm-sq--bfe64f8c7402bf296199f7a7.md) | 150 | `result-track:bfe64f8c7402bf296199f7a7d47a80c07c68670e7255b2e0fb36dab2ac586052` |
| 9 | `theorem` | [toReal_spectralRadius_self_mul_star_eq_norm_sq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/toreal-spectralradius-self-mul-star-eq-norm-sq--19f85422ea2fbb4fbc99b38a.md) | 155 | `result-track:19f85422ea2fbb4fbc99b38a219f01c5dd56b82f68d7f0a75b658bb71ea9cd91` |
| 10 | `theorem` | [sqrt_toReal_spectralRadius_star_mul_self_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/sqrt-toreal-spectralradius-star-mul-self-eq-norm--59f2acf37bfc967d26a162f3.md) | 159 | `result-track:59f2acf37bfc967d26a162f3876a867be2608a3abffb7a35c94d330f02be9595` |
| 11 | `theorem` | [sqrt_toReal_spectralRadius_self_mul_star_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/sqrt-toreal-spectralradius-self-mul-star-eq-norm--ba913aaf34a4db47519feb99.md) | 163 | `result-track:ba913aaf34a4db47519feb994468b7dd7982ec4484f4a7275c26b07f884bb363` |
| 12 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-mem-spectrum-eq-re--e2f9c5ae063010fcb6168cca.md) | 170 | `result-track:e2f9c5ae063010fcb6168cca784a179d7dc4929fc49d3e2d0cae25c33c0ca202` |
| 13 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/selfadjoint-mem-spectrum-eq-re--638e432d9da64b78c184d27f.md) | 184 | `result-track:638e432d9da64b78c184d27f8ae7a482955313952f18d4c4aab5836acb3d5979` |
| 14 | `theorem` | [IsSelfAdjoint.im_eq_zero_of_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-im-eq-zero-of-mem-spectrum--70ae7ab73816430d8f4989cf.md) | 189 | `result-track:70ae7ab73816430d8f4989cf2e9d81fc50760974b8029fd5233842c07df1f908` |
| 15 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-val-re-map-spectrum--701dbac0658f4e21e046ce96.md) | 194 | `result-track:701dbac0658f4e21e046ce9624292e6e5654409131b2e8cbb24fc535e703deb8` |
| 16 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/selfadjoint-val-re-map-spectrum--2e61f0294a173ae55006443c.md) | 201 | `result-track:2e61f0294a173ae55006443cecd064cdfbaba4e3c8adeb22ad4f40befd16bba6` |
| 17 | `lemma` | [IsSelfAdjoint.isConnected_spectrum_compl](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isselfadjoint-isconnected-spectrum-compl--510b0547cb8fd69187d7c3b6.md) | 206 | `result-track:510b0547cb8fd69187d7c3b6f2b304511f6bb6504a3cc44e0eb5e5f1f832e7bd` |
| 18 | `lemma` | [coe_isUnit](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/coe-isunit--a916c9532fb95282eabc7e4b.md) | 231 | `result-track:a916c9532fb95282eabc7e4b120e93b0c74379d13439ee564b1eb73a3a9b70dd` |
| 19 | `lemma` | [mem_spectrum_iff](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/mem-spectrum-iff--91a82b8f6d9155d1d849b29e.md) | 246 | `result-track:91a82b8f6d9155d1d849b29efb304403108b8da03a9afa9e00490e09024051d8` |
| 20 | `lemma` | [spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/spectrum-eq--7db61204c7719faf127cc096.md) | 251 | `result-track:7db61204c7719faf127cc096d2596451fb7ed3a4d2f531857098e1d867a7da4d` |
| 21 | `lemma` | [nnnorm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/nnnorm-apply-le--e17902a9334e664b05aa9cd5.md) | 267 | `result-track:e17902a9334e664b05aa9cd5bd91ace731506e50a38b00f384c9f50a0cc01db5` |
| 22 | `lemma` | [norm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/norm-apply-le--63b4c6fd5da812be6fa4cc47.md) | 283 | `result-track:63b4c6fd5da812be6fa4cc47e653774654560a1a31e58987b432955090135f16` |
| 23 | `lemma` | [instContinuousLinearMapClassComplex](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/instcontinuouslinearmapclasscomplex--3967ac90ce0ade4fe0d84b80.md) | 288 | `result-track:3967ac90ce0ade4fe0d84b80a3fc3f5802d4bd9800f61655abb0d014daff6723` |
| 24 | `lemma` | [nnnorm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/nnnorm-map--2eb4283925f2be32f9eb6faa.md) | 302 | `result-track:2eb4283925f2be32f9eb6faa87850aea1fc341b6cb5bf16feb8d85b283fb0b9a` |
| 25 | `lemma` | [norm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/norm-map--8bd737be3e5d2ab00d68c87b.md) | 307 | `result-track:8bd737be3e5d2ab00d68c87b2cad72385a88e46d5bc1cecc22a0f5caabbbeea3` |
| 26 | `lemma` | [isometry](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/isometry--08a31ed72fca9a2ec2993170.md) | 310 | `result-track:08a31ed72fca9a2ec2993170130d129545ee55f9e4594434ce0fdffb9e0eed29` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/instance--9b3904d7a03039092dc08aff.md) | 327 | `declaration-track:9b3904d7a03039092dc08aff1d8c3ea3b1e04e34e1ba4a11a02c7fc614f045eb` |
| 28 | `lemma` | [_root_.AlgHomClass.instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/root-alghomclass-inststarhomclass--2c724052a3bf9748e2c45c6e.md) | 338 | `result-track:2c724052a3bf9748e2c45c6edfc2b63d95ea8fe91ee70a12c993cd61e7081c35` |
| 29 | `instance` | [instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/declarations/inststarhomclass--e8f551df640e3312103fd509.md) | 343 | `declaration-track:e8f551df640e3312103fd509cfdcd6bbb435314c4d7e990ccc81d730606bf313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
