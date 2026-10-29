# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Factorization.Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1990e454884725562cff2e46e082d5f5e0f0a2ff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/index.md) · [Full source](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1990e454884725562cff2e46e082d5f5e0f0a2ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.PrimePower` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorizationMap](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/declarations/factorizationmap--b01272e75f2a5682948b1f24.md) | 19 | `declaration-track:b01272e75f2a5682948b1f242e13c76fa65b105682a0115aef2d5be8c9012971` |
| 2 | `def` | [IsPrimeSupport](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/declarations/isprimesupport--b14409bc5f6ccd60458694e1.md) | 22 | `declaration-track:b14409bc5f6ccd60458694e18111ecda270246ab0d853c6ebe543c8c99632308` |
| 3 | `theorem` | [factorization_support_prime](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/declarations/factorization-support-prime--160168baeefc3df85370ab9c.md) | 25 | `result-track:160168baeefc3df85370ab9cc39a984ac7ac29ca8828a466b8f7d34cf8e4fbba` |
| 4 | `theorem` | [factorization_exponent_pos](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/declarations/factorization-exponent-pos--9fbe189ec06e6006277a16e9.md) | 36 | `result-track:9fbe189ec06e6006277a16e983f631593624296fbd2cccfec6cfb4e72857ea3f` |
| 5 | `def` | [factorPrimePowerOfSupport](../../../../../FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean/declarations/factorprimepowerofsupport--c7303e907add242d29c2d9b5.md) | 43 | `declaration-track:c7303e907add242d29c2d9b51f128f42c589165646d0969988080cbb4eb69ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=454c2b5af34ad90d1f14ce364939e7db990685739a0fa4a0ef1bfa0558e568a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Factorization/Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
