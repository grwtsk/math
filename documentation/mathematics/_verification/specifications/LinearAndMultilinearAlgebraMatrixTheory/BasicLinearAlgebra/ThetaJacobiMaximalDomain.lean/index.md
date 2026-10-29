# Verification target: Theta Jacobi Maximal Domain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80a886dcd9c4be62878660fcad4bb23a6aab70ec",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80a886dcd9c4be62878660fcad4bb23a6aab70ec`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaJacobiFiniteCore` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiExpression](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobiexpression.md) | 27 | `declaration-track:ee6ecba755a35bb0e57abca4516108170cf4fcd14e669464eb7fd508d5afb1ec` |
| 2 | `theorem` | [jacobiExpression_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobiexpression-zero.md) | 39 | `result-track:82645a747ab76ef98a94179ac1b95eeefdab4475ae376d2ef0a886a75e40a10c` |
| 3 | `theorem` | [jacobiExpression_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobiexpression-succ.md) | 44 | `result-track:9f46ed3d0a8f79a4db95c59909cda298261e2f7c8ca9be0c4428816871f60a2f` |
| 4 | `theorem` | [standard_zero_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/standard-zero-inner.md) | 51 | `result-track:fabf9ebd3319fdbcea5719beee78d4282de056983a3f20c18db25ab07dd7a653` |
| 5 | `theorem` | [standard_succ_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/standard-succ-inner.md) | 59 | `result-track:4f8b8faeaf124276c0856456275d09a3d3fd497a7eebfcbaecd84e8528a879b2` |
| 6 | `theorem` | [jacobiOperator_coordinate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobioperator-coordinate.md) | 67 | `result-track:9b6ad48fa065e621e763b4aea04f5226c08a7e8e867a31ea0d7d766987e80359` |
| 7 | `theorem` | [jacobiExpression_memℓp_of_mem_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobiexpression-mem-p-of-mem-domain.md) | 81 | `result-track:b648e17de06175c23496cd81e4c136e341c52f3a64009f6249c237b30c6cedcd` |
| 8 | `theorem` | [standard_inner_of_expression_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/standard-inner-of-expression-eq.md) | 89 | `result-track:e1737515193af6e1b34079aa84ec6bb0675295f3ffbd0600ff1d6bf361b95ec3` |
| 9 | `def` | [jacobiDomainMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobidomainmap.md) | 105 | `declaration-track:4fc20f592b088bbb41ecfefbb70a43f2bc393c15b8bb84ed5d18e4d3f12f1a7b` |
| 10 | `theorem` | [core_inner_of_expression_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/core-inner-of-expression-eq.md) | 110 | `result-track:2396bb59c1c2f431d493650f6f6ba5ef850e280f7ce957a9fc0f2d183347072d` |
| 11 | `theorem` | [domain_inner_of_expression_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/domain-inner-of-expression-eq.md) | 139 | `result-track:811141c923a8b68c430a28051cbe3ce65ffb6dd5b240a78109dee3a6366874d8` |
| 12 | `theorem` | [mem_domain_of_expression_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-domain-of-expression-eq.md) | 160 | `result-track:64ff09ec60584d7d7866a92402bb51ed88fefca04728ce287450e1a87b440939` |
| 13 | `theorem` | [mem_domain_of_jacobiExpression_memℓp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-domain-of-jacobiexpression-mem-p.md) | 171 | `result-track:97e417a8e31842fe04f507378fa25c2e61c7dc2ac0d59f38b82987df162085d7` |
| 14 | `theorem` | [mem_jacobiDomain_iff_memℓp_expression](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-jacobidomain-iff-mem-p-expression.md) | 178 | `result-track:cba68b291532eb4d893f200b150d10ea9281af7e7cf927514704327263fdc4cf` |
| 15 | `def` | [coefficientDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientdomain.md) | 185 | `declaration-track:3eeb2f2f656841bb85d3e7eac5e9b30e5735598c2dcce7b600b0bfabad4c96bc` |
| 16 | `theorem` | [mem_coefficientDomain_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-coefficientdomain-iff.md) | 201 | `result-track:baabfddae24acfb5d53fc5c6672e4d750272e2b524407f8261f172ef2e32bf9f` |
| 17 | `theorem` | [coefficientDomain_eq_jacobiDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientdomain-eq-jacobidomain.md) | 206 | `result-track:f2ea62912068a816496445fa2db749d55405606f4b21e92d3137524a8f11402a` |
| 18 | `theorem` | [mem_jacobiDomain_iff_summable_norm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-jacobidomain-iff-summable-norm-sq.md) | 213 | `result-track:4d4583589428713aa961d7840d3bd4fb4acb51303caed8974399164848274f52` |
| 19 | `def` | [coefficientAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientaction.md) | 223 | `declaration-track:0d6252d5e159067c69ac95acedfe4a500ce385b28ab239ab7c8d30cfb4c6f334` |
| 20 | `theorem` | [coefficientAction_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientaction-apply.md) | 234 | `result-track:50e8687f384ade45bf787a497dfcc09ee246bf5d6dee73adeb294611df25c9ae` |
| 21 | `def` | [coefficientOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientoperator.md) | 239 | `declaration-track:277f6ed93cfd30b6e3c7e5829d111055a7a290407d9d3c58e57dac2e465a633c` |
| 22 | `theorem` | [coefficientOperator_eq_jacobiOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientoperator-eq-jacobioperator.md) | 245 | `result-track:323b434fd639dbf7cb8a0d5d6cfe6e81391edb7c07a160e1ddf0eeebd491e2ed` |
| 23 | `theorem` | [coefficientOperator_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/coefficientoperator-isselfadjoint.md) | 254 | `result-track:faa40e581d7b811de6ac02280289e3fb3cdca95a42e2507f3cd826a78e08221a` |
| 24 | `theorem` | [mem_jacobiGraph_iff_expression](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/mem-jacobigraph-iff-expression.md) | 260 | `result-track:c7dce8492dd242aa0a16f670d2f0455b22820db64beaf257bc714e237248ffb5` |
| 25 | `theorem` | [jacobiOperator_eq_expression_vector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/jacobioperator-eq-expression-vector.md) | 282 | `result-track:c5c5ab5f0ca50fefd1f1a62d7fadcff5df6f4e9b70482a104c5628126979a791` |
| 26 | `theorem` | [rawPoint_mem_coefficientDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/declarations/rawpoint-mem-coefficientdomain.md) | 291 | `result-track:6acc9bce55bea1f70a059b31829a8431298c5947a28f8e65d9c056b892a860f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5822fff116f4b9969ba0de62076ae007f3a8250de66924ddf71790b24a88ff94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
