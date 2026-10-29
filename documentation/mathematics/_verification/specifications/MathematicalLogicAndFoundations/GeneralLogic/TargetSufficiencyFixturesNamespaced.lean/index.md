# Verification target: Target Sufficiency Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85da91058800bbb0a5e10c95369b84a90817a35f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetSufficiencyFixtures/Variantce5af0aa72e510f627b28f310ffef02ca9dcce9f064768e59209e61dd474026f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85da91058800bbb0a5e10c95369b84a90817a35f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetSufficiencyFixtures/Variantce5af0aa72e510f627b28f310ffef02ca9dcce9f064768e59209e61dd474026f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetSufficiencyFixtures/Variantce5af0aa72e510f627b28f310ffef02ca9dcce9f064768e59209e61dd474026f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.TargetSufficiency` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/source.md) | 24 | `declaration-track:143d32f5ebd542d596903be2822ea64edf766a94d7f0cf34dfbd70329b195b4d` |
| 2 | `def` | [profile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/profile.md) | 28 | `declaration-track:92eae33bdbfec8b6b7f920c4443de87b2561bed772e1ddffab7a169bc6560e34` |
| 3 | `def` | [state](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/state.md) | 30 | `declaration-track:e75c1da4d91b243c2825dbc0f88dc58b42b24a633457be4de57be77a0a649f16` |
| 4 | `theorem` | [positive_image_roundtrip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/positive-image-roundtrip.md) | 35 | `result-track:6217e0580247c3a4bacb33f64334d3f2b501689244b37c5d8e81ee249840ce41` |
| 5 | `theorem` | [false_target_record_exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/false-target-record-exists.md) | 39 | `result-track:7b302ee9993311c04e31bc621a53ce701829c9b5c78d9b99a6476ac7efe079f8` |
| 6 | `theorem` | [changed_commit_separates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/changed-commit-separates.md) | 43 | `result-track:29fa11bd1f7068a270aade2cf584ade59545324880366bbbe8c817e5a51c609c` |
| 7 | `theorem` | [changed_tree_separates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/changed-tree-separates.md) | 48 | `result-track:5fb511cc46cb0ea37d4dbbe6a1384b67e88b4c4909e5c830bdf0ee3a0caeca7e` |
| 8 | `theorem` | [changed_toolchain_separates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/changed-toolchain-separates.md) | 53 | `result-track:083ae71bd8794a2a7bbacfa6c9db138cbed3ef3d19897389842dd0d87745787c` |
| 9 | `theorem` | [changed_manifest_separates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/changed-manifest-separates.md) | 59 | `result-track:cc74fd7d7ab05f836ba903fa7e1615cab057e6f2b8e6e361ae98560887ab1f63` |
| 10 | `theorem` | [changed_profile_separates](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/changed-profile-separates.md) | 65 | `result-track:580cf284dca682cca96382b5244a1e41807e38f3eb3854341f788f4ccdbdc457` |
| 11 | `theorem` | [output_only_compression_loses_provenance](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/output-only-compression-loses-provenance.md) | 71 | `result-track:8fafa62b4acac5a44727d0bd068544f8482cb62bfd3de5f3c5520c2b00ed39ae` |
| 12 | `theorem` | [proof_irrelevance_erases_proof_payloads](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/proof-irrelevance-erases-proof-payloads.md) | 79 | `result-track:2d927a434b79398fa6e096ad73e8ca94eab627ec6ff81d0f5fe085c7b2e471f3` |
| 13 | `def` | [positiveJurisdiction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/positivejurisdiction.md) | 83 | `declaration-track:8b4d88cfbfadd8b6d601322da5f56a87e842dc70b5347a3a3c79faaa8816141f` |
| 14 | `def` | [positiveReplay](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/positivereplay.md) | 89 | `declaration-track:16e863f7c150de57e376a6d72604bb7d91f843c97dfa9d16fbd6b785a2ff469b` |
| 15 | `theorem` | [positive_replay_descends](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/positive-replay-descends.md) | 99 | `result-track:c0903a1b22960465923ecf84f17f758b4c2faf63b9350b0f9718f036f614e350` |
| 16 | `def` | [rejectingJurisdiction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/rejectingjurisdiction.md) | 103 | `declaration-track:42e61d5b379677fa047b13c47340fc052f5ac01e13372eba74819c92b161aabc` |
| 17 | `theorem` | [remote_flag_does_not_descend](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/remote-flag-does-not-descend.md) | 109 | `result-track:d76a2696b4e6ee6ccdf6a5230068e4843c1eabb503dbf43cc280493d1b2c596b` |
| 18 | `theorem` | [positive_replay_without_permission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/positive-replay-without-permission.md) | 115 | `result-track:6afdd460c6cd677b35688327191c7f73a18783a85f5847e2e73ae93d36db4780` |
| 19 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TargetSufficiencyFixturesNamespaced.lean/declarations/example.md) | 122 | `declaration-track:7a71509c1dc0e686d752cb187b6286b6cace556ee2d91e7c7678a1429e73b3b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=290188151c91b3a4a6fa5a778514cafca2f0af4f5a8f8a0133068c128b82fd78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetSufficiencyFixtures/Variantce5af0aa72e510f627b28f310ffef02ca9dcce9f064768e59209e61dd474026f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TargetSufficiencyFixtures/Variantce5af0aa72e510f627b28f310ffef02ca9dcce9f064768e59209e61dd474026f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
