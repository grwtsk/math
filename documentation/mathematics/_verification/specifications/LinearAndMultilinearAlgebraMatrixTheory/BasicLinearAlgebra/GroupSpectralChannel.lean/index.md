# Verification target: GRWTSK.NumberTheory.Farey.GroupSpectralChannel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef7a890716a02491d2a0fe64e67e41fa2024cea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef7a890716a02491d2a0fe64e67e41fa2024cea`.

Source path: `GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/GroupSpectralChannel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.GroupSuperwalk`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSuperwalk.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatC](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/matc.md) | 34 | `declaration-track:e1751b14e6a28b029d9eb66e6e77dfb8bf9f29897f4de8e5f35bc5306d57d6e6` |
| 2 | `def` | [complexWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/complexword.md) | 37 | `declaration-track:91985e77797f953bb6e162af9d716a03ec4bc4ebcb0cd9e3f36b482c9ad54063` |
| 3 | `theorem` | [complexWord_nil](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/complexword-nil.md) | 41 | `result-track:7b4ba84bd946118bffb5a6da69116e09760689f79b2ae61c9327e3b1abadb85e` |
| 4 | `theorem` | [complexWord_cons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/complexword-cons.md) | 43 | `result-track:4b0ea00c221fd1a03751742c530d6b450137f7a13849b603c0ac4a95a12a787b` |
| 5 | `theorem` | [complexWord_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/complexword-append.md) | 46 | `result-track:983262d25dd199a5576b17c5654bfce7c7a630c81de7d70dfa2b5babef8a23db` |
| 6 | `theorem` | [commutes_complexWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/commutes-complexword.md) | 54 | `result-track:4e9968fe8849a5c6be2dd4b2d15b18b449cdfc9cfec211c550bd8b6122b92e51` |
| 7 | `theorem` | [commutant_is_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/commutant-is-scalar.md) | 79 | `result-track:9d45dd09e390019542b37085aff015051cca2a04afe04e80ba8527d06f81541a` |
| 8 | `theorem` | [native_invariant_projector_trivial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/native-invariant-projector-trivial.md) | 102 | `result-track:b737fce2b32562fb2287e91d8d4b4413386173ab64ce3d7ea38c7b96abbf1497` |
| 9 | `theorem` | [no_proper_native_channel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GroupSpectralChannel.lean/declarations/no-proper-native-channel.md) | 123 | `result-track:2e4e3f99b40e8e0d4b0041fbf5191125e0324f67e37e0d0b33ccd3aabfc21f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ff1a4cc72cd9cdf173e52e927a4d835d35eb77cd75ea5b62127edbeeea8a284 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/GroupSpectralChannel.lean","GRWTSK/_verification/specifications/NumberTheory/Farey/GroupSpectralChannel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
