# Verification target: Estimate Vaughan Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ee23cef460cdbcfce5ec180a267e4b4de75327",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ee23cef460cdbcfce5ec180a267e4b4de75327`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceLower_le_sourceUpper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sourcelower-le-sourceupper.md) | 28 | `result-track:f1b380d6d4944ca6ceb3cbe1d0017b02244be1b43b96ae4f852d948aaafd9154` |
| 2 | `def` | [vaughanCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/vaughancutoff.md) | 39 | `declaration-track:237181fffb4d91401db038d3026c641146616b7ac866417c81571ec9e3212a45` |
| 3 | `def` | [shortMangoldtSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/shortmangoldtsource.md) | 42 | `declaration-track:dc8cc2cacb4d0688371fabb40f21f6fd1939e9a52d5dcbe71535cfd0da427b6b` |
| 4 | `def` | [shortLogSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/shortlogsource.md) | 46 | `declaration-track:c738081cad35b850619bcd44e615e37198e64bda405465933cb474cd8bf9c4d6` |
| 5 | `def` | [shortPlainSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/shortplainsource.md) | 50 | `declaration-track:bc3a7261f271db4e5c8f1c4c701a23027ee6dcf7c80792d84553b0712660eea5` |
| 6 | `def` | [typeTwoSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/typetwosource.md) | 55 | `declaration-track:5e55f9d292e032d0a03d1ce022004b25d805b386b6c0c7d31a673ef0f164dd22` |
| 7 | `theorem` | [vaughanCutoff_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/vaughancutoff-pos.md) | 62 | `result-track:708d9b35f950875679c9ae24bf70f3aab1635d212ea7e76267ae2a9800b1b555` |
| 8 | `theorem` | [vaughanCutoff_le_sourceKernelCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/vaughancutoff-le-sourcekernelcutoff.md) | 67 | `result-track:dc884e2e6d26869f8000e9152f5b29e4d5a78b8a8930fad8afe85b5722a0b2a6` |
| 9 | `theorem` | [sqrt_vaughanCutoff_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sqrt-vaughancutoff-le.md) | 71 | `result-track:a1a67848a94116d6460f85ff7e54bacbc15c4bdd23d5839c5b696573d7ac695a` |
| 10 | `theorem` | [sourcePlainWeight_nat_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sourceplainweight-nat-eq.md) | 77 | `result-track:cb5a02280564680a37de3dc8a8e11edc4e9bb7c079142b93be77e405e9a667e9` |
| 11 | `theorem` | [sourcePlainWeight_upper_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sourceplainweight-upper-zero.md) | 85 | `result-track:1b5decb88cc61082117a8ea3ebcfcd1d85746e4136060931b5096dc3a845197a` |
| 12 | `theorem` | [sourcePlainWeight_zero_of_cutoff_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sourceplainweight-zero-of-cutoff-lt.md) | 92 | `result-track:c2569c3a80a2ac41a720e7e47cec743cc6917162f3d400604acd00e5b42c9508` |
| 13 | `theorem` | [sourceMobiusKernel_eq_plainWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/sourcemobiuskernel-eq-plainweight.md) | 104 | `result-track:79fe3c371cf14f753cb3a5fa6fe2c7dead0ec96a7f171bbf97c7ea0c976ef053` |
| 14 | `theorem` | [typeTwoSource_eq_rectangle](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/typetwosource-eq-rectangle.md) | 115 | `result-track:76e3235538cf432e8d954cc52d7fc2ed16883769d7a2be186203c56ef99344e2` |
| 15 | `theorem` | [mertensResidual_eq_plainWeight_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/mertensresidual-eq-plainweight-sum.md) | 148 | `result-track:11028d24ddd38809058e198764012ea81cc3c12bbf90d5a0a8dac6bb8f62dcba` |
| 16 | `theorem` | [mertensResidual_eq_vaughan](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/mertensresidual-eq-vaughan.md) | 173 | `result-track:e8847c92ec3876eed6627ea73e0b758d4de18d2f54b1b5fc5172b88e53638326` |
| 17 | `theorem` | [mertens_residual_tail_iff_signed_typeTwo_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateVaughanSource.lean/declarations/mertens-residual-tail-iff-signed-typetwo-tail.md) | 195 | `result-track:943c01975c8c4341838ef58f3351cf2086502137094c55c432c3695378a21c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acef9370bf8a8ea09b9c9d1ce5c2ef6e75203bddaea8c5435392aded8af299cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant7d4a597dd2dbf6878511a529ab580efe4cac6374c6982f02f0fa4b61578de7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
