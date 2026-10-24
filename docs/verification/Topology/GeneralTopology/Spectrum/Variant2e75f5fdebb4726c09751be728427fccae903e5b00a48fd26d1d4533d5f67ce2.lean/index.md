# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf59cb683626bdb1ddf05237d1b6b5508356ead1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf59cb683626bdb1ddf05237d1b6b5508356ead1`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitary.spectrum_subset_circle](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/unitary-spectrum-subset-circle--43df03348967aaa07709e49d.md) | 71 | `result-track:43df03348967aaa07709e49dc8ace8dc73945888395ece0f690417bb8d1cfaa7` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/spectrum-subset-circle-of-unitary--d0f5326c6269f63b65651c20.md) | 83 | `result-track:d0f5326c6269f63b65651c20bcb099af8948a5f17f20c4c06db7b8676dc06e42` |
| 3 | `lemma` | [CStarAlgebra.le_nnnorm_of_mem_quasispectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/cstaralgebra-le-nnnorm-of-mem-quasispectrum--737d2029e59eaa9b184186fc.md) | 92 | `result-track:737d2029e59eaa9b184186fccc8d87c77ba576b08e63efa1a23a73fa797f2423` |
| 4 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm--8371ca430a3490fc1d4db787.md) | 107 | `result-track:8371ca430a3490fc1d4db787f34b340c4cc3489e6bd31ebdea9e6f3a23de0fd4` |
| 5 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_complex_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-toreal-spectralradius-complex-eq-norm--6a05dd66ddb77da09c7ef0a1.md) | 121 | `result-track:6a05dd66ddb77da09c7ef0a1c87c5a198846186d094cdca3b6e94361d6d98e40` |
| 6 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isstarnormal-spectralradius-eq-nnnorm--cd58344b4ef44ae45d77f15e.md) | 125 | `result-track:cd58344b4ef44ae45d77f15eda9cf049582c7a6b219bc58d716b1b2a5a403745` |
| 7 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-mem-spectrum-eq-re--43c596deb4fdeffb3b9477d6.md) | 144 | `result-track:43c596deb4fdeffb3b9477d6d10472ca903bcae1c84850eef57729724b3f963b` |
| 8 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/selfadjoint-mem-spectrum-eq-re--a1a174e5d91b70bc43fba8b9.md) | 157 | `result-track:a1a174e5d91b70bc43fba8b99de8a4938aa067a0daf2678a901a35a67ef274f4` |
| 9 | `theorem` | [IsSelfAdjoint.im_eq_zero_of_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-im-eq-zero-of-mem-spectrum--c54708eaec18325329bda35f.md) | 162 | `result-track:c54708eaec18325329bda35f44045eeedf3e17b1cc8f9caef7a7bf69b6fc0cd6` |
| 10 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-val-re-map-spectrum--31f976bf31925793fd6f756f.md) | 167 | `result-track:31f976bf31925793fd6f756f0d51e623b818c97c147158905f6832b23e26ed1a` |
| 11 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/selfadjoint-val-re-map-spectrum--53bb2adb157745004b204af8.md) | 174 | `result-track:53bb2adb157745004b204af859d708e7d9fb6ee6946f75831144bd035403c6c1` |
| 12 | `lemma` | [IsSelfAdjoint.isConnected_spectrum_compl](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isselfadjoint-isconnected-spectrum-compl--b95c4fe0d95c087175b06dcc.md) | 179 | `result-track:b95c4fe0d95c087175b06dcc635601333d5cbed24cbc3aec6e49122a588345ba` |
| 13 | `lemma` | [coe_isUnit](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/coe-isunit--4420d53124de2c5f58450f5d.md) | 204 | `result-track:4420d53124de2c5f58450f5d083ad87da34cdb7e9e5ea86602ce28695dadf9a4` |
| 14 | `lemma` | [mem_spectrum_iff](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/mem-spectrum-iff--ee9eea4e73f7194dd8d7dd5e.md) | 219 | `result-track:ee9eea4e73f7194dd8d7dd5e4864f1d652bc399601fdce44d80692a51bc0172f` |
| 15 | `lemma` | [spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/spectrum-eq--86a0b6dfb2493944fb621100.md) | 224 | `result-track:86a0b6dfb2493944fb621100cf8951bcf3be023d18c747f034e04489dee41e53` |
| 16 | `lemma` | [nnnorm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/nnnorm-apply-le--0e4e70549c89e8b328f991c4.md) | 239 | `result-track:0e4e70549c89e8b328f991c464402ce4edd4cf10decce966ae02755bd2800bc7` |
| 17 | `lemma` | [norm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/norm-apply-le--087e04270b53da6f3c296787.md) | 254 | `result-track:087e04270b53da6f3c296787d3e02d38bd118faa82a39dea2f73c2c04eca686d` |
| 18 | `lemma` | [instContinuousLinearMapClassComplex](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/instcontinuouslinearmapclasscomplex--e354d7e833daa8e4d2cc0d48.md) | 259 | `result-track:e354d7e833daa8e4d2cc0d48160540bd37fb2e52c5eeedae8a5a3e795c6795b5` |
| 19 | `lemma` | [nnnorm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/nnnorm-map--c9843e410297a07511756fba.md) | 273 | `result-track:c9843e410297a07511756fba34a8c87d271f7b7b2ca509b16ed7705b7d66c2d3` |
| 20 | `lemma` | [norm_map](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/norm-map--8627ecaddad32a2886eb13af.md) | 277 | `result-track:8627ecaddad32a2886eb13af262e3f683535bca5ad77ce56501c346b3f2dc648` |
| 21 | `lemma` | [isometry](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/isometry--7d0aa2cb56c0be94559581a1.md) | 280 | `result-track:7d0aa2cb56c0be94559581a1e50590824b5e8923e5b7c5d34647f9a1e59ba824` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/instance--3390a40f86584bdadca79d87.md) | 297 | `declaration-track:3390a40f86584bdadca79d87fecafd5658e53bc4d18e34d4188021d39838b788` |
| 23 | `lemma` | [_root_.AlgHomClass.instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/root-alghomclass-inststarhomclass--5aa06b7813983d20ba4267d8.md) | 312 | `result-track:5aa06b7813983d20ba4267d87509d71210aa46a01dba4c70226efeb43702d8a6` |
| 24 | `instance` | [instStarHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/declarations/inststarhomclass--17183a6de01ccddc226dfd13.md) | 317 | `declaration-track:17183a6de01ccddc226dfd13a671c48a80390d8a4bb91dc039bcb3d47a046309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
