# Verification target: Positive Atlas Feshbach Hermitian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7118cc379b691d7f59706374acb536a6293673cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7118cc379b691d7f59706374acb536a6293673cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coupled_completion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/coupled-completion.md) | 24 | `result-track:09a4c7b96cbaed32af44b92f072d836e25bbb9039e9c634e6e9640d8e0b92721` |
| 2 | `theorem` | [coupled_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/coupled-possemidef.md) | 39 | `result-track:1741a99ee09c36594fd94e08d7b6b7a0c315a6749f6b18855c4e82a90315f4ec` |
| 3 | `def` | [imaginaryCoupling](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/imaginarycoupling.md) | 61 | `declaration-track:80307d3ea14a57ee04197770f801bf87e5bfe765b49c1bbbaa9c2ecb555c8aa5` |
| 4 | `theorem` | [imaginary_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/imaginary-center.md) | 64 | `result-track:51a5826472c51c385ef296a40ee80436b5b36660b1eec5aeee0c34708c7d73df` |
| 5 | `theorem` | [imaginary_packet_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/imaginary-packet-possemidef.md) | 77 | `result-track:44128ff33ab7a9d8f3bdf7248759f1ea53e2f31e9a8d10f7f3412dcdb8e7937d` |
| 6 | `def` | [positiveDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/positivediagonal.md) | 85 | `declaration-track:ddcf6f0f850fa63baed89c8e90001ddf78ecc50cba6084b7a472293c9ed4aadc` |
| 7 | `def` | [indefiniteDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/indefinitediagonal.md) | 88 | `declaration-track:bef9b9bddb33c7050df1f6e84c9e49f2f7ca11f2b79d5994b35e52866c618f5c` |
| 8 | `theorem` | [same_kernel_different_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachHermitian.lean/declarations/same-kernel-different-sign.md) | 93 | `result-track:fc5381bfd6c3a32d3651f7d8f7d1222007792647cc5e93dd1bf9b7164289dc93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66e3a03ccadfba2cf74e2b9ec6e7ccacb54c420a63cd42e2caced95f5cb4a7d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveAtlasFeshbachHermitian/Variant9ebf49006244b228ca882ffc7d2bc8f5758f3bc9bbd30b376b8703b1f4ae127e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
