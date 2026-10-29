# Verification target: Test Reify Reflect Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e62ec4b726e4240d62d8884ab76f5b0dca099502",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestReifyReflect/Variant6d527be5af929cee85c97bdc3b5ce54640fea1ca491df35db44df80f32a3fa17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e62ec4b726e4240d62d8884ab76f5b0dca099502`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestReifyReflect/Variant6d527be5af929cee85c97bdc3b5ce54640fea1ca491df35db44df80f32a3fa17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestReifyReflect/Variant6d527be5af929cee85c97bdc3b5ce54640fea1ca491df35db44df80f32a3fa17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Meta.ToExpr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reify_norm_sub_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-norm-sub-div.md) | 33 | `result-track:93f6453cdb97b5f5c57fb650ebec229b45d73ec6b6801fb911c18fa6d659dbef` |
| 2 | `theorem` | [reify_norm_casts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-norm-casts.md) | 37 | `result-track:1b0e93dedc6f83a9955c4eba89b2496d4f567978b30dc08402764261142f28c4` |
| 3 | `theorem` | [reify_norm_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-norm-max.md) | 41 | `result-track:5db256df1202fa2ecc66607a279a1e4cddf79887c14fcaf5716d30dad71fe9d3` |
| 4 | `theorem` | [reify_norm_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-norm-min.md) | 45 | `result-track:14b55f683daf211ad55866ad0511ca530fad6832c455d916d7b9846122f265d8` |
| 5 | `theorem` | [reify_rpow_thirds_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-rpow-thirds-bound.md) | 48 | `result-track:cdf696b543fdfe800648283529103b8d3a47c639f30ead32e127762769e963d7` |
| 6 | `theorem` | [reify_rpow_neg_thirds_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestReifyReflectNamespaced.lean/declarations/reify-rpow-neg-thirds-bound.md) | 52 | `result-track:b51074d934ff3be7fe72245ad9c8e715d3a13c3637437764a432448359e46618` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7a9f5f8599f1d094f56c4b7ff0322d318e71abc8bdc494ecdb2c6f7978b9bc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestReifyReflect/Variant6d527be5af929cee85c97bdc3b5ce54640fea1ca491df35db44df80f32a3fa17.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestReifyReflect/Variant6d527be5af929cee85c97bdc3b5ce54640fea1ca491df35db44df80f32a3fa17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
