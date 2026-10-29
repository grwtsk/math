# Verification target: Semiconj Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0147b12e2f653b560a31af32d9a34d9f35ad7fa2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantc2c7c165baae9ff8947cff1cbe7b7c73a9542aad983129305d116cdf2812b957.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0147b12e2f653b560a31af32d9a34d9f35ad7fa2`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantc2c7c165baae9ff8947cff1cbe7b7c73a9542aad983129305d116cdf2812b957.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantc2c7c165baae9ff8947cff1cbe7b7c73a9542aad983129305d116cdf2812b957.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.Unbundled` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiconjBy](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/semiconjby.md) | 44 | `declaration-track:a89fdd6ec2fe4dc25e8f47b9cbc48ed5f589a1851d417bd60712dfb96a0e204c` |
| 2 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/eq.md) | 51 | `result-track:1ad2d25f83ba442c2ff6869e8e2cb3a9d33179683759fd99022d8bada756c1e1` |
| 3 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/mul-right.md) | 62 | `result-track:2138e179e227a4a9aef60e352bc4a734bf09f4e47b9ab5d42f17d4da73d70f7a` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/mul-left.md) | 72 | `result-track:94f54c9895e5c7700772c730aa4615442d193425e337209fd9dd62b78905e62d` |
| 5 | `theorem` | [transitive](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/transitive.md) | 80 | `result-track:5f659e40218083ed6f39af4c417392bd3b7b04df9ff71aace5f0011b16ab9a86` |
| 6 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/one-right.md) | 91 | `result-track:a6a2ec1d25867e1813f3f8b33b64fcbb4e6bc10a1749e0e9b70d75abd5914c87` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/one-left.md) | 95 | `result-track:fdbfcdc7a9084ee97e298508dc7c88e7aac7d0ed7e3531deb46458e897753383` |
| 8 | `theorem` | [reflexive](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/reflexive.md) | 102 | `result-track:212d0cc0443d74626041f9c575efd0eddbda6c6909efb7c0d1a3f6917d661c02` |
| 9 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/pow-right.md) | 112 | `result-track:fd04e2ebabd82dceb18c0500467259f5d29744ce5bda0018540ce989988a5d05` |
| 10 | `theorem` | [conj_mk](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/conj-mk.md) | 129 | `result-track:ebb5b3d1f392425304ab3e6fc9f45496a13038e9b0d63230c3a4b747a89a8553` |
| 11 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/conj-iff.md) | 133 | `result-track:f5dbe7874c0d603d36ce3ed599bb53849f6a4434dd330252c6375b085020361a` |
| 12 | `theorem` | [semiconjBy_iff_eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsNamespaced.lean/declarations/semiconjby-iff-eq.md) | 145 | `result-track:bce77eea4e8c1e68f8dbba8880bd7101622e892370eabaf9e30e7cbee56d9d23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2fda4a49942bffffd5ea72cfb13e7b347d087f0c341073669911946af209300 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantc2c7c165baae9ff8947cff1cbe7b7c73a9542aad983129305d116cdf2812b957.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantc2c7c165baae9ff8947cff1cbe7b7c73a9542aad983129305d116cdf2812b957.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
