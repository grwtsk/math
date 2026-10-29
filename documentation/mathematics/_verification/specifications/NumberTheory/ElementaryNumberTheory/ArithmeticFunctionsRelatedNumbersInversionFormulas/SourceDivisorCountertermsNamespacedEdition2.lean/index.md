# Verification target: Source Divisor Counterterms Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c5c9a14769e92846bf72ff2a71a4f985d96d00",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c5c9a14769e92846bf72ff2a71a4f985d96d00`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 6; external provider; requires a separately pinned dependency.
- `SourceDivisorClassification` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceScaleVariation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [globalBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/globalbaseline.md) | 41 | `declaration-track:504bcfb0123141d2e301a35d4fc53cd7f2f93bf738acb967291013883ddad84a` |
| 2 | `def` | [divisorCounterterm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorcounterterm.md) | 45 | `declaration-track:5dff7165a469a3a07036f562bee8f9d175aa6afbceeefc606cccb711d41e1f87` |
| 3 | `theorem` | [independentMainTerm_eq_baseline_add_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/independentmainterm-eq-baseline-add-divisors.md) | 51 | `result-track:2cde783cb3ed8dc3e54cd579e72024c038293694b1a9c4121ac0c2cbd5efbf73` |
| 4 | `def` | [divisorInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorinteraction.md) | 78 | `declaration-track:0295b8f00234ddb28bcef933e2bf8a1eebcb889386023caa429eb533e1c24e89` |
| 5 | `theorem` | [plainTypeTwoOffDiagonal_eq_unmasked](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/plaintypetwooffdiagonal-eq-unmasked.md) | 82 | `result-track:fe1ea29c921e1888a7c408fb5804318b8c505cfc0895bbe19c87bb09b58d3bc9` |
| 6 | `def` | [divisorMultiplesInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisormultiplesinteraction.md) | 101 | `declaration-track:cf34a357b8dbf31838b3ddc23ad221b0c47732703ae56069666e23677dce05a9` |
| 7 | `theorem` | [divisorInteraction_eq_mean_sub_multiples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorinteraction-eq-mean-sub-multiples.md) | 106 | `result-track:80ac289544b564aeb6c40f4e39b7fe99add76e7b59326badd20f7599f7610916` |
| 8 | `def` | [divisorRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorremainder.md) | 124 | `declaration-track:352ad24bcc708e212e6738232db4de711f584bf4b1c1d8309898421d84bb2899` |
| 9 | `theorem` | [divisorInteraction_sub_counterterm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorinteraction-sub-counterterm.md) | 130 | `result-track:e488bf5eef699107b1c2fca67199a032f98dde718bcadbde4e014f29a92b105f` |
| 10 | `def` | [jointSignedRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/jointsignedremainder.md) | 138 | `declaration-track:bde6a074291b8aa3783795fee490059c122230e911c58bf7b9c7dfc12c661997` |
| 11 | `theorem` | [jointSignedRemainder_eq_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/jointsignedremainder-eq-covariance.md) | 142 | `result-track:01fca2de5e185f6ce69f01e9f89d4469449babdbce322466535f10a76709faec` |
| 12 | `theorem` | [jointSignedRemainder_eq_aligned_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/jointsignedremainder-eq-aligned-divisors.md) | 150 | `result-track:48789798d51a6d52e5691792ea2c4e403dfa67972d570b9eade545bce87e1907` |
| 13 | `theorem` | [jointSignedRemainder_eq_divisor_remainders](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/jointsignedremainder-eq-divisor-remainders.md) | 163 | `result-track:0dd6bc98302a4c447c414ac7903a19bbc8182264bda42b908b66db823f82b826` |
| 14 | `theorem` | [divisorInteraction_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorinteraction-one.md) | 170 | `result-track:4f41dd495635955d1e5d2ad8b9f7897b4d359151b69982fa5bfc007968008368` |
| 15 | `theorem` | [divisorRemainder_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorremainder-one.md) | 175 | `result-track:01d497fe7450096cd773e53acf51121ccd8e8b2ec8a9e8897b5e7605431f0e3d` |
| 16 | `theorem` | [cutoffs_eventually_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/cutoffs-eventually-eq.md) | 181 | `result-track:4aeddf5a8796bd8c25bf84b92b8c564b03400be6867a44042aa60970bc562c66` |
| 17 | `theorem` | [mangoldtProfile_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/mangoldtprofile-contdiffat-between-cutoffs.md) | 194 | `result-track:1f132547d79452c0504ea85c04c4e529693e4c32d17f112a4b222b8b97d06ed5` |
| 18 | `theorem` | [centeredProfile_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/centeredprofile-contdiffat-between-cutoffs.md) | 205 | `result-track:0a88e01c0766e71aa265925f9214fc64b4fee981b11f9cc7e661e1d62ba5af84` |
| 19 | `theorem` | [jointProfileProduct_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/jointprofileproduct-contdiffat-between-cutoffs.md) | 216 | `result-track:891012e3d9ef99204b65bd25d961ff0589cec0c82b4c963d6c9eee1ab7ef6eb1` |
| 20 | `def` | [DivisorRemainderTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorremaindertailupperbound.md) | 225 | `declaration-track:3cca36f243b3f1c2a36bb6320841ee100a6606b7845ff9f099d2fea5b9282be4` |
| 21 | `theorem` | [divisorRemainder_tail_iff_original_target](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorremainder-tail-iff-original-target.md) | 231 | `result-track:647599ecfcce08d0b7bdecff71cf215fe0527d281de97aaa57522067263f110c` |
| 22 | `theorem` | [divisorRemainder_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsNamespacedEdition2.lean/declarations/divisorremainder-tail-iff-residual-tail.md) | 250 | `result-track:4077b0dc8b2400ea728d904c075437921189f6c91d2aad76c531c48ce21aea5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b3738651894562ecdaebd29630bcd259118987797eb2e244617a58c7a5fb307 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variantd3208ddacdaedf4843b9837c43fc4c6d88840b10e1509d639ae972c8bc04683d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
