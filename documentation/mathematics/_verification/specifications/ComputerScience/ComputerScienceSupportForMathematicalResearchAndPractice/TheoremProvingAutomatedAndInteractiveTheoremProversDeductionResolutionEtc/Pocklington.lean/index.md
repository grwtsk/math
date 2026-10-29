# Verification target: Pocklington

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c1b10936ddf9673d6608c8057531ce7b793927a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeCert.Meta.SmallPrime` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeCert.PredMod` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeCert.PowMod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ChineseRemainder` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.pairwise_iff_toFinset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/list-pairwise-iff-tofinset.md) | 30 | `result-track:b0bf0af7ba72f9cd847c950be53396e18d930d1343a09be4d4ea36c9e1f00423` |
| 2 | `theorem` | [Nat.modEq_finset_prod_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/nat-modeq-finset-prod-iff.md) | 36 | `result-track:6ba7cef7e896ca6070b26b7fe21cc40367db16a2176993a4cff04950a84cef58` |
| 3 | `theorem` | [multiplicity_zero_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/multiplicity-zero-right.md) | 45 | `result-track:9fc13cb9129e6dee306dfb55a55dccc60d8e96f13592c5008b286c47dde17bbd` |
| 4 | `theorem` | [Nat.modEq_iff_forall_prime_dvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/nat-modeq-iff-forall-prime-dvd.md) | 48 | `result-track:2829e57f7b78c130ef426902b274f10733020e724b591bff3140ead1e74cb8df` |
| 5 | `theorem` | [Nat.pow_multiplicity_dvd_of_dvd_of_not_dvd_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/nat-pow-multiplicity-dvd-of-dvd-of-not-dvd-div.md) | 69 | `result-track:99654d98f8e1e49ebdf6426bdafe8e2d27b86e71de8a68c1082968e6d4332c49` |
| 6 | `theorem` | [pocklington_test](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklington-test.md) | 100 | `result-track:5916d397353ce6c92107666cee528e1a143d0bff14db3901fab164a5f7cdcf5d` |
| 7 | `def` | [PocklingtonPred](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred.md) | 141 | `declaration-track:37c026efa7b850ba2fb2a852fb0a34443a988c9f56753a1debbf0aac80bef3fe` |
| 8 | `theorem` | [pocklington_certify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklington-certify.md) | 144 | `result-track:a642609162e42bcfb59769ef70898a9d64ab528f49011c2707f24d6cebdd5822` |
| 9 | `theorem` | [pocklington_certifyKR](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklington-certifykr.md) | 159 | `result-track:106848d68e1015c0b417e4b2ae262f967e1fd5623788e6f0298db8d692eb5767` |
| 10 | `theorem` | [PocklingtonPred.zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-zero.md) | 170 | `result-track:a304e591b7fbb4b13837543e20d4bbad6335cb2426c514459ac4495ac91386d1` |
| 11 | `theorem` | [PocklingtonPred.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-one.md) | 174 | `result-track:54053396462b0a4ce3189f26c6489c0ae8e6b0a2ee4aedb3a095329e4ec6e39c` |
| 12 | `theorem` | [PocklingtonPred.step_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-step-pow.md) | 178 | `result-track:5552b0e92af9cdae73cf16c39967cdae621eb1306167c89e080b4392d742c9bf` |
| 13 | `theorem` | [PocklingtonPred.step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-step.md) | 208 | `result-track:4ace396471cca041c7eca8ffd78992b7cae1e93055d170c92314ac2c624ad18e` |
| 14 | `theorem` | [PocklingtonPred.base_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-base-pow.md) | 216 | `result-track:f85ed3ad157e0946bceecfafd3cbc2a854c6d45feac45b0ca2077f9602a1f419` |
| 15 | `theorem` | [PocklingtonPred.base](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/pocklingtonpred-base.md) | 223 | `result-track:5bc252fde6335676881eefc83b881681f52c83ddd42f6cdd3c95f79d5b9287ba` |
| 16 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/syntax-source-edition-3.md) | 235 | `declaration-track:dadd228c7d8c6214cc2d9ac69fb6eb44e76d958d61ee0a495bbbe86834b65b45` |
| 17 | `inductive` | [PrimePow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/primepow.md) | 237 | `declaration-track:15629a52f28f3e3086ff56adbfb3c8f7acdc7ea7a1416ea67b82554c93cb75d2` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/instance.md) | 240 | `declaration-track:3097b3a7c0f458feeab26dfbe5c5ee3c00acf4d3ba45c9bf80c1f9bc0549771e` |
| 19 | `def` | [parsePrimePow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/parseprimepow.md) | 245 | `declaration-track:f5e36957f6fc8c0f7b8d635ea317469f9b9733f05a463093f5d6c094ebaae368` |
| 20 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/syntax-source-edition-2.md) | 257 | `declaration-track:b9811ba6a9fbaa582d9aa4cf66bf81f769a951d26c43c17b423acf4f9209e38a` |
| 21 | `def` | [parseFactored](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/parsefactored.md) | 259 | `declaration-track:43b493f3a04e80f507ce36c5b4145189ce51aa664c5b9bbf9da23234ebb829ec` |
| 22 | `def` | [mkPockPred](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/mkpockpred.md) | 271 | `declaration-track:23ee32c9cd75a5b0327778fbdb46a1729260d4aefbca18b904c2e8d3c3812c82` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/syntax.md) | 305 | `declaration-track:06f9caa4fb7d94b20889cce7f3c68634e0a9e6e697ce5f63bba07208f68f8a7f` |
| 24 | `def` | [parsePockSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/parsepockspec.md) | 307 | `declaration-track:0ef68f02851fe208d8152c154b41fa8d6cdae4deebe96a97f8c9ec0c6b4db8ae` |
| 25 | `def` | [PrimeCertExt.pock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/primecertext-pock.md) | 321 | `declaration-track:e7bc531671fe3706191251cc98872952ad924be26244135105fc9914666a5f39` |
| 26 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Pocklington.lean/declarations/elab.md) | 352 | `declaration-track:0e2b3246303ddc2e50b8bb902449b0ca1e18685f171d227eb5dbe7ebb0590edb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04b05cf04ac4f3cba65665e2dc2d60ab13d039f8a827b2d5cfb0512ebdae3a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
