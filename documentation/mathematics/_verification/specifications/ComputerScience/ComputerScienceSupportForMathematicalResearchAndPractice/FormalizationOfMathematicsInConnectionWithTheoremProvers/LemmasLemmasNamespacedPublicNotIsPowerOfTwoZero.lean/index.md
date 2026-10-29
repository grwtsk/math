# Verification target: Lemmas Lemmas Namespaced Public Not Is Power Of Two Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56f529bac453ce3389dced9de36b75297461a2c3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56f529bac453ce3389dced9de36b75297461a2c3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_isPowerOfTwo_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/declarations/not-ispoweroftwo-zero.md) | 36 | `result-track:a9799cdeefd53903e7e085556f6b594ffc5b0c7162119e4ce28cf17f64b2beb8` |
| 2 | `theorem` | [and_sub_one_testBit_log2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/declarations/and-sub-one-testbit-log2.md) | 42 | `result-track:79cdecaa5049f516a534f9eb5702a50ca157aa761313ccc43a07988d85cd2b8d` |
| 3 | `theorem` | [and_sub_one_eq_zero_iff_isPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/declarations/and-sub-one-eq-zero-iff-ispoweroftwo.md) | 56 | `result-track:9487b2ee87220d077fb390f6c32080e26e8bc08427f605e0349bb67a113c61fd` |
| 4 | `theorem` | [ne_zero_and_sub_one_eq_zero_iff_isPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/declarations/ne-zero-and-sub-one-eq-zero-iff-ispoweroftwo.md) | 68 | `result-track:62b30a5c791b2511760ed86dcba3b80e9d4723a6b102f0c1c2e4f46f5ebbbc90` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasLemmasNamespacedPublicNotIsPowerOfTwoZero.lean/declarations/instance.md) | 75 | `declaration-track:ed3ab4db76cc07025fb34c7aed06270fefccd1abf059709848a3364fc51bd3c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72507a49c21a00394b58d293e8710abbcfb3ed93272c9daaa7fb345ce563a527 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
