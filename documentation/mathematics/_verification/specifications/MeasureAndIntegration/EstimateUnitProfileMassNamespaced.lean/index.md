# Verification target: Estimate Unit Profile Mass Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92d5d4531b50f24511be952bf0c9d666c2c28982",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variant2676e99424eafb88e633ffeb5a2854e74f322d63762ce1dd78c58eec7ac27c90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92d5d4531b50f24511be952bf0c9d666c2c28982`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variant2676e99424eafb88e633ffeb5a2854e74f322d63762ce1dd78c58eec7ac27c90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variant2676e99424eafb88e633ffeb5a2854e74f322d63762ce1dd78c58eec7ac27c90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateNormalizedSourceProfile` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitProfile_eq_indicator](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/unitprofile-eq-indicator.md) | 31 | `result-track:f8677826d9a879d0d362ee6e755682697ec5b3223a7deb7448c850e7a601a676` |
| 2 | `theorem` | [unitBump_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/unitbump-integral.md) | 56 | `result-track:da9c3aed8ecc82079edd55d4a2139119a170879a85283c3113e96dc16065f3b2` |
| 3 | `theorem` | [unitSecond_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/unitsecond-integral.md) | 69 | `result-track:0fe5c206186e6e712a391ad2b6b5ce288d3ccce4764b1074620ac914af166370` |
| 4 | `theorem` | [unitProfile_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/unitprofile-integral.md) | 78 | `result-track:899bbbd74426c326f7ccbfb14efea1726e025195fe37a1e5ba152e98572172cf` |
| 5 | `theorem` | [sourceNormalization_le_one](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/sourcenormalization-le-one.md) | 88 | `result-track:f6046b74bfbdb9af8bbc2c3e3a9c45413691f17b0884b72fea918e2434da57b9` |
| 6 | `theorem` | [sourceNormalization_le_41](../../../../MeasureAndIntegration/EstimateUnitProfileMassNamespaced.lean/declarations/sourcenormalization-le-41.md) | 101 | `result-track:a5aae5dbf8f30517512d5e4e978b8ae1a6e2b082f3762ec14ba7f11beb4e3849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=305cbc3ee66c91c14386ea1db3b22c87f3b57fbc9a382c6295ed114233dddeb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variant2676e99424eafb88e633ffeb5a2854e74f322d63762ce1dd78c58eec7ac27c90.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variant2676e99424eafb88e633ffeb5a2854e74f322d63762ce1dd78c58eec7ac27c90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
