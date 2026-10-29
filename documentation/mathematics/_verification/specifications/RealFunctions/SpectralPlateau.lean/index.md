# Verification target: Spectral Plateau

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c88bf8e65d870b2574df7be8ece91eec9ac3be8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralPlateau/Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SpectralPlateau.lean/index.md) · [Full source](../../../../RealFunctions/SpectralPlateau.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c88bf8e65d870b2574df7be8ece91eec9ac3be8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralPlateau/Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SpectralPlateau/Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFeasibleGraph](../../../../RealFunctions/SpectralPlateau.lean/declarations/finitefeasiblegraph.md) | 14 | `declaration-track:82d10d01906f253871f613b2c04e360cccd1ffc408532ecdef2d5e8577258bed` |
| 2 | `structure` | [ConnectedFeasibleClass](../../../../RealFunctions/SpectralPlateau.lean/declarations/connectedfeasibleclass.md) | 20 | `declaration-track:686090ffb1b97ca69ee30a0859b41f12a258f6157b01d7ee3ee4f4af39624b7c` |
| 3 | `structure` | [SpectralGapCertificate](../../../../RealFunctions/SpectralPlateau.lean/declarations/spectralgapcertificate.md) | 28 | `declaration-track:374cd63f3cb902cf6f2cdd9f3d2f2d453ffe28ec642aaf919075458f018f0379` |
| 4 | `structure` | [MassOutsideStableClassBound](../../../../RealFunctions/SpectralPlateau.lean/declarations/massoutsidestableclassbound.md) | 37 | `declaration-track:0e5a4904048444ed6d684a204ec2fdf9bb1bd5f16a0e1abb39f4fbf554eef213` |
| 5 | `structure` | [EntropyVariationBound](../../../../RealFunctions/SpectralPlateau.lean/declarations/entropyvariationbound.md) | 48 | `declaration-track:f9e16a840e90ba4a2a350c89c60e8d70a5cf04ac37c8da2840f966bf3c23b95d` |
| 6 | `structure` | [FiniteSpectralEntropyPlateauCertificate](../../../../RealFunctions/SpectralPlateau.lean/declarations/finitespectralentropyplateaucertificate.md) | 58 | `declaration-track:fcc7764ed026bd7b11d3d24ea350707123a9e0dbe2556e3b05e7f4aea866fd3f` |
| 7 | `theorem` | [finite_spectral_gap_positive](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-spectral-gap-positive.md) | 68 | `result-track:1cd2a0eff5bcdf9d1b14a7ecda5978f03d1793188c04c4ae876bc7bc3cec98aa` |
| 8 | `theorem` | [finite_feasible_class_connected](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-feasible-class-connected.md) | 74 | `result-track:f8b3702853e923f23cb8c4d1c761fbb3775a425d5bab96d1081269389861a911` |
| 9 | `theorem` | [finite_mass_outside_stable_class_bound](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-mass-outside-stable-class-bound.md) | 80 | `result-track:dbb5297798284f5e04c8af05963a6bb8f4e28f8daf3dea926de5532cd66836d3` |
| 10 | `theorem` | [finite_entropy_variation_bound](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-entropy-variation-bound.md) | 86 | `result-track:135031464dd1eabfba2e75690884c71206970a4f360bf06812cd63201d8d5863` |
| 11 | `theorem` | [finite_entropy_plateau_inequality](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-entropy-plateau-inequality.md) | 92 | `result-track:21e505445d7e31d4044b2611ad2a513bcdc1a809e7a932c8edaa68712fd21ada` |
| 12 | `theorem` | [finite_spectral_entropy_plateau_certificate_sound](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-spectral-entropy-plateau-certificate-sound.md) | 98 | `result-track:1c87498192aaa4e1a04cddf7c908cb48c5c57758e95c1c624bd039b32035e58b` |
| 13 | `theorem` | [finite_spectral_entropy_plateau_through_boundary_calculus](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-spectral-entropy-plateau-through-boundary-calculus.md) | 115 | `result-track:4b44eae79daab0a6a611ab67678c5bbf271c080bd720a42868f592ba10d6549f` |
| 14 | `def` | [FiniteLaplacianPayloadOwnsPlateau](../../../../RealFunctions/SpectralPlateau.lean/declarations/finitelaplacianpayloadownsplateau.md) | 125 | `declaration-track:43b7cc1d9344fc9b4a15b1208672ee3fdebc9d17d2a91a1b7ff83ec4c14331f6` |
| 15 | `theorem` | [finite_laplacian_payload_authority_attempt_fails](../../../../RealFunctions/SpectralPlateau.lean/declarations/finite-laplacian-payload-authority-attempt-fails.md) | 131 | `result-track:adc001e94a723c29880c8fd9282c593e5c87804157289e42f6ef7a1dfc78c26f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b04f43d4e55feefea6f551f29f2628f51747eb99106429ccf732a12217d7a35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralPlateau/Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SpectralPlateau/Variantbc566fc4d1f479cb804ec2e336aa818f7b84fef95ded001b13bb1d746a29b4a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
