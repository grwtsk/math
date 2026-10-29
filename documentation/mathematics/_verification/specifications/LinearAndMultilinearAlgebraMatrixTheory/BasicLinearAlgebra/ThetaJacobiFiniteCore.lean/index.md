# Verification target: Theta Jacobi Finite Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7012619d7870e3ee0266de0ef902f513c8d2936",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7012619d7870e3ee0266de0ef902f513c8d2936`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaJacobiRecurrence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSequences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences.md) | 28 | `declaration-track:a29f9bdda916f241c66fca6427736f004222a8e4e65bc57265d9cf54a858b278` |
| 2 | `theorem` | [finiteSequences_support_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-support-finite.md) | 32 | `result-track:f0536611e9fa685ce13daac661860bcb4f8d3e869c2ccc988a85b40a7937addb` |
| 3 | `theorem` | [mem_finiteSequences_of_support_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/mem-finitesequences-of-support-finite.md) | 63 | `result-track:f3a68c70e0c05375a9034123dc33328cf23bea86e98f87e0d68cb270d763465b` |
| 4 | `theorem` | [mem_finiteSequences_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/mem-finitesequences-iff.md) | 88 | `result-track:9d07d133e55b66d4427744faac4e568d03835d42bb42a5f16dd31d28cd175983` |
| 5 | `theorem` | [pointedUnitary_map_finiteSequences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/pointedunitary-map-finitesequences.md) | 93 | `result-track:dd5f687fcc33b349ff85175733fe9a33dc2b9d2f022f2703f819aa98c75242bb` |
| 6 | `theorem` | [pointedUnitary_preimage_polynomialCore](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/pointedunitary-preimage-polynomialcore.md) | 103 | `result-track:ffc6071c8d34f10d6f5399244799401c28afced03c8187dc16b4fab1b71f2f72` |
| 7 | `theorem` | [finiteSequences_le_jacobiDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-le-jacobidomain.md) | 109 | `result-track:3830c9a601558a3c6dcbae6ef27ab2a296347b21a5ef4a8adf73eec2da5f8fee` |
| 8 | `theorem` | [finiteSequence_graph_approximation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequence-graph-approximation.md) | 116 | `result-track:dc528d35378cc8f5e193ead28794a053108be6b2993d41611d6936b42646c3ce` |
| 9 | `theorem` | [finiteSequences_graph_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-graph-closure.md) | 153 | `result-track:8dbb3197a8e6aec21d730a22a8aef8c329bfa45ea22473fe67d8c59b9aa99133` |
| 10 | `theorem` | [jacobiOperator_finiteSequences_hasCore](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/jacobioperator-finitesequences-hascore.md) | 174 | `result-track:08327bd8558639bfda9796661b65f169b901b912e8f02f34c2e7d4ace2e816a1` |
| 11 | `theorem` | [finiteSequences_restriction_closure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-restriction-closure.md) | 185 | `result-track:81cef4a3c369ff59d1bd37fe854ac856114383659bdd7c39fcb554d329cfd62a` |
| 12 | `theorem` | [finiteSequences_restriction_closure_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-restriction-closure-isselfadjoint.md) | 190 | `result-track:00958171bcc0b4bb3507b69a878f8758de21f06aa032091b2aa665749a73f3ed` |
| 13 | `def` | [cutoffSequences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/cutoffsequences.md) | 196 | `declaration-track:41569ab887ce6da9dcac9ededdbef9b385aedfdeae0f0a2875a4eca617eb73a4` |
| 14 | `theorem` | [cutoffSequences_le_finiteSequences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/cutoffsequences-le-finitesequences.md) | 200 | `result-track:a6163f36fc92ad0460aed7ad1ed022ad58fe7441ca81095bd4ded6e1083c2c67` |
| 15 | `theorem` | [finiteSequences_eq_iSup_cutoffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/finitesequences-eq-isup-cutoffs.md) | 204 | `result-track:a8be2004d2c8710be5442049cb9fb5308f010892c8a0bd6444745eb6b7d721b7` |
| 16 | `theorem` | [cutoffSequences_coordinate_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/cutoffsequences-coordinate-zero.md) | 213 | `result-track:913f7567b10bdac29fc0cee969155790dcf5c7e588ab38746f6081de9407fdf1` |
| 17 | `theorem` | [cutoffSequences_not_hasCore](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiFiniteCore.lean/declarations/cutoffsequences-not-hascore.md) | 226 | `result-track:5635156c1ba067964e42b4cde00b7d657f7dcb3db5061923450b7e5b86e86ebf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e30db95865c96b0ce3f9050a80b3eec762faac3ad6c8127985a96f10ff2744d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
