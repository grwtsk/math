# Verification target: Spectral Orbit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d5debf43b37d107dd84446f8c7ac43bb5d3a816",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d5debf43b37d107dd84446f8c7ac43bb5d3a816`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.PrimeSectorObligation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.NeuralDiffusion.Transport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.PoleSurgery` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Surgery.Request` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedPartialRealization](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/certifiedpartialrealization.md) | 48 | `declaration-track:f28bc37fa435c9d16e04ab776ff667f9389d0d8719d8305b5d7875d2b8c2b5db` |
| 2 | `structure` | [FiniteOperativeSpectralProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/finiteoperativespectralprofile.md) | 70 | `declaration-track:a1b5bfee13e5563634c3b822e73713fb084f23d5b1fd2ac874db4782cbf14d87` |
| 3 | `structure` | [ShellSymmetry](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/shellsymmetry.md) | 92 | `declaration-track:0e2c720103118250875d880915e7e12816b5e4f25f07cc6560ebe3be5da2bf1f` |
| 4 | `def` | [evenPart](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/evenpart.md) | 118 | `declaration-track:33e869312471f2f9e396c2d2cf52f3839c1479f106562a53a63cd18984840a00` |
| 5 | `def` | [oddPart](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/oddpart.md) | 122 | `declaration-track:a0099ff531a338cd5c8d8cc81de0e0da820de8bcd2894e2b2483aa28db998cf6` |
| 6 | `theorem` | [even_add_odd](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/even-add-odd.md) | 126 | `result-track:a4153fbdf3b5d7badddecaabb6e8a48b0af88f99930321960ccbbb1050ccafdd` |
| 7 | `def` | [diracLaplacian](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/diraclaplacian.md) | 135 | `declaration-track:6d4e574e3916577d1bc5fe91ce55d4275f609f73bb955be475d5646d449d9328` |
| 8 | `def` | [canonicalDiracHeat](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/canonicaldiracheat.md) | 146 | `declaration-track:c0f2edf9ba09d71d6489d11f31aae3d3791575dfc7db31a47ef547b2f59ea908` |
| 9 | `structure` | [CertifiedDiracHeat](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/certifieddiracheat.md) | 159 | `declaration-track:8c062bc41f25a5022ce98041ca845381fb21ca8f0735e35828ba93cf491efcfe` |
| 10 | `theorem` | [heat_eq_canonical](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/heat-eq-canonical.md) | 195 | `result-track:79d65a7aa06019ebd0ec59d18ee6760a52835bdc2563151a4029620d855f8e00` |
| 11 | `def` | [activation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/activation.md) | 202 | `declaration-track:cc98b4b69ffe405c422c3a8a29a88f2fd238f74059283ab24a6413a24db70d0d` |
| 12 | `theorem` | [heat_add_activation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/heat-add-activation.md) | 208 | `result-track:db89169c2f06c1db1cdd572b29581a88b45ae13411f04069012c548c4da17063` |
| 13 | `theorem` | [activation_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/activation-harmonic.md) | 217 | `result-track:b2eb453b3f181d2931a38ae0b091624edbd16ea669677caf287428ef6b6b2c4a` |
| 14 | `structure` | [CertifiedHarmonicProjector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/certifiedharmonicprojector.md) | 227 | `declaration-track:5ff5f3c7d0e8b4cfb2b2310f5393e82f2056bfe79a76955534a9fbc777c0b35d` |
| 15 | `structure` | [CertifiedOrbitSemigroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/certifiedorbitsemigroup.md) | 246 | `declaration-track:fdb2a0cba634c056060b87effacea619ae2975c6da79891ad4a3b192dba9e674` |
| 16 | `structure` | [SpectralOrbitShell](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/spectralorbitshell.md) | 279 | `declaration-track:79c60f70b294863af167280bf7f6475935b9bf3233a7ba1b39d7d011b05494ba` |
| 17 | `def` | [compactCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/compactcore.md) | 308 | `declaration-track:d848cadb457b0338d9493728344dde4f287ece5ea55d25392e1a6c0e6e5ff7d6` |
| 18 | `def` | [reduced](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/reduced.md) | 311 | `declaration-track:bd789ad56c9da86de3f68fe64a7c2214abf17c3db330202bf82263df9731fd4f` |
| 19 | `def` | [activatedResidue](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/activatedresidue.md) | 316 | `declaration-track:176b52a00c7e3dbea8dc01618423a8d2e8102748215751d9370ef75c94fbbded` |
| 20 | `def` | [orbitDistribution](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/orbitdistribution.md) | 320 | `declaration-track:6bd7890b7a7d7822a1e0445e9df95d54907baa77239f0bd6c96a85e4542dd4a3` |
| 21 | `theorem` | [reduced_add_activated](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/reduced-add-activated.md) | 327 | `result-track:473533a052134eff164aac1cb1b02f7987cc4d96d2e1e65421fec0cf6be1e25b` |
| 22 | `theorem` | [heat_oddPart_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/heat-oddpart-harmonic.md) | 353 | `result-track:66470c1c6ed04db3fe921c550d6b6d7c07c8966da0e09add1428f05ba51133d8` |
| 23 | `theorem` | [activatedResidue_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/activatedresidue-harmonic.md) | 373 | `result-track:bfc0580b2868e769d6789e2b6349e5001378f31f763b9664f35a207f958fa094` |
| 24 | `theorem` | [orbitDistribution_equilibrates](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/orbitdistribution-equilibrates.md) | 386 | `result-track:ec41f57bfc0435f00774bfb62e705f0dff5d6f680c60bd35e404211f0d087cda` |
| 25 | `structure` | [ExactShellState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/exactshellstate.md) | 408 | `declaration-track:733313e6668f64bcf406b54bd2a0c8034841df28f13b160ea0d8397a6ed1bb39` |
| 26 | `def` | [value](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/value.md) | 421 | `declaration-track:1d4e62ae8cf5ce38b1f5f5e9cc637c851621086ed8dd5735f78320c8d577d1d6` |
| 27 | `theorem` | [value_eq_realization](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/value-eq-realization.md) | 424 | `result-track:d5184444568df0050f35a04e72d81c6c73ff5137ace9c8bf9c86dbf9314a3669` |
| 28 | `structure` | [ActivatedShellResidue](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/activatedshellresidue.md) | 432 | `declaration-track:3054e4b64341e9dbc8313d41c8c5801ee225e24a463b5e30a29d770686605e45` |
| 29 | `structure` | [OrbitResidueView](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/orbitresidueview.md) | 437 | `declaration-track:7961a1ebf00be4e5ef909b7c814adb935667f53c4e68b0c1c837cd41dafca454` |
| 30 | `structure` | [LearnedShellProposal](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/learnedshellproposal.md) | 443 | `declaration-track:987189ed44825ff15b6998fa49150508f3f8fbea30b321119705c48019c3e780` |
| 31 | `structure` | [SpectralShellPacket](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/spectralshellpacket.md) | 455 | `declaration-track:bd6f61e940993bd4118a1e38caf0cd888175a2287fde21bb73d8691a295fd709` |
| 32 | `theorem` | [reduced_add_activated](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/reduced-add-activated-source-edition-2.md) | 500 | `result-track:8b8ebd0c92e9413122182b3652761184502a3912fe10476641e894518c656eb7` |
| 33 | `inductive` | [DiracIntertwining](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/diracintertwining.md) | 512 | `declaration-track:48361bb3909cc54be8074e9bf0a240e7e4c1dfd815e2b22b8559c5c3d1ffb4b1` |
| 34 | `structure` | [ShellMonomorphism](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/shellmonomorphism.md) | 530 | `declaration-track:119a9f02e6a5d63eae529675c9c649f3b106726c809dd47ea50394cce5aebc79` |
| 35 | `structure` | [AnalyticHeatFamily](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/analyticheatfamily.md) | 559 | `declaration-track:73808124e64ce2208f72ca4fe08e8aad806bf47866ae1e93a4221b801b1d9def` |
| 36 | `structure` | [HeatSurgeryBoundary](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/heatsurgeryboundary.md) | 568 | `declaration-track:57a66cf6e2205615d13995998d56ca0328a6b6e5deca64105bc7d26ac6c294e4` |
| 37 | `def` | [AdmissibleTime](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/admissibletime.md) | 585 | `declaration-track:43f7bfdc7d720a87848812b99864337bf015094d9a5a253ca22f5554b7e8ad45` |
| 38 | `def` | [proposeBefore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/proposebefore.md) | 592 | `declaration-track:07fb82b42d924c585cd06c5666ee0cb44fb0f91da587400acf504171bf81818f` |
| 39 | `theorem` | [not_admissible_at_or_after](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbitNamespaced.lean/declarations/not-admissible-at-or-after.md) | 596 | `result-track:fa44f7c6037d10e0e61138453205a01e799897a90775e2b1f9c0094a5b29633f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=787931b818dc443a7429c79119f42ef3adf6fc3016f97eb3a033a40fe3130a67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
