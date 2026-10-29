# Verification target: ANegative Mixed Block Of The Literal Arithmetic Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ca3172d96ac465d3e963531019f26a115a85a1b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ca3172d96ac465d3e963531019f26a115a85a1b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDivisorLatticeKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.QuadraticDefect` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrepancyCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/discrepancycoefficient.md) | 31 | `declaration-track:f2fcc6fe23cb5d5f9f4305f0c3b907eb4d720609a3a8ce32b4d260c7c8161980` |
| 2 | `def` | [expandedAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/expandedatom.md) | 35 | `declaration-track:f62757df4bfa278e6badc60ab999acd47d56a6d4b3bbdd744ec1a2fbdbbe6680` |
| 3 | `def` | [arithmeticInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/arithmeticinventory.md) | 41 | `declaration-track:e46520cfbbe8b1cd1939e4a31ca5b9ab439e701b52ad947c5809c0ded85591ce` |
| 4 | `theorem` | [moebius_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/moebius-four.md) | 43 | `result-track:45fbc00c7087bdd63bd12a387e74b866c2a5876b91520fc60ca0074f39a1b490` |
| 5 | `theorem` | [discrepancyCoefficient_four_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/discrepancycoefficient-four-five.md) | 47 | `result-track:1e598ba15e880235ae65cee0092da644cc6839adf73e24bb46d439759213496c` |
| 6 | `theorem` | [discrepancyCoefficient_four_eight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/discrepancycoefficient-four-eight.md) | 53 | `result-track:3509e73e1b6401230126252d0c09025d6ab54ba9db50908d3b076d509223dd89` |
| 7 | `theorem` | [five_eight_patterns_distinct](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/five-eight-patterns-distinct.md) | 59 | `result-track:d3e840cb4611bf3995016cab0a1c7faa289829ddfc460ffdb3c5ab252ec53f62` |
| 8 | `theorem` | [five_eight_mem_actual_inventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/five-eight-mem-actual-inventory.md) | 65 | `result-track:58c5c1c212deccb541610989606f39cc2de26444f75780773aa902f237654fed` |
| 9 | `theorem` | [mangoldt_eight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/mangoldt-eight.md) | 74 | `result-track:77eb755ba73fe6dfca266263740fd19441fd84f9a0c7559c090f45b425bdd74e` |
| 10 | `theorem` | [five_eight_mixed_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/five-eight-mixed-identity.md) | 79 | `result-track:c61372a58b2072287581345b13492f69f760323d3e099a1cae19aed3e54c6ee8` |
| 11 | `theorem` | [five_eight_mixed_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/five-eight-mixed-neg.md) | 91 | `result-track:e067a048bf6ec274959d1572decac5d9513d534b5c66360e459fe462ae25444a` |
| 12 | `def` | [arithmeticMixedMatrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/arithmeticmixedmatrix.md) | 102 | `declaration-track:fa9368057542018aadf144ca5e997b4e52447dde1c04ff6e40e727c180241e66` |
| 13 | `theorem` | [arithmeticMixedMatrix_hermitian](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/arithmeticmixedmatrix-hermitian.md) | 107 | `result-track:1d4fac9805274468dfce4b788f683d62a3ee15b614ae487116a8af98aed844db` |
| 14 | `def` | [fiveAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/fiveatom.md) | 119 | `declaration-track:153a0e6dc375191c727870507b57091dc2bef5adcb514cee14661ceec77a47de` |
| 15 | `def` | [eightAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/eightatom.md) | 122 | `declaration-track:1ddc3b5c87374a4dc717869fbec67bfa81c77b816005f5d2f0b92d723310d791` |
| 16 | `theorem` | [actual_matrix_negative_cross](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/actual-matrix-negative-cross.md) | 125 | `result-track:9970938c99d5f09eeb8dd8f23418893fc1cc2fae1b08d5588d1163be8a18b02c` |
| 17 | `theorem` | [actual_matrix_not_supermodular](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ANegativeMixedBlockOfTheLiteralArithmeticSource.lean/declarations/actual-matrix-not-supermodular.md) | 141 | `result-track:14ac938bd4681527f7095c4bd91dd4d5b31e91a905511a3daa0b88b3123afe58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a7e8e93a37d432ace70ec1e56fbfa8ab89921458ec56b1aecc063cdba95d958 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorLatticeArithmetic/Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
