# Verification target: Schwartz Space Deriv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18cc33e524832ffe005cf62621bb41c68a8de39f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantb78fb03e2b13a4efea2b9596b894ef075d6fc4b4b26b7d6592f59c1065252042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18cc33e524832ffe005cf62621bb41c68a8de39f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantb78fb03e2b13a4efea2b9596b894ef075d6fc4b4b26b7d6592f59c1065252042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantb78fb03e2b13a4efea2b9596b894ef075d6fc4b4b26b7d6592f59c1065252042.lean.json)

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
| 1 | `def` | [derivCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/derivclm.md) | 60 | `declaration-track:2a46323a742b1cf7c2b487e738084aaecdd9d17dc1897315d37f3284b3e77eb9` |
| 2 | `theorem` | [derivCLM_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/derivclm-apply.md) | 70 | `result-track:ac741f7f08f692e6efbe2b974dedf89d6908c6ee07ea62768292cfc9691172af` |
| 3 | `theorem` | [hasDerivAt](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/hasderivat.md) | 73 | `result-track:65773fe136d4bc9120d7354049267733c470a9267b97e67da38bd2234ce0d39a` |
| 4 | `def` | [fderivCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/fderivclm.md) | 84 | `declaration-track:03b995a8c3951aa6e98d7f5a6ec88d8963a6007b863d60380050174af00e8077` |
| 5 | `theorem` | [fderivCLM_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/fderivclm-apply.md) | 93 | `result-track:a3cab0e9487e8aa2a74a2b82783326b4511e3fe2ace0d07892f4175d83bd0e40` |
| 6 | `theorem` | [hasFDerivAt](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/hasfderivat.md) | 96 | `result-track:bae7a1777864d8ea99067f8f26f7baee10907f1399abd1828f657b25d629c83e` |
| 7 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:5f83b16265d23048dc01d955a3fb5ca7cb0c6f35cd2ee5f75de97bcab2f035b1` |
| 8 | `theorem` | [lineDerivOp_apply_eq_fderiv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/linederivop-apply-eq-fderiv.md) | 104 | `result-track:91b340253aa53e430bf522142b72372f3f65144bbbd798846319d93326b3beb7` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance.md) | 107 | `declaration-track:47226154bdbd320a93cb38ffdd88b9b8db0bcb6bab50073ae7e3fde04c767108` |
| 10 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance-source-edition-4.md) | 113 | `declaration-track:baf820cfaf0fe8a0223f2823f2df56fb8da0e99f54f8fe72cc5956c03489c4f2` |
| 11 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance-source-edition-5.md) | 116 | `declaration-track:d0ea3629f5865bcb3fba8ef697a9981431f6e09eb31b7f825b659ef3f5a6aeb2` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance-source-edition-2.md) | 121 | `declaration-track:5f59d5b87e03db517e734a8a7956fcf3e870d86e648c6825c0bf68f7b650644f` |
| 13 | `theorem` | [lineDerivOpCLM_eq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/linederivopclm-eq.md) | 126 | `result-track:6b1cbf9c90b08220520d79faf6298ad5411f676be4c2d0bbd44b4223171f756e` |
| 14 | `theorem` | [lineDerivOp_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/linederivop-apply.md) | 129 | `result-track:1d9ca622baab90094c4902218992bd6b1f4c9db570a8f644508140628b9b2463` |
| 15 | `theorem` | [iteratedLineDerivOp_eq_iteratedFDeriv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/iteratedlinederivop-eq-iteratedfderiv.md) | 132 | `result-track:d24e8406362afae4b2b7ff121335445db7c6ea92fcf6ad727bafea9b1f1fae3d` |
| 16 | `theorem` | [lineDerivOp_compCLMOfContinuousLinearEquiv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/linederivop-compclmofcontinuouslinearequiv.md) | 146 | `result-track:2741e885dde6b1e8f4ff3d699374cf3f6e8208af64bfa8d69914b579547339a3` |
| 17 | `theorem` | [tsupport_derivCLM_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/tsupport-derivclm-subset.md) | 159 | `result-track:e565f586fd123094d31010b8543c6264ac0c20e594ba0c2b3909d51cc6e15670` |
| 18 | `theorem` | [tsupport_fderivCLM_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/tsupport-fderivclm-subset.md) | 166 | `result-track:809e08409b46ef41c8691a48c43fe666950fb9dffb4b6f17768e5f3b9a825f7d` |
| 19 | `theorem` | [tsupport_lineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/tsupport-linederivop-subset.md) | 171 | `result-track:0e3dabcc1f5c85d243e0498848f6c30d4fc20459949f1be23d3118ad85b4df94` |
| 20 | `theorem` | [tsupport_iteratedLineDerivOp_subset](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/tsupport-iteratedlinederivop-subset.md) | 175 | `result-track:ea15ef8269417051506761c6b282d9fa2f9e41216e21acd8751a932f9fade0f7` |
| 21 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/instance-source-edition-6.md) | 193 | `declaration-track:ea02db58c6525649aadbaf81af66cb1fe14577443cb104964b08d26e7569ccf5` |
| 22 | `theorem` | [laplacianCLM_eq'](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/laplacianclm-eq.md) | 196 | `result-track:5ff77dbc0d45e607e419eebc47037fae4f66045f73e7329ac4c93cf0978b8042` |
| 23 | `theorem` | [laplacian_eq_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/laplacian-eq-sum.md) | 198 | `result-track:6b01081d493d50a55927d56bfcd0b6b12d9bbec7b59b04c9812e73fe8d538f28` |
| 24 | `theorem` | [laplacianCLM_eq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/laplacianclm-eq-source-edition-2.md) | 204 | `result-track:9ad5b835808b0ff69a113e0f48b26799883207d145bfcc9cf63c0e0d667a03e7` |
| 25 | `theorem` | [laplacian_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/laplacian-apply.md) | 208 | `result-track:1280c3d5434e2ee9993668effe81e216a0a51dff17a7ed358f475bb8e90a50ad` |
| 26 | `theorem` | [integral_bilinear_deriv_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-bilinear-deriv-right-eq-neg-left.md) | 228 | `result-track:c407418fade57cf6acc83ecfc26ead4852ab3dc22ad52742daeff7685d25d0f6` |
| 27 | `theorem` | [integral_mul_deriv_eq_neg_deriv_mul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-mul-deriv-eq-neg-deriv-mul.md) | 239 | `result-track:723c9446748ecf4b10b888263c3cb0122b73e308359c10f978bf3e89e849c5fc` |
| 28 | `theorem` | [integral_smul_deriv_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-smul-deriv-right-eq-neg-left.md) | 248 | `result-track:5726295fbdde370aaaed69409e02fd489a01ec4aa2e6f48c4dc04782e32eb54f` |
| 29 | `theorem` | [integral_clm_comp_deriv_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-clm-comp-deriv-right-eq-neg-left.md) | 255 | `result-track:24248163747e4f4bbcd30cd3db7058879e80d66b0f8fcac0a29973f20c00f8a7` |
| 30 | `theorem` | [integral_bilinear_lineDerivOp_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-bilinear-linederivop-right-eq-neg-left.md) | 271 | `result-track:a61acb1b240d6cf8c70c63e3acfee3600632d443f47192757596dd743756b6b5` |
| 31 | `theorem` | [integral_mul_lineDerivOp_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-mul-linederivop-right-eq-neg-left.md) | 284 | `result-track:9f1418faf0a68eed35410c64b1f763d287b6c0a80b0fea3b8db3276880c606dc` |
| 32 | `theorem` | [integral_smul_lineDerivOp_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-smul-linederivop-right-eq-neg-left.md) | 293 | `result-track:94717dc51c3fe185a153fdc2b72cf3bbc069d809d4bad75297b698b63179d2bf` |
| 33 | `theorem` | [integral_clm_comp_lineDerivOp_right_eq_neg_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-clm-comp-linederivop-right-eq-neg-left.md) | 300 | `result-track:c1efe6ead7d904ca00895ccbf1c108bbe986849b7a9a8accd341363d8f67fa48` |
| 34 | `theorem` | [integral_bilinear_laplacian_right_eq_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-bilinear-laplacian-right-eq-left.md) | 322 | `result-track:bf397db3a3833e0c4aba83f44d0c9fc0efb9bfcb1a290154bfe6f091747d3094` |
| 35 | `theorem` | [integral_mul_laplacian_right_eq_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-mul-laplacian-right-eq-left.md) | 336 | `result-track:91ac25b0c4943c26080c67b8a6bfc41f2402927048ec4f3e851148efd24b0342` |
| 36 | `theorem` | [integral_smul_laplacian_right_eq_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-smul-laplacian-right-eq-left.md) | 345 | `result-track:319ad51f28d2e8d56a98e0b50bcd8b34b25c9d0bce5db343edb291ab842d197a` |
| 37 | `theorem` | [integral_clm_comp_laplacian_right_eq_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceDerivPublic.lean/declarations/integral-clm-comp-laplacian-right-eq-left.md) | 354 | `result-track:2a4f7e48799d4064195f58fe6a323847d56c63d9ccff3db6021ef92bff0dd620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37ce9531a643a494f21c0f2b52d08795f0bb06f612552f191cdb0f8e7dee5f26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantb78fb03e2b13a4efea2b9596b894ef075d6fc4b4b26b7d6592f59c1065252042.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantb78fb03e2b13a4efea2b9596b894ef075d6fc4b4b26b7d6592f59c1065252042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
