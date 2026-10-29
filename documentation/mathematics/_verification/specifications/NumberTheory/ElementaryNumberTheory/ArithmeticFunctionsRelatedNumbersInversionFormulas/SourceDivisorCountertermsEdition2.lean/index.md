# Verification target: Source Divisor Counterterms Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a642b90cfbd3a2533d98f2b8bdda427b66213bcf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a642b90cfbd3a2533d98f2b8bdda427b66213bcf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 1; external provider; requires a separately pinned dependency.
- `SourceDivisorClassification` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceScaleVariation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [globalBaseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/globalbaseline.md) | 33 | `declaration-track:76f42e804d584afcf483bcfb44897864b750de3720e0ce0ceb9651995e592fae` |
| 2 | `def` | [divisorCounterterm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorcounterterm.md) | 37 | `declaration-track:0ee01dfe2ca03a88822973ee4c05f713dea918dedea7bc62311c16056a27f863` |
| 3 | `theorem` | [independentMainTerm_eq_baseline_add_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/independentmainterm-eq-baseline-add-divisors.md) | 43 | `result-track:d593d08940a3dd1746f92ac7a22bb147431dd82313d7c72786d541e2fc56c17b` |
| 4 | `def` | [divisorInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorinteraction.md) | 70 | `declaration-track:9143a1c3a8c576ee46d255efeb211934f05cfb95bfaabf81b77cbf92a8bb206b` |
| 5 | `theorem` | [plainTypeTwoOffDiagonal_eq_unmasked](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/plaintypetwooffdiagonal-eq-unmasked.md) | 74 | `result-track:f547b66b55aa2e6085d72a2281330143e94fd5cd7d798c50281353a84e28f932` |
| 6 | `def` | [divisorMultiplesInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisormultiplesinteraction.md) | 93 | `declaration-track:a33c680bba84f8113f24e1c19c47d3ef117ba06dded6b701bdeb0dbfc9a97e55` |
| 7 | `theorem` | [divisorInteraction_eq_mean_sub_multiples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorinteraction-eq-mean-sub-multiples.md) | 98 | `result-track:25b6b031db94bca8347cc75e7c7c4d9e680b858ca48eecf2475c2916d928f17e` |
| 8 | `def` | [divisorRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorremainder.md) | 116 | `declaration-track:50d13ca01cb2c8fc9ab2bdd3f9c7fc8734f195a8b55e9257c7a058209c014944` |
| 9 | `theorem` | [divisorInteraction_sub_counterterm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorinteraction-sub-counterterm.md) | 122 | `result-track:877a3a861f4c246d9c31697a02b1389e4a2393fbcd984ccad1266c186af9da29` |
| 10 | `def` | [jointSignedRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/jointsignedremainder.md) | 130 | `declaration-track:5725899f7cde270b7988dd28e0d893fd45c10bcf55850ad4905f70fb0a746b79` |
| 11 | `theorem` | [jointSignedRemainder_eq_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/jointsignedremainder-eq-covariance.md) | 134 | `result-track:d3c64ddfb166b38be5442adc0652fd9dbdd3c15014b746a9e4fd34f38b03102a` |
| 12 | `theorem` | [jointSignedRemainder_eq_aligned_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/jointsignedremainder-eq-aligned-divisors.md) | 142 | `result-track:30fd7859eb69e37d61ba91ac46b912b20052fcf3ba2228be2251d9021e057887` |
| 13 | `theorem` | [jointSignedRemainder_eq_divisor_remainders](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/jointsignedremainder-eq-divisor-remainders.md) | 155 | `result-track:188396aedf7fe3eb4f478e9657d4861e65c99cb50196a81ad99b69a0f719a8a4` |
| 14 | `theorem` | [divisorInteraction_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorinteraction-one.md) | 162 | `result-track:d9698b6e002083b7e62d3582c0ab217ac994136a21b620ff3bf57652b1d77216` |
| 15 | `theorem` | [divisorRemainder_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorremainder-one.md) | 167 | `result-track:5e0b3274ec8483ee46ec953f6695a596a70d28eeb2d077a5f338f150e906daf0` |
| 16 | `theorem` | [cutoffs_eventually_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/cutoffs-eventually-eq.md) | 173 | `result-track:a76eebcf14ce1e60ae854af0a10261a8486e95fb4c801a04e15bfe1d3884c837` |
| 17 | `theorem` | [mangoldtProfile_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/mangoldtprofile-contdiffat-between-cutoffs.md) | 186 | `result-track:f7d7d199ee715a14e4804965b2bac270047f50a41a722786ac318f0b52a9bdd4` |
| 18 | `theorem` | [centeredProfile_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/centeredprofile-contdiffat-between-cutoffs.md) | 197 | `result-track:4abe3f333d7ffef866d545cfc946b2fb1bcc6f6acb04c9d5aebc154685fea689` |
| 19 | `theorem` | [jointProfileProduct_contDiffAt_between_cutoffs](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/jointprofileproduct-contdiffat-between-cutoffs.md) | 208 | `result-track:810371edebf7731afaf1012203a3c920362ef1c4f957797d69fcabb3352b25a6` |
| 20 | `def` | [DivisorRemainderTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorremaindertailupperbound.md) | 217 | `declaration-track:1c728f06de0705e29b1bc6080f72a16bb3a5504943636cec91d39518cdee9784` |
| 21 | `theorem` | [divisorRemainder_tail_iff_original_target](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorremainder-tail-iff-original-target.md) | 223 | `result-track:281c84a7b5dcc9476395a3a5e6802e18cd3c63172cb51292f5e1504c10c7a9d8` |
| 22 | `theorem` | [divisorRemainder_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorCountertermsEdition2.lean/declarations/divisorremainder-tail-iff-residual-tail.md) | 242 | `result-track:5daeb93c43e3524d095df83efe43f27e5fb420f4854f93cbe74148ad98e2c489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a576080cb5327da348d322ba7ff8acaf10b25b634e2419970895979ef4fdeb80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
