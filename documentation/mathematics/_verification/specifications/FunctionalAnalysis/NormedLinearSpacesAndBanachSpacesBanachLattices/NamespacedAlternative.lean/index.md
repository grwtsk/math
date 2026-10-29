# Verification target: Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80627356bd904b18e8f330661adc869c7a59d500",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80627356bd904b18e8f330661adc869c7a59d500`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentFactorization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Stirling` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_descFactorial_mul_pow_div_factorial](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/hassum-descfactorial-mul-pow-div-factorial.md) | 43 | `result-track:9687b5f0086c06418bd7683f6ce88f826a1fc8a74ebfb6f3a2d7fd95aa2aadf2` |
| 2 | `theorem` | [descFactorial_mul_self_local](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/descfactorial-mul-self-local.md) | 91 | `result-track:83f11e9a249c920d8335e151fe9b12ee9ad75e3f8149218af36a4e1bb27b6ddb` |
| 3 | `theorem` | [pow_eq_sum_stirlingSecond_mul_descFactorial_local](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/pow-eq-sum-stirlingsecond-mul-descfactorial-local.md) | 102 | `result-track:ec24a3431631a88dc694d4256de52a04e60eb78302565e7ae214e8a8e76e4db3` |
| 4 | `def` | [thetaPhiSignedTouchardValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/thetaphisignedtouchardvalue.md) | 143 | `declaration-track:3f86a8ed7f2b1cd09ee6bcd86cccbd8fe79ab8adf7dcb62973486b5b5f4a3752` |
| 5 | `theorem` | [hasSum_signedTouchard](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/hassum-signedtouchard.md) | 150 | `result-track:2ec3c53b6a15b41c6b2498ded9f4b51ce5996d625e913439396e3c1f58b6ece0` |
| 6 | `def` | [thetaPhiGeneralizedSignedTouchardValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/thetaphigeneralizedsignedtouchardvalue.md) | 192 | `declaration-track:2ad686c133049152e6cf4397dd5f8e8a8f42019dc0c47ef3b311a1d445800c2e` |
| 7 | `theorem` | [hasSum_thetaPhiGeneralizedSignedPoisson](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/hassum-thetaphigeneralizedsignedpoisson.md) | 201 | `result-track:52d412132d8efdf6482f6312213855709d0864ee0a32ccbb47727061cd02b59f` |
| 8 | `theorem` | [thetaPhiGeneralizedSignedPoisson_tsum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/thetaphigeneralizedsignedpoisson-tsum.md) | 247 | `result-track:8e8edf7da54e59202c49a8495e77ee1b3b48a394af7e8ac8bb2bfe5a46dbc750` |
| 9 | `def` | [ThetaPhiBaseGeneralizedTouchardIdentification](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/thetaphibasegeneralizedtouchardidentification.md) | 260 | `declaration-track:70aacb054c52cd78b2a113f5cc362feb549b142bbffb1887b3b67c282d89d7fe` |
| 10 | `theorem` | [hasSum_thetaPhiBaseMode_signedMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/hassum-thetaphibasemode-signedmoment.md) | 267 | `result-track:4807e9c061bd46b07ff564078f222d44527ab9bf8a4e1232c2de46be7361606c` |
| 11 | `theorem` | [thetaPhiBaseSignedMomentRepresentation_of_generalizedTouchard](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NamespacedAlternative.lean/declarations/thetaphibasesignedmomentrepresentation-of-generalizedtouchard.md) | 299 | `result-track:d7610c51214fcdcd738114d81d466ef44868902285f0fee9b9141ac120c15d80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=162b3c8a03d4aaa01c1df70533b6d91544cef244f0ee1b2a6d207f861c783f1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
