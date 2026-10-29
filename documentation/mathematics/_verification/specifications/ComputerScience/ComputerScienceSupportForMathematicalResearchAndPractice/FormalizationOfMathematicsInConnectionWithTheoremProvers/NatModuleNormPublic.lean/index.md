# Verification target: Nat Module Norm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f600b168c5cb314273f3cc50c518ec89e3df2654",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f600b168c5cb314273f3cc50c518ec89e3df2654`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.AC` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/expr-denoten.md) | 17 | `declaration-track:b3eef21d648db623a2b78c9ac6c2cd8de2460635d86663d44b2191f2d1765f11` |
| 2 | `inductive` | [Poly.NonnegCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-nonnegcoeffs.md) | 24 | `declaration-track:e0ae22f1f960cf165c6a5dcd6adc5f4c472c4314f2ec6d5974a235a981ae95b4` |
| 3 | `def` | [Poly.denoteN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten.md) | 28 | `declaration-track:ec530d566b3e67e30cc7074b1e6e4bcd9e91e3fc77cc3a2d789ce587e15eeb95` |
| 4 | `theorem` | [Poly.denoteN_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-nil.md) | 37 | `result-track:29d07aaa20fed13a0f5e633b0d9955c89aa94f814de9900b9131c54500009236` |
| 5 | `theorem` | [Poly.denoteN_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-add.md) | 39 | `result-track:910268b51171269cd7d9de37f960eb46ff32c36f54c3077cacaf26c27f5b0915` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/instance.md) | 52 | `declaration-track:1ca8d071062225d2da04d5e7233622c588d4c2295b102f9bdd3ee3cb1a03eee3` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:578a2d42d2a96cb3b6c0611e349bcf5d3c071c01ef865fc4e806e10e241d923c` |
| 8 | `theorem` | [Poly.denoteN_insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-insert.md) | 58 | `result-track:471c287239cda1210f21361116ece9a550fb467f4e668e2f42b4ebe6568a2345` |
| 9 | `theorem` | [Poly.denoteN_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-append.md) | 77 | `result-track:20b67e3e5aaade14d7ae5026cc4e3f3244b3ac83fb52418c45c502d60b1a1e46` |
| 10 | `theorem` | [Poly.denoteN_combine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-combine.md) | 85 | `result-track:ea0cc43e279770c278f440a5abc61af9785f5cc9b71744b5f394bb54fe008f5e` |
| 11 | `theorem` | [Poly.denoteN_mul'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-mul.md) | 109 | `result-track:9d753e473333ffc787b6aaca289b47c80a237f0b0ed9ed892502f5efaa1a64db` |
| 12 | `theorem` | [Poly.denoteN_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-denoten-mul-source-edition-2.md) | 119 | `result-track:cfd8703907515c2257e90b14c0f962c00dde5c60de5d9dc68585d4e687f71114` |
| 13 | `def` | [Expr.toPolyN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/expr-topolyn.md) | 125 | `declaration-track:c3573746b2d8eb287555b36da296ae5565bf7ad663671b1a0454d4e97ab55a22` |
| 14 | `theorem` | [Poly.mul'_Nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-mul-nonneg-source-edition-2.md) | 132 | `result-track:c58a184119364e8e48d09538163b52930b18cd79a0462ef0698c2f9e4c9a9b4e` |
| 15 | `theorem` | [Poly.mul_Nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-mul-nonneg.md) | 143 | `result-track:41efb67d271c9a6c9ca87a1628929e36ece3bb2e503d8b5a6c93f804a37b1df5` |
| 16 | `theorem` | [Poly.append_Nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-append-nonneg.md) | 149 | `result-track:3ae477ad2f9b85cd8fb00bd9f2df2de9b75d577a66c6fe3c0bc1226d427e8aa0` |
| 17 | `theorem` | [Poly.combine_Nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/poly-combine-nonneg.md) | 153 | `result-track:3624bcda692285b8207ff76ad06f1c6945759c3bcc331ce60f7e6bbcc6cba37e` |
| 18 | `theorem` | [Expr.toPolyN_Nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/expr-topolyn-nonneg.md) | 173 | `result-track:5797536b6cab486bc1b2fd0f77d9b7b42a4a9284bf1700bc4316d019c58890f8` |
| 19 | `theorem` | [Expr.denoteN_toPolyN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/expr-denoten-topolyn.md) | 179 | `result-track:043b4a6fcde94e3c2b75bdb94deaa5866f21725c0e82f43b6afcf853f583dbf6` |
| 20 | `def` | [eq_normN_cert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/eq-normn-cert.md) | 184 | `declaration-track:1a53019e66d72655ad37c6b92aa23bbacf2833be670e9b092943f92fafce941f` |
| 21 | `theorem` | [eq_normN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NatModuleNormPublic.lean/declarations/eq-normn.md) | 187 | `result-track:05dcefa145d9353e1457b93d1ebcdc064e5bd8b816e5ba1b0cac224cced0ddb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af26af05f43f854083ff2ecf510d69be95a7c5e50d318494b85bc7ad70588346 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variant647c1f71d8382a8704c20a5ad9736ea3151557ef0093723a63348738865f1e75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
