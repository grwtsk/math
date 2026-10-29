# Verification target: Quotient Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf8f79a7f06d598dec29f45f841e2d80d54ed248",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf8f79a7f06d598dec29f45f841e2d80d54ed248`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Null` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreKernelSpace](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelspace.md) | 32 | `declaration-track:2810ba0429d64171bd960ebe6db7e23d20e780276afc0ba80d3ccb3bfa66849e` |
| 2 | `def` | [preKernelMk](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelmk.md) | 36 | `declaration-track:348c978b9a430b061a3ac9d6929d32d3b62a423f86d2312b93132997ee034f9b` |
| 3 | `theorem` | [rawInner_respects_quotient](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/rawinner-respects-quotient.md) | 41 | `result-track:00a15239fd02e4b1d81bff7515b1a6a4d034afa3944ba4035bd704ef411ad20c` |
| 4 | `def` | [preKernelInner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelinner.md) | 58 | `declaration-track:c0361fb0361341598e4d7d66678fa65961ad83cdf47d5786ec4fbbdd9a0cb27a` |
| 5 | `theorem` | [preKernelInner_wellDefined](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelinner-welldefined.md) | 66 | `result-track:874f9e28a0804736009c0928fd07f6444168179cf970d4729f3e41cd3f84b251` |
| 6 | `def` | [preKernelPreCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelprecore.md) | 74 | `declaration-track:dba923746044118dad8b5281e33be12cc2844821627e878230c51dc9436717ab` |
| 7 | `def` | [preKernelCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelcore.md) | 122 | `declaration-track:3a6309e493d61e23b59faf4b6d1a333aafdc44379d90aedb098052740d820998` |
| 8 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/instprekernelnormedaddcommgroup.md) | 134 | `declaration-track:0299c02381c215d36c5c7d234a1c291e009bd0f22e907509ea8e8dbf9c9a93fd` |
| 9 | `instance` | [instPreKernelInnerProductSpace](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/instprekernelinnerproductspace.md) | 141 | `declaration-track:f0ba22cdae5ee739b12bfa13ee24f486bb03990d306bdcf3a63baa9be46b9b50` |
| 10 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernel-inner-self-eq-zero-iff.md) | 146 | `result-track:7f0802794d471254ca52b81d78775091eeb0274d6db60ec55d702309be1cfc55` |
| 11 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelmk-eq-zero-iff.md) | 154 | `result-track:b4220864941261d7cd54ba153afb81a21ab8626290e1cc2ef2cee1e0f424b0ba` |
| 12 | `theorem` | [preKernelInner_basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition1.lean/declarations/prekernelinner-basisvector.md) | 163 | `result-track:11bb37bad92d2fe240ed2432f1e51dfb64d0a08455a19ef639ab8f7c9f127103` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9a7e12984465defde6fedd3bfa8ea7ca29ab327310829d970a70c7e469c9734 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
