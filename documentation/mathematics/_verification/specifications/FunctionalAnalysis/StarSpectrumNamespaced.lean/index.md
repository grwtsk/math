# Verification target: Star Spectrum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e651fc55442d4b551f57f09ce683bd5288cb991f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e651fc55442d4b551f57f09ce683bd5288cb991f`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitary.spectrum_subset_circle](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/unitary-spectrum-subset-circle.md) | 39 | `result-track:dd782270692edf9c1b42bc58bb61d264509119c040ae162867642db6b660e857` |
| 2 | `theorem` | [spectrum.subset_circle_of_unitary](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/spectrum-subset-circle-of-unitary.md) | 52 | `result-track:d55581912fbae430a8dbd44ba728a9bccf59533fe7480d54a8245116c0cdd1df` |
| 3 | `theorem` | [IsSelfAdjoint.spectralRadius_eq_nnnorm](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/isselfadjoint-spectralradius-eq-nnnorm.md) | 68 | `result-track:a976a0982f4157785dca2c5fd7d7bb78898fd153b617d91609ae24182778728e` |
| 4 | `theorem` | [IsStarNormal.spectralRadius_eq_nnnorm](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/isstarnormal-spectralradius-eq-nnnorm.md) | 80 | `result-track:66b813ed4f7de4df75a67304dd706c675d7b8de53128e2973391bcaefe30f624` |
| 5 | `theorem` | [IsSelfAdjoint.mem_spectrum_eq_re](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/isselfadjoint-mem-spectrum-eq-re.md) | 98 | `result-track:dec81b22ffa2b955ea5f28ebf98b33232b6dad031f13f74510be10c790467716` |
| 6 | `theorem` | [selfAdjoint.mem_spectrum_eq_re](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/selfadjoint-mem-spectrum-eq-re.md) | 112 | `result-track:46da72ee77cb6e721c98417d73e672cad3b188b93e42c67d522aea66d339ce39` |
| 7 | `theorem` | [IsSelfAdjoint.val_re_map_spectrum](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/isselfadjoint-val-re-map-spectrum.md) | 118 | `result-track:bc5e0c458153085fd99075f2712ae341ddc573c17321fd05db25a7ff4bf60223` |
| 8 | `theorem` | [selfAdjoint.val_re_map_spectrum](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/selfadjoint-val-re-map-spectrum.md) | 126 | `result-track:ab95ed734de330896746a4b7d18b7bfd685c71745624f6aec51282269945d9c1` |
| 9 | `theorem` | [nnnorm_apply_le](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/nnnorm-apply-le.md) | 140 | `result-track:0f9f1f244f13238b0a5b827f6beb70ab238e9ea8d8fb6f28f1d006e2418a6ff7` |
| 10 | `theorem` | [norm_apply_le](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/norm-apply-le.md) | 153 | `result-track:1f7897265f98a9798c9dbac852df611f90b21da70a867263a65f8405f2f14928` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/instance-source-edition-2.md) | 159 | `declaration-track:a972524f4d929bc2c7c5beffb082c17cdf14fb7cd7275ef9ffd1d6c752bfde1a` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/instance.md) | 179 | `declaration-track:79c13813dee7002e19c2594507358197efa330cd4bd83d4e867175910cdc3389` |
| 13 | `def` | [Star Spectrum Namespaced](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/inststaralghomclass-source-line-196-occurrence-2.md) | 196 | `declaration-track:5742dc94362ebd2feacbc3af05e43500f06b47d6bb22da9b701243a4b05b89af` |
| 14 | `instance` | [instStarAlgHomClass](../../../../FunctionalAnalysis/StarSpectrumNamespaced.lean/declarations/inststaralghomclass.md) | 202 | `declaration-track:22fe901164dcf9ab01f76a8c4acfbc035fa6f8277d0eec486d638e74ec46a4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39896d925c01fd8781137c9bba7d2eaf37e9ab04ea04e4d8006f2723abfed17b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Spectrum/Variantca4dcc21745935b768bb0688f41b879fee8677463f24a00850712e0f787d1bd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
