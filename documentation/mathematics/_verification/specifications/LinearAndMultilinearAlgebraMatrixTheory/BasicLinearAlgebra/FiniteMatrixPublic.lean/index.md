# Verification target: Finite Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b4270610616d0184a141e2fb40c5d52ddc1f4ec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b4270610616d0184a141e2fb40c5d52ddc1f4ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearMapEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/linearmapequivfun.md) | 40 | `declaration-track:4286a191e606e2abd8e2bdcb2f45bd453c0140dc8e77c584f2a0842f4dd8e37f` |
| 2 | `instance` | [Module.Free.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-free-linearmap.md) | 44 | `declaration-track:923dab4e09f004e4687ba3ebda49e6f9aff550b9b8da0f47586a0442c5832364` |
| 3 | `instance` | [Module.Finite.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-finite-linearmap.md) | 47 | `declaration-track:b116946b33f89c41d6e94e062f9d84910620166ed28a7ee191cd1d848b54a62b` |
| 4 | `theorem` | [Module.rank_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-rank-linearmap.md) | 53 | `result-track:0aeb082d75ebed9ccee9ab951307b4459ce0da6cb83348949bcbaa821d86b192` |
| 5 | `theorem` | [Module.finrank_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-finrank-linearmap.md) | 59 | `result-track:603756215c39eaa3b14e3dec2e1883c5c986d4fd75f09b70b5bda780f509ced7` |
| 6 | `theorem` | [Module.rank_linearMap_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-rank-linearmap-self.md) | 65 | `result-track:10df02c680e056ee7f3ffabfc2ce4f5d34a00f9de863b731d78e1c0a23b7d6ea` |
| 7 | `theorem` | [Module.finrank_linearMap_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-finrank-linearmap-self.md) | 69 | `result-track:b6eecb15c174822d72d5a9bf6b7adb1bf4c83daaea61aa1248ecc10c3c94a348` |
| 8 | `instance` | [Finite.algHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/finite-alghom.md) | 79 | `declaration-track:334e60e6ba5a51a136db0d324c546642233b09a70c029e8fb4232c63be442062` |
| 9 | `theorem` | [cardinalMk_algHom_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/cardinalmk-alghom-le-rank.md) | 84 | `result-track:a0ee4252a20779656fa60d2e813f4275bfea9a1bf3ed8c051d2f44ffb4bc2153` |
| 10 | `theorem` | [card_algHom_le_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/card-alghom-le-finrank.md) | 91 | `result-track:71313507337e6a8137c208cd410c4cb1bca6a9d7d634f9d280c06f8ded33dbd9` |
| 11 | `instance` | [Module.Finite.addMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-finite-addmonoidhom.md) | 102 | `declaration-track:3ce8394e5be6dbf2936ef6f47a16f50de3347875c9723113ae569f1d55d475b0` |
| 12 | `instance` | [Module.Free.addMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrixPublic.lean/declarations/module-free-addmonoidhom.md) | 105 | `declaration-track:55a35face1db791e55c0d587847befe42d60996d0950059f3f9f5a603253f177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df0208d13fc7e21b881a38779339e0a29bf2552456bc0997201f64b3f17c819f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Variant894fa9f9c8f7d7afb933d5e8c6e71951b2d5e2d501682d88429887628d2b69a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
