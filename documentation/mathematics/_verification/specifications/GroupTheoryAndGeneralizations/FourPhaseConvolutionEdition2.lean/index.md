# Verification target: Four Phase Convolution Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc185e837776a7e01e87c26dc0eba94b301d77db",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc185e837776a7e01e87c26dc0eba94b301d77db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ComparatorMargin` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThreePhaseCore](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/threephasecore.md) | 44 | `declaration-track:97aea1024cefb8feaa8a07d42da469bd930302ebf233d3d6c04836535fefa1d6` |
| 2 | `def` | [phaseIEnergy](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseienergy.md) | 62 | `declaration-track:d7d587ef15350bdd2822bf1d833789ae75839c193c88609e17ae0b5ad0b1a74c` |
| 3 | `def` | [phaseIIEnergy](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiienergy.md) | 66 | `declaration-track:fffcf407000446c0d92219c0811a414364f5387d2426f7d212436eb8c5bea886` |
| 4 | `def` | [phaseIIISensitivity](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiiisensitivity.md) | 70 | `declaration-track:a3061635eafaec2b2f0300cb6028bcacd51fcd9a17f57cd069fa34a76f6494f7` |
| 5 | `theorem` | [phaseIEnergy_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseienergy-eq.md) | 74 | `result-track:73740e349002f02924b0f91620b90f206401186506b3d7637587616725d75155` |
| 6 | `theorem` | [phaseIIEnergy_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiienergy-eq.md) | 79 | `result-track:7ee6f75a0170290d41de67df24ac6f372ba92471d447c89f9dc7d178ecb9406e` |
| 7 | `theorem` | [phaseIIISensitivity_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiiisensitivity-eq.md) | 84 | `result-track:5702682508c076cd0acfc85a5a67e51f18530111ffbc781f6141c5f0a945f6ef` |
| 8 | `theorem` | [phaseI_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phasei-nonnegative.md) | 90 | `result-track:bc8005c94b56b61fad6ca254379682532ee751615eda6b86db517a6804396439` |
| 9 | `theorem` | [phaseII_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseii-nonnegative.md) | 95 | `result-track:9a30fba8c80c40c557205d2381137ec8e8150b5bbf7c4526e5f83184325ca3c6` |
| 10 | `theorem` | [phaseIII_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-nonnegative.md) | 100 | `result-track:4fe2bc762c60b3084e77bb227293ada2206eb91f48bc846f808cd4890c1925ca` |
| 11 | `theorem` | [phaseII_le_phaseI_autonomous](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseii-le-phasei-autonomous.md) | 106 | `result-track:891fdffd6b6d6a16f221d18743634f78e99fcadb03a8300a02487580f0d4e33a` |
| 12 | `theorem` | [phaseIII_le_phaseII_differential](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-le-phaseii-differential.md) | 124 | `result-track:bb2f081ef8769b44578a9e33065c55f7724a5eeced8ad207930e2c179a6a1979` |
| 13 | `theorem` | [three_phase_energy_chain](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/three-phase-energy-chain.md) | 133 | `result-track:60010afadadea5e9e10ee7390a537399c76181edc8d00c66e6f1a93e10285b60` |
| 14 | `theorem` | [phaseIII_positive_zeroComparator_gap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-positive-zerocomparator-gap.md) | 146 | `result-track:b3f361b32e94ef6ee275a1f47bb2aaab48c62a11802150e83fa8e4422e70b6fc` |
| 15 | `theorem` | [phaseIII_positive_not_all_comparators_separate](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-positive-not-all-comparators-separate.md) | 155 | `result-track:464ea5e6ca32f68936558831c6b7695b1c8965c888ecd37afb697f055d0f76a9` |
| 16 | `theorem` | [phaseIII_positive_iff_visible](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-positive-iff-visible.md) | 165 | `result-track:b86d872feda215960187fb379c5db1f4615cf0a89023a2baccdf85820e93abfb` |
| 17 | `structure` | [FourPhaseComposition](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/fourphasecomposition.md) | 175 | `declaration-track:5093053a741852877d1950ba1dc8f5a416dfff42b107f96d0be872fdc0996b25` |
| 18 | `def` | [phaseIVGap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseivgap.md) | 192 | `declaration-track:20aef61d37c91c92d20456bf3bebbe023aa0f556b32bdb0255cc5c0258b4f217` |
| 19 | `theorem` | [phaseIVGap_eq](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseivgap-eq.md) | 196 | `result-track:58721787f2662639b4e933a4b2c3fe2f484b4b74c0d1275b429d3febdb864f3b` |
| 20 | `theorem` | [phaseIV_nonnegative](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiv-nonnegative.md) | 202 | `result-track:56db025b9bb91669f3924df22f1292f7e391368db618f367d6c18f3ac86c96a7` |
| 21 | `theorem` | [phaseIV_lower_bound](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiv-lower-bound.md) | 207 | `result-track:b05bd086ab745994833b4107d510e65fee7a146dc139e4c829d9a531225377ee` |
| 22 | `theorem` | [four_phase_energy_chain](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/four-phase-energy-chain.md) | 213 | `result-track:452303fa9c6aeef78d5a33841d0f1ac023e8e5c733fefd8b324497da4bc97a38` |
| 23 | `theorem` | [positive_phaseIII_implies_positive_phaseIV](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/positive-phaseiii-implies-positive-phaseiv.md) | 229 | `result-track:dc10665de87edc17e1a145958d89f04bd6207f922cf6fcb66eb8c7ddf61226ae` |
| 24 | `theorem` | [phaseIV_to_qualitative_complete](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiv-to-qualitative-complete.md) | 243 | `result-track:c52cf4e0e08383b51e8001c5a0148d9d6e5d40b78c6320796c76d9f52e0d9fc7` |
| 25 | `theorem` | [phaseIII_zero_of_phaseIV_zero](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/phaseiii-zero-of-phaseiv-zero.md) | 249 | `result-track:d42626fbb0568a5ba5e9a5725f368c2a558ccaadc64ef5e2a9f6edd0c20f8476` |
| 26 | `theorem` | [visible_projectedDifferential_implies_positive_gap](../../../../GroupTheoryAndGeneralizations/FourPhaseConvolutionEdition2.lean/declarations/visible-projecteddifferential-implies-positive-gap.md) | 256 | `result-track:6abe34cd9b9430bc7ff8d7c5b499ecb907ea173d325586e8b621ba48a1451804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e41d7f2f382f0224b887561d7d58ca9c0910a5ad744a25b0898adf27c2b61a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
