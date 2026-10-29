# Verification target: GRWTSK.Analysis.Fourier.PrimePhasePacketCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067ed635f13b06de091f788f403bba214f5a5dce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067ed635f13b06de091f788f403bba214f5a5dce`.

Source path: `GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/PrimePhasePacketCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../MeasureAndIntegration/PrimePhaseMultiplierBounds.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Angle` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [broadSet](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/broadset.md) | 14 | `declaration-track:c8368ae89a2199ad112d3a7b6a6ee496c4b164ad56bd1b1069f604bf49ecdde8` |
| 2 | `def` | [narrowSet](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/narrowset.md) | 15 | `declaration-track:d9f862061dbc10bad59a2badffef37a7026fa48f70d798cdbb9e9c5cda33895d` |
| 3 | `def` | [spectrum](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/spectrum.md) | 16 | `declaration-track:4fd4311c6d88d6ce342e1a3f04237f2d5c6e9f39332a43454a578cb31abb8781` |
| 4 | `def` | [density](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/density.md) | 17 | `declaration-track:83d059f85c2fd36426f7974a035ab5f93c5134f8052d64cc26f1cfa8d68aa95c` |
| 5 | `def` | [packetEnergy](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/packetenergy.md) | 19 | `declaration-track:d29599b7a5bb3366a062730ca9cf66212f4e52e3e97123919216075fb903c967` |
| 6 | `def` | [narrowEnergy](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/narrowenergy.md) | 21 | `declaration-track:3ec5ac2b075179d8caea46b8d671acffea289e8966711a20f18ae82aeedc5f5c` |
| 7 | `def` | [sourceSpectralEnergy](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/sourcespectralenergy.md) | 23 | `declaration-track:0ed0eff43ca1c29fff95d63dfa176b41fb613a3c3c2425bf475382f0facd7ca0` |
| 8 | `def` | [amplification](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/amplification.md) | 25 | `declaration-track:4e02713f217e847320ff1d98873fe7923a78c8fb49e99eb52e8318823553320b` |
| 9 | `def` | [phaseDistance](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/phasedistance.md) | 27 | `declaration-track:bbbdcbeecd9bb23964e2370dc99bb738eefaedd21c3173bbf3942ade91547aa8` |
| 10 | `theorem` | [narrowSet_eq_complement](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/narrowset-eq-complement.md) | 30 | `result-track:3c9ac991babe77da34d5d984b3dd266eab71ebc397d4c29e5f324ad5dc190ea7` |
| 11 | `theorem` | [broadSet_measurable](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/broadset-measurable.md) | 35 | `result-track:07198d67a4be433fef40f18140dd4ca9483dccc8e9e95d72b4b32f74124accf3` |
| 12 | `theorem` | [spectral_split](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/spectral-split.md) | 41 | `result-track:efcca557378ed7481e511f3dd366dc592e96f7f67e0c7dfeef839a4df5b3990e` |
| 13 | `theorem` | [broad_narrow_integral_bound](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/broad-narrow-integral-bound.md) | 48 | `result-track:2b57956f730b4382816e926108db3645e4041ef3b238f4e50fe75f78091e1223` |
| 14 | `structure` | [Chart](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/chart.md) | 75 | `declaration-track:69f92963e514859296ab39f1defb5fc3c6afb33bc633edda60b5081a681b9aaf` |
| 15 | `def` | [ChildRelation](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/childrelation.md) | 93 | `declaration-track:b64302773508b3f98623e639f106c23481c51f9d9f13189f28956d45a79898aa` |
| 16 | `theorem` | [childRelation_wellFounded](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/childrelation-wellfounded.md) | 96 | `result-track:fde586582c926f3a87ceef6be97e9dbbec3321f37ac4b7fe254e282c5208282d` |
| 17 | `theorem` | [nondecreasing_child_rejected](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/nondecreasing-child-rejected.md) | 100 | `result-track:713a7b4e65a917d54cb0e7784ecfbd46950fff8c7b45c61f7cc16e4d1eb0212e` |
| 18 | `theorem` | [zero_rank_no_child](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/zero-rank-no-child.md) | 105 | `result-track:c62a2f44f4c1ca2ee87e3070b4268909f60b13647601b3384aacde4c98ee46c5` |
| 19 | `structure` | [NormalizedChild](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/normalizedchild.md) | 112 | `declaration-track:5659e89f363725a113465cd5d0f733421b9dda2d706e5a0e05b27f0233c5f420` |
| 20 | `inductive` | [PacketResolution](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/packetresolution.md) | 126 | `declaration-track:f42a5c6bdc69cd724308a6d23cac92d42d15e3051bf52f70108d096c26be444e` |
| 21 | `structure` | [ExtractionCertificate](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/extractioncertificate.md) | 136 | `declaration-track:2a6595e0d6f37af0a9c3ea3a250696324b3ab80ff57f3490650a18d9490f09da` |
| 22 | `structure` | [PaidCertificate](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/paidcertificate.md) | 162 | `declaration-track:3cc3924c81376d1f482d10d0a494767b2efd248b62f47b62b3c58dd2bdaa2d8f` |
| 23 | `theorem` | [paid_extraction_implies_NC](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/paid-extraction-implies-nc.md) | 172 | `result-track:95bb76636e3e3293fc69effcaa53f76f33c53e3120386b192e89ca5b887d8d26` |
| 24 | `theorem` | [paid_spectral_step](../../../../MeasureAndIntegration/PrimePhasePacketCertificates.lean/declarations/paid-spectral-step.md) | 183 | `result-track:d69f7e0b0b1597499b1e807bf5e678e44a5a6d6eb069cb81d5e6bda6bbf556b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99f8047025e9605709393be6edef72d976e01411d09dbc415800a93433893c9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
