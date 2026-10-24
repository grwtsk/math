# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5a9603fbf1f74769e0c3ea58cc75febad5722c5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5a9603fbf1f74769e0c3ea58cc75febad5722c5`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitary.spectrum_subset_circle](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/unitary-spectrum-subset-circle--ded0485374c69da1d9f430a0.md) | 79 | `result-track:ded0485374c69da1d9f430a0680cf34d117b8fb803edb72945635e3ec73fb179` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/spectrum-subset-circle-of-unitary--c7eef3303bebc22ad72b2b82.md) | 91 | `result-track:c7eef3303bebc22ad72b2b822862581da2d28714ea8ae77470a77080f052f2aa` |
| 3 | `lemma` | [CStarAlgebra.le_nnnorm_of_mem_quasispectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/cstaralgebra-le-nnnorm-of-mem-quasispectrum--5a6547fb379fd48a25102e04.md) | 100 | `result-track:5a6547fb379fd48a25102e04f73c74434ad72c3d5d9fcdad11dc95f1c076c26d` |
| 4 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm--50b3ff673d2b802fcebe0361.md) | 115 | `result-track:50b3ff673d2b802fcebe0361da65f99e490e92b7225e59889786e2bdd3edd11e` |
| 5 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-toreal-spectralradius-complex-eq-norm--746df0abac9a7b169d907ff1.md) | 129 | `result-track:746df0abac9a7b169d907ff1a8613901485b1f331271792f9f6f822be2573063` |
| 6 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isstarnormal-spectralradius-eq-nnnorm--2312eda01acfce633fe605a0.md) | 133 | `result-track:2312eda01acfce633fe605a016fab6e6320f1173fa4f4b1157a7d3fe7500db88` |
| 7 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-mem-spectrum-eq-re--b7698926cae4cd3edebd48df.md) | 152 | `result-track:b7698926cae4cd3edebd48df09b1ae9b6e85e6f4d44be0d93d0b9216b3c25ef5` |
| 8 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/selfadjoint-mem-spectrum-eq-re--d39603c11d5253d8d5324a64.md) | 165 | `result-track:d39603c11d5253d8d5324a64c16d0b45028578f4f2d9954c601fb8fca1fa1775` |
| 9 | `theorem` | [IsSelfAdjoint.im_eq_zero_of_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-im-eq-zero-of-mem-spectrum--11b5c0d3e8a289769464841a.md) | 170 | `result-track:11b5c0d3e8a289769464841abb1a829393f475278950aa7920d4279adf168ff5` |
| 10 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-val-re-map-spectrum--6c4d971a911c3621e4f719ed.md) | 175 | `result-track:6c4d971a911c3621e4f719ed1bd3cd4841bf7d1f9fe1f0af50700ee923136dbb` |
| 11 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/selfadjoint-val-re-map-spectrum--5d2312cbf57e62c585be8753.md) | 182 | `result-track:5d2312cbf57e62c585be8753bbdb5ce47a1a668af53f3f15c0373836c5b4da21` |
| 12 | `lemma` | [IsSelfAdjoint.isConnected_spectrum_compl](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isselfadjoint-isconnected-spectrum-compl--0e9b4e1f1df7b95fba78fdb3.md) | 187 | `result-track:0e9b4e1f1df7b95fba78fdb36a4feb9e813cdc141f1625ff15b9a0e0ee730081` |
| 13 | `lemma` | [coe_isUnit](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/coe-isunit--f540cc7ac274dbb2e4a10056.md) | 212 | `result-track:f540cc7ac274dbb2e4a10056bf2447936dea78d3f4467da6203aeb1bc73984c6` |
| 14 | `lemma` | [mem_spectrum_iff](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/mem-spectrum-iff--00e0f252d9cc493369638acf.md) | 227 | `result-track:00e0f252d9cc493369638acfaf71625c9367030f65e2290089a58457b1d3a4a6` |
| 15 | `lemma` | [spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/spectrum-eq--31a58aeb50663aa958e6468a.md) | 232 | `result-track:31a58aeb50663aa958e6468a4b786ac1f2fe8d821a798600e01644538a4fd2a2` |
| 16 | `lemma` | [nnnorm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/nnnorm-apply-le--4505eba67823d0b9d1232377.md) | 247 | `result-track:4505eba67823d0b9d1232377db523d3d9cbb94828c33387cfd3983a5aaf013c8` |
| 17 | `lemma` | [norm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/norm-apply-le--6c5b3590ae138ac9bcfc9f43.md) | 262 | `result-track:6c5b3590ae138ac9bcfc9f439872e30c14203d635581d03ed3c74ea1af984f94` |
| 18 | `lemma` | [instContinuousLinearMapClassComplex](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/instcontinuouslinearmapclasscomplex--6646b2cf277dc70f10ea70df.md) | 267 | `result-track:6646b2cf277dc70f10ea70df859e4fd53d368371be6df208c6860fec5c584780` |
| 19 | `lemma` | [nnnorm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/nnnorm-map--0e3dbf7c7b9181bf1c9a46b9.md) | 281 | `result-track:0e3dbf7c7b9181bf1c9a46b9b58a8ab7cd595429cf947dd4b5fe82d4cc330a4a` |
| 20 | `lemma` | [norm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/norm-map--f4e956c30f7169c882d3e2be.md) | 285 | `result-track:f4e956c30f7169c882d3e2bebec1661336af2eb21f0d8e10430b85daecbcc8e8` |
| 21 | `lemma` | [isometry](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/isometry--4eebeee20077de3977efecc5.md) | 288 | `result-track:4eebeee20077de3977efecc54eacb97600c0b5efd60fcefde409d15da17ff926` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/instance--6afb01989e3502b6743feeae.md) | 305 | `declaration-track:6afb01989e3502b6743feeae59095595625d55ae69021f155e237c02f2de11ec` |
| 23 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.UnitarySpectrumSubsetCircle.Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.AlgHomClass.instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/root-grwtsk-topology-generaltopology-unitaryspectrumsubsetcircle-variant--93e20ff27ac8f3142faf2962.md) | 320 | `result-track:93e20ff27ac8f3142faf2962f863bf51739415da61180b0ed6435604ceb72242` |
| 24 | `instance` | [instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant22a8cfd2c011b998def47fa0b780aa52cf966406749db669f5e421de31a95ddf.lean/declarations/inststarhomclass--b6612840238444a1fce89144.md) | 325 | `declaration-track:b6612840238444a1fce8914485e211e8f3dd155e46b96b5cff0d5c92b38b296e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
