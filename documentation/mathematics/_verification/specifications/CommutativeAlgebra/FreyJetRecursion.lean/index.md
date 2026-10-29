# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4319effa7873770a9f40a138ab56f2795c73ddb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreyJetRecursion.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreyJetRecursion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4319effa7873770a9f40a138ab56f2795c73ddb`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet`](../../../../CommutativeAlgebra/FreyQuadraticJet.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [step](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/step.md) | 19 | `declaration-track:0dad04329c7723a3bc01ff0bd64de3d4b7089c8d6b72d9fbb33a314c71f33507` |
| 2 | `def` | [iterate](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate.md) | 22 | `declaration-track:5a11e4f68eb2321106a75b0708a301c5ac17821ccde2714f6a8d0ff45ee70399` |
| 3 | `def` | [residual](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/residual.md) | 27 | `declaration-track:b5e9adb97fb99c39a0436da1ac6eb1d0c6365f558152f4b0d861b970fddbf98e` |
| 4 | `theorem` | [iterate_zero](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate-zero.md) | 29 | `result-track:4a2bbb1668e33bd747423497ae4cb79819eb216fe846c041c89f13ddc45bb7c4` |
| 5 | `theorem` | [iterate_one](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate-one.md) | 31 | `result-track:e23cd7ff95fbadcac3b8120c5d1d20b757133b0d9bf574c1d3815bd4cb72584d` |
| 6 | `theorem` | [square_dvd_iterate](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/square-dvd-iterate.md) | 35 | `result-track:d09cedb889c308efc62bfeefc31a8fcfbc2d291f3cc767f34aab3c2799594acd` |
| 7 | `theorem` | [step_gain_two](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/step-gain-two.md) | 45 | `result-track:81de83c296c0f608e31904c0aa7690b22469b54f0d2b3e23398e218ede7100b6` |
| 8 | `theorem` | [consecutive_dvd](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/consecutive-dvd.md) | 60 | `result-track:291ab8c2802856c57d8d7adccf965b0bacbe6a468ae1bb717926f36ec60d7b95` |
| 9 | `theorem` | [residual_eq_step_difference](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/residual-eq-step-difference.md) | 74 | `result-track:70c38e1fe62da117c9eb8f4dde9a320298a754d04c627c6e31b7d513997670c4` |
| 10 | `theorem` | [residual_dvd](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/residual-dvd.md) | 80 | `result-track:a6acb46aa2868367b3f4ea096e9c2a186c3fea13df73a715c3df145eb792f8e0` |
| 11 | `theorem` | [iterate_solves](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate-solves.md) | 86 | `result-track:75f74d010973422f00ac3f84c63a1c77f8559f758b69821ff61683c6dcd94bd8` |
| 12 | `theorem` | [solution_fixed](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/solution-fixed.md) | 94 | `result-track:dc56bd4619c6f94bf22d37f4d62e5d9d8a9232a766cc0fc95e4500d390a6c6c1` |
| 13 | `theorem` | [solution_square_dvd](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/solution-square-dvd.md) | 105 | `result-track:de951b035e7195eb8c4d06b1bd00af17a814c365103acd7c34a55d7180e86e0a` |
| 14 | `theorem` | [solution_unique](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/solution-unique.md) | 118 | `result-track:3a7921f44ec9ffccf14768b7c59448b298c318325f5e9689c851a946390e79f9` |
| 15 | `theorem` | [power_zero_of_le](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/power-zero-of-le.md) | 146 | `result-track:316b11aedf5f07ead4e0b1881c8d4a59fbfdb6e57621e81549c10d1807d06f88` |
| 16 | `theorem` | [iterate_stable](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate-stable.md) | 156 | `result-track:3ade5fc7049a4b8765e5c8a238865a2f07164f745311cb6b707e612d4486f495` |
| 17 | `theorem` | [map_iterate](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/map-iterate.md) | 169 | `result-track:566ae7e4d35549c1e058217f57e5aa77ebde826b3c6398ba10b2b7ba9806427b` |
| 18 | `theorem` | [iterate_neg_parameter](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/iterate-neg-parameter.md) | 178 | `result-track:09a606c76de312ae041d07da49c5940ae99ae8d62cef35f2cc5f56aaf6237c8e` |
| 19 | `def` | [denominatorExponent](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/denominatorexponent.md) | 185 | `declaration-track:df7587d8ca43302b2fc0ff6f0e731504e8ea9636db006ab25b02361bdaa2a3f0` |
| 20 | `def` | [numerator](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/numerator.md) | 191 | `declaration-track:dd439dbbafa6f156831684a797cb18d984e470957b81104172e9fd1dbd09049e` |
| 21 | `theorem` | [map_numerator](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/map-numerator.md) | 197 | `result-track:fb5a29a00e2b3f6809594df97482515ed7b20bd2a8455b701775400c35167940` |
| 22 | `theorem` | [denominator_clears](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/denominator-clears.md) | 206 | `result-track:08fece95034b3ec32cbbb75ba81b33a2ef29f43d22282307ca94a3d7f4f406c1` |
| 23 | `theorem` | [denominatorExponent_identity](../../../../CommutativeAlgebra/FreyJetRecursion.lean/declarations/denominatorexponent-identity.md) | 225 | `result-track:86552fb7b8cc817d88ee6471e3fa67865b2ffd98a81a96658281e17f42c04ccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12b3982d47c9bb7e45774091c30dd1859d1bd7dc116808396bf878d8ed7155f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
