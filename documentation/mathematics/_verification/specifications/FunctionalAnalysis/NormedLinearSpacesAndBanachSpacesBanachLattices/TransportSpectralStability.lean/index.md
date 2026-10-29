# Verification target: Transport Spectral Stability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a826e78364e1cefc2fec2cc59d1f873901ed8e03",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a826e78364e1cefc2fec2cc59d1f873901ed8e03`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.State` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvolutionInvolution](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/convolutioninvolution.md) | 21 | `declaration-track:f0ecd995e704a390b32fcb7a0f4d033bb206ab55258a12bc6ac442ac806abd45` |
| 2 | `theorem` | [star_star](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/star-star.md) | 32 | `result-track:8461421fb25d56e8345a4be1aa23ed0f56880155501d8fb934eb23b0e7c7618e` |
| 3 | `structure` | [LinearDiffuser](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/lineardiffuser.md) | 42 | `declaration-track:5ccbbe2407965da3fd68c718c515145e407b75960ec54d421d2f7e529312c186` |
| 4 | `def` | [factor](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/factor.md) | 64 | `declaration-track:90e6d7ec59cf93a9104a441c51eec30eb0bb10cfaf6ec37767cf1b1c2da94e76` |
| 5 | `theorem` | [factor_nonnegative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/factor-nonnegative.md) | 67 | `result-track:80991160b83d6948b3a1945de4fdbe8e163557831621fecd1ec33dda84ceb112` |
| 6 | `structure` | [CompatibleTransport](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/compatibletransport.md) | 77 | `declaration-track:09da4cf339a8ca2ef421f9610054900728a3bd0d8e87ec04469c8f8d22bb0580` |
| 7 | `def` | [paired](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/paired.md) | 109 | `declaration-track:568bb14334f9b5a222ccf95b3f0ffe0ea4051aee1c0943d1f891e60708107bfc` |
| 8 | `theorem` | [paired_star](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/paired-star.md) | 117 | `result-track:9a08b41b3483ddcc77976632375123723399953c9169912774774ee9077ced0c` |
| 9 | `theorem` | [paired_graph_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/paired-graph-bound.md) | 124 | `result-track:c4d7185543bc76cee9a60d35303e739da75485fa4c0b387ac744e97856b28206` |
| 10 | `structure` | [CertifiedNonlinearity](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/certifiednonlinearity.md) | 134 | `declaration-track:14329ca1c3b10ffa54a914b68570229b768e4797e63be2bc451b4690cee0e7df` |
| 11 | `structure` | [AnalyticLayer](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/analyticlayer.md) | 146 | `declaration-track:0178a9aca523907e112efd7315805433bb094ab464bb23e3c94642fb81a6310c` |
| 12 | `def` | [candidate](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/candidate.md) | 166 | `declaration-track:488798a91d390daed26f2d3962d0918c81ca4b3654838a9ef6b849b2980e2f0b` |
| 13 | `def` | [stabilityFactor](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/stabilityfactor.md) | 174 | `declaration-track:26457deedd71b95e460cc7c914a53e95c5af8f7a842456cc2a11ad1d65e42b95` |
| 14 | `theorem` | [spectral_stability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/spectral-stability.md) | 183 | `result-track:ea8c9f08dc0cad53483b8dcdcfe6137105819078bb29ebe6d9a286caad34627f` |
| 15 | `theorem` | [nonexpansive_of_factor_le_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/TransportSpectralStability.lean/declarations/nonexpansive-of-factor-le-one.md) | 232 | `result-track:62b4e4dcb8a82bdd6e9f1e51c382d147626a10a935fbda15ac9ec349937a985b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7aa45f0a8d289721c3bb32882ba235d954ba11107d1f0d9a230bf3ec98c934f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
