# Verification target: Spectral Orbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "887f065e8372a2923c5ec8b308543837ebf7ca6b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `887f065e8372a2923c5ec8b308543837ebf7ca6b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.PrimeSectorObligation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.NeuralDiffusion.Transport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.PoleSurgery` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Surgery.Request` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedPartialRealization](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/certifiedpartialrealization.md) | 40 | `declaration-track:e01b2cf325eeb65adb6815ee257fb642244b138fece5232225e9699e473a2409` |
| 2 | `structure` | [FiniteOperativeSpectralProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/finiteoperativespectralprofile.md) | 62 | `declaration-track:e99cac7d48569b86bb80c8baf8c56f6d8b48e9baea3445e7e21970219d3a32ac` |
| 3 | `structure` | [ShellSymmetry](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/shellsymmetry.md) | 84 | `declaration-track:aeee246a9aa4f9b7a58df471f53e0cfe04b2e68ee8623c1dd85f09eb8888b462` |
| 4 | `def` | [evenPart](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/evenpart.md) | 110 | `declaration-track:e4f254ec61a4a43bc09d1388a8a9ac3aaa18033c9bcae8d28e9273f5a958b00b` |
| 5 | `def` | [oddPart](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/oddpart.md) | 114 | `declaration-track:f1636ba51adbe1af92593c43f120d2adefb4dc30d7894c0facdc354b6772b331` |
| 6 | `theorem` | [even_add_odd](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/even-add-odd.md) | 118 | `result-track:50ad48fec901d8c4275b4b54b94e805f1a4cbfcd110710c8493f9a7cf376d873` |
| 7 | `def` | [diracLaplacian](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/diraclaplacian.md) | 127 | `declaration-track:131b3c6993923620ac6acbfb0a3fc05d7aee9e11dbd38f72741338b28a152713` |
| 8 | `def` | [canonicalDiracHeat](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/canonicaldiracheat.md) | 138 | `declaration-track:61b7881c844bab71abe0333ee9ecb065bea532a53ca6f05f3264be875906c940` |
| 9 | `structure` | [CertifiedDiracHeat](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/certifieddiracheat.md) | 151 | `declaration-track:cb81305123619ffc3af1e054a7dd0bc7eb33380530bd86df4a75e83b5255e478` |
| 10 | `theorem` | [heat_eq_canonical](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/heat-eq-canonical.md) | 187 | `result-track:d11d6450643ec2f6cbdb3ad1edf1fd8693e9d74c1b0aac175fba98a29153dbbe` |
| 11 | `def` | [activation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/activation.md) | 194 | `declaration-track:753c5c7bcbc7677ca12be60c06a9f72084deac8126d18fa278dd9a68790b824f` |
| 12 | `theorem` | [heat_add_activation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/heat-add-activation.md) | 200 | `result-track:90ab681ce15afdfbaf736f019866fb2f6baa6b8c28de023b46143adacd5fc2b2` |
| 13 | `theorem` | [activation_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/activation-harmonic.md) | 209 | `result-track:868a0a4bd1937f7b036dbe844291b4d5345054c38bc71fdad14de89a16f04127` |
| 14 | `structure` | [CertifiedHarmonicProjector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/certifiedharmonicprojector.md) | 219 | `declaration-track:e85ef66496ed33d60b0bfb611cea20f535b42e056660565c6eb10ede19902472` |
| 15 | `structure` | [CertifiedOrbitSemigroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/certifiedorbitsemigroup.md) | 238 | `declaration-track:11158c030a69b4f3f9d546da061923b215576000e00bfee5b06874e58ac12739` |
| 16 | `structure` | [SpectralOrbitShell](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/spectralorbitshell.md) | 271 | `declaration-track:34799d6fbaa421af2990738fcfa179d8451da82bc241bee1a3fec736916de587` |
| 17 | `def` | [compactCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/compactcore.md) | 300 | `declaration-track:ec46c6ca80a22a98c1e9a07c4432e667e8e1909b96101bfb27e1b02bc6d348ef` |
| 18 | `def` | [reduced](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/reduced.md) | 303 | `declaration-track:edf912a186e3ceb7b97285c8eda5ebaff1146019e46b0ff035463872db020f18` |
| 19 | `def` | [activatedResidue](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/activatedresidue.md) | 308 | `declaration-track:0c367ebb04b2ab76fcfe0742c663ae74c02874030f2286c3a11e06d7e8914318` |
| 20 | `def` | [orbitDistribution](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/orbitdistribution.md) | 312 | `declaration-track:ed62392f75291d943ae0bbb3f1fc6daad95eaea01eba1ade7a3702defb40ecd7` |
| 21 | `theorem` | [reduced_add_activated](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/reduced-add-activated.md) | 319 | `result-track:e6bc80e4e519282978f9cad435dd4437655dd1407c6b4171ee59f3384b02322a` |
| 22 | `theorem` | [heat_oddPart_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/heat-oddpart-harmonic.md) | 345 | `result-track:48f820f28388d992606bab03a800dba99244fc269305669dde041b21f53ea5c6` |
| 23 | `theorem` | [activatedResidue_harmonic](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/activatedresidue-harmonic.md) | 365 | `result-track:ed1e7b78c510bba7305f948142ff2e92af65ebc1598b3abffc679476cfa64aeb` |
| 24 | `theorem` | [orbitDistribution_equilibrates](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/orbitdistribution-equilibrates.md) | 378 | `result-track:4b1ba9fa40e8fd225d8a81c9ca7c564f38d9486ce7c04124a5d5491e43041310` |
| 25 | `structure` | [ExactShellState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/exactshellstate.md) | 400 | `declaration-track:417c4cfcbeec739991874d9170b79d3984bed9a6c77c975c45e140c749bff6fd` |
| 26 | `def` | [value](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/value.md) | 413 | `declaration-track:effbecf2cf1cd8d1ea94cc3f202a4d9b97e2ac651d92e0443c6bef7d2fe38de2` |
| 27 | `theorem` | [value_eq_realization](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/value-eq-realization.md) | 416 | `result-track:73cb126992c4b4e6e84bfbd94092ec0b0491108a451d70a2ad299f3c043054dd` |
| 28 | `structure` | [ActivatedShellResidue](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/activatedshellresidue.md) | 424 | `declaration-track:a592eec475c29d10aa27a8a01c0a18aaeca91a496452e76a618b3cf076887f52` |
| 29 | `structure` | [OrbitResidueView](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/orbitresidueview.md) | 429 | `declaration-track:1b0d64de0b31cccdd774c71eefe9d16eca59e887faec6e16e40106f9b5f72665` |
| 30 | `structure` | [LearnedShellProposal](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/learnedshellproposal.md) | 435 | `declaration-track:82b1ef31276e185a4bf4af88d8532d975dd032527b9703964e90360cf20e16da` |
| 31 | `structure` | [SpectralShellPacket](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/spectralshellpacket.md) | 447 | `declaration-track:1aa40b08f20175a63211bb1c0ac67b00111dfe0a758f8c04a037130db74859a0` |
| 32 | `theorem` | [reduced_add_activated](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/reduced-add-activated-source-edition-2.md) | 492 | `result-track:e6e01d1e54906657e731e369bcb153a2c6651dc6435e8fb3b81ab6a915aca60b` |
| 33 | `inductive` | [DiracIntertwining](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/diracintertwining.md) | 504 | `declaration-track:aa4abac54e9cfdad277e0d56387f84d4f3853a35617c956dd03295b548169d2e` |
| 34 | `structure` | [ShellMonomorphism](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/shellmonomorphism.md) | 522 | `declaration-track:30ea98d62d18a34a6b804b25509aaf0d7960bf426a33e57e156e4714af6659c3` |
| 35 | `structure` | [AnalyticHeatFamily](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/analyticheatfamily.md) | 551 | `declaration-track:980c8e9bb32e5d0371bbb900d0f66efa7b15766cebceab7b8a864c2c882cc11e` |
| 36 | `structure` | [HeatSurgeryBoundary](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/heatsurgeryboundary.md) | 560 | `declaration-track:90a6bd8386fa4b46476411f7a8a508553082f623f2554c7b59a73d416123a6c2` |
| 37 | `def` | [AdmissibleTime](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/admissibletime.md) | 577 | `declaration-track:11f0c3f0279043e6c3031b3ff8da4945e036d8d09da6bdab95044bafdeeff6af` |
| 38 | `def` | [proposeBefore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/proposebefore.md) | 584 | `declaration-track:fc4dae33366d64e07810bcceb9f0bb3cccd82ff36c5bac9c4405232884dc146d` |
| 39 | `theorem` | [not_admissible_at_or_after](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SpectralOrbit.lean/declarations/not-admissible-at-or-after.md) | 588 | `result-track:b553c504600be10f6e08a51e722e3168dc09b12ed6e22abff55b9e0bd28762d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c60c5a27ccd83b83866e244bbe80b41edf2dc5eea48954802c5b640fa28a131f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
