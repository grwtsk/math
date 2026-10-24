# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13e4b7d477e552f6af68f86e672a5b1eefa5b29d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13e4b7d477e552f6af68f86e672a5b1eefa5b29d`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitary.spectrum_subset_circle](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/unitary-spectrum-subset-circle--77384ff8e4e09c0b644f6a89.md) | 31 | `result-track:77384ff8e4e09c0b644f6a8980e3a714c5aea00364c631c702dbfc24697d7533` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/spectrum-subset-circle-of-unitary--e4d5ef616801b02fba8f34e5.md) | 44 | `result-track:e4d5ef616801b02fba8f34e5d2e26e9c602c0b4b2b60d8c776de6961212d3c86` |
| 3 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm--fc22a569d536beed9ed069dc.md) | 60 | `result-track:fc22a569d536beed9ed069dc422a3d7bb50a3822001c6d4f0f7da939a462d3d1` |
| 4 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/isstarnormal-spectralradius-eq-nnnorm--535c4935eeaf9128f05fdf79.md) | 72 | `result-track:535c4935eeaf9128f05fdf7921ec280b2085c4b05ddf07e0009868caa5c1fa10` |
| 5 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/isselfadjoint-mem-spectrum-eq-re--5adaf12c5c84645119c09bad.md) | 90 | `result-track:5adaf12c5c84645119c09bad25d259a1b6984d6de9451499a5b9512e1af84124` |
| 6 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/selfadjoint-mem-spectrum-eq-re--3cded788b2ab1c4e13743da1.md) | 104 | `result-track:3cded788b2ab1c4e13743da1331f8f4df4734cf5d38d89690ad4051471ab528c` |
| 7 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/isselfadjoint-val-re-map-spectrum--692dcad432fc3a8035970c72.md) | 110 | `result-track:692dcad432fc3a8035970c72d57753679b118bfde207052dc00ddc8b90396728` |
| 8 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/selfadjoint-val-re-map-spectrum--f55df6bf3cdd4cc7ac5e206c.md) | 118 | `result-track:f55df6bf3cdd4cc7ac5e206c37bea44d75ce6904651d796f63a17467185a4234` |
| 9 | `theorem` | [nnnorm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/nnnorm-apply-le--27edeed93780f663c2ec0369.md) | 132 | `result-track:27edeed93780f663c2ec0369bf5574fc63b58ce83de2c8914bc53626d213aff6` |
| 10 | `theorem` | [norm_apply_le](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/norm-apply-le--517f259117ed3fb7ee8d461e.md) | 145 | `result-track:517f259117ed3fb7ee8d461eb3726ae7c4f345b75c877e1d85d96b9cd796ac5e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/instance--d78c8e763058ac1b51c744b7.md) | 151 | `declaration-track:d78c8e763058ac1b51c744b7f4a38c29295465217e0c403e2254d924a9ca46c0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/instance--ba135807640f4a43c388951c.md) | 171 | `declaration-track:ba135807640f4a43c388951c308b93e12c4fa04682c7925de9226743b4bc6f55` |
| 13 | `def` | [_root_.AlgHomClass.instStarAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/root-alghomclass-inststaralghomclass--b7d167196045b4ab28356ba6.md) | 188 | `declaration-track:b7d167196045b4ab28356ba6aa1c3fb95caa26d07c70cb05c496c7fbde2c14ff` |
| 14 | `instance` | [instStarAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variantfc4f759b9920c7891c9e22660fe4acf0b1875649dcb538866fa76935fedbdc05.lean/declarations/inststaralghomclass--aa31050fc266c65eeb2dead8.md) | 194 | `declaration-track:aa31050fc266c65eeb2dead836b9ec0c8294d702603c0e177392b85fa3131248` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
