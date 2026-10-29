# Verification target: Quotient Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c4b9d68541b8bfbd68d748ccaa511b93488458",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c4b9d68541b8bfbd68d748ccaa511b93488458`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Null` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_03c57ab193fd23a4` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_42f3036a02f45bbd` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_46787b9141870b26` — import line 11; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_b18b56e0567ffc9e` — import line 12; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_c7486fef26d69dfd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_deeabb9e7a5211c2` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawInner_respects_quotient](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/rawinner-respects-quotient.md) | 41 | `result-track:56ecba189795b619c95e091b2161d8c78f5a4b50feb7246056ac93208e7729a7` |
| 2 | `def` | [preKernelInner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelinner.md) | 58 | `declaration-track:8e50209b5eb0c31a7ed5d51d6bf6519247433b27df29dba78049602a47fbaea2` |
| 3 | `theorem` | [preKernelInner_wellDefined](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelinner-welldefined.md) | 66 | `result-track:25788bb03c30080a99f81ccb322edc1d136037faa2daec2c24d37e492f0c3b1b` |
| 4 | `def` | [preKernelPreCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelprecore.md) | 74 | `declaration-track:a264c22a3a2acb48e811cf657171b1268b8445149aa83b46561f52ca76006b6a` |
| 5 | `def` | [preKernelCore](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelcore.md) | 122 | `declaration-track:0054c65de84a0b5e2f0f5ac3a3471d89863fc70cd8ada06436c054e7664c1256` |
| 6 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/instprekernelnormedaddcommgroup.md) | 134 | `declaration-track:a825c7a5490f8a2724a8f2a469fc5a0594b430a500ed60123c0b963595057132` |
| 7 | `instance` | [instPreKernelInnerProductSpace](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/instprekernelinnerproductspace.md) | 141 | `declaration-track:1bf89e25f3eb86e02a4241c5323b7d0448dd6a362d6d2dbd7c7a467b21fc51c6` |
| 8 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernel-inner-self-eq-zero-iff.md) | 146 | `result-track:5ac7d413318435218adeaef5973f91c7132b003a684c0afeb06c369b37c00b3a` |
| 9 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelmk-eq-zero-iff.md) | 154 | `result-track:5d23113ea6e390a86be51c64c1fe9f717adbcca1d8f6eabb4a5fe230848a7ad5` |
| 10 | `theorem` | [preKernelInner_basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/QuotientNamespacedEdition2.lean/declarations/prekernelinner-basisvector.md) | 163 | `result-track:0788d7f3c431cb61d8794eb491b374678d54c6124ebacdc13100f1212b30684a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a8871344ec74857e43c9d9a815b83b23759ec9a316e9153ca45155995ff3c7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
